import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:poc_repository_flutter/application/services/i_authentication_service.dart';
import 'package:poc_repository_flutter/ui/components/loading_overlay.dart';

class LoginContainer extends StatelessWidget {
  final IAuthenticationService _authenticationService = GetIt.I<IAuthenticationService>();

  LoginContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color.fromRGBO(38, 43, 50, 0.8),
        ),
        height: 400,
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(25, 40, 25, 0),
              child: Text(
                'ASTRO',
                style: TextStyle(
                    fontSize: 70,
                    color: Color.fromRGBO(45, 118, 224, 1),
                    fontFamily: 'RubikGlitch'),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(25),
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: TextButton(
                onPressed: () async {
                  context.loaderOverlay.show(
                    widget: const LoadingOverlay(),
                  );
                  var token = await _authenticationService.login();
                  print("Access Token: ${token?.accessToken}");
                  print("Refresh Token: ${token?.refreshToken}");
                  print("Criado Em: ${token?.criadoEm.toString()}");
                  print("Expira Em: ${token?.expiraEm.toString()}");
                  context.loaderOverlay.hide();
                },
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: const Color.fromRGBO(7, 96, 224, 1),
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 1,
                              )
                            ]),
                        child: Image.asset(
                          'assets/images/googleIcon2.png',
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ),
                    const Text(
                      'Logar com o Google',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}