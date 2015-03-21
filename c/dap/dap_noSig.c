#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int main(int argc,char**argv)
{
	int cmdcnt=0,urlcnt=0;
	char * url=NULL,*cmd=NULL;
	char c;
	FILE *cnfg=NULL;
	int cdflg=0;
	char *currpath=NULL,*hld=NULL;
	if(argc<2)
	{
		printf("Syntax is wrong. use dap <config file name> <cmd> <arg cmd>.\nEach Line in config file must end with new line.\ncmd is any command you wish to execute after the completion of the downloads.It is optional\n");
		exit(0);
	}
	cnfg=fopen(argv[1],"r+");
	if(cnfg==NULL)
	{
		printf("Syntax is wrong. use dap <config file name> <cmd> <arg cmd>.\nEach Line in config file must end with new line.\ncmd is any command you wish to execute after the completion of the downloads.It is optional\n");
		exit(0);
	}

	currpath=(char*)malloc((strlen(getenv("PWD"))+1)*sizeof(char));
	currpath=strcpy(currpath,getenv("PWD"));


	urlcnt=0;
	while(!feof(cnfg))
	{
	        cdflg=0;
		url=(char*)malloc(1*sizeof(char));
		urlcnt=0;
		while(1)
		{
			c=fgetc(cnfg);
			if(((c=='\n')||(c=='\r')||(c==' '))&&(urlcnt==0))
			{
				continue;
			}
			if(c==EOF && urlcnt==0)
			{
				chdir(currpath);
				free(cmd);
				cmd=NULL;
				free(url);
				url=NULL;
				free(currpath);
				currpath=NULL;
				fclose(cnfg);
				if(argc>2)
				{
					urlcnt=0;
					for(cmdcnt=2;cmdcnt<argc;cmdcnt++)
					{
						urlcnt+=(strlen(argv[cmdcnt])+1);
					}
					cmd=(char*)malloc((urlcnt+1)*sizeof(char));
					cmd=strcpy(cmd,argv[2]);
					cmd=strcat(cmd," ");
					for(cmdcnt=3;cmdcnt<argc;cmdcnt++)
					{
						cmd=strcat(cmd,argv[cmdcnt]);
						cmd=strcat(cmd," ");
					}
					system(cmd);
					free(cmd);
					cmd=NULL;
				}
				exit(0);
			}
			if(c=='\n' || c=='\r' || c==EOF)
			{
				url[urlcnt]='\0';
				break;
			}
			if(c=='#' && urlcnt==0)
			{
				cdflg=1;
				chdir(currpath);
				continue;
			}

		        url[urlcnt]=c;
			urlcnt++;
			hld=(char*)realloc(url,(urlcnt+1)*sizeof(char));
			if(hld!=NULL)
				url=hld;
			else if(hld==NULL)
			{
				if(url!=NULL)
					free(url);
				url=NULL;
				exit(0);
			}
			hld=NULL;		
		}
		if(cdflg==0)
		{
		        cmd=(char*)malloc((20+urlcnt)*sizeof(char));
		        cmd=strcpy(cmd,"proz --no-getch -f ");
			cmd=strcat(cmd,url);
			system(cmd);
			system("clear");			
		}
	        else if(cdflg==1)
		{
			cmd=(char*)malloc((7+urlcnt)*sizeof(char));
			cmd=strcpy(cmd,"mkdir ");
			cmd=strcat(cmd,url);
			system(cmd);
			free(cmd);
			cmd=NULL;
			cmd=(char*)malloc((2+urlcnt+(strlen(getenv("PWD"))))*sizeof(char));
			cmd=strcpy(cmd,currpath);
			cmd=strcat(cmd,"/");
			cmd=strcat(cmd,url);
			if((urlcnt=chdir(cmd))<0)
			{
				printf("Cannot change directory %d",urlcnt);
			}
		}
		free(url);
		url=NULL;
		free(cmd);
		cmd=NULL;
	}
	chdir(currpath);
	free(currpath);
	currpath=NULL;
	fclose(cnfg);
	if(argc>2)
	{
		urlcnt=0;
		for(cmdcnt=2;cmdcnt<argc;cmdcnt++)
		{
			urlcnt+=(strlen(argv[cmdcnt])+1);
		}
		cmd=(char*)malloc((urlcnt+1)*sizeof(char));
		cmd=strcpy(cmd,argv[2]);
		cmd=strcat(cmd," ");
		for(cmdcnt=3;cmdcnt<argc;cmdcnt++)
		{
			cmd=strcat(cmd,argv[cmdcnt]);
			cmd=strcat(cmd," ");
		}
		system(cmd);
		free(cmd);
		cmd=NULL;
	}

	exit(0);
}
