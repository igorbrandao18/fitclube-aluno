// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomSelectionStruct extends FFFirebaseStruct {
  CustomSelectionStruct({
    bool? isSelected,
    String? text,
    String? image,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _isSelected = isSelected,
        _text = text,
        _image = image,
        super(firestoreUtilData);

  // "is_selected" field.
  bool? _isSelected;
  bool get isSelected => _isSelected ?? false;
  set isSelected(bool? val) => _isSelected = val;

  bool hasIsSelected() => _isSelected != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;

  bool hasText() => _text != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  static CustomSelectionStruct fromMap(Map<String, dynamic> data) =>
      CustomSelectionStruct(
        isSelected: data['is_selected'] as bool?,
        text: data['text'] as String?,
        image: data['image'] as String?,
      );

  static CustomSelectionStruct? maybeFromMap(dynamic data) => data is Map
      ? CustomSelectionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'is_selected': _isSelected,
        'text': _text,
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'is_selected': serializeParam(
          _isSelected,
          ParamType.bool,
        ),
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static CustomSelectionStruct fromSerializableMap(Map<String, dynamic> data) =>
      CustomSelectionStruct(
        isSelected: deserializeParam(
          data['is_selected'],
          ParamType.bool,
          false,
        ),
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CustomSelectionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CustomSelectionStruct &&
        isSelected == other.isSelected &&
        text == other.text &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([isSelected, text, image]);
}

CustomSelectionStruct createCustomSelectionStruct({
  bool? isSelected,
  String? text,
  String? image,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CustomSelectionStruct(
      isSelected: isSelected,
      text: text,
      image: image,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CustomSelectionStruct? updateCustomSelectionStruct(
  CustomSelectionStruct? customSelection, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    customSelection
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCustomSelectionStructData(
  Map<String, dynamic> firestoreData,
  CustomSelectionStruct? customSelection,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (customSelection == null) {
    return;
  }
  if (customSelection.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && customSelection.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final customSelectionData =
      getCustomSelectionFirestoreData(customSelection, forFieldValue);
  final nestedData =
      customSelectionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = customSelection.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCustomSelectionFirestoreData(
  CustomSelectionStruct? customSelection, [
  bool forFieldValue = false,
]) {
  if (customSelection == null) {
    return {};
  }
  final firestoreData = mapToFirestore(customSelection.toMap());

  // Add any Firestore field values
  customSelection.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCustomSelectionListFirestoreData(
  List<CustomSelectionStruct>? customSelections,
) =>
    customSelections
        ?.map((e) => getCustomSelectionFirestoreData(e, true))
        .toList() ??
    [];
