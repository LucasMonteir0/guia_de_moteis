import 'package:guia_de_moteis/domain/entities/suite_periodo_entity.dart';

class SuitePeriodoModel extends SuitePeriodoEntity {
  const SuitePeriodoModel({
    required super.tempoFormatado,
    required super.tempo,
    required super.valor,
    required super.valorTotal,
    required super.temCortesia,
    super.desconto,
  });

  factory SuitePeriodoModel.fromJson(Map<String, dynamic> json) {
    final double? desconto = json["desconto"] != null
        ? (json["desconto"]["desconto"] as num).toDouble()
        : null;
    return SuitePeriodoModel(
      tempoFormatado: json["tempoFormatado"],
      tempo: json["tempo"],
      valor: (json["valor"] as num).toDouble(),
      valorTotal: (json["valorTotal"] as num).toDouble(),
      temCortesia: json["temCortesia"],
      desconto: desconto,
    );
  }

  factory SuitePeriodoModel.fromObject(SuitePeriodoEntity object) {
    return SuitePeriodoModel(
      tempoFormatado: object.tempoFormatado,
      tempo: object.tempo,
      valor: object.valor,
      valorTotal: object.valorTotal,
      temCortesia: object.temCortesia,
      desconto: object.desconto,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "tempoFormatado": tempoFormatado,
      "tempo": tempo,
      "valor": valor,
      "valorTotal": valorTotal,
      "temCortesia": temCortesia,
      "desconto": {"desconto": desconto},
    };
  }
}
