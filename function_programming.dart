void main() {
  final List<Map<String, String>> people = [
    {
      'name': '지수',
      'group': '블랙핑크',
    },
    {
      'name': '로제',
      'group': '블랙핑크',
    },
    {'name': 'RM', 'group': 'BTS'},
    {'name': '뷔', 'group': 'BTS'}
  ];
  // Map은 자유도가 너무 높다(신뢰성이 떨어진다.)
  // 오타, 잘못된 구조를 검증하기 어려움

  print(people);

  // parsedPeople : people이란 map 변수를 class Person으로 구조화를 진행, 클래스 형태의 리스트 List<class> 
  final parsedPeople =
      people.map((x) => Person(name: x['name']!, group: x['group']!)).toList();
  /*
     *  x['name']!을 쓰는 이유
     * x['name']에 null값이 들어갈 수 있음
     * 따라서 null 값이 들어갈 수 없는 무조건 값이 있다는 의미로
     * '!'를 뒤에 붙여 신뢰성을 준다.
     */
  print(parsedPeople);
  // print(parsedPeople); 은 parsedPeople 자체를 출력함
  // 기존에는 class 내부 변수를 출력하여 내용을 확인
  // parsedPeople.name / parsedPeople.group 은 내부 값을 확인 가능
  // print(parsedPeople); 은 'Instance of Person'을 출력(모든 클래스 변수 자체는 이 기본값을 출력)
  // override로 기본값을 내가 원하는 값으로 변경

  for (Person person in parsedPeople) {
    print(person.name);
    print(person.group);
  }
  // parsedPeople은 people의 Map 형식을 Person class 형식으로 구조화 한 뒤 내용물을 리스트로 나열한 변수
  // 결국 parsedPeople은 Person class의 내용물을 기반으로 만들어졌기 때문에 for 루프 때 사용 가능
  // List<class> 이므로 parsedPeople[0]는 Person class와 같은 변수를 가지고, 값도 가지고있음 이 값이 Person person에 대입
  

  final bts = parsedPeople.where(
    (x) => x.group == 'BTS',
  ); //.toList(); 를 입력하면 bts는 List<class> 형식이 됨
  // parsedPeople 은 리스트 변수이지만 where로 인해 반환값은 리스트가아닌 class 형식의 배열(Iterable)
  /*
   * parsedPeople = [{name : '지수', group : '블랙핑크'}, {name : '로제', group : '블랙핑크'},
   * {name : 'RM', group : 'BTS'}, {name : '뷔', group : 'BTS'}]
   * 위와 같은 상태임, List<class>
   *  
   * where은 배열마다 조건값을 비교 후 참인 값을 찾아내어 반환하므로
   * bts도 조건 값이 참인 값들로 이루어진 배열이 됨
   * bts = ((name : 'RM', group : 'BTS'), (name : '뷔', group : 'BTS'));
   * Map people과 class Person의 다른점 : Map은 key 값이 String이지만, class에서는 Map의 Key에 해당하는 것이 변수임
   * 'name' =! name
   */

  print(bts);
  
  final result = people.map((x) => Person(name : x['name']!, group : x['group']!)).where((x) => x.group == 'BTS').fold<int>(0, (prev, next) => prev + next.name.length);
  // 함수형 프로그래밍은 위와 같이 함수를 사용하여 축약하여 코드 작성 가능
  // 단점은 나중에 해석하기 어려움
  
  print(result);
}

class Person {
  final String name;
  final String group;

  Person({required this.name, required this.group});

  @override
  String toString() {
    return 'Person(name : $name, group : $group)';
  }

// dart class 내 기본 함수값 toString을 override로 새롭게 덮어쓰기
}
// class를 이용하여 신뢰도 부족한 Map의 구조를 구조화해서 신뢰성을 높임
