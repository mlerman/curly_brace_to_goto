"# curly_brace_to_goto" 

This run.py python script enhances the syntax and the structure of the Windows batch files.

1) It allows using if/else statements with clauses of curly braces, opening with "{{{" and closing with "}}}".
   
2) It also allows incorporating blocks of comments begining with "///\*" and ending with "\*///"

For example:

///* This is a comment: It is legal to write the following code in a batch file (.bat) *///

set VAL=123

if "%VAL%" == "456" {{{ 

echo on ne passe pas ici

}}} else {{{

echo on passe ici

}}}


The script creates a new batch file in which the "if" and "else" clauses are replaced with goto statements to the appropriate labels and locations.
The clauses can be on the same line or on different lines, and with different alineas. 
They can be nested indefinitely, allowing the implementation of a complex logic.

How it works?

1) Write your batch file with the extended syntax presented here.
2) Process your edited file with the present program to generate a new batch file.
3) Run the new batch file normally.

Step 2) is needed only when the original file is changed. There is no delay or penalty at run time.

Try it and enjoy !

MiKL~



