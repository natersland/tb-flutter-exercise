void main() {
  print(fibo(15));
}

int fibo(int n) {
  if (n == 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  } else {
    return fibo(n - 1) + fibo(n - 2);
  }
}


// F(n)=F(n−1)+F(n−2)
