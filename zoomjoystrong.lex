/******************************************
* This is a lex program where we created
* our language called ZoomJoyStrong.
*
* @author Hai Duong
* @date October 28, 2018
*********************************************/

%{
  #include <stdio.h>
  #include "zoomjoystrong.tab.h"
%}

%option noyywrap

%%

(END)           {printf("END\n");}
;               {printf("END_STATEMENT\n");}
(POINT|point)   {printf("POINT\n");}
(LINE)          {printf("LINE\n");}
(CIRCLE)        {printf("CIRCLE\n");}
(RECTANGLE)     {printf("RECTANGLE\n");}
(SET_COLOR)     {printf("SET_COLOR\n");}
[0-9]+          {printf("INT %s\n", yytext);}
[0-9]+\.[0-9]+  {printf("FLOAT %s\n", yytext);}
[\n \t \ ]+     ;
.               {printf("''%s' IS INVALID ON LINE %d.\n", yytext, yylineno);}
%%
