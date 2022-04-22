import 'package:flutter/material.dart';
import 'package:poc_repository_flutter/ui/components/login_container.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [LoginContainer()]),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/dot-grid.png"), fit: BoxFit.cover)),
    );
  }
}