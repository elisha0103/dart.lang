enum Status{
  approved, //승인
  pending, //대기
  rejected, //거절
} // 항목이 3개라면, 몇가지 타입만 있다면 enum을 사용하여 개발자의 실수(오타, 조건문사용 등)를 방지
  
void main(){
  Status status = Status.pending;
  
    if(status == Status.approved){
    print('승인합니다.');
    
  }else if(status == Status.pending){
     print('대기입니다.');
  }else{
     print('거절합니다.');
}
}
