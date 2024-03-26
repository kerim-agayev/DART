void main(List<String> args) {
  Map<int, String> map1 = {1: "ad1", 2: "ad2", 3: "ad3"};
  Map<int, String> map2 = {2: "ad2"};

  bool isMap2InsideMap1 =
      map2.keys.every((key) => map1.containsKey(key) && map1[key] == map2[key]);

  if (isMap2InsideMap1) {
    print("map2, map1'in içindedir ve key-value çiftleri aynıdır.");
  } else {
    print(
        "map2, map1'in içinde değildir veya key-value çiftleri aynı değildir.");
  }


  
}
