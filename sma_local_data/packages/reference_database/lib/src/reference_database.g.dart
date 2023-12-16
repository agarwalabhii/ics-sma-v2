// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference_database.dart';

// ignore_for_file: type=lint
class $EmployeeTable extends Employee
    with TableInfo<$EmployeeTable, EmployeeData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EmployeeTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumn<int> establishmentId = GeneratedColumn<int>(
      'establishment_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumn<String> lastName = GeneratedColumn<String>(
      'last_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> firstName = GeneratedColumn<String>(
      'first_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> loginName = GeneratedColumn<String>(
      'login_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> districtCode = GeneratedColumn<String>(
      'district_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> districtName = GeneratedColumn<String>(
      'district_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> circuitCode = GeneratedColumn<String>(
      'circuit_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> circuitName = GeneratedColumn<String>(
      'circuit_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> establishmentCode =
      GeneratedColumn<String>('establishment_code', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> establishmentName =
      GeneratedColumn<String>('establishment_name', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> regionCode = GeneratedColumn<String>(
      'region_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> regionName = GeneratedColumn<String>(
      'region_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> subRegionCode = GeneratedColumn<String>(
      'sub_region_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> assignmentCode = GeneratedColumn<String>(
      'assignment_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> assignmentLocation =
      GeneratedColumn<String>('assignment_location', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> programArea = GeneratedColumn<String>(
      'program_area', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> active = GeneratedColumn<String>(
      'active', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> badgeNumber = GeneratedColumn<String>(
      'badge_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> phoneNumber = GeneratedColumn<String>(
      'phone_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        establishmentId,
        lastName,
        firstName,
        loginName,
        title,
        districtCode,
        districtName,
        circuitCode,
        circuitName,
        establishmentCode,
        establishmentName,
        regionCode,
        regionName,
        subRegionCode,
        assignmentCode,
        assignmentLocation,
        programArea,
        email,
        active,
        badgeNumber,
        phoneNumber
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'employee';
  @override
  Set<GeneratedColumn> get $primaryKey => {id, establishmentId};
  @override
  EmployeeData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EmployeeData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      establishmentId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}establishment_id'])!,
      lastName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}last_name']),
      firstName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}first_name']),
      loginName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}login_name']),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title']),
      districtCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}district_code']),
      districtName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}district_name']),
      circuitCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}circuit_code']),
      circuitName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}circuit_name']),
      establishmentCode: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}establishment_code']),
      establishmentName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}establishment_name']),
      regionCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}region_code']),
      regionName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}region_name']),
      subRegionCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sub_region_code']),
      assignmentCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}assignment_code']),
      assignmentLocation: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}assignment_location']),
      programArea: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}program_area']),
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      active: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}active']),
      badgeNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}badge_number']),
      phoneNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone_number']),
    );
  }

  @override
  $EmployeeTable createAlias(String alias) {
    return $EmployeeTable(attachedDatabase, alias);
  }
}

