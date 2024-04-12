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

enum Weekdays {
  monday(1),
  tuesday(2),
  wednesday(3),
  thursday(4),
  friday(5),
  saturday(6),
  sunday(7);

  final int value;
  const Weekdays(this.value);
}
