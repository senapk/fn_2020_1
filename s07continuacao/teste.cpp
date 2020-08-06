



int main(){
    int x = 5;
    auto soma2 = [x](auto a, auto b){x = x + 1; return x + a + b;}
}