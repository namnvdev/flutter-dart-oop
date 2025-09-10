/**
 * a demo class
 */
class Student {
  String sName;
  int? luckNumber; //This number to get a reward in the game
  Student({required this.sName, this.luckNumber});
  ///show the lucky number of this student
  void showLuckyNumber(){
    print ("Congratz $sName, your lucky number is $luckNumber");
  }
}
void main(){
  var s = new Student(sName:"Nguyen Van A", luckNumber: 99);
  s.showLuckyNumber();
}