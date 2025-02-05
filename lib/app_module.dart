import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:guia_de_moteis/commons/config/routes.dart';
import 'package:guia_de_moteis/commons/http_client/dio_http_client_impl.dart';
import 'package:guia_de_moteis/commons/http_client/http_client.dart';
import 'package:guia_de_moteis/presentation/pages/home_page.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [
    //DEPENDENCIES
    Bind.instance<Dio>(Dio()),
    Bind.factory<AppHttpClient>((i) => DioHttpClientImpl(i())),

    //DATASOURCES

    //REPOSITORIES

    //USECASES

    //BLOCS
  ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Routes.root, child: (_, __) => HomePage()),
      ];
}
