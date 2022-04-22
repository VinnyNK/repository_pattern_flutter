import 'package:poc_repository_flutter/domain/entities/token.dart';

abstract class IAuthenticationService {
  Future<Token?> login();
}
