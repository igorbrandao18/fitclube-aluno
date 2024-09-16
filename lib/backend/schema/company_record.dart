import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyRecord extends FirestoreRecord {
  CompanyRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "domain" field.
  String? _domain;
  String get domain => _domain ?? '';
  bool hasDomain() => _domain != null;

  // "facebook" field.
  String? _facebook;
  String get facebook => _facebook ?? '';
  bool hasFacebook() => _facebook != null;

  // "instagram" field.
  String? _instagram;
  String get instagram => _instagram ?? '';
  bool hasInstagram() => _instagram != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "users_vinculated" field.
  List<DocumentReference>? _usersVinculated;
  List<DocumentReference> get usersVinculated => _usersVinculated ?? const [];
  bool hasUsersVinculated() => _usersVinculated != null;

  // "neighborhood" field.
  String? _neighborhood;
  String get neighborhood => _neighborhood ?? '';
  bool hasNeighborhood() => _neighborhood != null;

  // "road" field.
  String? _road;
  String get road => _road ?? '';
  bool hasRoad() => _road != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "traning_center_name" field.
  String? _traningCenterName;
  String get traningCenterName => _traningCenterName ?? '';
  bool hasTraningCenterName() => _traningCenterName != null;

  // "cpf_cnpj" field.
  String? _cpfCnpj;
  String get cpfCnpj => _cpfCnpj ?? '';
  bool hasCpfCnpj() => _cpfCnpj != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as DocumentReference?;
    _domain = snapshotData['domain'] as String?;
    _facebook = snapshotData['facebook'] as String?;
    _instagram = snapshotData['instagram'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _usersVinculated = getDataList(snapshotData['users_vinculated']);
    _neighborhood = snapshotData['neighborhood'] as String?;
    _road = snapshotData['road'] as String?;
    _city = snapshotData['city'] as String?;
    _traningCenterName = snapshotData['traning_center_name'] as String?;
    _cpfCnpj = snapshotData['cpf_cnpj'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('company');

  static Stream<CompanyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompanyRecord.fromSnapshot(s));

  static Future<CompanyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompanyRecord.fromSnapshot(s));

  static CompanyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompanyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompanyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompanyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompanyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompanyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompanyRecordData({
  DocumentReference? userId,
  String? domain,
  String? facebook,
  String? instagram,
  String? phoneNumber,
  String? neighborhood,
  String? road,
  String? city,
  String? traningCenterName,
  String? cpfCnpj,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'domain': domain,
      'facebook': facebook,
      'instagram': instagram,
      'phone_number': phoneNumber,
      'neighborhood': neighborhood,
      'road': road,
      'city': city,
      'traning_center_name': traningCenterName,
      'cpf_cnpj': cpfCnpj,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompanyRecordDocumentEquality implements Equality<CompanyRecord> {
  const CompanyRecordDocumentEquality();

  @override
  bool equals(CompanyRecord? e1, CompanyRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userId == e2?.userId &&
        e1?.domain == e2?.domain &&
        e1?.facebook == e2?.facebook &&
        e1?.instagram == e2?.instagram &&
        e1?.phoneNumber == e2?.phoneNumber &&
        listEquality.equals(e1?.usersVinculated, e2?.usersVinculated) &&
        e1?.neighborhood == e2?.neighborhood &&
        e1?.road == e2?.road &&
        e1?.city == e2?.city &&
        e1?.traningCenterName == e2?.traningCenterName &&
        e1?.cpfCnpj == e2?.cpfCnpj;
  }

  @override
  int hash(CompanyRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.domain,
        e?.facebook,
        e?.instagram,
        e?.phoneNumber,
        e?.usersVinculated,
        e?.neighborhood,
        e?.road,
        e?.city,
        e?.traningCenterName,
        e?.cpfCnpj
      ]);

  @override
  bool isValidKey(Object? o) => o is CompanyRecord;
}
