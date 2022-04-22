import 'package:flutter/material.dart';
import 'package:poc_repository_flutter/ui/components/navigation_item.dart';

class AstroNavigationBar extends StatelessWidget {
  const AstroNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuListMap = [
      {"Dashboard": Icons.dashboard_outlined},
      {"Formações": Icons.rocket_launch_outlined},
      {"Recursos": Icons.book_outlined},
      {"Blog": Icons.article_outlined},
      {"Tech Talks": Icons.question_answer_outlined},
      {"Cronograma": Icons.calendar_today_outlined},
      {"Configuração": Icons.settings_outlined},
    ];

    return Container(
      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
      padding: EdgeInsets.all(8),
      color: Color.fromRGBO(38, 43, 50, 0.8),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ...menuListMap
            .map(
              (ml) => NavigationItem(
            label: ml.keys.first,
            icon: ml.values.first,
          ),
        )
            .toList()
      ]),
    );
  }
}