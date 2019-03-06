class User{
  final String name;
  final bool isAuthorized;

  User(this.name, this.isAuthorized);
}

final User _alice = User('Alice', true);
final User _bob = User('Bob', false);

class UserService{
  User user;

  UserService() : user = _bob;
  User getNewUser() => user = user == _bob ? _alice : _bob;
}