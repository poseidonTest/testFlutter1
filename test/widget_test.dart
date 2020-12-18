main() {
  Map<int, String> testMap = {3: "red", 2: "orange"};
  testMap[4] = "Green";
  print(testMap[1]);
  testMap.update(1, (value) => "NewRed", ifAbsent: () => "NewColor");
  print(testMap[1]);
}
