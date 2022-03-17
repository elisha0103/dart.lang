void main() {
  Lecture<String> lecture1 = Lecture('123', 'lecture1');

  lecture1.printIdType();

  Lecture2<String, int> lecture2 = Lecture2('123', 3123);
  lecture2.printIdType();
}

// generic - 타입을 외부에서 받을 때 사용

class Lecture<T> {
  //<임의의 값>
  final T id;
  final String name;

  Lecture(this.id, this.name); // 변수를 외부에서 받을 때 사용하는 constructor

  void printIdType() {
    print(id.runtimeType);
    print(name.runtimeType);
  }
}

class Lecture2<T, X> {
  //<임의의 값>
  final T id;
  final X name;

  Lecture2(this.id, this.name); // 변수를 외부에서 받을 때 사용하는 constructor

  void printIdType() {
    print(id.runtimeType);
    print(name.runtimeType);
  }
}