class EmployeeData extends DataClassBehavioral<EmployeeData>
    implements Insertable<EmployeeData> {
  final int id;
  final int establishmentId;
  final String? lastName;
  final String? firstName;
  final String? loginName;
  final String? title;
  final String? districtCode;
  final String? districtName;
  final String? circuitCode;
  final String? circuitName;
  final String? establishmentCode;
  final String? establishmentName;
  final String? regionCode;
  final String? regionName;
  final String? subRegionCode;
  final String? assignmentCode;
  final String? assignmentLocation;
  final String? programArea;
  final String? email;
  final String? active;
  final String? badgeNumber;
  final String? phoneNumber;
  const EmployeeData(
      {required this.id,
      required this.establishmentId,
      this.lastName,
      this.firstName,
      this.loginName,
      this.title,
      this.districtCode,
      this.districtName,
      this.circuitCode,
      this.circuitName,
      this.establishmentCode,
      this.establishmentName,
      this.regionCode,
      this.regionName,
      this.subRegionCode,
      this.assignmentCode,
      this.assignmentLocation,
      this.programArea,
      this.email,
      this.active,
      this.badgeNumber,
      this.phoneNumber});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['establishment_id'] = Variable<int>(establishmentId);
    if (!nullToAbsent || lastName != null) {
      map['last_name'] = Variable<String>(lastName);
    }
    if (!nullToAbsent || firstName != null) {
      map['first_name'] = Variable<String>(firstName);
    }
    if (!nullToAbsent || loginName != null) {
      map['login_name'] = Variable<String>(loginName);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || districtCode != null) {
      map['district_code'] = Variable<String>(districtCode);
    }
    if (!nullToAbsent || districtName != null) {
      map['district_name'] = Variable<String>(districtName);
    }
    if (!nullToAbsent || circuitCode != null) {
      map['circuit_code'] = Variable<String>(circuitCode);
    }
    if (!nullToAbsent || circuitName != null) {
      map['circuit_name'] = Variable<String>(circuitName);
    }
    if (!nullToAbsent || establishmentCode != null) {
      map['establishment_code'] = Variable<String>(establishmentCode);
    }
    if (!nullToAbsent || establishmentName != null) {
      map['establishment_name'] = Variable<String>(establishmentName);
    }
    if (!nullToAbsent || regionCode != null) {
      map['region_code'] = Variable<String>(regionCode);
    }
    if (!nullToAbsent || regionName != null) {
      map['region_name'] = Variable<String>(regionName);
    }
    if (!nullToAbsent || subRegionCode != null) {
      map['sub_region_code'] = Variable<String>(subRegionCode);
    }
    if (!nullToAbsent || assignmentCode != null) {
      map['assignment_code'] = Variable<String>(assignmentCode);
    }
    if (!nullToAbsent || assignmentLocation != null) {
      map['assignment_location'] = Variable<String>(assignmentLocation);
    }
    if (!nullToAbsent || programArea != null) {
      map['program_area'] = Variable<String>(programArea);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || active != null) {
      map['active'] = Variable<String>(active);
    }
    if (!nullToAbsent || badgeNumber != null) {
      map['badge_number'] = Variable<String>(badgeNumber);
    }
    if (!nullToAbsent || phoneNumber != null) {
      map['phone_number'] = Variable<String>(phoneNumber);
    }
    return map;
  }

  EmployeeCompanion toCompanion(bool nullToAbsent) {
    return EmployeeCompanion(
      id: Value(id),
      establishmentId: Value(establishmentId),
      lastName: lastName == null && nullToAbsent
          ? const Value.absent()
          : Value(lastName),
      firstName: firstName == null && nullToAbsent
          ? const Value.absent()
          : Value(firstName),
      loginName: loginName == null && nullToAbsent
          ? const Value.absent()
          : Value(loginName),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      districtCode: districtCode == null && nullToAbsent
          ? const Value.absent()
          : Value(districtCode),
      districtName: districtName == null && nullToAbsent
          ? const Value.absent()
          : Value(districtName),
      circuitCode: circuitCode == null && nullToAbsent
          ? const Value.absent()
          : Value(circuitCode),
      circuitName: circuitName == null && nullToAbsent
          ? const Value.absent()
          : Value(circuitName),
      establishmentCode: establishmentCode == null && nullToAbsent
          ? const Value.absent()
          : Value(establishmentCode),
      establishmentName: establishmentName == null && nullToAbsent
          ? const Value.absent()
          : Value(establishmentName),
      regionCode: regionCode == null && nullToAbsent
          ? const Value.absent()
          : Value(regionCode),
      regionName: regionName == null && nullToAbsent
          ? const Value.absent()
          : Value(regionName),
      subRegionCode: subRegionCode == null && nullToAbsent
          ? const Value.absent()
          : Value(subRegionCode),
      assignmentCode: assignmentCode == null && nullToAbsent
          ? const Value.absent()
          : Value(assignmentCode),
      assignmentLocation: assignmentLocation == null && nullToAbsent
          ? const Value.absent()
          : Value(assignmentLocation),
      programArea: programArea == null && nullToAbsent
          ? const Value.absent()
          : Value(programArea),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      active:
          active == null && nullToAbsent ? const Value.absent() : Value(active),
      badgeNumber: badgeNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(badgeNumber),
      phoneNumber: phoneNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(phoneNumber),
    );
  }

  factory EmployeeData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EmployeeData(
      id: serializer.fromJson<int>(json['id']),
      establishmentId: serializer.fromJson<int>(json['establishmentId']),
      lastName: serializer.fromJson<String?>(json['lastName']),
      firstName: serializer.fromJson<String?>(json['firstName']),
      loginName: serializer.fromJson<String?>(json['loginName']),
      title: serializer.fromJson<String?>(json['title']),
      districtCode: serializer.fromJson<String?>(json['districtCode']),
      districtName: serializer.fromJson<String?>(json['districtName']),
      circuitCode: serializer.fromJson<String?>(json['circuitCode']),
      circuitName: serializer.fromJson<String?>(json['circuitName']),
      establishmentCode:
          serializer.fromJson<String?>(json['establishmentCode']),
      establishmentName:
          serializer.fromJson<String?>(json['establishmentName']),
      regionCode: serializer.fromJson<String?>(json['regionCode']),
      regionName: serializer.fromJson<String?>(json['regionName']),
      subRegionCode: serializer.fromJson<String?>(json['subRegionCode']),
      assignmentCode: serializer.fromJson<String?>(json['assignmentCode']),
      assignmentLocation:
          serializer.fromJson<String?>(json['assignmentLocation']),
      programArea: serializer.fromJson<String?>(json['programArea']),
      email: serializer.fromJson<String?>(json['email']),
      active: serializer.fromJson<String?>(json['active']),
      badgeNumber: serializer.fromJson<String?>(json['badgeNumber']),
      phoneNumber: serializer.fromJson<String?>(json['phoneNumber']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'establishmentId': serializer.toJson<int>(establishmentId),
      'lastName': serializer.toJson<String?>(lastName),
      'firstName': serializer.toJson<String?>(firstName),
      'loginName': serializer.toJson<String?>(loginName),
      'title': serializer.toJson<String?>(title),
      'districtCode': serializer.toJson<String?>(districtCode),
      'districtName': serializer.toJson<String?>(districtName),
      'circuitCode': serializer.toJson<String?>(circuitCode),
      'circuitName': serializer.toJson<String?>(circuitName),
      'establishmentCode': serializer.toJson<String?>(establishmentCode),
      'establishmentName': serializer.toJson<String?>(establishmentName),
      'regionCode': serializer.toJson<String?>(regionCode),
      'regionName': serializer.toJson<String?>(regionName),
      'subRegionCode': serializer.toJson<String?>(subRegionCode),
      'assignmentCode': serializer.toJson<String?>(assignmentCode),
      'assignmentLocation': serializer.toJson<String?>(assignmentLocation),
      'programArea': serializer.toJson<String?>(programArea),
      'email': serializer.toJson<String?>(email),
      'active': serializer.toJson<String?>(active),
      'badgeNumber': serializer.toJson<String?>(badgeNumber),
      'phoneNumber': serializer.toJson<String?>(phoneNumber),
    };
  }

  EmployeeData copyWith(
          {int? id,
          int? establishmentId,
          Value<String?> lastName = const Value.absent(),
          Value<String?> firstName = const Value.absent(),
          Value<String?> loginName = const Value.absent(),
          Value<String?> title = const Value.absent(),
          Value<String?> districtCode = const Value.absent(),
          Value<String?> districtName = const Value.absent(),
          Value<String?> circuitCode = const Value.absent(),
          Value<String?> circuitName = const Value.absent(),
          Value<String?> establishmentCode = const Value.absent(),
          Value<String?> establishmentName = const Value.absent(),
          Value<String?> regionCode = const Value.absent(),
          Value<String?> regionName = const Value.absent(),
          Value<String?> subRegionCode = const Value.absent(),
          Value<String?> assignmentCode = const Value.absent(),
          Value<String?> assignmentLocation = const Value.absent(),
          Value<String?> programArea = const Value.absent(),
          Value<String?> email = const Value.absent(),
          Value<String?> active = const Value.absent(),
          Value<String?> badgeNumber = const Value.absent(),
          Value<String?> phoneNumber = const Value.absent()}) =>
      EmployeeData(
        id: id ?? this.id,
        establishmentId: establishmentId ?? this.establishmentId,
        lastName: lastName.present ? lastName.value : this.lastName,
        firstName: firstName.present ? firstName.value : this.firstName,
        loginName: loginName.present ? loginName.value : this.loginName,
        title: title.present ? title.value : this.title,
        districtCode:
            districtCode.present ? districtCode.value : this.districtCode,
        districtName:
            districtName.present ? districtName.value : this.districtName,
        circuitCode: circuitCode.present ? circuitCode.value : this.circuitCode,
        circuitName: circuitName.present ? circuitName.value : this.circuitName,
        establishmentCode: establishmentCode.present
            ? establishmentCode.value
            : this.establishmentCode,
        establishmentName: establishmentName.present
            ? establishmentName.value
            : this.establishmentName,
        regionCode: regionCode.present ? regionCode.value : this.regionCode,
        regionName: regionName.present ? regionName.value : this.regionName,
        subRegionCode:
            subRegionCode.present ? subRegionCode.value : this.subRegionCode,
        assignmentCode:
            assignmentCode.present ? assignmentCode.value : this.assignmentCode,
        assignmentLocation: assignmentLocation.present
            ? assignmentLocation.value
            : this.assignmentLocation,
        programArea: programArea.present ? programArea.value : this.programArea,
        email: email.present ? email.value : this.email,
        active: active.present ? active.value : this.active,
        badgeNumber: badgeNumber.present ? badgeNumber.value : this.badgeNumber,
        phoneNumber: phoneNumber.present ? phoneNumber.value : this.phoneNumber,
      );
  @override
  String toString() {
    return (StringBuffer('EmployeeData(')
          ..write('id: $id, ')
          ..write('establishmentId: $establishmentId, ')
          ..write('lastName: $lastName, ')
          ..write('firstName: $firstName, ')
          ..write('loginName: $loginName, ')
          ..write('title: $title, ')
          ..write('districtCode: $districtCode, ')
          ..write('districtName: $districtName, ')
          ..write('circuitCode: $circuitCode, ')
          ..write('circuitName: $circuitName, ')
          ..write('establishmentCode: $establishmentCode, ')
          ..write('establishmentName: $establishmentName, ')
          ..write('regionCode: $regionCode, ')
          ..write('regionName: $regionName, ')
          ..write('subRegionCode: $subRegionCode, ')
          ..write('assignmentCode: $assignmentCode, ')
          ..write('assignmentLocation: $assignmentLocation, ')
          ..write('programArea: $programArea, ')
          ..write('email: $email, ')
          ..write('active: $active, ')
          ..write('badgeNumber: $badgeNumber, ')
          ..write('phoneNumber: $phoneNumber')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        establishmentId,
        lastName,
        firstName,
        loginName,
        title,
        districtCode,
        districtName,
        circuitCode,
        circuitName,
        establishmentCode,
        establishmentName,
        regionCode,
        regionName,
        subRegionCode,
        assignmentCode,
        assignmentLocation,
        programArea,
        email,
        active,
        badgeNumber,
        phoneNumber
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EmployeeData &&
          other.id == this.id &&
          other.establishmentId == this.establishmentId &&
          other.lastName == this.lastName &&
          other.firstName == this.firstName &&
          other.loginName == this.loginName &&
          other.title == this.title &&
          other.districtCode == this.districtCode &&
          other.districtName == this.districtName &&
          other.circuitCode == this.circuitCode &&
          other.circuitName == this.circuitName &&
          other.establishmentCode == this.establishmentCode &&
          other.establishmentName == this.establishmentName &&
          other.regionCode == this.regionCode &&
          other.regionName == this.regionName &&
          other.subRegionCode == this.subRegionCode &&
          other.assignmentCode == this.assignmentCode &&
          other.assignmentLocation == this.assignmentLocation &&
          other.programArea == this.programArea &&
          other.email == this.email &&
          other.active == this.active &&
          other.badgeNumber == this.badgeNumber &&
          other.phoneNumber == this.phoneNumber);
}

