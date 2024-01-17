void main(List<String> args) {
  

//! 1. toLowerCase() +


//! 2. toUpperCase()
String name = "messi";
print('ToUpperCase: ');
print(name.toUpperCase());
print('original name: $name');
//! 3. trim()
String surname = "   leonel     ";
print("Trim: ");
print(surname);
print(surname.trim());
//! 4. compareTo() - It compares one string from another.
//0 − when the strings are equal.

//1 − when the first string is greater than the second

//-1 − when the first string is smaller than the second
 String str1 = "A"; 
   String str2 = "A"; 
   String str3 = "B"; 
   print('CompareTo: ');
   print("str1.compareTo(str2): ${str1.compareTo(str2)}"); 
   print("str1.compareTo(str3): ${str1.compareTo(str3)}"); 
   print("str3.compareTo(str2): ${str3.compareTo(str2)}"); 
//! 5. replaceAll()
//String replaceAll(Pattern from, String replace)
//Parameters
//From − the string to be replaced.

//Replace − the substitution string.

String myName = "kerim";
String mynamereplace = myName.replaceAll('e', '&&&');
print("ReplaceAll");
print(myName);
print(mynamereplace);
print('original myName: $myName');
String stri = "Hello World"; 
   print("New String: ${stri.replaceAll('World','ALL')}"); 
//! 6. split()
//! 7. substring()
//! 8. toString()
//! 9. codeUnitAt()
//! 10. isEmpty
//! 11. Length
//! 12. codeUnits
//!13. contains
//!14. endsWith
//!15. indexOf
//!16. lastIndexOf
//!17. padLeft
//!18. padRight
//!19. replaceAllMapped
//!20. replaceFirst
//!21. replaceFirstMapped
//!22. replaceRange
//!23. splitMapJoin
//!24. startsWith +
//!25. trimLeft +
//!26. trimRight +
}