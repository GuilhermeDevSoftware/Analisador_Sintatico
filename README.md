# 📘 Analisador Sintático em Java

Este projeto consiste em um **Analisador Sintático** desenvolvido em Java utilizando as ferramentas :contentReference[oaicite:0]{index=0} e :contentReference[oaicite:1]{index=1}.

O sistema realiza análise léxica e sintática de uma linguagem simples, permitindo interpretar estruturas matemáticas, condicionais e de repetição. O projeto simula o funcionamento básico de um compilador/interprete, utilizando geração automática de scanner e parser.

---

# 🚀 Tecnologias Utilizadas

- Java
- JFlex
- Java CUP
- NetBeans
- Ant

---

# ⚙️ Funcionalidades

- Análise Léxica
- Análise Sintática
- Reconhecimento de tokens
- Estruturas condicionais (`if / else`)
- Estruturas de repetição (`while / for`)
- Operações matemáticas
- Manipulação de variáveis
- Geração automática de Parser e Scanner

---

# 📂 Estrutura do Projeto


compilador-sintatico/

│

├── src/

│   └── compilador/sintatico/

│       ├── AnalisadorSintatico.java

│       ├── Parser.java

│       ├── Scanner.java

│       └── Tokens.java

│

├── scanner.flex

├── parser.cup

├── entrada.txt
├── conversor.txt

├── build.xml

├── manifest.mf

├── java-cup-11b.jar

├── jflex-full-1.9.1.jar

└── nbproject/


# Tokens Reconhecidos

O analisador reconhece diversos tokens da linguagem, incluindo:

## Token	Descrição

### +	
Soma
### -	
Subtração
### *	
Multiplicação
### /	
Divisão
### %	
Módulo
### ++	
Incremento
### --	
Decremento
### if	
Estrutura condicional
### else	
Condicional alternativa
### while	
Laço de repetição
### for	
Laço de repetição
### =	
Atribuição
### ID	
Identificadores
### NUMERO	
Valores numéricos
