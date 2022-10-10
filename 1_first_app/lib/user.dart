class User {
  final String firstName;
  final int? age;

  const User({
    required this.firstName,
    this.age,
  });
// User({this.firstName, this.age});
// User(this.firstName, {this.age = 10});
}
