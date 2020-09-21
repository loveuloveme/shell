function calc_(){
    echo -e "\033[1;31m CALC: \033[0m";
    echo -e "\033[1;34m Actions: \033[0m";
    echo "* sum";
    echo "* sub";
    echo "* mul";
    echo "* div";

    printf  "\033[1;34m Action: \033[0m";
    read action;
    printf  "\033[1;34m Argument 1: \033[0m";
    read arg1;
    printf  "\033[1;34m Argument 2: \033[0m";
    read arg2;
    calc $action $arg1 $arg2;
}