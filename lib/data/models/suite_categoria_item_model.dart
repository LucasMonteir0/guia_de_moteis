import 'package:guia_de_moteis/domain/entities/suite_categoria_item_entity.dart';

class SuiteCategoriaItemModel extends SuiteCategoriaItemEntity {
  const SuiteCategoriaItemModel({
    required super.nome,
    required super.icone,
  });

  factory SuiteCategoriaItemModel.fromJson(Map<String, dynamic> json) {
    return SuiteCategoriaItemModel(
      nome: json["nome"],
      icone: json["icone"],
    );
  }
  factory SuiteCategoriaItemModel.fromObject(SuiteCategoriaItemEntity object) {
    return SuiteCategoriaItemModel(
      nome: object.nome,
      icone: object.icone,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "nome": nome,
      "icone": icone,
    };
  }
}
