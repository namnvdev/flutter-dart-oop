class Student{
  String name;
  int _age;
  double _point;
  Student(this.name, this._age, this._point);
  String getName(){
    return name;
  }
  int getAge(){
    return _age;
  }
  double getPoint(){
    return _point;
  }

  void setName(String name){
    name = name;
  }
  void setAge(int age){
    _age = age;
  }
  void setPoint(double point){
    _point = point;
  }
}








