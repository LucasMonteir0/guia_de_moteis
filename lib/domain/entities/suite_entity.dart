import 'package:equatable/equatable.dart';
import 'package:guia_de_moteis/domain/entities/suite_categoria_item_entity.dart';
import 'package:guia_de_moteis/domain/entities/suite_item_model.dart';
import 'package:guia_de_moteis/domain/entities/suite_periodo_entity.dart';

class SuiteEntity extends Equatable {
  final String nome;
  final int qtd;
  final bool exibirQtdDisponiveis;
  final List<String> fotos;
  final List<SuiteItemEntity> itens;
  final List<SuiteCategoriaItemEntity> categoriaItens;
  final List<SuitePeriodoEntity> periodos;

  const SuiteEntity({
    required this.nome,
    required this.qtd,
    required this.exibirQtdDisponiveis,
    required this.fotos,
    required this.itens,
    required this.categoriaItens,
    required this.periodos,
  });

  @override
  List<Object?> get props => [
    nome,
    qtd,
    exibirQtdDisponiveis,
    fotos,
    itens,
    categoriaItens,
    periodos,
  ];
}
