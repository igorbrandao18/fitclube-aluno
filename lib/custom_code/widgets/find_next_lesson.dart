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

class FindNextLesson extends StatefulWidget {
  const FindNextLesson({
    super.key,
    this.width,
    this.height,
    required this.userId,
    required this.currentDate,
    required this.currentDayString,
    required this.currentTimeString,
  });

  final double? width;
  final double? height;
  final DocumentReference userId;
  final DateTime currentDate;
  final String currentDayString;
  final String currentTimeString;

  @override
  State<FindNextLesson> createState() => _FindNextLessonState();
}

class _FindNextLessonState extends State<FindNextLesson> {
  String aula = ''; // Variável para armazenar a aula encontrada

  Future<void> findNextLesson() async {
    QuerySnapshot lessonsSnapshot = await FirebaseFirestore.instance
        .collection('lesson')
        .where('students_id', arrayContains: widget.userId)
        .get();

    for (var doc in lessonsSnapshot.docs) {
      bool isRecurrence = doc['isRecurrence'] ?? false;

      if (isRecurrence) {
        List<dynamic> weekdays = doc['isWeekdayInEnum'] ?? [];
        String currentWeekday = getWeekdayFromDate(widget.currentDate);

        if (weekdays.contains(currentWeekday)) {
          if (isLessonInFuture(doc['start'], widget.currentTimeString)) {
            String modalityName = doc['modality_name'];
            setState(() {
              aula = modalityName; // Atualiza a variável interna
              FFAppState().nextLesson =
                  modalityName; // Atualiza o estado global
            });
            return;
          }
        }
      } else {
        String lessonDay = doc['day'] ?? '';
        if (lessonDay == widget.currentDayString) {
          if (isLessonInFuture(doc['start'], widget.currentTimeString)) {
            String modalityName = doc['modality_name'];
            setState(() {
              aula = modalityName; // Atualiza a variável interna
              FFAppState().nextLesson =
                  modalityName; // Atualiza o estado global
            });
            return;
          }
        }
      }
    }

    String noLesson = 'Nenhuma aula encontrada';
    setState(() {
      aula = noLesson; // Atualiza a variável interna
      FFAppState().nextLesson = noLesson; // Atualiza o estado global
    });
  }

  bool isLessonInFuture(String startTime, String currentTime) {
    return startTime.compareTo(currentTime) >= 0;
  }

  String getWeekdayFromDate(DateTime date) {
    List<String> weekdays = ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sab'];
    return weekdays[date.weekday % 7];
  }

  @override
  void initState() {
    super.initState();
    findNextLesson(); // Chama a função ao inicializar o widget
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      alignment: Alignment.center,
      child: Text(
        aula, // Exibe o valor da aula encontrada
        style: FlutterFlowTheme.of(context).bodyText1.override(
              fontFamily: 'Roboto',
              fontSize: 12,
            ),
      ),
    );
  }
}
