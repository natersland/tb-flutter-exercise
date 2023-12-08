void main(){
  print(sum(7));
}
int sum(int num){
// Write code here
// Ex. Sum(3) = 6
  int sum = 0;
  for(int i = 1; i <= num; i++){
    sum += i;
  }
  return sum;
}