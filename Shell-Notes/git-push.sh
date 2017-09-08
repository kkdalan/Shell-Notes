#!/bin/sh
# ------------------------------------------------------
# tput setab [1-7] # Set the background colour using ANSI escape
# tput setaf [1-7] # Set the foreground colour using ANSI escape

# Num  Colour    #define         R G B
# 
# 0    black     COLOR_BLACK     0,0,0
# 1    red       COLOR_RED       1,0,0
# 2    green     COLOR_GREEN     0,1,0
# 3    yellow    COLOR_YELLOW    1,1,0
# 4    blue      COLOR_BLUE      0,0,1
# 5    magenta   COLOR_MAGENTA   1,0,1
# 6    cyan      COLOR_CYAN      0,1,1
# 7    white     COLOR_WHITE     1,1,1

# change foreground color
# echo "$(tput setaf 4)";
# change background color
# echo "$(tput setab 7)";
# ------------------------------------------------------
echo -e "setaf 7\n setab 4" | tput -S

echo "====> start to push files to Gitlab...";
echo "  ==> reset staged files...";
git reset .;

echo "====> start to add files with changed...";
echo "  ==> adding */paymenttool/*";
git add .;
 
echo "====> start to commit and push files onto gitlab...";

# WARNNING:
# variable set with space around '=' is not allowed in bash-shell
message="$1"

#echo "  ==> commit message: $message";
#git commit -m "$message";
#echo "  ==> pushing staged files -> Gitlab";
#git push origin DEV;

echo "====> [ok] Successfully pushed files to Gitlab!";

echo -e "setf 7\n setb 0" | tput -S