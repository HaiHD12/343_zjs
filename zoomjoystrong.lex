/******************************************
* This is a lex program where we created
* our language called ZoomJoyStrong.
*
* @author Hai Duong
* @date November 26, 2018
*********************************************/

%{
  #include <stdio.h>
  #include "zoomjoystrong.tab.h"
%}

%option noyywrap

%%

(END|end)                 {return END;}
;                         {return END_STATEMENT;}
(POINT|point)             {return POINT;}
(LINE|line)               {return LINE;}
(CIRCLE|circle)           {return CIRCLE;}
(RECTANGLE|rectangle)     {return RECTANGLE;}
(SET_COLOR|set_color)     {return SET_COLOR;}
[0-9]+                    {yylval.iVal=atoi(yytext); return INT;}
[0-9]+\.[0-9]+            {yylval.fVal=atof(yytext); return FLOAT;}
[\n \t \ ]+               ;
.                         {return ERROR;}

%%
