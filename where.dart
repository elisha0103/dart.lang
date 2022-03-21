void main(){
  List<Map<String, String>> people = [  //List에 Map이 들어감
    {'name' : '로제',
    'group' : '블랙핑크'
     },
    {
      'name' : '지수',
      'group' : '블랙핑',
    },
    {
      'name' : 'RM',
      'group' : 'BTS',
    },
    {
      'name' : 'RM',
      'group' : 'BTS'
    },
    {
      'name' : '뷔',
      'group' : 'BTS'
    }
  ];
  
  print(people);
  
  people.where((x) => x['group'] == '블랙핑크');
  // where는 people의 리스트 index 값을 모두 확인한다.
  // where의 값은 true, false를 구분한다.
  // true면 해당 index의 모든 값을 유지, false면 값을 삭제 
  // x['group'] = x의 key를 불러옴
  
  final blackPink = people.where((x) => x['group'] == '블랙핑크').toList();
  final bts = people.where((x) => x['group'] == 'BTS').toList();
  
  print(blackPink);
  print(bts);  // 원하는 값을 필터링해서 출력
}
