import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:guia_de_moteis/commons/config/routes.dart';
import 'package:guia_de_moteis/commons/config/strings.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute(Routes.root);
    return MaterialApp.router(
      title: Strings.title,
      builder: (context, child) => SafeArea(
        child: SizedBox(child: child),
      ),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
