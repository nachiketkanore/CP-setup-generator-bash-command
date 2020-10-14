# to be pasted in your .bashrc file
# shortcut to create folder-setup for CP problem
go() {
    mkdir $1 || return
    echo 'Done'
    cp ~/.template/sol.cpp $1/sol.cpp    # solution file
    cp ~/.template/gen.cpp $1/gen.cpp    # testcases generator file
    cp ~/.template/s.sh $1/s.sh          # stress testing bash script
    
    # Without random quote
    # echo -e "/*\nAuthor: Nachiket Kanore\nCreated: $(date)\n*/\n$(cat $1/sol.cpp)" > $1/sol.cpp

    # With random quote
    echo -e "*/\n$(cat $1/sol.cpp)" > $1/sol.cpp
    echo -e "(ツ) $(shuf -n 1 ~/.template/quotes)\n$(cat $1/sol.cpp)" > $1/sol.cpp
    echo -e "Created: $(date)\n$(cat $1/sol.cpp)" > $1/sol.cpp
    echo -e "Author: Nachiket Kanore\n$(cat $1/sol.cpp)" > $1/sol.cpp
    echo -e "/*\n$(cat $1/sol.cpp)" > $1/sol.cpp
    subl $1/sol.cpp                     # you can change this to open in your desired editor
}
