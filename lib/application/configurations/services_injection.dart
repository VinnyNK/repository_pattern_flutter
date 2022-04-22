import 'package:get_it/get_it.dart';
import 'package:poc_repository_flutter/application/services/authentication_service.dart';
import 'package:poc_repository_flutter/application/services/i_authentication_service.dart';

class ServicesInjection {

  static void configure()
  {
    GetIt locator = GetIt.I;
    locator.registerFactory<IAuthenticationService>(() => AuthenticationService());
  }

}