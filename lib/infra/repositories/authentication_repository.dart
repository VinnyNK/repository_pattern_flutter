import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:poc_repository_flutter/domain/dtos/login_google_response.dart';
import 'package:poc_repository_flutter/infra/repositories/i_authentication_repository.dart';
import 'package:poc_repository_flutter/infra/repositories/repository_base.dart';
import 'package:poc_repository_flutter/secrets/application_secrets.dart';

class AuthenticationRepository extends RepositoryBase implements IAuthenticationRepository {

  AuthenticationRepository({required http.Client client}) : super(client: client);

  @override
  Future<LoginGoogleResponse> loginGoogle({required String code}) async {
    var uri = Uri(host: applicationHost, port: applicationPort, scheme: "https", path: "/api/Auth/Google", queryParameters: { "IdToken": code });
    final response = await client.get(uri);
    switch (response.statusCode) {
      case 200:
        final data = json.decode(response.body);
        return LoginGoogleResponse.fromJson(data["resultado"]);
      default:
        throw Exception("error");
    }
  }
}