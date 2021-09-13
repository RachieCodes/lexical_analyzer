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



Output of the project is shown below:


rnj0044@cse02:~/lex_analyser$ jflex microR.jflex
Reading "microR.jflex"
Constructing NFA : 310 states in NFA
Converting NFA to DFA :
.........................................................................................................................................................
155 states before minimization, 142 states in minimized DFA
Old file "microRLexer.java" saved as "microRLexer.java~"
Writing code to "microRLexer.java"
rnj0044@cse02:~/lex_analyser$ javac microRLexer.java
rnj0044@cse02:~/lex_analyser$ javac microRLex.java
rnj0044@cse02:~/lex_analyser$ java microRLex < Test1.R
Source Program
--------------

# Test1.R

# This program tests basic statements and expressions.


source ("List.R")

main <- function () {
  x <- as.integer (readline ());
  y <- as.integer (readline ());
  q <- 0;
  r <- x;
  while (r >= y) {
    q <- q + 1;
    r <- r - y;
  }
  print (q);
  print (r);
}

List of Tokens
--------------

(keyword, source)
(operator, ()
(string, "List.R")
(operator, ))
(keyword, main)
(operator, <-)
(keyword, function)
(operator, ()
(operator, ))
(punctuation, {)
(identifier, x)
(operator, <-)
(keyword, as.integer)
(operator, ()
(keyword, readline)
(operator, ()
(operator, ))
(operator, ))
(punctuation, ;)
(identifier, y)
(operator, <-)
(keyword, as.integer)
(operator, ()
(keyword, readline)
(operator, ()
(operator, ))
(operator, ))
(punctuation, ;)
(identifier, q)
(operator, <-)
(integer, 0)
(punctuation, ;)
(identifier, r)
(operator, <-)
(identifier, x)
(punctuation, ;)
(keyword, while)
(operator, ()
(identifier, r)
(operator, >=)
(identifier, y)
(operator, ))
(punctuation, {)
(identifier, q)
(operator, <-)
(identifier, q)
(operator, +)
(integer, 1)
(punctuation, ;)
(identifier, r)
(operator, <-)
(identifier, r)
(operator, -)
(identifier, y)
(punctuation, ;)
(punctuation, })
(keyword, print)
(operator, ()
(identifier, q)
(operator, ))
(punctuation, ;)
(keyword, print)
(operator, ()
(identifier, r)
(operator, ))
(punctuation, ;)
(punctuation, })

rnj0044@cse02:~/lex_analyser$ java microRLex < Test2.R
Source Program
--------------

# Test2.R

# This program tests list manipulation operators.

source ("List.R")

main <- function () {
  r <- 2;
  my_list <- null ();
  while (r < 5) {
    my_list <- cons (r, my_list);
    r <- r + 1;
  }
  h <- head (my_list);
  my_list_tl <- tail (my_list);
  print (h);
  print (my_list_tl);
}

List of Tokens
--------------

(keyword, source)
(operator, ()
(string, "List.R")
(operator, ))
(keyword, main)
(operator, <-)
(keyword, function)
(operator, ()
(operator, ))
(punctuation, {)
(identifier, r)
(operator, <-)
(integer, 2)
(punctuation, ;)
(identifier, my_list)
(operator, <-)
(keyword, null)
(operator, ()
(operator, ))
(punctuation, ;)
(keyword, while)
(operator, ()
(identifier, r)
(operator, <)
(integer, 5)
(operator, ))
(punctuation, {)
(identifier, my_list)
(operator, <-)
(keyword, cons)
(operator, ()
(identifier, r)
(punctuation, ,)
(identifier, my_list)
(operator, ))
(punctuation, ;)
(identifier, r)
(operator, <-)
(identifier, r)
(operator, +)
(integer, 1)
(punctuation, ;)
(punctuation, })
(identifier, h)
(operator, <-)
(keyword, head)
(operator, ()
(identifier, my_list)
(operator, ))
(punctuation, ;)
(identifier, my_list_tl)
(operator, <-)
(keyword, tail)
(operator, ()
(identifier, my_list)
(operator, ))
(punctuation, ;)
(keyword, print)
(operator, ()
(identifier, h)
(operator, ))
(punctuation, ;)
(keyword, print)
(operator, ()
(identifier, my_list_tl)
(operator, ))
(punctuation, ;)
(punctuation, })

