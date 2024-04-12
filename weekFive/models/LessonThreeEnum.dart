void main(List<String> args) {
  Weekdays day1 = Weekdays.monday;
  Weekdays day2 = Weekdays.tuesday;
  Weekdays day3 = Weekdays.wednesday;
  print("day1:${day1}");
  print("day2.name:${day2.name}");
  print("day3.index:${day3.index}");

  //?switch
  switch (day1) {
    case Weekdays.saturday:
      print("today is Saturday");
    case Weekdays.friday:
      print("today is Friday");
    default:
      print("other day");
  }
}

enum Weekdays { monday, tuesday, wednesday, thursday, friday, saturday, sunday }
