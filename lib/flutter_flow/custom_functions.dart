import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

String? dayWeek(DateTime date) {
  // informe o dia da semana sendo seg para segunda-feira e dom para domingo
  switch (date.weekday) {
    case 1:
      return 'Seg';
    case 2:
      return 'Ter';
    case 3:
      return 'Qua';
    case 4:
      return 'Qui';
    case 5:
      return 'Sex';
    case 6:
      return 'Sab';
    case 7:
      return 'Dom';
    default:
      return '';
  }
}

String compareTimes(DateTime currentDate) {
  // preciso de uma função onde isolo a hora de um currentDate removendo o dia mes e ano e deixando apenas a hora
  final timeFormat = DateFormat('HH:mm:ss');
  final timeOnly = timeFormat.format(currentDate);
  return timeOnly;
}

DateTime zeroHour(DateTime currentDate) {
  // zero horas de um currentDate
  return DateTime(currentDate.year, currentDate.month, currentDate.day);
}

int countStudents(List<String> idAlunos) {
  // contar quantidade de itens dentro de um array
  return idAlunos.length;
}

int? calculateFCM(String? birthday) {
  // Recebe a data em formato de string ##/##/#### do dia do nascimento e retorna a FCM (Frequência Cardíaca Máxima)
  if (birthday == null) return null;

  final birthDate = DateFormat('dd/MM/yyyy').parse(birthday);
  final now = DateTime.now();
  int age = now.year - birthDate.year;
  if (now.month < birthDate.month ||
      (now.month == birthDate.month && now.day < birthDate.day)) {
    age--;
  }

  // Aplicar a fórmula da FCM: 0,7 x idade - 208
  final fcm = (0.7 * age) - 208;

  return fcm.toInt();
}

String compareScheduling(
  String startLesson,
  DateTime currentTime,
) {
  // preciso de uma funcao onde vou passar uma string de hora e preciso que voce retorne uma outro string de hora com 30 minutos a menos exemplo entra 10:30 retorno 10:00
  final start = DateFormat.Hm().parse(startLesson);
  final end = start.subtract(Duration(minutes: 30));
  final formattedEnd = DateFormat.Hm().format(end);
  return formattedEnd;
}

String dayMonth(DateTime dateTime) {
  // Preciso de uma função, onde vou informar um sate time e quere um retorno apenas do dia mes e ano para salvar em instring no formato de DD/MM/AAAA
  final DateFormat formatter = DateFormat('dd/MM/yyyy');
  return formatter.format(dateTime);
}

String monthYear(DateTime dateTime) {
  String month = dateTime.month.toString().padLeft(2, '0');
  String year = dateTime.year.toString();
  return '$month/$year';
}

String currentMonth(DateTime dateTime) {
  // Mapeamento manual dos meses em português
  List<String> months = [
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
    'Julho',
    'Agosto',
    'Setembro',
    'Outubro',
    'Novembro',
    'Dezembro'
  ];

  // Recupera o mês da data fornecida
  String month = months[dateTime.month - 1];
  return month;
}

String? saveNextLesson(String? lessonName) {
  // Atualize a variável local 'aula' com o valor fornecido 'lessonName'
  // Aqui, você pode usar a lógica do FlutterFlow para definir essa variável local

  // Exemplo de como poderia ser feito (note que isso depende da configuração do FlutterFlow):
  // Se você está salvando em uma variável local, pode ser algo como:
  // localState.aula = lessonName;

  // Para o exemplo, vamos apenas retornar o valor armazenado
  return lessonName;
}

int stringToInt(String deviceID) {
  // Função onde recebe uma string e retorna int
  return int.parse(deviceID);
}
