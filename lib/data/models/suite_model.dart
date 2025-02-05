import 'package:guia_de_moteis/data/models/suite_categoria_item_model.dart';
import 'package:guia_de_moteis/data/models/suite_item_model.dart';
import 'package:guia_de_moteis/data/models/suite_periodo_model.dart';
import 'package:guia_de_moteis/domain/entities/suite_entity.dart';

class SuiteModel extends SuiteEntity {
  const SuiteModel({
    required super.nome,
    required super.qtd,
    required super.exibirQtdDisponiveis,
    required super.fotos,
    required List<SuiteItemModel> super.itens,
    required List<SuiteCategoriaItemModel> super.categoriaItens,
    required List<SuitePeriodoModel> super.periodos,
  });

  factory SuiteModel.fromJson(Map<String, dynamic> json) {
    return SuiteModel(
      nome: json["nome"],
      qtd: json["qtd"],
      exibirQtdDisponiveis: json["exibirQtdDisponiveis"],
      fotos: List<String>.from(json["fotos"]),
      itens: (json["itens"] as List)
          .map((itemJson) => SuiteItemModel.fromJson(itemJson))
          .toList(),
      categoriaItens: (json["categoriaItens"] as List)
          .map((categoriaItemJson) =>
              SuiteCategoriaItemModel.fromJson(categoriaItemJson))
          .toList(),
      periodos: (json["periodos"] as List)
          .map((periodoJson) => SuitePeriodoModel.fromJson(periodoJson))
          .toList(),
    );
  }

  factory SuiteModel.fromObject(SuiteEntity object) => SuiteModel(
      nome: object.nome,
      qtd: object.qtd,
      exibirQtdDisponiveis: object.exibirQtdDisponiveis,
      fotos: object.fotos,
      itens: object.itens.map((e) => SuiteItemModel.fromObject(e)).toList(),
      categoriaItens: object.categoriaItens
          .map((e) => SuiteCategoriaItemModel.fromObject(e))
          .toList(),
      periodos:
          object.periodos.map((e) => SuitePeriodoModel.fromObject(e)).toList());

  Map<String, dynamic> toJson() {
    return {
      "nome": nome,
      "qtd": qtd,
      "exibirQtdDisponiveis": exibirQtdDisponiveis,
      "fotos": fotos,
      "itens": itens.map((e) => SuiteItemModel.fromObject(e).toJson()).toList(),
      "categoriaItens": categoriaItens
          .map((e) => SuiteCategoriaItemModel.fromObject(e).toJson())
          .toList(),
      "periodos": periodos
          .map((e) => SuitePeriodoModel.fromObject(e).toJson())
          .toList(),
    };
  }
}
