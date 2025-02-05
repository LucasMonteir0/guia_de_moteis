import 'package:guia_de_moteis/domain/entities/suite_item_model.dart';

class SuiteItemModel extends SuiteItemEntity {
  const SuiteItemModel({required super.nome});

  factory SuiteItemModel.fromJson(Map<String, dynamic> json) {
    return SuiteItemModel(
      nome: json["nome"],
    );
  }

  factory SuiteItemModel.fromObject(SuiteItemEntity object) =>
      SuiteItemModel(nome: object.nome);

  Map<String, dynamic> toJson() {
    return {
      "nome": nome,
    };
  }
}
