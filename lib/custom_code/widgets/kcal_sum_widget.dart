// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class KcalSumWidget extends StatefulWidget {
  const KcalSumWidget({
    super.key,
    this.width,
    this.height,
    required this.userId,
    required this.month,
    required this.year,
    this.numberColor = '#ff8089', // Cor padrão para o número em hexadecimal
  });

  final double? width;
  final double? height;
  final DocumentReference userId;
  final String month;
  final String year;
  final String
      numberColor; // Parâmetro para a cor do número em formato hexadecimal

  @override
  State<KcalSumWidget> createState() => _KcalSumWidgetState();
}

class _KcalSumWidgetState extends State<KcalSumWidget> {
  // Função para converter string hexadecimal (#RRGGBB) para Color
  Color hexToColor(String hex) {
    hex = hex.replaceAll("#", "");
    return Color(int.parse("FF$hex", radix: 16));
  }

  Future<int> sumKcalForUserAndMonth() async {
    int totalKcal = 0;

    // Consulta à coleção 'training_history' filtrando por student_id, month e year
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('training_history')
        .where('student_id', isEqualTo: widget.userId)
        .where('month', isEqualTo: widget.month)
        .where('year', isEqualTo: widget.year)
        .get();

    // Soma os valores de kcal para os documentos encontrados
    for (var doc in querySnapshot.docs) {
      totalKcal += (doc['kcal'] ?? 0) as int;
    }

    return totalKcal;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      alignment: Alignment.center, // Centraliza o conteúdo
      child: FutureBuilder<int>(
        future: sumKcalForUserAndMonth(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator(); // Indicador de carregamento
          } else if (snapshot.hasError) {
            return Text(
              'Erro ao carregar dados',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context)
                  .bodyText1, // Cor padrão para o texto
            ); // Mensagem de erro
          } else if (!snapshot.hasData || snapshot.data == 0) {
            return Text(
              'Nenhum dado encontrado',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context)
                  .bodyText1, // Cor padrão para o texto
            ); // Mensagem caso não haja dados
          } else {
            return RichText(
              textAlign: TextAlign.center, // Centraliza o texto
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Total de kcal: ',
                    style: FlutterFlowTheme.of(context)
                        .bodyText1, // Cor padrão para o texto
                  ),
                  TextSpan(
                    text: '${snapshot.data}',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Roboto',
                          color: hexToColor(widget
                              .numberColor), // Usa a cor passada para o número
                          fontWeight: FontWeight
                              .bold, // Define o peso da fonte como negrito (700)
                        ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
