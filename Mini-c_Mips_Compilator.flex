%%

%unicode
%int
%line
%column
%class Mini-c_Mips_Compilator

OPREL = ">"|"<"|">="|"<="|"!="|"=="
ASIG = "="
OPMULT = "*"|"/"
OPSUM = "+"|"-"
DIGITO = [0-9]
NUM = {DIGITO}+
LETRA = [a-zA-Z]
ID = {LETRA}(_|{DIGITO}|{LETRA})*
PuntoComa = ";"
TAB = "\t"
NewLine = [\n]+
FinLinea = \r|\n|\r\n
Espacio = {FinLinea}
ComentarioP = "/" [^] ~"/" | "/" "*"+ "/"
ComentarioL = "//" ({LETRA}|{DIGITO}|{NUM}|" ")* {FinLinea}?
For = For
If = If
While = While
Int = Int
Char = Char
IntP = Int"*"
CharP = Char"*"
ConstChar = "'"[a-zA-Z]"'"
ConstStr = \"[^\n\"]*\"({Espacio}"&_"{NewLine}({Espacio}|\t)*\"[^\n\"]*\")*


%%
<YYINITIAL> {
       {For}                                {System.out.print("<For>");}
       {If}                                 {System.out.print("<If>");}
       {While}                              {System.out.print("<While>");}
       {Int}                                {System.out.print("<Integer>");}
       {Char}                               {System.out.print("<Char>");}
       {IntP}                               {System.out.print("<IntegerP>");}
       {CharP}                              {System.out.print("<charP>");}
       {ID}                                 {System.out.print("<ID,"+yytext()+">");}
       {ConstChar}                          {System.out.print("<ConstChar,"+yytext()+">");}
       {ASIG}                               {System.out.print("<ASIG,"+yytext()+">");}
       {NUM}                                {System.out.print("<NUM,"+yytext()+">");}
       {OPSUM}                              {System.out.print("<OPSUM,"+yytext()+">");}
       {OPMULT}                             {System.out.print("<OPMULT,"+yytext()+">");}
       {OPREL}                              {System.out.print("<OPREL,"+yytext()+">");}
       {ComentarioP}                        {System.out.print("<comentarioP,"+yytext()+">");}
       {ComentarioL}                        {System.out.print("<comentarioL,"+yytext()+">");}
       {PuntoComa}                          {System.out.print("<PuntoComa>");}
        .                                   {}
}
