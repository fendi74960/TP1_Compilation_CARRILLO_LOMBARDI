/* --------------------------Section de Code Utilisateur---------------------*/
package fr.usmb.m1isc.compilation.simple;
import java_cup.runtime.Symbol;

%%

/* -----------------Section des Declarations et Options----------------------*/
// nom de la class a generer
%class ArithLexer
%unicode
%line   // numerotation des lignes
%column // numerotation caracteres par ligne

// utilisation avec CUP
// nom de la classe generee par CUP qui contient les symboles terminaux
%cupsym ArithParserSym
// generation analyser lexical pour CUP
%cup

// code a ajouter dans la classe produite
%{

%}

/* definitions regulieres */
plus = "+"
moins = "-"
mult = "*"
divide = "/"
par_g = "("
par_d = ")"
mod = "mod"
nombre    =   [0-9]+
let = "let"\s[a-z]+
eq = "="
stri = [a-z]+
sep     =   \s
point   =   [;]

%% 
/* ------------------------Section des Regles Lexicales----------------------*/

/* regles */
{sep}+          { /* pas d'action */ }
{nombre}       { return new Symbol(ArithParserSym.NOMBRE, yyline, yycolumn, Integer.valueOf(yytext())); }
{plus}         { return new Symbol(ArithParserSym.PLUS, yyline, yycolumn); }
{moins}         { return new Symbol(ArithParserSym.MOINS, yyline, yycolumn); }
{mult}         { return new Symbol(ArithParserSym.MULT, yyline, yycolumn); }
{divide}         { return new Symbol(ArithParserSym.DIVIDE, yyline, yycolumn); }
{par_g}         { return new Symbol(ArithParserSym.PAR_G, yyline, yycolumn); }
{par_d}         { return new Symbol(ArithParserSym.PAR_D, yyline, yycolumn); }
{mod}         { return new Symbol(ArithParserSym.MOD, yyline, yycolumn); }
{eq}         { return new Symbol(ArithParserSym.EQ, yyline, yycolumn); }
{let}         { return new Symbol(ArithParserSym.LET, yyline, yycolumn, String.valueOf(yytext())); }
{stri}         { return new Symbol(ArithParserSym.STRI, yyline, yycolumn, String.valueOf(yytext())); }
{point}         { return new Symbol(ArithParserSym.POINT, yyline, yycolumn); }
.               { return new Symbol(ArithParserSym.ERROR, yyline, yycolumn); }
