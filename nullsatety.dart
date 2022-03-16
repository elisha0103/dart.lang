void main(){
  //nullable - null이 될 수 있다.
  //non-nullavble - null이 될 수 없다.
  //null - 아무런 값도 있지 않다.
  
  String name = 'Code Factory';
  
  print(name);
  
  String? name2 = 'Black Pink'; // nullable Type
  
  
  print(name2!); //non-nullable - 현재 name2에 값이 저장되어있으므로 '!'를 붙여도 에러없음.
  
  
  
}
