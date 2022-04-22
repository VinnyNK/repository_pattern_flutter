import 'package:flutter/material.dart';
import 'package:poc_repository_flutter/ui/components/astro_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Row(children: const [AstroNavigationBar()]),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/dot-grid.png"), fit: BoxFit.cover)),
    );
  }
}