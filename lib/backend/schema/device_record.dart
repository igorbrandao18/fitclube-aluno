import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeviceRecord extends FirestoreRecord {
  DeviceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "serialNumber" field.
  int? _serialNumber;
  int get serialNumber => _serialNumber ?? 0;
  bool hasSerialNumber() => _serialNumber != null;

  // "hwVersion" field.
  int? _hwVersion;
  int get hwVersion => _hwVersion ?? 0;
  bool hasHwVersion() => _hwVersion != null;

  // "swVersion" field.
  int? _swVersion;
  int get swVersion => _swVersion ?? 0;
  bool hasSwVersion() => _swVersion != null;

  // "company_id" field.
  DocumentReference? _companyId;
  DocumentReference? get companyId => _companyId;
  bool hasCompanyId() => _companyId != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "isAvailable" field.
  bool? _isAvailable;
  bool get isAvailable => _isAvailable ?? false;
  bool hasIsAvailable() => _isAvailable != null;

  // "deviceID" field.
  int? _deviceID;
  int get deviceID => _deviceID ?? 0;
  bool hasDeviceID() => _deviceID != null;

  // "device_id" field.
  String? _deviceId;
  String get deviceId => _deviceId ?? '';
  bool hasDeviceId() => _deviceId != null;

  void _initializeFields() {
    _serialNumber = castToType<int>(snapshotData['serialNumber']);
    _hwVersion = castToType<int>(snapshotData['hwVersion']);
    _swVersion = castToType<int>(snapshotData['swVersion']);
    _companyId = snapshotData['company_id'] as DocumentReference?;
    _userId = snapshotData['user_id'] as DocumentReference?;
    _isAvailable = snapshotData['isAvailable'] as bool?;
    _deviceID = castToType<int>(snapshotData['deviceID']);
    _deviceId = snapshotData['device_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('device');

  static Stream<DeviceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DeviceRecord.fromSnapshot(s));

  static Future<DeviceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DeviceRecord.fromSnapshot(s));

  static DeviceRecord fromSnapshot(DocumentSnapshot snapshot) => DeviceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DeviceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DeviceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DeviceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DeviceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDeviceRecordData({
  int? serialNumber,
  int? hwVersion,
  int? swVersion,
  DocumentReference? companyId,
  DocumentReference? userId,
  bool? isAvailable,
  int? deviceID,
  String? deviceId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'serialNumber': serialNumber,
      'hwVersion': hwVersion,
      'swVersion': swVersion,
      'company_id': companyId,
      'user_id': userId,
      'isAvailable': isAvailable,
      'deviceID': deviceID,
      'device_id': deviceId,
    }.withoutNulls,
  );

  return firestoreData;
}

class DeviceRecordDocumentEquality implements Equality<DeviceRecord> {
  const DeviceRecordDocumentEquality();

  @override
  bool equals(DeviceRecord? e1, DeviceRecord? e2) {
    return e1?.serialNumber == e2?.serialNumber &&
        e1?.hwVersion == e2?.hwVersion &&
        e1?.swVersion == e2?.swVersion &&
        e1?.companyId == e2?.companyId &&
        e1?.userId == e2?.userId &&
        e1?.isAvailable == e2?.isAvailable &&
        e1?.deviceID == e2?.deviceID &&
        e1?.deviceId == e2?.deviceId;
  }

  @override
  int hash(DeviceRecord? e) => const ListEquality().hash([
        e?.serialNumber,
        e?.hwVersion,
        e?.swVersion,
        e?.companyId,
        e?.userId,
        e?.isAvailable,
        e?.deviceID,
        e?.deviceId
      ]);

  @override
  bool isValidKey(Object? o) => o is DeviceRecord;
}
