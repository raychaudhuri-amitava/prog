#include<stdio.h>
#include<string.h>
#include<ctype.h>


void changeChar(char **s,char chr)
{
    if(s==NULL) return;

    int i=0;   
    while((*s)[i] != '\0'){
        if(((*s)[i] == chr) || (isspace((*s)[i])))
        {
            (*s)[i] = '_';
        }
        i++;
    }
    return ;
}

/* divide_patch <patch file> <dir to put> <string on which division will happen> */
int main(int argc, char ** argv)
{
    FILE *patchfp=NULL;
    FILE *outpatch=NULL;
    char fileName[2048]={'\0'};
    char tfileName[2048]={'\0'};
    char tempchr[1000]={'\0'};
    char *a=NULL;
    int c = 0;
    int i=0;

    if(argc != 3){
        printf("divide_patch <patch file> <string on which division will happen>\n");
        return 1;
    }

    patchfp = fopen(argv[1],"r");
    if(patchfp == NULL){
        printf("Where is the patch file dude?\n");        
        return 1;
    }
    
    while(!feof(patchfp))
    {
        c=getc(patchfp);
        if(c==EOF)break;
        if((char)c == argv[2][0]){
            i=0;
            tempchr[i] = (char)c;
            while(argv[2][i]!='\0'){
                c=getc(patchfp);
                i++;
                if((char)c == argv[2][i]){
                    tempchr[i]=(char)c;
                }
                else{
                    break;
                }        
            }         
            tempchr[i]='\0';
            if(argv[2][i]=='\0'){
                i=0;
                fileName[i]=c;
                i++;
                c=getc(patchfp);
                while(c!='\n'){
                    tfileName[i-1]=fileName[i]=c;
                    c=getc(patchfp);
                    i++;
                }
                tfileName[i-1]=fileName[i]='\0';
                a=tfileName;
                changeChar((char **)(&a),'/');
                if(outpatch != NULL){
                    fclose(outpatch);
                    outpatch = NULL;
                }
                strcat(tfileName,".patch");            
                outpatch=fopen(tfileName,"w+");
                if(outpatch == NULL){
                    printf("Can't open files\n");
                    return 1;
                }
                fputs(tempchr,outpatch);
                fputs(fileName,outpatch);
            }
            else{
                fputs(tempchr,outpatch);
            }
        }
        putc(c,outpatch);
    }

    if(outpatch != NULL) fclose(outpatch);
    if(patchfp != NULL) fclose(patchfp);

    return 0;
}


