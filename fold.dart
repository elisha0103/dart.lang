void main(){
  List<int> numbers = [1,3,5,7,9];
  
  final sum = numbers.fold<int>(0, (prev, next){
    print('-------------');
    print('prev : $prev');
    print('next : $next');
    print('total : ${prev + next}');
  // fold 함수는 2개의 파라미터를 갖음
  // 첫 번째 : 시작 값, 두 번째 : (prev, next)
  return prev + next;
});
  
  // reduce랑 다른점은 reduce는 함수 처음 실행시 List의 첫 번째 값이 prev로 자동 저장되지만,
  // fold는 첫 번째 값을 따로 설정 가능
  // reduce는 reduce 적용 변수와 reduce return 타입이 일치해야하지만
  // fold는 return 값 타입을 따로 설정할 수 있음(서로 타입이 달라도 타입 설정이 가능하기 때문에 에러발생 하지 않음)
  
  final sum2 = numbers.fold<int>(0, (prev, next) => prev + next);
  // 함수 간소화 가능
  
  print(sum);
  
  List<String> words = [
    '안녕하세요',
    '저는',
    '코드팩토리입니다.'
  ];
  
  final sentence = words.fold<String>('', (prev, next) => prev + next);
  print(sentence);
  
  final count = words.fold<int>(0, (prev,next) => prev + next.length);
  // 처음 words는 String 타입으로 선언, fold<int>로 반환값 int 타입
  // fold 적용 변수(words)와 fold return값(prev + next.length)의 타입이 일치하지 않아도 실행 가능
  print(count);
}
                                
