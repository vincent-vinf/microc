void main() {
    int s[8];
    int j = 0;
    for j < 8 {
        s[j] = j;
        print s[j];
        j++;
    }
    println;
    for j = 0; j < 8; j++ {
        s[j] = s[j] % 2 == 0? s[j] : mul(s[j]);
        print s[j];
    }
    println;
    int x;
    int y;
    for x,y = range s {
        print x;
        print y;
        println;
    }
    print s[8];
}

int mul(int x){
    return x*2;
}