%%

%unicode
%int
%line
%column
%class Mini-c_Mips_Compilator

num = [0-9]
letra = [a-zA-Z]|"_"
caracter = [a-zA-z0-9]
finlinea = \r|\n|\r\n
all = [a-zA-z0-9]|\r|\n|\r\n|[\t\f]
caracteresenlinea = {caracter}*{finlinea}
identificador = {letra}{letra}*{num}*|{letra}{num}*{letra}*
espacios = {finlinea} | [\t\f]
comentariop = "/*"{all}*~"*/"
comentariol = "//"{caracteresenlinea}*{finlinea}?


<YYINITIAL> {


}