rnj0044@cse02:~/lex_analyser$ java microRLex < Test3.R
Source Program
--------------

# Test3.R

# This program tests non-recursive functions.

source ("List.R")

area <- function (x, y, h) {
  z <- 2 * (x * y + (x * h) + y * h);
  return (z);
}

main <- function () {
  a <- as.integer (readline ());
  b <- as.integer (readline ());
  h <- as.integer (readline ());
  s <- area (a, b, h);
  print (s);
}

List of Tokens
--------------

(operator, -)
(identifier, recursive)
(identifier, functions)
(punctuation, .)
(keyword, source)
(operator, ()
(string, "List.R")
(operator, ))
(identifier, area)
(operator, <-)
(keyword, function)
(operator, ()
(identifier, x)
(punctuation, ,)
(identifier, y)
(punctuation, ,)
(identifier, h)
(operator, ))
(punctuation, {)
(identifier, z)
(operator, <-)
(integer, 2)
(operator, *)
(operator, ()
(identifier, x)
(operator, *)
(identifier, y)
(operator, +)
(operator, ()
(identifier, x)
(operator, *)
(identifier, h)
(operator, ))
(operator, +)
(identifier, y)
(operator, *)
(identifier, h)
(operator, ))
(punctuation, ;)
(keyword, return)
(operator, ()
(identifier, z)
(operator, ))
(punctuation, ;)
(punctuation, })
(keyword, main)
(operator, <-)
(keyword, function)
(operator, ()
(operator, ))
(punctuation, {)
(identifier, a)
(operator, <-)
(keyword, as.integer)
(operator, ()
(keyword, readline)
(operator, ()
(operator, ))
(operator, ))
(punctuation, ;)
(identifier, b)
(operator, <-)
(keyword, as.integer)
(operator, ()
(keyword, readline)
(operator, ()
(operator, ))
(operator, ))
(punctuation, ;)
(identifier, h)
(operator, <-)
(keyword, as.integer)
(operator, ()
(keyword, readline)
(operator, ()
(operator, ))
(operator, ))
(punctuation, ;)
(identifier, s)
(operator, <-)
(identifier, area)
(operator, ()
(identifier, a)
(punctuation, ,)
(identifier, b)
(punctuation, ,)
(identifier, h)
(operator, ))
(punctuation, ;)
(keyword, print)
(operator, ()
(identifier, s)
(operator, ))
(punctuation, ;)
(punctuation, })

rnj0044@cse02:~/lex_analyser$ java microRLex < Test4.R
Source Program
--------------

# Test4.R

# This program tests recursive functions.

source ("List.R")

facto <- function (x) {
  if (x == 1) {
    s <- 1;
  }
  else {
    s <- x * facto (x - 1);
  }
  return (s);
}

main <- function () {
  i <- as.integer (readline ());
  fac <- facto (i);
  print (fac);
}

List of Tokens
--------------

(keyword, source)
(operator, ()
(string, "List.R")
(operator, ))
(identifier, facto)
(operator, <-)
(keyword, function)
(operator, ()
(identifier, x)
(operator, ))
(punctuation, {)
(keyword, if)
(operator, ()
(identifier, x)
(operator, ==)
(integer, 1)
(operator, ))
(punctuation, {)
(identifier, s)
(operator, <-)
(integer, 1)
(punctuation, ;)
(punctuation, })
(identifier, else)
(punctuation, {)
(identifier, s)
(operator, <-)
(identifier, x)
(operator, *)
(identifier, facto)
(operator, ()
(identifier, x)
(operator, -)
(integer, 1)
(operator, ))
(punctuation, ;)
(punctuation, })
(keyword, return)
(operator, ()
(identifier, s)
(operator, ))
(punctuation, ;)
(punctuation, })
(keyword, main)
(operator, <-)
(keyword, function)
(operator, ()
(operator, ))
(punctuation, {)
(identifier, i)
(operator, <-)
(keyword, as.integer)
(operator, ()
(keyword, readline)
(operator, ()
(operator, ))
(operator, ))
(punctuation, ;)
(identifier, fac)
(operator, <-)
(identifier, facto)
(operator, ()
(identifier, i)
(operator, ))
(punctuation, ;)
(keyword, print)
(operator, ()
(identifier, fac)
(operator, ))
(punctuation, ;)
(punctuation, })

