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

Future addDeviceIdAsString() async {
  // Referência para a coleção 'device'
  CollectionReference devices = FirebaseFirestore.instance.collection('device');

  // Busca todos os documentos da coleção
  QuerySnapshot querySnapshot = await devices.get();

  // Percorre cada documento
  for (QueryDocumentSnapshot doc in querySnapshot.docs) {
    // Pega o valor do campo 'deviceID' (que é int)
    int deviceID = doc['deviceID'] as int;

    // Converte o 'deviceID' para String e adiciona ou atualiza o campo 'device_id'
    await doc.reference.update({
      'device_id': deviceID
          .toString(), // Adiciona ou atualiza o campo 'device_id' como string
    });
  }
}
