void main(){
  //List는 중복값이 들어갈 수 있지만, Set은 중복값이 들어갈 수 없다.
  //List와 Set은 서로 비슷함
  
  final Set<String> names = {
  'Code Factory',
  'Flutter',
  'Black Pink',
  'Flutter'
  };
  
  print(names); // 두개인 flutter은 한개만 출력됨
  
  names.add('Jenny'); // Set에서 추가
  
  print(names);
  
  names.remove('Jenny'); // Set에서 삭제
  
  print(names);
  
  print(names.contains('Flutter')); // contains - 항목이 존재하는가?
}
