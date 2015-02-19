int matchstar(int c, char *re, char *text);
int matchhere(char *re, char *text);
int match(char *re, char *text);
int grep(char *re, FILE *f, char *name);
int matchstar_lm(int c, char *re, char *text);

/* match: search for re anywhere in text */
/* In Example 1, the function match determines whether a string matches a regular expression. If the regular expression begins with "^" the text must begin with a match of the remainder of the expression. Otherwise, we walk along the text, using matchhere to see if the text matches at each position in turn. As soon as we find a match, we're done. Expressions that contain "*" can match the empty string (for example, ".*y" matches "y" among many other things), so we must call matchhere even if the text is empty. */
int match(char *re, char *text)
{
   if (re[0] == '^')
      return matchhere(re+1, text);
   do {  /* must look at empty string */
      if (matchhere(re, text))
         return 1;
   } while (*text++ != '\0');
   return 0;
}


/* matchhere: search for re at beginning of text */
/*  In Example 2, the recursive function matchhere does most of the work. If the regular expression is empty, we have reached the end and thus have found a match. If the regular expression ends with "$," it matches only if the text is also at the end. If the regular expression begins with a period, it matches any character. Otherwise, the expression begins with a plain character that matches itself in the text. A "^" or "$" that appears in the middle of a regular expression is thus taken as a literal character, not a metacharacter.

Notice that matchhere calls itself after matching one character of pattern and string. Thus the depth of recursion can be as much as the length of the pattern. */
int matchhere(char *re, char *text)
{
   if (re[0] == '\0')
      return 1;
   if (re[0] == '$' && re[1] == '\0')
      return *text == '\0';
   if (re[1] == '*')
      return matchstar(re[0], re+2, text);
   if (*text!='\0' && (re[0]=='.' || re[0]==*text))
      return matchhere(re+1, text+1);

   return 0;
}


/* matchstar: search for c*re at beginning of text */
/*  The one tricky case occurs when the expression begins with a starred character, "x*," for example. Then we call matchstar with three arguments -- the operand of the star (x), the pattern after the star, and the text; see Example 3. Again, a starred regular expression can match zero characters. The loop checks whether the text matches the remaining expression, trying at each position of the text as long as the first character matches the operand of the star.*/
int matchstar(int c, char *re, char *text)
{
   do {  /* a * matches zero or more instances */
      if (matchhere(re, text))
         return 1;
   } while (*text!='\0' && (*text++==c || c=='.'));
   return 0;
}

/* grep main: search for re in files */
int main(int argc, char *argv[])
{
  int i, nmatch;
  FILE *f;

  if (argc < 2) {
     fprintf(stderr, "usage: grep pattern [file ...]\n");
     exit(2);
  }
  nmatch = 0;
  if (argc < 3) {
     if (grep(argv[1], stdin, NULL))
        nmatch++;
  } else {
     for (i = 2; i < argc; i++) {
        f = fopen(argv[i], "r");
        if (f == NULL) {
           fprintf(stderr, "grep: can't open %s\n", argv[i]);
           continue;
        }
        if (grep(argv[1], f, argc>3 ? argv[i] : NULL))
           nmatch++;
        fclose(f);
     }
  }
  return nmatch == 0;
}

/* grep: search for re in file */
int grep(char *re, FILE *f, char *name)
{
   int n, nmatch;
   char buf[BUFSIZ];

   nmatch = 0;
   while (fgets(buf, sizeof buf, f) != NULL) {
      n = strlen(buf);
      if (n > 0 && buf[n-1] == '\n')
         buf[n-1] = '\0';
      if (match(re, buf)) {
         nmatch++;
         if (name != NULL)
            printf("%s:", name);
         printf("%s\n", buf);
      }
   }
   return nmatch;
}


/* matchstar: leftmost longest search for c*re */
int matchstar_lm(int c, char *re, char *text)
{
  char *t;

  for (t = text; *t != '\0' && (*t == c || c == '.'); t++)
     ;
  do {   /* * matches zero or more */
     if (matchhere(re, t))
        return 1;
  } while (t-- > text);
  return 0;
}