rnj0044@cse02:~/lex_analyser$ java microRLex < Test5.R
Source Program
--------------


# Test5.R

# This program tests recursive functions on lists.

source ("List.R")

cons_my_list <- function (r, my_list) {
  if (r <= 10) {
    my_list <- cons (r, my_list);
    my_list <- cons_my_list (r + 1, my_list);
  }
  return (my_list);
}

main <- function () {
# r <- as.integer (readline ());
# my_list <- null ();
# my_list <- cons_my_list (r, my_list);
# print (my_list);
  print (cons_my_list (as.integer (readline ()), null ())); # nested function calls
}

List of Tokens
--------------

(keyword, source)
(operator, ()
(string, "List.R")
(operator, ))
(identifier, cons_my_list)
(operator, <-)
(keyword, function)
(operator, ()
(identifier, r)
(punctuation, ,)
(identifier, my_list)
(operator, ))
(punctuation, {)
(keyword, if)
(operator, ()
(identifier, r)
(operator, <=)
(integer, 10)
(operator, ))
(punctuation, {)
(identifier, my_list)
(operator, <-)
(keyword, cons)
(operator, ()
(identifier, r)
(punctuation, ,)
(identifier, my_list)
(operator, ))
(punctuation, ;)
(identifier, my_list)
(operator, <-)
(identifier, cons_my_list)
(operator, ()
(identifier, r)
(operator, +)
(integer, 1)
(punctuation, ,)
(identifier, my_list)
(operator, ))
(punctuation, ;)
(punctuation, })
(keyword, return)
(operator, ()
(identifier, my_list)
(operator, ))
(punctuation, ;)
(punctuation, })
(keyword, main)
(operator, <-)
(keyword, function)
(operator, ()
(operator, ))
(punctuation, {)
(operator, <-)
(keyword, as.integer)
(operator, ()
(keyword, readline)
(operator, ()
(operator, ))
(operator, ))
(punctuation, ;)
(operator, <-)
(keyword, null)
(operator, ()
(operator, ))
(punctuation, ;)
(operator, <-)
(identifier, cons_my_list)
(operator, ()
(identifier, r)
(punctuation, ,)
(identifier, my_list)
(operator, ))
(punctuation, ;)
(operator, ()
(identifier, my_list)
(operator, ))
(punctuation, ;)
(keyword, print)
(operator, ()
(identifier, cons_my_list)
(operator, ()
(keyword, as.integer)
(operator, ()
(keyword, readline)
(operator, ()
(operator, ))
(operator, ))
(punctuation, ,)
(keyword, null)
(operator, ()
(operator, ))
(operator, ))
(operator, ))
(punctuation, ;)
(punctuation, })

rnj0044@cse02:~/lex_analyser$ java microRLex < Test6.R
Source Program
--------------

# Test6.R

# This program tests two recursive functions on lists.

source ("List.R")

cons_a_list <- function (r, list) {
  my_list <- list;
  if (r != 0) {
    my_list <- cons_a_list (r - 1, cons (r, list));
  }
  return (my_list);
}

equal <- function (list1, list2) {
  if (length (list1) != length (list2)) {
    result <- 0;
  }
  else {
    if (length (list1) == 0 && length (list2) == 0) {
      result <- 1;
    }
    else {
      if (head (list1) != head (list2)) {
        result <- 0;
      }
      else {
        result <- equal (tail (list1), tail (list2));
      }
    }
  }
  return (result);
}

main <- function () {
  r <- as.integer (readline ());
  my_list <- null ();
  l1 <- cons_a_list (r, my_list);
  l2 <- cons_a_list (r, my_list);
  l3 <- cons_a_list (r - 1, my_list);
  l1_eq_l2 <- equal (l1, l2);
  l1_eq_l3 <- equal (l1, l3);
  print (l1_eq_l2);
  print (l1_eq_l3);
}

List of Tokens
--------------

