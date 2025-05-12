import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CampusTourRecord extends FirestoreRecord {
  CampusTourRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "Phone" field.
  int? _phone;
  int get phone => _phone ?? 0;
  bool hasPhone() => _phone != null;

  // "Timings" field.
  String? _timings;
  String get timings => _timings ?? '';
  bool hasTimings() => _timings != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _email = snapshotData['Email'] as String?;
    _phone = castToType<int>(snapshotData['Phone']);
    _timings = snapshotData['Timings'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Campus_tour');

  static Stream<CampusTourRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CampusTourRecord.fromSnapshot(s));

  static Future<CampusTourRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CampusTourRecord.fromSnapshot(s));

  static CampusTourRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CampusTourRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CampusTourRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CampusTourRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CampusTourRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CampusTourRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCampusTourRecordData({
  String? name,
  String? email,
  int? phone,
  String? timings,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Email': email,
      'Phone': phone,
      'Timings': timings,
    }.withoutNulls,
  );

  return firestoreData;
}

class CampusTourRecordDocumentEquality implements Equality<CampusTourRecord> {
  const CampusTourRecordDocumentEquality();

  @override
  bool equals(CampusTourRecord? e1, CampusTourRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.email == e2?.email &&
        e1?.phone == e2?.phone &&
        e1?.timings == e2?.timings;
  }

  @override
  int hash(CampusTourRecord? e) =>
      const ListEquality().hash([e?.name, e?.email, e?.phone, e?.timings]);

  @override
  bool isValidKey(Object? o) => o is CampusTourRecord;
}
