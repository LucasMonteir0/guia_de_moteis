import 'package:flutter_modular/flutter_modular.dart';
import 'package:guia_de_moteis/commons/config/routes.dart';
import 'package:guia_de_moteis/presentation/pages/home_page.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Routes.root, child: (_, __) => HomePage()),
      ];
}
