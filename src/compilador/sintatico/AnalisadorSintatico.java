/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package compilador.sintatico;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java_cup.runtime.Symbol;

/**
 *
 * @author aluno
 */
public class AnalisadorSintatico {

    public static void main(String[] args) throws IOException, InterruptedException, Exception {

        Runtime r = Runtime.getRuntime();
        Process p;

        //PASSO 1        
        // Gerar as classes Parser.java e Tokens.java com CUP
        //Windows: p = r.exec(new String[]{"java","-jar", "..\\java-cup-11b.jar", "-parser", "Parser", "-symbols", "Tokens", "..\\parser.cup"}, null, new File("src\\"));    
        /*
        p = r.exec(new String[]{"java", "-jar", "..\\java-cup-11b.jar", "-parser", "Parser", "-symbols", "Tokens", "..\\parser.cup"}, null, new File("src\\"));
        System.out.println(p);
        System.out.println(p.waitFor()); // Se ok, saída será 0
         */
        //PASSO 2        
        // Gerar a classe Scanner.java com JFlex
        /*
        p = r.exec(new String[]{"java", "-jar", "..\\jflex-full-1.9.1.jar", "..\\scanner.flex"}, null, new File("src//"));
        System.out.println(p.waitFor()); // Se ok, saída será 0
         */
        
        
        //PASSO 3        
        // Instanciando o objeto scanner e analisador
        /*
        Scanner scanner = new Scanner(new FileReader("entrada.txt"));
        System.out.println("Análise Léxica: (Símbolo e Valor)");
        Symbol s = scanner.next_token();
        while (s.sym != Tokens.EOF) {
            System.out.printf("%d  ->  %s\n", s.sym, s.value);
            s = scanner.next_token();
        }
        */
        
         //PASSO 4        
        // Criando o parser e executando a análise sintática
        ///*
        Scanner scanner = new Scanner(new FileReader("conversor.txt"));
        Parser parser = new Parser(scanner);
        System.out.println("--- Início da Execução ---");
        parser.parse(); // Aqui a mágica acontece
        System.out.println("--- Fim da Execução ---");

        System.out.println("--- Tabela de Símbolos Final ---");
        parser.simbolos.forEach((chave, valor) -> {
            System.out.println(chave + " = " + valor);
        });
        //*/

    }

}
