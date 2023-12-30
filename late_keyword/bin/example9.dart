class Person {
  final String name;
  Person({required this.name});
}

class WrongImplementationOfFamily {
  final Iterable<Person> members;
  late int membersCount;

  WrongImplementationOfFamily({required this.members}) {
    membersCount = getMembersCount();
    // when late variable is inside constructor, it will get evaluated immediately
  }

  int getMembersCount() {
    print('Getting Memebers Count');
    return members.length;
  }
}

class RightImplementationOfFamily {
  final Iterable<Person> members;
  late int membersCount = getMembersCount();

  RightImplementationOfFamily({required this.members});

  int getMembersCount() {
    print('Getting Memebers Count');
    return members.length;
  }
}

void main(List<String> args) {
  final oreo = Person(name: 'Oreo Okinawa');
  final kiki = Person(name: 'Kiki Kartik');
  final family = WrongImplementationOfFamily(members: [oreo, kiki]);
  print(family);
  print(family.membersCount);
  print('----------------------');
  final family1 = RightImplementationOfFamily(members: [oreo, kiki]);
  print(family1);
  print(family1.membersCount);
}
