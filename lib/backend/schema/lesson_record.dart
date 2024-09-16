import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LessonRecord extends FirestoreRecord {
  LessonRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "duration" field.
  int? _duration;
  int get duration => _duration ?? 0;
  bool hasDuration() => _duration != null;

  // "vacancies" field.
  int? _vacancies;
  int get vacancies => _vacancies ?? 0;
  bool hasVacancies() => _vacancies != null;

  // "start" field.
  String? _start;
  String get start => _start ?? '';
  bool hasStart() => _start != null;

  // "trainer" field.
  DocumentReference? _trainer;
  DocumentReference? get trainer => _trainer;
  bool hasTrainer() => _trainer != null;

  // "weekdays" field.
  List<Weekdays>? _weekdays;
  List<Weekdays> get weekdays => _weekdays ?? const [];
  bool hasWeekdays() => _weekdays != null;

  // "modality" field.
  DocumentReference? _modality;
  DocumentReference? get modality => _modality;
  bool hasModality() => _modality != null;

  // "students_id" field.
  List<DocumentReference>? _studentsId;
  List<DocumentReference> get studentsId => _studentsId ?? const [];
  bool hasStudentsId() => _studentsId != null;

  // "company_id" field.
  DocumentReference? _companyId;
  DocumentReference? get companyId => _companyId;
  bool hasCompanyId() => _companyId != null;

  // "isRecurrence" field.
  bool? _isRecurrence;
  bool get isRecurrence => _isRecurrence ?? false;
  bool hasIsRecurrence() => _isRecurrence != null;

  // "isWeekdayInEnum" field.
  List<String>? _isWeekdayInEnum;
  List<String> get isWeekdayInEnum => _isWeekdayInEnum ?? const [];
  bool hasIsWeekdayInEnum() => _isWeekdayInEnum != null;

  // "finish_lesson" field.
  String? _finishLesson;
  String get finishLesson => _finishLesson ?? '';
  bool hasFinishLesson() => _finishLesson != null;

  // "modality_name" field.
  String? _modalityName;
  String get modalityName => _modalityName ?? '';
  bool hasModalityName() => _modalityName != null;

  // "day" field.
  String? _day;
  String get day => _day ?? '';
  bool hasDay() => _day != null;

  void _initializeFields() {
    _duration = castToType<int>(snapshotData['duration']);
    _vacancies = castToType<int>(snapshotData['vacancies']);
    _start = snapshotData['start'] as String?;
    _trainer = snapshotData['trainer'] as DocumentReference?;
    _weekdays = getEnumList<Weekdays>(snapshotData['weekdays']);
    _modality = snapshotData['modality'] as DocumentReference?;
    _studentsId = getDataList(snapshotData['students_id']);
    _companyId = snapshotData['company_id'] as DocumentReference?;
    _isRecurrence = snapshotData['isRecurrence'] as bool?;
    _isWeekdayInEnum = getDataList(snapshotData['isWeekdayInEnum']);
    _finishLesson = snapshotData['finish_lesson'] as String?;
    _modalityName = snapshotData['modality_name'] as String?;
    _day = snapshotData['day'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('lesson');

  static Stream<LessonRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LessonRecord.fromSnapshot(s));

  static Future<LessonRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LessonRecord.fromSnapshot(s));

  static LessonRecord fromSnapshot(DocumentSnapshot snapshot) => LessonRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LessonRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LessonRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LessonRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LessonRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLessonRecordData({
  int? duration,
  int? vacancies,
  String? start,
  DocumentReference? trainer,
  DocumentReference? modality,
  DocumentReference? companyId,
  bool? isRecurrence,
  String? finishLesson,
  String? modalityName,
  String? day,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'duration': duration,
      'vacancies': vacancies,
      'start': start,
      'trainer': trainer,
      'modality': modality,
      'company_id': companyId,
      'isRecurrence': isRecurrence,
      'finish_lesson': finishLesson,
      'modality_name': modalityName,
      'day': day,
    }.withoutNulls,
  );

  return firestoreData;
}

class LessonRecordDocumentEquality implements Equality<LessonRecord> {
  const LessonRecordDocumentEquality();

  @override
  bool equals(LessonRecord? e1, LessonRecord? e2) {
    const listEquality = ListEquality();
    return e1?.duration == e2?.duration &&
        e1?.vacancies == e2?.vacancies &&
        e1?.start == e2?.start &&
        e1?.trainer == e2?.trainer &&
        listEquality.equals(e1?.weekdays, e2?.weekdays) &&
        e1?.modality == e2?.modality &&
        listEquality.equals(e1?.studentsId, e2?.studentsId) &&
        e1?.companyId == e2?.companyId &&
        e1?.isRecurrence == e2?.isRecurrence &&
        listEquality.equals(e1?.isWeekdayInEnum, e2?.isWeekdayInEnum) &&
        e1?.finishLesson == e2?.finishLesson &&
        e1?.modalityName == e2?.modalityName &&
        e1?.day == e2?.day;
  }

  @override
  int hash(LessonRecord? e) => const ListEquality().hash([
        e?.duration,
        e?.vacancies,
        e?.start,
        e?.trainer,
        e?.weekdays,
        e?.modality,
        e?.studentsId,
        e?.companyId,
        e?.isRecurrence,
        e?.isWeekdayInEnum,
        e?.finishLesson,
        e?.modalityName,
        e?.day
      ]);

  @override
  bool isValidKey(Object? o) => o is LessonRecord;
}
