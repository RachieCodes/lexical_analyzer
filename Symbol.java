/*Rachel Johnson
 *
 * A list of symbols that are currently accepted by the lexical analyzer
 */

public enum Symbol {
  EOF, 
  // punctuation
  PERIOD, COMMA, SEMICOLON, LBRA, RBRA,
  // operators
  ASSIGN, EQ, ISEQ, NOTEQ, NOT, NE, LT, GT, LE, GE, PLUS, MINUS, TIMES, SLASH, LPAREN, RPAREN, LTDASH, AND, 
  // keywords
  BEGIN, CALL, CONST, DO, END, IF, ODD, PROC, THEN, VAR, WHILE, SOURCE, FUNCTION, RETURN, MAIN, PRINT, ASINT, LINE, CONS, HEAD, TAIL, NULL,
  // ids and integers
  ID, INTEGER, STRING
}
