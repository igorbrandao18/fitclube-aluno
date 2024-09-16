// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart'; // Importa Firestore

Future<bool> verificStudent(DocumentReference userid) async {
  try {
    // Consulta para buscar todos os documentos na coleção 'device_queue' onde 'user_id' é igual ao 'userid'
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('device_queue')
        .where('user_id', isEqualTo: userid)
        .get();

    // Verifica se a consulta encontrou algum documento
    return querySnapshot.docs.isNotEmpty;
  } catch (e) {
    // Retorna false em caso de erro, sem imprimir mensagens
    return false;
  }
}
