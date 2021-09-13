# lexical_analyzer
A lexical analyzer for R code using jflex.


TO RUN:

1. Download Project Folder
2. Make sure your machine has jflex, java, and R. This will be important to run the project. (CSCE Machines are what I used.)
3. Run the project using these commands:

jflex microR.jflex
javac microRLexer.java
javac microRLex.java
java microRLex < Test1.R 
