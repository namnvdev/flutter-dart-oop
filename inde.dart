void main(){
  var a = 10;
  int b = 10 * a++ ;
  print ('b = 10 * a++: $b');
  print ('a++: $a');
  b = 10* ++a;
  print ('b = 10 * ++a: $b');
  print ('++a: $a');


}