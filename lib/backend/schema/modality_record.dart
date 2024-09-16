import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ModalityRecord extends FirestoreRecord {
  ModalityRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "schedule" field.
  bool? _schedule;
  bool get schedule => _schedule ?? false;
  bool hasSchedule() => _schedule != null;

  // "company_id" field.
  DocumentReference? _companyId;
  DocumentReference? get companyId => _companyId;
  bool hasCompanyId() => _companyId != null;

  // "workoutTypeFactor" field.
  WorkoutTypeFactor? _workoutTypeFactor;
  WorkoutTypeFactor? get workoutTypeFactor => _workoutTypeFactor;
  bool hasWorkoutTypeFactor() => _workoutTypeFactor != null;

  // "mid" field.
  DocumentReference? _mid;
  DocumentReference? get mid => _mid;
  bool hasMid() => _mid != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _name = snapshotData['name'] as String?;
    _schedule = snapshotData['schedule'] as bool?;
    _companyId = snapshotData['company_id'] as DocumentReference?;
    _workoutTypeFactor =
        deserializeEnum<WorkoutTypeFactor>(snapshotData['workoutTypeFactor']);
    _mid = snapshotData['mid'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('modality');

  static Stream<ModalityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ModalityRecord.fromSnapshot(s));

  static Future<ModalityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ModalityRecord.fromSnapshot(s));

  static ModalityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ModalityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ModalityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ModalityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ModalityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ModalityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createModalityRecordData({
  DocumentReference? userRef,
  String? name,
  bool? schedule,
  DocumentReference? companyId,
  WorkoutTypeFactor? workoutTypeFactor,
  DocumentReference? mid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'name': name,
      'schedule': schedule,
      'company_id': companyId,
      'workoutTypeFactor': workoutTypeFactor,
      'mid': mid,
    }.withoutNulls,
  );

  return firestoreData;
}

class ModalityRecordDocumentEquality implements Equality<ModalityRecord> {
  const ModalityRecordDocumentEquality();

  @override
  bool equals(ModalityRecord? e1, ModalityRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.name == e2?.name &&
        e1?.schedule == e2?.schedule &&
        e1?.companyId == e2?.companyId &&
        e1?.workoutTypeFactor == e2?.workoutTypeFactor &&
        e1?.mid == e2?.mid;
  }

  @override
  int hash(ModalityRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.name,
        e?.schedule,
        e?.companyId,
        e?.workoutTypeFactor,
        e?.mid
      ]);

  @override
  bool isValidKey(Object? o) => o is ModalityRecord;
}
