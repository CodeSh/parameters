VAR="HI EVERYBODY IM A SCRIPT BASH TO TEST PARAMETERS"
  
<<comment
1   = /bin/bash -c 'echo "$1"' $VAR
1-  =	/bin/bash -c 'if [ $# -gt 0 ]; then echo "$@" ; fi' $VAR
2   = /bin/bash -c 'echo "$2"' $VAR
2-  = /bin/bash -c 'if [ $# -gt 1 ]; then echo "$(echo "$@" | cut -d " " -f2-)" ; fi' $VAR
3   = /bin/bash -c 'echo "$3"' $VAR
3-  = /bin/bash -c 'if [ $# -gt 2 ]; then echo "$(echo "$@" | cut -d " " -f3-)" ; fi' $VAR
4   = /bin/bash -c 'echo "$4"' $VAR
4-  = /bin/bash -c 'if [ $# -gt 3 ]; then echo "$(echo "$@" | cut -d " " -f4-)" ; fi' $VAR
5   = /bin/bash -c 'echo "$5"' $VAR
5-  = /bin/bash -c 'if [ $# -gt 4 ]; then echo "$(echo "$@" | cut -d " " -f5-)" ; fi' $VAR

NUMBER  = That's representing take some variable exactly
NUMBER- = That's representing take some variable and the text then

Ex. 3- returns of $VAR
  IM A SCRIPT BASH TO TEST PARAMETERS
comment


echo $(/bin/bash -c 'if [ $# -gt 0 ]; then echo "$@" ; fi' $VAR)
