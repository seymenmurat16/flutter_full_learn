import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key});
  final String name = 'Murat';
  final ProjectKeys keys = const ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Hello $name ' * 100,
          maxLines: 2,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              color: Colors.blue,
              fontSize: 20,
              wordSpacing: 2,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.overline),
        ),
        Text(
          'Hello $name ' * 100,
          maxLines: 2,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: ProjectTextStyle().helloStyle,
        ),
        Text('Hello $name ' * 100,
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: ProjectColors.green)),
        Text(keys.welcome)
      ],
    )));
  }
}

class ProjectTextStyle {
  final helloStyle = const TextStyle(
      color: Colors.red,
      fontSize: 20,
      wordSpacing: 2,
      fontStyle: FontStyle.italic,
      decoration: TextDecoration.underline);
}

class ProjectColors {
  static Color green = Colors.green;
}

class ProjectKeys {
  const ProjectKeys();
  final String welcome = "Welcome";
}
