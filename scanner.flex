/* 1. SEÇÃO DE CÓDIGO DO USUÁRIO (Imports) */
import java_cup.runtime.*;
import java_cup.sym;

%%

/* 2. SEÇÃO DE OPÇÕES (Configurações) */
%class Scanner
%unicode
%cup
%line
%column
%cupsym Tokens

%{
  /* Bloco de código Java dentro do scanner, se precisar */
  private Symbol symbol(int type) {
    return new Symbol(type, yyline, yycolumn);
  }
  private Symbol symbol(int type, Object value) {
    return new Symbol(type, yyline, yycolumn, value);
  }
%}

/* Definições auxiliares (Macros) */
Digito = [0-9]
Letra = [a-zA-Z]
Identificador = {Letra}({Letra}|{Digito})*
Inteiro = {Digito}+
Espaco = [ \t\f\r\n]
Comentario = "/*" [^*] ~"*/" | "/*" "*"+ "/"

%%

/* 3. SEÇÃO DE REGRAS LÉXICAS */

<YYINITIAL> {
    /* Palavras Reservadas */
    "if"        { return symbol(Tokens.IF); }
    "else"      { return symbol(Tokens.ELSE); }
    "while"     { return symbol(Tokens.WHILE); }
    "for"       { return symbol(Tokens.FOR); }

    /* Operadores e Pontuação */
    "+"         { return symbol(Tokens.MAIS); }
    "-"         { return symbol(Tokens.MENOS); }
    "*"         { return symbol(Tokens.VEZES); }
    "/"         { return symbol(Tokens.DIV); }
    "="         { return symbol(Tokens.ATRIB); }
    ";"         { return symbol(Tokens.SEMI); }
    "("         { return symbol(Tokens.LPAREN); }
    ")"         { return symbol(Tokens.RPAREN); }
    "{"         { return symbol(Tokens.LBRACE); }
    "}"         { return symbol(Tokens.RBRACE); }
    "^"         { return symbol(Tokens.POT); }
    "%"         { return symbol(Tokens.MOD); }

    /* Identificadores e Números */
    {Identificador} { return symbol(Tokens.ID, yytext()); }
    {Inteiro}       { return symbol(Tokens.NUMERO, Integer.parseInt(yytext())); }

    /* Ignorar espaços em branco */
    {Comentario} { /* ignora comentários */ }
    {Espaco}     { /* ignora espaços */ }
}

/* Erro para caracteres não reconhecidos */
[^] { System.out.println("Caractere inválido: <" + yytext() + "> na linha " + yyline); }

