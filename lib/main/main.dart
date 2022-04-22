import 'package:flutter/material.dart';
import 'package:poc_repository_flutter/application/configurations/repositories_injection.dart';
import 'package:poc_repository_flutter/application/configurations/services_injection.dart';
import 'package:poc_repository_flutter/ui/pages/home_page.dart';
import 'package:poc_repository_flutter/ui/pages/login_page.dart';
import 'package:url_strategy/url_strategy.dart';


void main() {
  RepositoriesInjection.configure();
  ServicesInjection.configure();
  setPathUrlStrategy();
  runApp(const AstroApp());
}

class AstroApp extends StatefulWidget {
  const AstroApp({Key? key}) : super(key: key);

  @override
  State<AstroApp> createState() => _AstroAppState();
}

class _AstroAppState extends State<AstroApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Astro Web",
      home: Scaffold(
        body: LoginPage(),
        backgroundColor: Colors.black,
      ),
    );
  }
}
