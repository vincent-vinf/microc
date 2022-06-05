void main() {
    int s[8];
    int j;
    // 用普通的for赋值
    for (j = 0; j < 8; j++){
        s[j] = j*2;
        print s[j];
    }
    int x;
    int y;
    for x,y = range s {
        print x;
        print y;
        println;
    }
}
