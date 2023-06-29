import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BirthdayListRecord extends FirestoreRecord {
  BirthdayListRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "EmployeeName" field.
  String? _employeeName;
  String get employeeName => _employeeName ?? '';
  bool hasEmployeeName() => _employeeName != null;

  // "EmployeeBirthday" field.
  DateTime? _employeeBirthday;
  DateTime? get employeeBirthday => _employeeBirthday;
  bool hasEmployeeBirthday() => _employeeBirthday != null;

  // "ContactNo" field.
  String? _contactNo;
  String get contactNo => _contactNo ?? '';
  bool hasContactNo() => _contactNo != null;

  // "Preferences" field.
  String? _preferences;
  String get preferences => _preferences ?? '';
  bool hasPreferences() => _preferences != null;

  void _initializeFields() {
    _employeeName = snapshotData['EmployeeName'] as String?;
    _employeeBirthday = snapshotData['EmployeeBirthday'] as DateTime?;
    _contactNo = snapshotData['ContactNo'] as String?;
    _preferences = snapshotData['Preferences'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('BirthdayList');

  static Stream<BirthdayListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BirthdayListRecord.fromSnapshot(s));

  static Future<BirthdayListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BirthdayListRecord.fromSnapshot(s));

  static BirthdayListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BirthdayListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BirthdayListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BirthdayListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BirthdayListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BirthdayListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBirthdayListRecordData({
  String? employeeName,
  DateTime? employeeBirthday,
  String? contactNo,
  String? preferences,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'EmployeeName': employeeName,
      'EmployeeBirthday': employeeBirthday,
      'ContactNo': contactNo,
      'Preferences': preferences,
    }.withoutNulls,
  );

  return firestoreData;
}
