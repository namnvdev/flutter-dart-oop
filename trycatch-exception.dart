void main(){
  int a = 2025;
  int b = 0;
  try{
    a = a~/b;
    print(a);
  }catch(ex){
    print (ex);
  }
}