class EmployeeCompanion extends UpdateCompanion<EmployeeData> {
  final Value<int> id;
  final Value<int> establishmentId;
  final Value<String?> lastName;
  final Value<String?> firstName;
  final Value<String?> loginName;
  final Value<String?> title;
  final Value<String?> districtCode;
  final Value<String?> districtName;
  final Value<String?> circuitCode;
  final Value<String?> circuitName;
  final Value<String?> establishmentCode;
  final Value<String?> establishmentName;
  final Value<String?> regionCode;
  final Value<String?> regionName;
  final Value<String?> subRegionCode;
  final Value<String?> assignmentCode;
  final Value<String?> assignmentLocation;
  final Value<String?> programArea;
  final Value<String?> email;
  final Value<String?> active;
  final Value<String?> badgeNumber;
  final Value<String?> phoneNumber;
  final Value<int> rowid;
  const EmployeeCompanion({
    this.id = const Value.absent(),
    this.establishmentId = const Value.absent(),
    this.lastName = const Value.absent(),
    this.firstName = const Value.absent(),
    this.loginName = const Value.absent(),
    this.title = const Value.absent(),
    this.districtCode = const Value.absent(),
    this.districtName = const Value.absent(),
    this.circuitCode = const Value.absent(),
    this.circuitName = const Value.absent(),
    this.establishmentCode = const Value.absent(),
    this.establishmentName = const Value.absent(),
    this.regionCode = const Value.absent(),
    this.regionName = const Value.absent(),
    this.subRegionCode = const Value.absent(),
    this.assignmentCode = const Value.absent(),
    this.assignmentLocation = const Value.absent(),
    this.programArea = const Value.absent(),
    this.email = const Value.absent(),
    this.active = const Value.absent(),
    this.badgeNumber = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  EmployeeCompanion.insert({
    required int id,
    required int establishmentId,
    this.lastName = const Value.absent(),
    this.firstName = const Value.absent(),
    this.loginName = const Value.absent(),
    this.title = const Value.absent(),
    this.districtCode = const Value.absent(),
    this.districtName = const Value.absent(),
    this.circuitCode = const Value.absent(),
    this.circuitName = const Value.absent(),
    this.establishmentCode = const Value.absent(),
    this.establishmentName = const Value.absent(),
    this.regionCode = const Value.absent(),
    this.regionName = const Value.absent(),
    this.subRegionCode = const Value.absent(),
    this.assignmentCode = const Value.absent(),
    this.assignmentLocation = const Value.absent(),
    this.programArea = const Value.absent(),
    this.email = const Value.absent(),
    this.active = const Value.absent(),
    this.badgeNumber = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        establishmentId = Value(establishmentId);
  static Insertable<EmployeeData> custom({
    Expression<int>? id,
    Expression<int>? establishmentId,
    Expression<String>? lastName,
    Expression<String>? firstName,
    Expression<String>? loginName,
    Expression<String>? title,
    Expression<String>? districtCode,
    Expression<String>? districtName,
    Expression<String>? circuitCode,
    Expression<String>? circuitName,
    Expression<String>? establishmentCode,
    Expression<String>? establishmentName,
    Expression<String>? regionCode,
    Expression<String>? regionName,
    Expression<String>? subRegionCode,
    Expression<String>? assignmentCode,
    Expression<String>? assignmentLocation,
    Expression<String>? programArea,
    Expression<String>? email,
    Expression<String>? active,
    Expression<String>? badgeNumber,
    Expression<String>? phoneNumber,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (establishmentId != null) 'establishment_id': establishmentId,
      if (lastName != null) 'last_name': lastName,
      if (firstName != null) 'first_name': firstName,
      if (loginName != null) 'login_name': loginName,
      if (title != null) 'title': title,
      if (districtCode != null) 'district_code': districtCode,
      if (districtName != null) 'district_name': districtName,
      if (circuitCode != null) 'circuit_code': circuitCode,
      if (circuitName != null) 'circuit_name': circuitName,
      if (establishmentCode != null) 'establishment_code': establishmentCode,
      if (establishmentName != null) 'establishment_name': establishmentName,
      if (regionCode != null) 'region_code': regionCode,
      if (regionName != null) 'region_name': regionName,
      if (subRegionCode != null) 'sub_region_code': subRegionCode,
      if (assignmentCode != null) 'assignment_code': assignmentCode,
      if (assignmentLocation != null) 'assignment_location': assignmentLocation,
      if (programArea != null) 'program_area': programArea,
      if (email != null) 'email': email,
      if (active != null) 'active': active,
      if (badgeNumber != null) 'badge_number': badgeNumber,
      if (phoneNumber != null) 'phone_number': phoneNumber,
      if (rowid != null) 'rowid': rowid,
    });
  }

  EmployeeCompanion copyWith(
      {Value<int>? id,
      Value<int>? establishmentId,
      Value<String?>? lastName,
      Value<String?>? firstName,
      Value<String?>? loginName,
      Value<String?>? title,
      Value<String?>? districtCode,
      Value<String?>? districtName,
      Value<String?>? circuitCode,
      Value<String?>? circuitName,
      Value<String?>? establishmentCode,
      Value<String?>? establishmentName,
      Value<String?>? regionCode,
      Value<String?>? regionName,
      Value<String?>? subRegionCode,
      Value<String?>? assignmentCode,
      Value<String?>? assignmentLocation,
      Value<String?>? programArea,
      Value<String?>? email,
      Value<String?>? active,
      Value<String?>? badgeNumber,
      Value<String?>? phoneNumber,
      Value<int>? rowid}) {
    return EmployeeCompanion(
      id: id ?? this.id,
      establishmentId: establishmentId ?? this.establishmentId,
      lastName: lastName ?? this.lastName,
      firstName: firstName ?? this.firstName,
      loginName: loginName ?? this.loginName,
      title: title ?? this.title,
      districtCode: districtCode ?? this.districtCode,
      districtName: districtName ?? this.districtName,
      circuitCode: circuitCode ?? this.circuitCode,
      circuitName: circuitName ?? this.circuitName,
      establishmentCode: establishmentCode ?? this.establishmentCode,
      establishmentName: establishmentName ?? this.establishmentName,
      regionCode: regionCode ?? this.regionCode,
      regionName: regionName ?? this.regionName,
      subRegionCode: subRegionCode ?? this.subRegionCode,
      assignmentCode: assignmentCode ?? this.assignmentCode,
      assignmentLocation: assignmentLocation ?? this.assignmentLocation,
      programArea: programArea ?? this.programArea,
      email: email ?? this.email,
      active: active ?? this.active,
      badgeNumber: badgeNumber ?? this.badgeNumber,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (establishmentId.present) {
      map['establishment_id'] = Variable<int>(establishmentId.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (loginName.present) {
      map['login_name'] = Variable<String>(loginName.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (districtCode.present) {
      map['district_code'] = Variable<String>(districtCode.value);
    }
    if (districtName.present) {
      map['district_name'] = Variable<String>(districtName.value);
    }
    if (circuitCode.present) {
      map['circuit_code'] = Variable<String>(circuitCode.value);
    }
    if (circuitName.present) {
      map['circuit_name'] = Variable<String>(circuitName.value);
    }
    if (establishmentCode.present) {
      map['establishment_code'] = Variable<String>(establishmentCode.value);
    }
    if (establishmentName.present) {
      map['establishment_name'] = Variable<String>(establishmentName.value);
    }
    if (regionCode.present) {
      map['region_code'] = Variable<String>(regionCode.value);
    }
    if (regionName.present) {
      map['region_name'] = Variable<String>(regionName.value);
    }
    if (subRegionCode.present) {
      map['sub_region_code'] = Variable<String>(subRegionCode.value);
    }
    if (assignmentCode.present) {
      map['assignment_code'] = Variable<String>(assignmentCode.value);
    }
    if (assignmentLocation.present) {
      map['assignment_location'] = Variable<String>(assignmentLocation.value);
    }
    if (programArea.present) {
      map['program_area'] = Variable<String>(programArea.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (active.present) {
      map['active'] = Variable<String>(active.value);
    }
    if (badgeNumber.present) {
      map['badge_number'] = Variable<String>(badgeNumber.value);
    }
    if (phoneNumber.present) {
      map['phone_number'] = Variable<String>(phoneNumber.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EmployeeCompanion(')
          ..write('id: $id, ')
          ..write('establishmentId: $establishmentId, ')
          ..write('lastName: $lastName, ')
          ..write('firstName: $firstName, ')
          ..write('loginName: $loginName, ')
          ..write('title: $title, ')
          ..write('districtCode: $districtCode, ')
          ..write('districtName: $districtName, ')
          ..write('circuitCode: $circuitCode, ')
          ..write('circuitName: $circuitName, ')
          ..write('establishmentCode: $establishmentCode, ')
          ..write('establishmentName: $establishmentName, ')
          ..write('regionCode: $regionCode, ')
          ..write('regionName: $regionName, ')
          ..write('subRegionCode: $subRegionCode, ')
          ..write('assignmentCode: $assignmentCode, ')
          ..write('assignmentLocation: $assignmentLocation, ')
          ..write('programArea: $programArea, ')
          ..write('email: $email, ')
          ..write('active: $active, ')
          ..write('badgeNumber: $badgeNumber, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $EmployeeRoleTable extends EmployeeRole
    with TableInfo<$EmployeeRoleTable, EmployeeRoleData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EmployeeRoleTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumn<int> employeeId = GeneratedColumn<int>(
      'employee_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<int> roleId = GeneratedColumn<int>(
      'role_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<int> workflowRoleId = GeneratedColumn<int>(
      'workflow_role_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> isPrimary = GeneratedColumn<bool>(
      'is_primary', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_primary" IN (0, 1))'));
  @override
  late final GeneratedColumn<DateTime> startDate = GeneratedColumn<DateTime>(
      'start_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<DateTime> endDate = GeneratedColumn<DateTime>(
      'end_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> districtCode = GeneratedColumn<String>(
      'district_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> assignmentCode = GeneratedColumn<String>(
      'assignment_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> regionCode = GeneratedColumn<String>(
      'region_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> subRegionCode = GeneratedColumn<String>(
      'sub_region_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        employeeId,
        roleId,
        workflowRoleId,
        isPrimary,
        startDate,
        endDate,
        districtCode,
        assignmentCode,
        regionCode,
        subRegionCode
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'employee_role';
  @override
  Set<GeneratedColumn> get $primaryKey => {id, employeeId, roleId};
  @override
  EmployeeRoleData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EmployeeRoleData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      employeeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}employee_id']),
      roleId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}role_id']),
      workflowRoleId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}workflow_role_id']),
      isPrimary: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_primary']),
      startDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start_date']),
      endDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}end_date']),
      districtCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}district_code']),
      assignmentCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}assignment_code']),
      regionCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}region_code']),
      subRegionCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sub_region_code']),
    );
  }

  @override
  $EmployeeRoleTable createAlias(String alias) {
    return $EmployeeRoleTable(attachedDatabase, alias);
  }
}

class EmployeeRoleData extends DataClassBehavioral<EmployeeRoleData>
    implements Insertable<EmployeeRoleData> {
  final int id;
  final int? employeeId;
  final int? roleId;
  final int? workflowRoleId;
  final bool? isPrimary;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? districtCode;
  final String? assignmentCode;
  final String? regionCode;
  final String? subRegionCode;
  const EmployeeRoleData(
      {required this.id,
      this.employeeId,
      this.roleId,
      this.workflowRoleId,
      this.isPrimary,
      this.startDate,
      this.endDate,
      this.districtCode,
      this.assignmentCode,
      this.regionCode,
      this.subRegionCode});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || employeeId != null) {
      map['employee_id'] = Variable<int>(employeeId);
    }
    if (!nullToAbsent || roleId != null) {
      map['role_id'] = Variable<int>(roleId);
    }
    if (!nullToAbsent || workflowRoleId != null) {
      map['workflow_role_id'] = Variable<int>(workflowRoleId);
    }
    if (!nullToAbsent || isPrimary != null) {
      map['is_primary'] = Variable<bool>(isPrimary);
    }
    if (!nullToAbsent || startDate != null) {
      map['start_date'] = Variable<DateTime>(startDate);
    }
    if (!nullToAbsent || endDate != null) {
      map['end_date'] = Variable<DateTime>(endDate);
    }
    if (!nullToAbsent || districtCode != null) {
      map['district_code'] = Variable<String>(districtCode);
    }
    if (!nullToAbsent || assignmentCode != null) {
      map['assignment_code'] = Variable<String>(assignmentCode);
    }
    if (!nullToAbsent || regionCode != null) {
      map['region_code'] = Variable<String>(regionCode);
    }
    if (!nullToAbsent || subRegionCode != null) {
      map['sub_region_code'] = Variable<String>(subRegionCode);
    }
    return map;
  }

  EmployeeRoleCompanion toCompanion(bool nullToAbsent) {
    return EmployeeRoleCompanion(
      id: Value(id),
      employeeId: employeeId == null && nullToAbsent
          ? const Value.absent()
          : Value(employeeId),
      roleId:
          roleId == null && nullToAbsent ? const Value.absent() : Value(roleId),
      workflowRoleId: workflowRoleId == null && nullToAbsent
          ? const Value.absent()
          : Value(workflowRoleId),
      isPrimary: isPrimary == null && nullToAbsent
          ? const Value.absent()
          : Value(isPrimary),
      startDate: startDate == null && nullToAbsent
          ? const Value.absent()
          : Value(startDate),
      endDate: endDate == null && nullToAbsent
          ? const Value.absent()
          : Value(endDate),
      districtCode: districtCode == null && nullToAbsent
          ? const Value.absent()
          : Value(districtCode),
      assignmentCode: assignmentCode == null && nullToAbsent
          ? const Value.absent()
          : Value(assignmentCode),
      regionCode: regionCode == null && nullToAbsent
          ? const Value.absent()
          : Value(regionCode),
      subRegionCode: subRegionCode == null && nullToAbsent
          ? const Value.absent()
          : Value(subRegionCode),
    );
  }

  factory EmployeeRoleData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EmployeeRoleData(
      id: serializer.fromJson<int>(json['id']),
      employeeId: serializer.fromJson<int?>(json['employeeId']),
      roleId: serializer.fromJson<int?>(json['roleId']),
      workflowRoleId: serializer.fromJson<int?>(json['workflowRoleId']),
      isPrimary: serializer.fromJson<bool?>(json['isPrimary']),
      startDate: serializer.fromJson<DateTime?>(json['startDate']),
      endDate: serializer.fromJson<DateTime?>(json['endDate']),
      districtCode: serializer.fromJson<String?>(json['districtCode']),
      assignmentCode: serializer.fromJson<String?>(json['assignmentCode']),
      regionCode: serializer.fromJson<String?>(json['regionCode']),
      subRegionCode: serializer.fromJson<String?>(json['subRegionCode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'employeeId': serializer.toJson<int?>(employeeId),
      'roleId': serializer.toJson<int?>(roleId),
      'workflowRoleId': serializer.toJson<int?>(workflowRoleId),
      'isPrimary': serializer.toJson<bool?>(isPrimary),
      'startDate': serializer.toJson<DateTime?>(startDate),
      'endDate': serializer.toJson<DateTime?>(endDate),
      'districtCode': serializer.toJson<String?>(districtCode),
      'assignmentCode': serializer.toJson<String?>(assignmentCode),
      'regionCode': serializer.toJson<String?>(regionCode),
      'subRegionCode': serializer.toJson<String?>(subRegionCode),
    };
  }

  EmployeeRoleData copyWith(
          {int? id,
          Value<int?> employeeId = const Value.absent(),
          Value<int?> roleId = const Value.absent(),
          Value<int?> workflowRoleId = const Value.absent(),
          Value<bool?> isPrimary = const Value.absent(),
          Value<DateTime?> startDate = const Value.absent(),
          Value<DateTime?> endDate = const Value.absent(),
          Value<String?> districtCode = const Value.absent(),
          Value<String?> assignmentCode = const Value.absent(),
          Value<String?> regionCode = const Value.absent(),
          Value<String?> subRegionCode = const Value.absent()}) =>
      EmployeeRoleData(
        id: id ?? this.id,
        employeeId: employeeId.present ? employeeId.value : this.employeeId,
        roleId: roleId.present ? roleId.value : this.roleId,
        workflowRoleId:
            workflowRoleId.present ? workflowRoleId.value : this.workflowRoleId,
        isPrimary: isPrimary.present ? isPrimary.value : this.isPrimary,
        startDate: startDate.present ? startDate.value : this.startDate,
        endDate: endDate.present ? endDate.value : this.endDate,
        districtCode:
            districtCode.present ? districtCode.value : this.districtCode,
        assignmentCode:
            assignmentCode.present ? assignmentCode.value : this.assignmentCode,
        regionCode: regionCode.present ? regionCode.value : this.regionCode,
        subRegionCode:
            subRegionCode.present ? subRegionCode.value : this.subRegionCode,
      );
  @override
  String toString() {
    return (StringBuffer('EmployeeRoleData(')
          ..write('id: $id, ')
          ..write('employeeId: $employeeId, ')
          ..write('roleId: $roleId, ')
          ..write('workflowRoleId: $workflowRoleId, ')
          ..write('isPrimary: $isPrimary, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('districtCode: $districtCode, ')
          ..write('assignmentCode: $assignmentCode, ')
          ..write('regionCode: $regionCode, ')
          ..write('subRegionCode: $subRegionCode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      employeeId,
      roleId,
      workflowRoleId,
      isPrimary,
      startDate,
      endDate,
      districtCode,
      assignmentCode,
      regionCode,
      subRegionCode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EmployeeRoleData &&
          other.id == this.id &&
          other.employeeId == this.employeeId &&
          other.roleId == this.roleId &&
          other.workflowRoleId == this.workflowRoleId &&
          other.isPrimary == this.isPrimary &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate &&
          other.districtCode == this.districtCode &&
          other.assignmentCode == this.assignmentCode &&
          other.regionCode == this.regionCode &&
          other.subRegionCode == this.subRegionCode);
}

class EmployeeRoleCompanion extends UpdateCompanion<EmployeeRoleData> {
  final Value<int> id;
  final Value<int?> employeeId;
  final Value<int?> roleId;
  final Value<int?> workflowRoleId;
  final Value<bool?> isPrimary;
  final Value<DateTime?> startDate;
  final Value<DateTime?> endDate;
  final Value<String?> districtCode;
  final Value<String?> assignmentCode;
  final Value<String?> regionCode;
  final Value<String?> subRegionCode;
  final Value<int> rowid;
  const EmployeeRoleCompanion({
    this.id = const Value.absent(),
    this.employeeId = const Value.absent(),
    this.roleId = const Value.absent(),
    this.workflowRoleId = const Value.absent(),
    this.isPrimary = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.districtCode = const Value.absent(),
    this.assignmentCode = const Value.absent(),
    this.regionCode = const Value.absent(),
    this.subRegionCode = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  EmployeeRoleCompanion.insert({
    required int id,
    this.employeeId = const Value.absent(),
    this.roleId = const Value.absent(),
    this.workflowRoleId = const Value.absent(),
    this.isPrimary = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.districtCode = const Value.absent(),
    this.assignmentCode = const Value.absent(),
    this.regionCode = const Value.absent(),
    this.subRegionCode = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<EmployeeRoleData> custom({
    Expression<int>? id,
    Expression<int>? employeeId,
    Expression<int>? roleId,
    Expression<int>? workflowRoleId,
    Expression<bool>? isPrimary,
    Expression<DateTime>? startDate,
    Expression<DateTime>? endDate,
    Expression<String>? districtCode,
    Expression<String>? assignmentCode,
    Expression<String>? regionCode,
    Expression<String>? subRegionCode,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (employeeId != null) 'employee_id': employeeId,
      if (roleId != null) 'role_id': roleId,
      if (workflowRoleId != null) 'workflow_role_id': workflowRoleId,
      if (isPrimary != null) 'is_primary': isPrimary,
      if (startDate != null) 'start_date': startDate,
      if (endDate != null) 'end_date': endDate,
      if (districtCode != null) 'district_code': districtCode,
      if (assignmentCode != null) 'assignment_code': assignmentCode,
      if (regionCode != null) 'region_code': regionCode,
      if (subRegionCode != null) 'sub_region_code': subRegionCode,
      if (rowid != null) 'rowid': rowid,
    });
  }

  EmployeeRoleCompanion copyWith(
      {Value<int>? id,
      Value<int?>? employeeId,
      Value<int?>? roleId,
      Value<int?>? workflowRoleId,
      Value<bool?>? isPrimary,
      Value<DateTime?>? startDate,
      Value<DateTime?>? endDate,
      Value<String?>? districtCode,
      Value<String?>? assignmentCode,
      Value<String?>? regionCode,
      Value<String?>? subRegionCode,
      Value<int>? rowid}) {
    return EmployeeRoleCompanion(
      id: id ?? this.id,
      employeeId: employeeId ?? this.employeeId,
      roleId: roleId ?? this.roleId,
      workflowRoleId: workflowRoleId ?? this.workflowRoleId,
      isPrimary: isPrimary ?? this.isPrimary,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      districtCode: districtCode ?? this.districtCode,
      assignmentCode: assignmentCode ?? this.assignmentCode,
      regionCode: regionCode ?? this.regionCode,
      subRegionCode: subRegionCode ?? this.subRegionCode,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (employeeId.present) {
      map['employee_id'] = Variable<int>(employeeId.value);
    }
    if (roleId.present) {
      map['role_id'] = Variable<int>(roleId.value);
    }
    if (workflowRoleId.present) {
      map['workflow_role_id'] = Variable<int>(workflowRoleId.value);
    }
    if (isPrimary.present) {
      map['is_primary'] = Variable<bool>(isPrimary.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<DateTime>(startDate.value);
    }
    if (endDate.present) {
      map['end_date'] = Variable<DateTime>(endDate.value);
    }
    if (districtCode.present) {
      map['district_code'] = Variable<String>(districtCode.value);
    }
    if (assignmentCode.present) {
      map['assignment_code'] = Variable<String>(assignmentCode.value);
    }
    if (regionCode.present) {
      map['region_code'] = Variable<String>(regionCode.value);
    }
    if (subRegionCode.present) {
      map['sub_region_code'] = Variable<String>(subRegionCode.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EmployeeRoleCompanion(')
          ..write('id: $id, ')
          ..write('employeeId: $employeeId, ')
          ..write('roleId: $roleId, ')
          ..write('workflowRoleId: $workflowRoleId, ')
          ..write('isPrimary: $isPrimary, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('districtCode: $districtCode, ')
          ..write('assignmentCode: $assignmentCode, ')
          ..write('regionCode: $regionCode, ')
          ..write('subRegionCode: $subRegionCode, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RoleTable extends Role with TableInfo<$RoleTable, RoleData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RoleTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, name, type];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'role';
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RoleData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RoleData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type']),
    );
  }

  @override
  $RoleTable createAlias(String alias) {
    return $RoleTable(attachedDatabase, alias);
  }
}

class RoleData extends DataClassBehavioral<RoleData>
    implements Insertable<RoleData> {
  final int id;
  final String? name;
  final String? type;
  const RoleData({required this.id, this.name, this.type});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    return map;
  }

  RoleCompanion toCompanion(bool nullToAbsent) {
    return RoleCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
    );
  }

  factory RoleData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RoleData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      type: serializer.fromJson<String?>(json['type']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'type': serializer.toJson<String?>(type),
    };
  }

  RoleData copyWith(
          {int? id,
          Value<String?> name = const Value.absent(),
          Value<String?> type = const Value.absent()}) =>
      RoleData(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        type: type.present ? type.value : this.type,
      );
  @override
  String toString() {
    return (StringBuffer('RoleData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, type);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RoleData &&
          other.id == this.id &&
          other.name == this.name &&
          other.type == this.type);
}

class RoleCompanion extends UpdateCompanion<RoleData> {
  final Value<int> id;
  final Value<String?> name;
  final Value<String?> type;
  const RoleCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
  });
  RoleCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
  });
  static Insertable<RoleData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? type,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
    });
  }

  RoleCompanion copyWith(
      {Value<int>? id, Value<String?>? name, Value<String?>? type}) {
    return RoleCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RoleCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }
}

class $UserTable extends User with TableInfo<$UserTable, UserData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumn<String> eauthId = GeneratedColumn<String>(
      'eauth_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  late final GeneratedColumn<int> level = GeneratedColumn<int>(
      'level', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, eauthId, level];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user';
  @override
  Set<GeneratedColumn> get $primaryKey => {id, eauthId};
  @override
  UserData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      eauthId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}eauth_id'])!,
      level: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}level'])!,
    );
  }

  @override
  $UserTable createAlias(String alias) {
    return $UserTable(attachedDatabase, alias);
  }
}

class UserData extends DataClassBehavioral<UserData>
    implements Insertable<UserData> {
  final int id;
  final String eauthId;
  final int level;
  const UserData(
      {required this.id, required this.eauthId, required this.level});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['eauth_id'] = Variable<String>(eauthId);
    map['level'] = Variable<int>(level);
    return map;
  }

  UserCompanion toCompanion(bool nullToAbsent) {
    return UserCompanion(
      id: Value(id),
      eauthId: Value(eauthId),
      level: Value(level),
    );
  }

  factory UserData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserData(
      id: serializer.fromJson<int>(json['id']),
      eauthId: serializer.fromJson<String>(json['eauthId']),
      level: serializer.fromJson<int>(json['level']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'eauthId': serializer.toJson<String>(eauthId),
      'level': serializer.toJson<int>(level),
    };
  }

  UserData copyWith({int? id, String? eauthId, int? level}) => UserData(
        id: id ?? this.id,
        eauthId: eauthId ?? this.eauthId,
        level: level ?? this.level,
      );
  @override
  String toString() {
    return (StringBuffer('UserData(')
          ..write('id: $id, ')
          ..write('eauthId: $eauthId, ')
          ..write('level: $level')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, eauthId, level);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserData &&
          other.id == this.id &&
          other.eauthId == this.eauthId &&
          other.level == this.level);
}

class UserCompanion extends UpdateCompanion<UserData> {
  final Value<int> id;
  final Value<String> eauthId;
  final Value<int> level;
  final Value<int> rowid;
  const UserCompanion({
    this.id = const Value.absent(),
    this.eauthId = const Value.absent(),
    this.level = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserCompanion.insert({
    required int id,
    required String eauthId,
    required int level,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        eauthId = Value(eauthId),
        level = Value(level);
  static Insertable<UserData> custom({
    Expression<int>? id,
    Expression<String>? eauthId,
    Expression<int>? level,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (eauthId != null) 'eauth_id': eauthId,
      if (level != null) 'level': level,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserCompanion copyWith(
      {Value<int>? id,
      Value<String>? eauthId,
      Value<int>? level,
      Value<int>? rowid}) {
    return UserCompanion(
      id: id ?? this.id,
      eauthId: eauthId ?? this.eauthId,
      level: level ?? this.level,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (eauthId.present) {
      map['eauth_id'] = Variable<String>(eauthId.value);
    }
    if (level.present) {
      map['level'] = Variable<int>(level.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserCompanion(')
          ..write('id: $id, ')
          ..write('eauthId: $eauthId, ')
          ..write('level: $level, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$ReferenceDatabase extends GeneratedDatabase {
  _$ReferenceDatabase(QueryExecutor e) : super(e);
  late final $EmployeeTable employee = $EmployeeTable(this);
  late final $EmployeeRoleTable employeeRole = $EmployeeRoleTable(this);
  late final $RoleTable role = $RoleTable(this);
  late final $UserTable user = $UserTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [employee, employeeRole, role, user];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}
