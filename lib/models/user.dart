class User {
  //make attribute private
  String _name;
  String _email;
  DateTime _dateOfBirth;
  String _phoneNumber;
  String _address;
  double _latitude;
  double _longitude;

  //constructor
  User(
      {required String name,
      required String email,
      required DateTime dateOfBirth,
      required String phoneNumber,
      required String address,
      required double latitude,
      required double longitude})
      : _name = name,
        _email = email,
        _dateOfBirth = dateOfBirth,
        _phoneNumber = phoneNumber,
        _address = address,
        _latitude = latitude,
        _longitude = longitude;

  //getter and setter
  String get getName => _name;
  String get getEmail => _email;
  DateTime get getDateOfBirth => _dateOfBirth;
  String get getPhoneNumber => _phoneNumber;
  String get getAddress => _address;
  double get getLatitude => _latitude;
  double get getLongitude => _longitude;

  set setName(String name) => _name = name;
  set setEmail(String email) => _email = email;
  set setDateOfBirth(DateTime dateOfBirth) => _dateOfBirth = dateOfBirth;
  set setPhoneNumber(String phoneNumber) => _phoneNumber = phoneNumber;
  set setAddress(String address) => _address = address;
  set setLatitude(double latitude) => _latitude = latitude;
  set setLongitude(double longitude) => _longitude = longitude;

  //sample data with 10 diffent users
  static List<User> getUsers() {
    return <User>[
      User(
          name: 'Mathis Bescond',
          email: 'mathisbescond',
          dateOfBirth: DateTime(2001, 05, 14),
          phoneNumber: '0782667946',
          address: '51 rue lagravère, 47000 Agen',
          latitude: 48.856614,
          longitude: 2.3522219),
      User(
          name: 'John Doe',
          email: 'johndoe',
          dateOfBirth: DateTime(1999, 12, 12),
          phoneNumber: '0600000000',
          address: '51 rue de la paix, 75000 Paris1',
          latitude: 44.2178332,
          longitude: 0.6109441),
      User(
          name: 'Jean Michel',
          email: 'jeanmichel',
          dateOfBirth: DateTime(1999, 12, 12),
          phoneNumber: '0600000000',
          address: '51 rue de la paix, 75000 Paris2',
          latitude: 48.856614,
          longitude: 2.3522219),
      User(
          name: 'Jean Paul',
          email: 'jeanpaul',
          dateOfBirth: DateTime(1990, 12, 12),
          phoneNumber: '0600000000',
          address: '51 rue de la paix, 75000 Paris3',
          latitude: 48.856614,
          longitude: 2.3522219),
      User(
          name: 'Jean Jacques',
          email: 'jeanjacques',
          dateOfBirth: DateTime(1990, 12, 12),
          phoneNumber: '0600000000',
          address: '51 rue de la paix, 75000 Paris4',
          latitude: 48.856614,
          longitude: 2.3522219),
      User(
          name: 'Jean Claude',
          email: 'jeanclaude',
          dateOfBirth: DateTime(1990, 12, 12),
          phoneNumber: '0600000000',
          address: '51 rue de la paix, 75000 Paris5',
          latitude: 48.856614,
          longitude: 2.3522219),
      User(
        name: 'Anne Marie',
        email: 'annemarie',
        dateOfBirth: DateTime(1990, 12, 12),
        phoneNumber: '0600000000',
        address: '51 rue de la paix, 75000 Paris6',
        latitude: 48.856614,
        longitude: 2.3522219,
      ),
      User(
        name: 'Anne Sophie',
        email: 'annesophie',
        dateOfBirth: DateTime(1990, 12, 12),
        phoneNumber: '0600000000',
        address: '51 rue de la paix, 75000 Paris7',
        latitude: 48.856614,
        longitude: 2.3522219,
      ),
      User(
        name: 'Anne Laure',
        email: 'annelaure',
        dateOfBirth: DateTime(1990, 12, 12),
        phoneNumber: '0600000000',
        address: '51 rue de la paix, 75000 Paris8',
        latitude: 48.856614,
        longitude: 2.3522219,
      ),
      User(
        name: 'Anne Claire',
        email: 'anneclaire',
        dateOfBirth: DateTime(1990, 12, 12),
        phoneNumber: '0600000000',
        address: '51 rue de la paix, 75000 Paris9',
        latitude: 48.856614,
        longitude: 2.3522219,
      ),
      User(
        name: 'Anne Marie',
        email: 'annemarie',
        dateOfBirth: DateTime(1990, 12, 12),
        phoneNumber: '0600000000',
        address: '51 rue de la paix, 75000 Paris10',
        latitude: 48.856614,
        longitude: 2.3522219,
      ),
      User(
        name: 'Anne Marie',
        email: 'annemarie',
        dateOfBirth: DateTime(1990, 12, 12),
        phoneNumber: '0600000000',
        address: '51 rue de la paix, 75000 Paris10',
        latitude: 48.856614,
        longitude: 2.3522219,
      ),
      User(
        name: 'Anne Marie',
        email: 'annemarie',
        dateOfBirth: DateTime(1990, 12, 12),
        phoneNumber: '0600000000',
        address: '51 rue de la paix, 75000 Paris10',
        latitude: 48.856614,
        longitude: 2.3522219,
      ),
      User(
        name: 'Anne Marie',
        email: 'annemarie',
        dateOfBirth: DateTime(1990, 12, 12),
        phoneNumber: '0600000000',
        address: '51 rue de la paix, 75000 Paris10',
        latitude: 48.856614,
        longitude: 2.3522219,
      ),
      User(
        name: 'Anne Marie',
        email: 'annemarie',
        dateOfBirth: DateTime(1990, 12, 12),
        phoneNumber: '0600000000',
        address: '51 rue de la paix, 75000 Paris10',
        latitude: 48.856614,
        longitude: 2.3522219,
      ),
      User(
        name: 'Anne Marie',
        email: 'annemarie',
        dateOfBirth: DateTime(1990, 12, 12),
        phoneNumber: '0600000000',
        address: '51 rue de la paix, 75000 Paris10',
        latitude: 48.856614,
        longitude: 2.3522219,
      ),
      User(
        name: 'Anne Marie',
        email: 'annemarie',
        dateOfBirth: DateTime(1990, 12, 12),
        phoneNumber: '0600000000',
        address: '51 rue de la paix, 75000 Paris10',
        latitude: 48.856614,
        longitude: 2.3522219,
      ),
      User(
        name: 'Anne Marie',
        email: 'annemarie',
        dateOfBirth: DateTime(1990, 12, 12),
        phoneNumber: '0600000000',
        address: '51 rue de la paix, 75000 Paris10',
        latitude: 48.856614,
        longitude: 2.3522219,
      ),
      User(
        name: 'Anne Marie',
        email: 'annemarie',
        dateOfBirth: DateTime(1990, 12, 12),
        phoneNumber: '0600000000',
        address: '51 rue de la paix, 75000 Paris10',
        latitude: 48.856614,
        longitude: 2.3522219,
      ),
      User(
        name: 'Anne Marie',
        email: 'annemarie',
        dateOfBirth: DateTime(1990, 12, 12),
        phoneNumber: '0600000000',
        address: '51 rue de la paix, 75000 Paris10',
        latitude: 48.856614,
        longitude: 2.3522219,
      ),
      User(
        name: 'Anne Marie',
        email: 'annemarie',
        dateOfBirth: DateTime(1990, 12, 12),
        phoneNumber: '0600000000',
        address: '51 rue de la paix, 75000 Paris10',
        latitude: 48.856614,
        longitude: 2.3522219,
      ),
      User(
        name: 'Anne Marie',
        email: 'annemarie',
        dateOfBirth: DateTime(1990, 12, 12),
        phoneNumber: '0600000000',
        address: '51 rue de la paix, 75000 Paris10',
        latitude: 48.856614,
        longitude: 2.3522219,
      ),
      User(
        name: 'Anne Marie',
        email: 'annemarie',
        dateOfBirth: DateTime(1990, 12, 12),
        phoneNumber: '0600000000',
        address: '51 rue de la paix, 75000 Paris10',
        latitude: 48.856614,
        longitude: 2.3522219,
      ),
      User(
        name: 'Anne Marie',
        email: 'annemarie',
        dateOfBirth: DateTime(1990, 12, 12),
        phoneNumber: '0600000000',
        address: '51 rue de la paix, 75000 Paris10',
        latitude: 48.856614,
        longitude: 2.3522219,
      ),
      User(
        name: 'Anne Marie',
        email: 'annemarie',
        dateOfBirth: DateTime(1990, 12, 12),
        phoneNumber: '0600000000',
        address: '51 rue de la paix, 75000 Paris10',
        latitude: 48.856614,
        longitude: 2.3522219,
      ),
    ];
  }
}
