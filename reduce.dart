void main(){
  List<int> numbers = [
    1,
    3,
    5,
    7,
    9
  ];
  
  final result = numbers.reduce((prev, next){  // reduce는 2개의 파라미터가 필요
    print('-------------');
    print('previous : $prev');
    print('next : $next');
    print('total : ${prev + next}');
    
    return prev + next;
  });
  
  /*
   * reduce는 prev, next 파라미터가 필요함
   * reduce는 numbers의 index 만큼 반복되는데,
   * 처음 함수 실행시에는 prev = index 0값(첫번째 값)이 저장됨
   * 처음 함수 실행시에는 next = index 1값(두번째 값)이 저장됨
   * 다음 함수 실행시에는 prev = return, next = index 2값(세번째 값)이 저장됨
   * 게속 반복되면서 prev는 지난 차수 return값이 저장되고, 모든 index 값을 방문하게 되면 함수는 종료
   */
  
  final result2 = numbers.reduce((prev, next) => prev + next);
  // 함수 간소화
   
  print(result);
  print(result2);
  
  List<String> words = [
    '안녕하세요',
    '저는',
    '코드팩토리입니다.'
  ];
  
  final sentence = words.reduce((prev, next) => prev + next);
  
  print(sentence);
  
  words.reduce((prev, next) => prev.length + next.length);
  // 에러 발생 이유 : reduce 함수를 적용하는 변수의 타입(words)과 reduce 함수 return 값의 타입이 일치해야함
  // 함수 적용하는 변수 = words(String), reduce return 값 = prev.length + next.length(int)
  
}
