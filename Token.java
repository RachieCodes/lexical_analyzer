/*Rachel Johnson
 * 
 * creates the output for a token case to be printed out when read
 */




public class Token {

  private Symbol symbol;	// current token
  private String lexeme;	// lexeme

  public Token () { }

  public Token (Symbol symbol) {
    this (symbol, null);
  }

  public Token (Symbol symbol, String lexeme) {
    this . symbol = symbol;
    this . lexeme  = lexeme;
  }

  public Symbol symbol () { return symbol; }

  public String lexeme () { return lexeme; }

  public String toString () {
    switch (symbol) {
      case PERIOD :    return "(punctuation, .) ";
      case COMMA :     return "(punctuation, ,) ";
      case SEMICOLON : return "(punctuation, ;) ";
      case LBRA  :     return "(punctuation, {) ";
      case RBRA  :     return "(punctuation, }) ";
      case ASSIGN :    return "(operator, :=) ";
      case EQ :        return "(operator, =) ";
      case ISEQ:       return "(operator, ==) ";
      case NOTEQ:      return "(operator, !=) ";
      case NOT:        return "(operator, !) ";
      case NE :        return "(operator, <>) ";
      case LT :        return "(operator, <) ";
      case GT :        return "(operator, >) ";
      case LE :        return "(operator, <=) ";
      case GE :        return "(operator, >=) ";
      case PLUS :      return "(operator, +) ";
      case MINUS :     return "(operator, -) ";
      case TIMES :     return "(operator, *) ";
      case SLASH :     return "(operator, /) ";
      case LPAREN :    return "(operator, () ";
      case RPAREN :    return "(operator, )) ";
      case LTDASH :    return "(operator, <-)";
      case AND   :     return "(operator, &&)";
      case BEGIN :     return "(keyword, begin) ";
      case CALL :      return "(keyword, call) ";
      case CONST :     return "(keyword, const) ";
      case DO :        return "(keyword, do) ";
      case END :       return "(keyword, end) ";
      case IF :        return "(keyword, if) ";
      case ODD :       return "(keyword, odd) ";
      case PROC :      return "(keyword, proc) ";
      case THEN :      return "(keyword, then) ";
      case VAR :       return "(keyword, var) ";
      case WHILE :     return "(keyword, while) ";
      case SOURCE :    return "(keyword, source) ";
      case FUNCTION :  return "(keyword, function) ";
      case RETURN :    return "(keyword, return) ";
      case MAIN:       return "(keyword, main) ";
      case PRINT:      return "(keyword, print) ";
      case ASINT:      return "(keyword, as.integer) ";
      case LINE:       return "(keyword, readline) ";
      case CONS:       return "(keyword, cons) ";
      case HEAD:       return "(keyword, head) ";
      case TAIL:       return "(keyword, tail) ";
      case NULL:       return "(keyword, null) ";
      case ID :        return "(identifier, " + lexeme + ") ";
      case INTEGER :   return "(integer, " + lexeme + ") ";
      case STRING :    return "(string, " + lexeme + ") ";
      default : 
	ErrorMessage . print (0, "Unrecognized token");
        return null;
    }
  }

}
