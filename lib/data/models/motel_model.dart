import 'package:guia_de_moteis/data/models/suite_model.dart';
import 'package:guia_de_moteis/domain/entities/motel_entity.dart';

class MotelModel extends MotelEntity {
  const MotelModel({
    required super.fantasia,
    required super.logo,
    required super.bairro,
    required super.distancia,
    required super.qtdFavoritos,
    required List<SuiteModel> super.suites,
  });

  factory MotelModel.fromJson(Map<String, dynamic> json) {
    return MotelModel(
      fantasia: json["fantasia"],
      logo: json["logo"],
      bairro: json["bairro"],
      distancia: json["distancia"],
      qtdFavoritos: json["qtdFavoritos"],
      suites: (json["suites"] as List)
          .map((suiteJson) => SuiteModel.fromJson(suiteJson))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "fantasia": fantasia,
      "logo": logo,
      "bairro": bairro,
      "distancia": distancia,
      "qtdFavoritos": qtdFavoritos,
      "suites": suites.map((e) => SuiteModel.fromObject(e).toJson()).toList(),
    };
  }
}
