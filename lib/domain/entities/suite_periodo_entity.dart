import 'package:equatable/equatable.dart';

class SuitePeriodoEntity extends Equatable {
  final String tempoFormatado;
  final String tempo;
  final double valor;
  final double valorTotal;
  final bool temCortesia;
  final double? desconto;

  const SuitePeriodoEntity({
    required this.tempoFormatado,
    required this.tempo,
    required this.valor,
    required this.valorTotal,
    required this.temCortesia,
    this.desconto,
  });

  @override
  List<Object?> get props => [
    tempoFormatado,
    tempo,
    valor,
    valorTotal,
    temCortesia,
    desconto,
  ];
}
