import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:poc_repository_flutter/infra/repositories/authentication_repository.dart';
import 'package:poc_repository_flutter/infra/repositories/i_authentication_repository.dart';

class RepositoriesInjection {

  static void configure()
  {
    GetIt locator = GetIt.I;
    locator.registerFactory<IAuthenticationRepository>(() => AuthenticationRepository(client: http.Client()));
  }

}