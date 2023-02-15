class User {
  //make attribute private
  String _name;
  String _pictureName;
  DateTime _dateOfBirth;
  String _phoneNumber;
  String _address;
  double _latitude;
  double _longitude;

  //constructor
  User(
      {required String name,
      required String pictureName,
      required DateTime dateOfBirth,
      required String phoneNumber,
      required String address,
      required double latitude,
      required double longitude})
      : _name = name,
        _pictureName = pictureName,
        _dateOfBirth = dateOfBirth,
        _phoneNumber = phoneNumber,
        _address = address,
        _latitude = latitude,
        _longitude = longitude;

  //getter and setter
  String get getName => _name;
  String get getPictureName => _pictureName;
  DateTime get getDateOfBirth => _dateOfBirth;
  String get getPhoneNumber => _phoneNumber;
  String get getAddress => _address;
  double get getLatitude => _latitude;
  double get getLongitude => _longitude;

  set setName(String name) => _name = name;
  set setPictureName(String pictureName) => _pictureName = pictureName;
  set setDateOfBirth(DateTime dateOfBirth) => _dateOfBirth = dateOfBirth;
  set setPhoneNumber(String phoneNumber) => _phoneNumber = phoneNumber;
  set setAddress(String address) => _address = address;
  set setLatitude(double latitude) => _latitude = latitude;
  set setLongitude(double longitude) => _longitude = longitude;

  //sample data with 10 diffent users
  static List<User> getUsers() {
    return <User>[
      User(
          name: 'Janine Hahn',
          pictureName: 'janine_hahn.png',
          dateOfBirth: DateTime(1940, 1, 1),
          phoneNumber: '123456789',
          address: '2 impasse Floréal, 47000 Agen',
          latitude: 44.2000,
          longitude: 0.6333),
      User(
          name: 'Jean Mccoy',
          pictureName: 'jean_mccoy.png',
          dateOfBirth: DateTime(1941, 2, 2),
          phoneNumber: '123456789',
          address: '15 rue de la République, 47000 Agen',
          latitude: 44.2000,
          longitude: 0.6333),
    ];
  }
}
