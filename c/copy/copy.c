#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<signal.h>



void execute(int); // Handles the signals.
char * globcmd=NULL; // Used by both signal handler and main to execute the 
//passed command. 


/* Main function calling dap and passing the configuration file. */
int main(int argc,char**argv)
{
    int cmdcnt=0,urlcnt=0;// Command count and url count.

    char * url=NULL,*cmd=NULL; // url and command storage.

    char c;

    FILE *cnfg=NULL; // Configuration file.

    int cdflg=0; //indicates whether to create and change to that directory 
    //before downloading.

    char *currpath=NULL,*hld=NULL; 
    globcmd=NULL;
    if(argc<2) //arrey the command is not correct.
    {
        printf("Syntax is wrong. use dap <config file name> <cmd> <arg cmd>.\nEach Line in config file must end with new line.\ncmd is any command you wish to execute after the completion of the downloads.It is optional and only one command can be given.\n");
        exit(0);
    }
    cnfg=fopen(argv[1],"r+");
    if(cnfg==NULL) //Oh!!! God wrong file name is given.
    {
        printf("Syntax is wrong. use dap <config file name> <cmd> <arg cmd>.\nEach Line in config file must end with new line.\ncmd is any command you wish to execute after the completion of the downloads.It is optional and only one command can be given.\n");
        exit(0);
    }

    /* registering the signal handlers */
    signal(SIGABRT,execute);
    signal(SIGFPE,execute);
    signal(SIGILL,execute);
    signal(SIGINT,execute);
    signal(SIGSEGV,execute);
    signal(SIGTERM,execute);

    /* If extra (only one command and its list of argument is allowed) command is given then set that in Global command string, so that signal handler can share the same. */
    if(argc>2)
    {
        urlcnt=0;
        for(cmdcnt=2;cmdcnt<argc;cmdcnt++)
        {
            urlcnt+=(strlen(argv[cmdcnt])+1);
        }
        globcmd=(char*)malloc((urlcnt+1)*sizeof(char));
        globcmd=strcpy(globcmd,argv[2]);
        globcmd=strcat(globcmd," ");
        for(cmdcnt=3;cmdcnt<argc;cmdcnt++)
        {
            globcmd=strcat(globcmd,argv[cmdcnt]);
            globcmd=strcat(globcmd," ");
        }
    }
    else
    {
        globcmd=NULL;
    }

    /* record the current path */
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

            /* whether line ends at the statring. search for lines 
             * which are correct. */
            if(((c=='\n')||(c=='\r')||(c==' '))&&(urlcnt==0))
            {
                continue;
            }

            /* whether file ends at the start of line. end the 
             * program*/
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
                system(globcmd);
                free(globcmd);
                globcmd=NULL;
                exit(0);
            }

            /* one line ends and whole url or directory name is 
             * picked so break now and create the dir or download
             * the file. */
            if(c=='\n' || c=='\r' || c==EOF)
            {
                url[urlcnt]='\0';
                break;
            }

            /* its a directory inside which I need to doenload the
             * file. */
            if(c=='#' && urlcnt==0)
            {
                cdflg=1;
                chdir(currpath);
                continue;
            }

            /* store the url chracter and allocate storage for next
             * character. */
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

        /* its not the directory we got so download man!!! */
        if(cdflg==0)
        {
            cmd=(char*)malloc((21+urlcnt)*sizeof(char));
            cmd=strcpy(cmd,"proz -f --no-getch ");
            cmd=strcat(cmd,url);
            system(cmd);
            system("clear");
        }
        else if(cdflg==1)
        {
            /* its a directory. Create it if not existing and go
             * to that dir. */
            cmd=(char*)malloc((10+urlcnt)*sizeof(char));
            cmd=strcpy(cmd,"mkdir -p ");
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

    /* free all, its time to stop. */
    chdir(currpath);
    free(currpath);
    currpath=NULL;
    fclose(cnfg);

    /* don't forget to execute the global command and free the global cmd 
     * string. */
    system(globcmd);
    free(globcmd);
    globcmd=NULL;
    exit(0);
}

/* our handler */
void execute(int i)
{
    switch(i)
    {
        case SIGABRT: printf("\nSignal ABort handled\n");
                      break;
        case SIGFPE: printf("\nSignal Floating Point Exception handled\n");
                     break;
        case SIGILL: printf("\nSignal Illegal instruction handled\n");
                     break;
        case SIGINT: printf("\nSignal Interrupt handled\n");
                     break;
        case SIGSEGV: printf("\nSignal Segmentation Fault handled\n");
                      break;
        case SIGTERM: printf("\nSignal Termination request handled\n");
                      break;
        default: break;
    }

    /* execute the global command, since main cannot do so. */
    if(globcmd!=NULL)
    {
        system(globcmd);
        free(globcmd);
        globcmd=NULL;
    }

    /*call the default handler for each signal. */
    exit(0);
}

