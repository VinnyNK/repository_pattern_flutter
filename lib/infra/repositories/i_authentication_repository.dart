import 'package:poc_repository_flutter/domain/dtos/login_google_response.dart';

abstract class IAuthenticationRepository {
  Future<LoginGoogleResponse> loginGoogle({ required String code });
}