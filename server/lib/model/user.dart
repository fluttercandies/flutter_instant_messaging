//import 'package:aqueduct/managed_auth.dart';
import 'package:aqueduct/managed_auth.dart';
import 'package:server/server.dart';

// /aqueduct db generate / aqueduct db upgrade
class User extends ManagedObject<_User> implements _User {
  @Serialize(input: true, output: false)
  String password;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'password': password,
      'tokens': tokens
    };
  }
}

class _User extends ResourceOwnerTableDefinition {}
