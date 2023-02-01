// class User with name and email

class User {
  final String name;
  final String email;

  User({required this.name, required this.email});

  //getter and setter
  String get getName => name;
  String get getEmail => email;
  set setName(String name) => name = name;
  set setEmail(String email) => email = email;

  //sample data with 10 diffent users
  static List<User> getUsers() {
    return <User>[
      User(name: 'Mathis Bescond', email: 'mathisbescond'),
      User(name: 'John Doe', email: 'johndoe'),
      User(name: 'Jean Michel', email: 'jeanmichel'),
      User(name: 'Jean Paul', email: 'jeanpaul'),
    ];
  }
}
