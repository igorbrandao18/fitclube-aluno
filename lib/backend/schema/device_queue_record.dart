import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeviceQueueRecord extends FirestoreRecord {
  DeviceQueueRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "status" field.
  QueueStatus? _status;
  QueueStatus? get status => _status;
  bool hasStatus() => _status != null;

  // "type" field.
  DeviceQueueType? _type;
  DeviceQueueType? get type => _type;
  bool hasType() => _type != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "device_id" field.
  DocumentReference? _deviceId;
  DocumentReference? get deviceId => _deviceId;
  bool hasDeviceId() => _deviceId != null;

  // "company_id" field.
  DocumentReference? _companyId;
  DocumentReference? get companyId => _companyId;
  bool hasCompanyId() => _companyId != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "role" field.
  Role? _role;
  Role? get role => _role;
  bool hasRole() => _role != null;

  // "modality" field.
  DocumentReference? _modality;
  DocumentReference? get modality => _modality;
  bool hasModality() => _modality != null;

  void _initializeFields() {
    _status = deserializeEnum<QueueStatus>(snapshotData['status']);
    _type = deserializeEnum<DeviceQueueType>(snapshotData['type']);
    _userId = snapshotData['user_id'] as DocumentReference?;
    _deviceId = snapshotData['device_id'] as DocumentReference?;
    _companyId = snapshotData['company_id'] as DocumentReference?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _role = deserializeEnum<Role>(snapshotData['role']);
    _modality = snapshotData['modality'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('device_queue');

  static Stream<DeviceQueueRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DeviceQueueRecord.fromSnapshot(s));

  static Future<DeviceQueueRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DeviceQueueRecord.fromSnapshot(s));

  static DeviceQueueRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DeviceQueueRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DeviceQueueRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DeviceQueueRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DeviceQueueRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DeviceQueueRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDeviceQueueRecordData({
  QueueStatus? status,
  DeviceQueueType? type,
  DocumentReference? userId,
  DocumentReference? deviceId,
  DocumentReference? companyId,
  DateTime? createdTime,
  Role? role,
  DocumentReference? modality,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'status': status,
      'type': type,
      'user_id': userId,
      'device_id': deviceId,
      'company_id': companyId,
      'created_time': createdTime,
      'role': role,
      'modality': modality,
    }.withoutNulls,
  );

  return firestoreData;
}

class DeviceQueueRecordDocumentEquality implements Equality<DeviceQueueRecord> {
  const DeviceQueueRecordDocumentEquality();

  @override
  bool equals(DeviceQueueRecord? e1, DeviceQueueRecord? e2) {
    return e1?.status == e2?.status &&
        e1?.type == e2?.type &&
        e1?.userId == e2?.userId &&
        e1?.deviceId == e2?.deviceId &&
        e1?.companyId == e2?.companyId &&
        e1?.createdTime == e2?.createdTime &&
        e1?.role == e2?.role &&
        e1?.modality == e2?.modality;
  }

  @override
  int hash(DeviceQueueRecord? e) => const ListEquality().hash([
        e?.status,
        e?.type,
        e?.userId,
        e?.deviceId,
        e?.companyId,
        e?.createdTime,
        e?.role,
        e?.modality
      ]);

  @override
  bool isValidKey(Object? o) => o is DeviceQueueRecord;
}
