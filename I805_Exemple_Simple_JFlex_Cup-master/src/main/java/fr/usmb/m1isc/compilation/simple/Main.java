package fr.usmb.m1isc.compilation.simple;

import java.io.FileReader;
import java.io.InputStreamReader;

import java_cup.runtime.Symbol;

public class Main {
    public static void main(String[] args) throws Exception {
        /*SimpleLexer lexer;
        if (args.length > 0)
            lexer = new SimpleLexer(new FileReader(args[0]));
        else
            lexer = new SimpleLexer(new InputStreamReader(System.in));
        @SuppressWarnings("deprecation")
        SimpleParser p = new SimpleParser(lexer);
        p.parse();*/
    	
    	ArithLexer lexer;
    	lexer = new ArithLexer(new InputStreamReader(System.in));
    	@SuppressWarnings("deprecation")
    	ArithParser p = new ArithParser(lexer);
        p.parse();
        //Symbol result = p.parse( );
        //System.out.println ("Evaluation = "+result.value);
    	
    }
}