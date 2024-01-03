enum AnimalType {
  rabbit,
  dog,
  cat,
}

class Animal {
  final String name;
  final AnimalType type;
  const Animal({required this.name, required this.type});
}

void main(List<String> args) {
  final meow = Animal(name: 'Dora', type: AnimalType.cat);
  print('${meow.name}: ${meow.type}');

  if (meow.type == AnimalType.dog) {
    print('${meow.name} is dog');
  } else {
    print('${meow.name} is not a dog');
  }

  switch (meow.type) {
    case AnimalType.rabbit:
      print('Got Rabit');
      break;
    case AnimalType.dog:
      print('Got dog');
      break;
    case AnimalType.cat:
      print('Got Cat');
      break;
    default:
      print('Default');
  }
}