(keyword, source)
(operator, ()
(string, "List.R")
(operator, ))
(identifier, cons_a_list)
(operator, <-)
(keyword, function)
(operator, ()
(identifier, r)
(punctuation, ,)
(identifier, list)
(operator, ))
(punctuation, {)
(identifier, my_list)
(operator, <-)
(identifier, list)
(punctuation, ;)
(keyword, if)
(operator, ()
(identifier, r)
(operator, !=)
(integer, 0)
(operator, ))
(punctuation, {)
(identifier, my_list)
(operator, <-)
(identifier, cons_a_list)
(operator, ()
(identifier, r)
(operator, -)
(integer, 1)
(punctuation, ,)
(keyword, cons)
(operator, ()
(identifier, r)
(punctuation, ,)
(identifier, list)
(operator, ))
(operator, ))
(punctuation, ;)
(punctuation, })
(keyword, return)
(operator, ()
(identifier, my_list)
(operator, ))
(punctuation, ;)
(punctuation, })
(identifier, equal)
(operator, <-)
(keyword, function)
(operator, ()
(identifier, list1)
(punctuation, ,)
(identifier, list2)
(operator, ))
(punctuation, {)
(keyword, if)
(operator, ()
(identifier, length)
(operator, ()
(identifier, list1)
(operator, ))
(operator, !=)
(identifier, length)
(operator, ()
(identifier, list2)
(operator, ))
(operator, ))
(punctuation, {)
(identifier, result)
(operator, <-)
(integer, 0)
(punctuation, ;)
(punctuation, })
(identifier, else)
(punctuation, {)
(keyword, if)
(operator, ()
(identifier, length)
(operator, ()
(identifier, list1)
(operator, ))
(operator, ==)
(integer, 0)
(operator, &&)
(identifier, length)
(operator, ()
(identifier, list2)
(operator, ))
(operator, ==)
(integer, 0)
(operator, ))
(punctuation, {)
(identifier, result)
(operator, <-)
(integer, 1)
(punctuation, ;)
(punctuation, })
(identifier, else)
(punctuation, {)
(keyword, if)
(operator, ()
(keyword, head)
(operator, ()
(identifier, list1)
(operator, ))
(operator, !=)
(keyword, head)
(operator, ()
(identifier, list2)
(operator, ))
(operator, ))
(punctuation, {)
(identifier, result)
(operator, <-)
(integer, 0)
(punctuation, ;)
(punctuation, })
(identifier, else)
(punctuation, {)
(identifier, result)
(operator, <-)
(identifier, equal)
(operator, ()
(keyword, tail)
(operator, ()
(identifier, list1)
(operator, ))
(punctuation, ,)
(keyword, tail)
(operator, ()
(identifier, list2)
(operator, ))
(operator, ))
(punctuation, ;)
(punctuation, })
(punctuation, })
(punctuation, })
(keyword, return)
(operator, ()
(identifier, result)
(operator, ))
(punctuation, ;)
(punctuation, })
(keyword, main)
(operator, <-)
(keyword, function)
(operator, ()
(operator, ))
(punctuation, {)
(identifier, r)
(operator, <-)
(keyword, as.integer)
(operator, ()
(keyword, readline)
(operator, ()
(operator, ))
(operator, ))
(punctuation, ;)
(identifier, my_list)
(operator, <-)
(keyword, null)
(operator, ()
(operator, ))
(punctuation, ;)
(identifier, l1)
(operator, <-)
(identifier, cons_a_list)
(operator, ()
(identifier, r)
(punctuation, ,)
(identifier, my_list)
(operator, ))
(punctuation, ;)
(identifier, l2)
(operator, <-)
(identifier, cons_a_list)
(operator, ()
(identifier, r)
(punctuation, ,)
(identifier, my_list)
(operator, ))
(punctuation, ;)
(identifier, l3)
(operator, <-)
(identifier, cons_a_list)
(operator, ()
(identifier, r)
(operator, -)
(integer, 1)
(punctuation, ,)
(identifier, my_list)
(operator, ))
(punctuation, ;)
(identifier, l1_eq_l2)
(operator, <-)
(identifier, equal)
(operator, ()
(identifier, l1)
(punctuation, ,)
(identifier, l2)
(operator, ))
(punctuation, ;)
(identifier, l1_eq_l3)
(operator, <-)
(identifier, equal)
(operator, ()
(identifier, l1)
(punctuation, ,)
(identifier, l3)
(operator, ))
(punctuation, ;)
(keyword, print)
(operator, ()
(identifier, l1_eq_l2)
(operator, ))
(punctuation, ;)
(keyword, print)
(operator, ()
(identifier, l1_eq_l3)
(operator, ))
(punctuation, ;)
(punctuation, })
