import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrainingHistoryRecord extends FirestoreRecord {
  TrainingHistoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "lesson_id" field.
  DocumentReference? _lessonId;
  DocumentReference? get lessonId => _lessonId;
  bool hasLessonId() => _lessonId != null;

  // "kcal" field.
  int? _kcal;
  int get kcal => _kcal ?? 0;
  bool hasKcal() => _kcal != null;

  // "duration" field.
  int? _duration;
  int get duration => _duration ?? 0;
  bool hasDuration() => _duration != null;

  // "year" field.
  String? _year;
  String get year => _year ?? '';
  bool hasYear() => _year != null;

  // "student_id" field.
  DocumentReference? _studentId;
  DocumentReference? get studentId => _studentId;
  bool hasStudentId() => _studentId != null;

  // "day" field.
  String? _day;
  String get day => _day ?? '';
  bool hasDay() => _day != null;

  // "month" field.
  String? _month;
  String get month => _month ?? '';
  bool hasMonth() => _month != null;

  void _initializeFields() {
    _lessonId = snapshotData['lesson_id'] as DocumentReference?;
    _kcal = castToType<int>(snapshotData['kcal']);
    _duration = castToType<int>(snapshotData['duration']);
    _year = snapshotData['year'] as String?;
    _studentId = snapshotData['student_id'] as DocumentReference?;
    _day = snapshotData['day'] as String?;
    _month = snapshotData['month'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('training_history');

  static Stream<TrainingHistoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrainingHistoryRecord.fromSnapshot(s));

  static Future<TrainingHistoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrainingHistoryRecord.fromSnapshot(s));

  static TrainingHistoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TrainingHistoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrainingHistoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrainingHistoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrainingHistoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TrainingHistoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTrainingHistoryRecordData({
  DocumentReference? lessonId,
  int? kcal,
  int? duration,
  String? year,
  DocumentReference? studentId,
  String? day,
  String? month,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'lesson_id': lessonId,
      'kcal': kcal,
      'duration': duration,
      'year': year,
      'student_id': studentId,
      'day': day,
      'month': month,
    }.withoutNulls,
  );

  return firestoreData;
}

class TrainingHistoryRecordDocumentEquality
    implements Equality<TrainingHistoryRecord> {
  const TrainingHistoryRecordDocumentEquality();

  @override
  bool equals(TrainingHistoryRecord? e1, TrainingHistoryRecord? e2) {
    return e1?.lessonId == e2?.lessonId &&
        e1?.kcal == e2?.kcal &&
        e1?.duration == e2?.duration &&
        e1?.year == e2?.year &&
        e1?.studentId == e2?.studentId &&
        e1?.day == e2?.day &&
        e1?.month == e2?.month;
  }

  @override
  int hash(TrainingHistoryRecord? e) => const ListEquality().hash([
        e?.lessonId,
        e?.kcal,
        e?.duration,
        e?.year,
        e?.studentId,
        e?.day,
        e?.month
      ]);

  @override
  bool isValidKey(Object? o) => o is TrainingHistoryRecord;
}
