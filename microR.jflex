/*Rachel Johnson*/

%%
%{
  private void echo () { System . out . print (yytext ()); }

  public int position () { return yycolumn; }
%}

%class    microRLexer
%function nextToken
%type	  Token
%unicode
%line
%column
%eofval{
  { return new Token (Symbol . EOF); }
%eofval}

WhiteSpace = [ \t\n]
Ident  = [A-Za-z][A-Za-z0-9]*(_[A-Za-z0-9]+)*    /*Finds IDs that have letters, numbers, and underscores. Follows rules mentioned in project */
Integer  = [:digit:] [:digit:]*
string = \"(.*?)\"  /* Gets stuff inside a string literal - "example" */
comment = # [A-Za-z0-9 _?.?]*  /*gets stuff inside a .R file comment - # example */


/*tokens */
%%
 "."  	    	{ echo (); return new Token (Symbol . PERIOD); }
","		{ echo (); return new Token (Symbol . COMMA); }
";"		{ echo (); return new Token (Symbol . SEMICOLON); }
":="     	{ echo (); return new Token (Symbol . ASSIGN); }
"="     	{ echo (); return new Token (Symbol . EQ); }
"=="		{ echo (); return new Token (Symbol . ISEQ);}
"!=" 		{ echo (); return new Token (Symbol . NOTEQ);}
"!"		{ echo (); return new Token (Symbol . NOT);}
"<>"    	{ echo (); return new Token (Symbol . NE); }
"<"     	{ echo (); return new Token (Symbol . LT); }
">"     	{ echo (); return new Token (Symbol . GT); }
"<="    	{ echo (); return new Token (Symbol . LE); }
">="    	{ echo (); return new Token (Symbol . GE); }
"+"		{ echo (); return new Token (Symbol . PLUS); }
"-"		{ echo (); return new Token (Symbol . MINUS); }
"*"     	{ echo (); return new Token (Symbol . TIMES); }
"/"  	 	{ echo (); return new Token (Symbol . SLASH); }
"("		{ echo (); return new Token (Symbol . LPAREN); }
")"		{ echo (); return new Token (Symbol . RPAREN); }
"{"		{ echo (); return new Token (Symbol . LBRA);   }
"}"		{ echo (); return new Token (Symbol . RBRA);   }
"<-"		{ echo (); return new Token (Symbol . LTDASH); }
"&&"		{ echo (); return new Token (Symbol . AND); }
begin 		{ echo (); return new Token (Symbol . BEGIN); }
call    	{ echo (); return new Token (Symbol . CALL); }
const   	{ echo (); return new Token (Symbol . CONST); }
do      	{ echo (); return new Token (Symbol . DO); }
end     	{ echo (); return new Token (Symbol . END); }
if		{ echo (); return new Token (Symbol . IF); }
odd     	{ echo (); return new Token (Symbol . ODD); }
procedure  	{ echo (); return new Token (Symbol . PROC); }
then    	{ echo (); return new Token (Symbol . THEN); }
var  	 	{ echo (); return new Token (Symbol . VAR); }
while		{ echo (); return new Token (Symbol . WHILE); }
source		{ echo (); return new Token (Symbol . SOURCE); }
function        { echo (); return new Token (Symbol . FUNCTION); }
return          { echo (); return new Token (Symbol . RETURN); }
main		{ echo (); return new Token (Symbol . MAIN); }
print 		{ echo (); return new Token (Symbol. PRINT); }
as.integer 	{ echo (); return new Token (Symbol . ASINT); }
readline	{ echo (); return new Token (Symbol . LINE); }
cons		{ echo (); return new Token (Symbol . CONS); }
head		{ echo (); return new Token (Symbol . HEAD); }
tail 		{ echo (); return new Token (Symbol . TAIL); }
null		{ echo (); return new Token (Symbol . NULL); }
{string}        { echo (); return new Token (Symbol . STRING, yytext()); }
{Ident}   	{ echo (); return new Token (Symbol . ID, yytext ()); }
{Integer}	{ echo (); return new Token (Symbol . INTEGER, yytext ()); }
{comment}	{ echo (); }
{WhiteSpace}	{ echo (); }
.               { echo (); ErrorMessage . print (yycolumn, "Illegal character"); }

