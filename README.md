"# curly_brace_to_goto" 
This run.py python script enhances the syntax and the structure of the Windows batch files.

It allows using if/else statements with clauses of curly braces, opening with {{{ and closing with }}}
It also allows incorporating block comment begining with ///* and ending with *///

For example:

///* This is a comment: It is legal to write the following code *///

set VAL=123
if "%VAL%" == "456" {{{ 
echo on ne passe pas ici
}}} else {{{
echo on passe ici
}}}

The script creates a new batch file in which the clauses are replaced with goto statements to appropriate labels locations.
The clauses can be on the same line or different line. 
They can be nested indefinitely allowing the implementation of a complex logic.



