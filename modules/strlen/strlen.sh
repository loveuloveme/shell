function strlen(){
    echo "this string" | grep -oP . | grep -c .
}