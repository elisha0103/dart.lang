void main(){
  Map<String, String> harryPotter = {
    'Harry Potter' : '해리포터',
    'Ron Weasley' : '론 위즐리',
    'Hermione Granger' : '헤르미온느 그레인저'
  };
  
  final result = harryPotter.map( // List를 Mapping할 때에는 map.(x) - 파라미터가 한개지만 Map을 Mapping 할때에는 파라미터 두개(key, values)
    (key, value) => MapEntry(  // MapEntry => Map의 양식대로 다시 초기화 해주는 장치
    'Harry Potter Character $key',
      '해리포터 캐릭터 $value'
    )
  );
  print(harryPotter);
  print(result);  // Map을 Mapping 하는 결과
  
  final keys = harryPotter.keys.map((x) => 'HPC $x').toList();
  final values = harryPotter.values.map((x) => '해리포터 $x').toList();  
  
  print(keys);
  print(values);
}
