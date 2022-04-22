import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:poc_repository_flutter/application/services/i_authentication_service.dart';
import 'package:poc_repository_flutter/domain/entities/token.dart';
import 'package:poc_repository_flutter/infra/repositories/i_authentication_repository.dart';
import 'package:poc_repository_flutter/secrets/google_secrets.dart';

class AuthenticationService implements IAuthenticationService {
  GetIt locator = GetIt.I;
  IAuthenticationRepository? _authenticationRepository;
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: <String>[
    ],
    clientId: googleClientId
  );


  AuthenticationService()
  {
    _authenticationRepository = locator<IAuthenticationRepository>();
  }

  @override
  Future<Token?> login()
  async {
    try {
      var login = await _googleSignIn.signIn();
      var result = await login?.authentication;
      print(result.toString());
      if (result?.idToken == null) {
        return null;
      }
      var tokenResponse = await _authenticationRepository?.loginGoogle(code: result?.idToken ?? "");
      if (tokenResponse != null)
      {
        return Token(
            accessToken: tokenResponse.accessToken,
            refreshToken: tokenResponse.refreshToken,
            criadoEm: tokenResponse.criadoEm,
            expiraEm: tokenResponse.expiraEm
        );
      }
      return null;
    } catch (e) {
      print('Erro no login $e');
    }
    return null;
  }
}