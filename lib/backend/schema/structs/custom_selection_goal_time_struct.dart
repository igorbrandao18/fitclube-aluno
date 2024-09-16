// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomSelectionGoalTimeStruct extends FFFirebaseStruct {
  CustomSelectionGoalTimeStruct({
    bool? isSelected,
    DateTime? date,
    String? text,
    String? image,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _isSelected = isSelected,
        _date = date,
        _text = text,
        _image = image,
        super(firestoreUtilData);

  // "is_selected" field.
  bool? _isSelected;
  bool get isSelected => _isSelected ?? false;
  set isSelected(bool? val) => _isSelected = val;

  bool hasIsSelected() => _isSelected != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;

  bool hasDate() => _date != null;

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

  static CustomSelectionGoalTimeStruct fromMap(Map<String, dynamic> data) =>
      CustomSelectionGoalTimeStruct(
        isSelected: data['is_selected'] as bool?,
        date: data['date'] as DateTime?,
        text: data['text'] as String?,
        image: data['image'] as String?,
      );

  static CustomSelectionGoalTimeStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? CustomSelectionGoalTimeStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'is_selected': _isSelected,
        'date': _date,
        'text': _text,
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'is_selected': serializeParam(
          _isSelected,
          ParamType.bool,
        ),
        'date': serializeParam(
          _date,
          ParamType.DateTime,
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

  static CustomSelectionGoalTimeStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CustomSelectionGoalTimeStruct(
        isSelected: deserializeParam(
          data['is_selected'],
          ParamType.bool,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
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
  String toString() => 'CustomSelectionGoalTimeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CustomSelectionGoalTimeStruct &&
        isSelected == other.isSelected &&
        date == other.date &&
        text == other.text &&
        image == other.image;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([isSelected, date, text, image]);
}

CustomSelectionGoalTimeStruct createCustomSelectionGoalTimeStruct({
  bool? isSelected,
  DateTime? date,
  String? text,
  String? image,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CustomSelectionGoalTimeStruct(
      isSelected: isSelected,
      date: date,
      text: text,
      image: image,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CustomSelectionGoalTimeStruct? updateCustomSelectionGoalTimeStruct(
  CustomSelectionGoalTimeStruct? customSelectionGoalTime, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    customSelectionGoalTime
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCustomSelectionGoalTimeStructData(
  Map<String, dynamic> firestoreData,
  CustomSelectionGoalTimeStruct? customSelectionGoalTime,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (customSelectionGoalTime == null) {
    return;
  }
  if (customSelectionGoalTime.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      customSelectionGoalTime.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final customSelectionGoalTimeData = getCustomSelectionGoalTimeFirestoreData(
      customSelectionGoalTime, forFieldValue);
  final nestedData =
      customSelectionGoalTimeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      customSelectionGoalTime.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCustomSelectionGoalTimeFirestoreData(
  CustomSelectionGoalTimeStruct? customSelectionGoalTime, [
  bool forFieldValue = false,
]) {
  if (customSelectionGoalTime == null) {
    return {};
  }
  final firestoreData = mapToFirestore(customSelectionGoalTime.toMap());

  // Add any Firestore field values
  customSelectionGoalTime.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCustomSelectionGoalTimeListFirestoreData(
  List<CustomSelectionGoalTimeStruct>? customSelectionGoalTimes,
) =>
    customSelectionGoalTimes
        ?.map((e) => getCustomSelectionGoalTimeFirestoreData(e, true))
        .toList() ??
    [];
