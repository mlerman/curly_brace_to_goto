# MIT License

# Copyright (c) 2025 Mikhael Lerman checkthisresume.com

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

import argparse
import re
import fileinput
from pythonds.basic import Stack

open_symbol="{"
close_symbol="}"
size_symbol=3;

open_symbol_str="{{{"
close_symbol_str="}}}"

#debug = True
debug = False

def parChecker(inputString):
    s = Stack()
    stype = Stack()
    scondition = Stack()
    
    balanced = True
    index = 0
    previous_index = 0
    popped = 0
    clause_type = 0
    clause_condition = ""
    fw = open(args.file+".curlyout", "w")
    str_label_end = ""
    str_condition = ""
    current_string_splitted = ""
    while index < len(inputString) and balanced:
        symbol = inputString[index]
        symbol_str = inputString[index:index+size_symbol]

        if (symbol_str != open_symbol_str) and (symbol_str != close_symbol_str):
            index = index + 1
            continue
        
        #print "-["+inputString[previous_index:index]+"]-"
        
        # from here and down, we have hit an open {{{
        
        is_if = True    # default
        is_else = False
        is_elseif = False
        
        end_printed = False
        
        current_string = inputString[previous_index:index]
        first_word = ""

        current_string_splitted = current_string.split('\n')
        if len(current_string_splitted) > 1:
            last_line_of_current_string=current_string_splitted[-2]
        else :
            last_line_of_current_string=current_string_splitted[0]
        
        
        if last_line_of_current_string.strip():      # only if not empty
            first_word = last_line_of_current_string.split()[0]
        if first_word == "w_else" :
            fw.write(current_string.replace("w_else", "", 1))     #print all text but skip the word else
            is_else = True
            is_if = False
        elif first_word == "else" :
            fw.write(current_string.replace("else", "", 1))     #print all text but skip the word else
            is_else = True
            is_if = False
        elif first_word == "w_elseif":
            fw.write(current_string.replace("w_elseif", "w_if", 1).rstrip())     #print all text but replace the word elseif by if
            is_elseif = True
            is_if = False
        elif first_word == "elseif":
            fw.write(current_string.replace("elseif", "if", 1).rstrip())     #print all text but replace the word elseif by if
            is_elseif = True
            is_if = False
        else:
            fw.write(current_string.rstrip())     #print all text until open or close symbol
                                                                     #remove the end of line 
                                                                     
        ctype=0;
        if first_word == "w_if":
            ctype=11
        if first_word == "if":
            ctype=1
        if first_word == "w_else":
            ctype=12
        if first_word == "else":
            ctype=2
        if first_word == "w_elseif":
            ctype=13
        if first_word == "elseif":
            ctype=3

        if (symbol_str == open_symbol_str) :
            if (ctype == 1) or (ctype == 3) or (ctype == 11) or (ctype == 13):     # type if (1) or elseif (3)
                fw.write(" goto LABEL_BEGIN_" + str(index))
                fw.write("\n")

                fw.write(" goto LABEL_CLOSE_" + str(index) + "_END")
                str_condition = last_line_of_current_string.strip()
                
                str_condition = str_condition.replace("w_if","")
                str_condition = str_condition.replace("if","")
                str_condition = str_condition.replace("w_elseif","")
                str_condition = str_condition.replace("elseif","")
                fw.write("\n")

                str_label_end = ":LABEL_CLOSE_" + str(index) + "_END"        #we need this label later
            else:               # type else 2 or w_else 12
                if (ctype == 2):
                    fw.write(" if " +clause_condition+ " goto LABEL_CLOSE_" + str(index) + " \n")
                if (ctype == 12):
                    fw.write(" w_if " +clause_condition+ " goto LABEL_CLOSE_" + str(index) + " \n")

            if debug :
                fw.write("rem index : " + str(index) + " popped : "+ str(popped) +" type " +str(clause_type)+ " previous_index " +str(previous_index) + " str_label_end " +str_label_end+" ligne 55\n")

            fw.write(":LABEL_BEGIN_" + str(index))
            if debug :
                fw.write(" & rem line 89")
            fw.write("\n")

        if symbol_str == open_symbol_str:
            s.push(index)
            stype.push(ctype)
            scondition.push(str_condition)
           
            index = index + size_symbol
        else:
            if s.isEmpty():
                balanced = False
            else:
                if symbol_str == close_symbol_str:
                #if symbol == close_symbol:
                    popped = s.pop()
                    clause_type = stype.pop()
                    clause_condition = scondition.pop()

                    #fw.write("rem pop index=" + str(index) + " }}}, popped index : " +  str(popped) + "\n")
                    fw.write("\n:LABEL_CLOSE_"+ str(popped))
                    if debug :
                        fw.write(" & rem line 120")
                    fw.write("\n")

                    if debug :
                        fw.write("rem index : " + str(index) + " popped : "+ str(popped) + " previous_index " +str(previous_index) + " is_else is " + str(is_else) +  " added_label_end " +str(added_label_end)+ " str_label_end " +str_label_end+ " clause_type "+str(clause_type)+" line 123 \n")
                    

                    index = index + size_symbol

                    # necessaire pour le cas single
                    #if not added_label_end :
                    if True :       # sinon fails qd 2 if successifs
                        fw.write("\n:LABEL_CLOSE_"+ str(popped) + "_END")
                        if debug :
                            fw.write(" & rem line 131 need to remove for when else clause is present")       #comment
                        fw.write("\n")
                        end_printed = True
                        

        #index = index + 1
        previous_index = index
    fw.write(inputString[previous_index:index])
    fw.close()
    
    if balanced and s.isEmpty():
        return True
    else:
        return False
    
def remove_block_comments(string):
    string = re.sub(re.compile("///\\*.*?\\*///",re.DOTALL ) ,"rem comment removed by curly_brace_to_goto" ,string) # remove all occurrences streamed comments (///*COMMENT *///) from string
    string = string.replace("rem comment removed by curly_brace_to_goto","") # may add an empty line
    #string = string.replace("\nrem comment removed by curly_brace_to_goto","")
    #string = string.replace("rem comment removed by curly_brace_to_goto\n","")
    return string

def beautify(inputString):
	matches = re.finditer(open_symbol_str, inputString)
	matches_positions = [match.start() for match in matches]
	indexes_eol = [x.start() for x in re.finditer('\n', inputString)]
	
	# regex : ^[ ]*{{{  plusieur espaces avant {{{, remove spaces before {{{
	str = re.sub(r"[\r|\n|\t| ]*{{{", "{{{", inputString)
	
	# add anyway a end of line before any "{{{" will be reduced to one later
	str = str.replace(open_symbol_str, "\n" + open_symbol_str)


	#  regex : [\r\n]+{{{  plusieurs eol precedant "{{{" remplace par un seul, reduce eols to one
	str = re.sub(r"[\r\n]+"+ open_symbol_str, "\n"+ open_symbol_str, str)
	# remove block comment is ///* hghfffgjh *///
	str = remove_block_comments(str)
    
    # remove empty lines
	str = re.sub(r'\n\s*\n','\n',str,count=re.MULTILINE)

	return str

parser = argparse.ArgumentParser()
parser.add_argument("--file", help="file to process")
args = parser.parse_args()

strfile=""
if args.file is not None:
    
    with open(args.file, 'r') as fr:
        #strfile = fr.read().replace('\n', '')      # remove the end of lines
        strfile = fr.read()                         # keep the end of lines

strfile = beautify(strfile)
print(parChecker(strfile))

