void main(){
  List<String> blackPink = ['로제','지수','리사','제니'];
  
  print(blackPink);
  print(blackPink.asMap());  // Key = index, value = List value
  print(blackPink.toSet());  // List -> set
  
  Map blackPinkMap = blackPink.asMap();
  
  print(blackPinkMap.keys.toList());  // Map.keys -> List
  print(blackPinkMap.values.toList());  //Map.values -> List
  
  Set blackPinkSet = Set.from(blackPink);  // List -> Set
  
  print(blackPinkSet.toList());  // Set -> List
  }

