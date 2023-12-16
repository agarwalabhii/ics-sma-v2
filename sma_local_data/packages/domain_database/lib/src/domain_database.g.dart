// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain_database.dart';

// ignore_for_file: type=lint
class $ContactTable extends Contact with TableInfo<$ContactTable, ContactData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ContactTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<RecordType?, int> recordType =
      GeneratedColumn<int>('record_type', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<RecordType?>($ContactTable.$converterrecordTypen);
  @override
  late final GeneratedColumnWithTypeConverter<SyncStatus?, int> syncStatus =
      GeneratedColumn<int>('sync_status', aliasedName, true,
              type: DriftSqlType.int, requiredDuringInsert: false)
          .withConverter<SyncStatus?>($ContactTable.$convertersyncStatusn);
  @override
  late final GeneratedColumn<DateTime> syncTimestamp =
      GeneratedColumn<DateTime>('sync_timestamp', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<int> creatorId = GeneratedColumn<int>(
      'creator_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  late final GeneratedColumnWithTypeConverter<RecordStatus?, int> recordStatus =
      GeneratedColumn<int>('record_status', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<RecordStatus?>($ContactTable.$converterrecordStatusn);
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> phoneNumber = GeneratedColumn<String>(
      'phone_number', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> phoneNumberExtension =
      GeneratedColumn<String>('phone_number_extension', aliasedName, true,
          additionalChecks: GeneratedColumn.checkTextLength(),
          type: DriftSqlType.string,
          requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> mobilePhoneNumber =
      GeneratedColumn<String>('mobile_phone_number', aliasedName, true,
          additionalChecks: GeneratedColumn.checkTextLength(),
          type: DriftSqlType.string,
          requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> receiveTextMessage = GeneratedColumn<bool>(
      'receive_text_message', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("receive_text_message" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> faxNumber = GeneratedColumn<String>(
      'fax_number', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        recordType,
        syncStatus,
        syncTimestamp,
        creatorId,
        createdDate,
        recordStatus,
        name,
        title,
        phoneNumber,
        phoneNumberExtension,
        mobilePhoneNumber,
        receiveTextMessage,
        faxNumber,
        email
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'contact';
  @override
  Set<GeneratedColumn> get $primaryKey => {id, recordType};
  @override
  ContactData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ContactData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      recordType: $ContactTable.$converterrecordTypen.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}record_type'])),
      syncStatus: $ContactTable.$convertersyncStatusn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sync_status'])),
      syncTimestamp: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}sync_timestamp']),
      creatorId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}creator_id']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
      recordStatus: $ContactTable.$converterrecordStatusn.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}record_status'])),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title']),
      phoneNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone_number']),
      phoneNumberExtension: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}phone_number_extension']),
      mobilePhoneNumber: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}mobile_phone_number']),
      receiveTextMessage: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}receive_text_message']),
      faxNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}fax_number']),
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
    );
  }

  @override
  $ContactTable createAlias(String alias) {
    return $ContactTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RecordType, int, int> $converterrecordType =
      const EnumIndexConverter<RecordType>(RecordType.values);
  static JsonTypeConverter2<RecordType?, int?, int?> $converterrecordTypen =
      JsonTypeConverter2.asNullable($converterrecordType);
  static JsonTypeConverter2<SyncStatus, int, int> $convertersyncStatus =
      const EnumIndexConverter<SyncStatus>(SyncStatus.values);
  static JsonTypeConverter2<SyncStatus?, int?, int?> $convertersyncStatusn =
      JsonTypeConverter2.asNullable($convertersyncStatus);
  static JsonTypeConverter2<RecordStatus, int, int> $converterrecordStatus =
      const EnumIndexConverter<RecordStatus>(RecordStatus.values);
  static JsonTypeConverter2<RecordStatus?, int?, int?> $converterrecordStatusn =
      JsonTypeConverter2.asNullable($converterrecordStatus);
}

class ContactData extends DataClassBehavioral<ContactData>
    implements Insertable<ContactData> {
  final int id;
  final RecordType? recordType;
  final SyncStatus? syncStatus;
  final DateTime? syncTimestamp;
  final int? creatorId;
  final DateTime? createdDate;
  final RecordStatus? recordStatus;
  final String? name;
  final String? title;
  final String? phoneNumber;
  final String? phoneNumberExtension;
  final String? mobilePhoneNumber;
  final bool? receiveTextMessage;
  final String? faxNumber;
  final String? email;
  const ContactData(
      {required this.id,
      this.recordType,
      this.syncStatus,
      this.syncTimestamp,
      this.creatorId,
      this.createdDate,
      this.recordStatus,
      this.name,
      this.title,
      this.phoneNumber,
      this.phoneNumberExtension,
      this.mobilePhoneNumber,
      this.receiveTextMessage,
      this.faxNumber,
      this.email});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || recordType != null) {
      final converter = $ContactTable.$converterrecordTypen;
      map['record_type'] = Variable<int>(converter.toSql(recordType));
    }
    if (!nullToAbsent || syncStatus != null) {
      final converter = $ContactTable.$convertersyncStatusn;
      map['sync_status'] = Variable<int>(converter.toSql(syncStatus));
    }
    if (!nullToAbsent || syncTimestamp != null) {
      map['sync_timestamp'] = Variable<DateTime>(syncTimestamp);
    }
    if (!nullToAbsent || creatorId != null) {
      map['creator_id'] = Variable<int>(creatorId);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    if (!nullToAbsent || recordStatus != null) {
      final converter = $ContactTable.$converterrecordStatusn;
      map['record_status'] = Variable<int>(converter.toSql(recordStatus));
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || phoneNumber != null) {
      map['phone_number'] = Variable<String>(phoneNumber);
    }
    if (!nullToAbsent || phoneNumberExtension != null) {
      map['phone_number_extension'] = Variable<String>(phoneNumberExtension);
    }
    if (!nullToAbsent || mobilePhoneNumber != null) {
      map['mobile_phone_number'] = Variable<String>(mobilePhoneNumber);
    }
    if (!nullToAbsent || receiveTextMessage != null) {
      map['receive_text_message'] = Variable<bool>(receiveTextMessage);
    }
    if (!nullToAbsent || faxNumber != null) {
      map['fax_number'] = Variable<String>(faxNumber);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    return map;
  }

  ContactCompanion toCompanion(bool nullToAbsent) {
    return ContactCompanion(
      id: Value(id),
      recordType: recordType == null && nullToAbsent
          ? const Value.absent()
          : Value(recordType),
      syncStatus: syncStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(syncStatus),
      syncTimestamp: syncTimestamp == null && nullToAbsent
          ? const Value.absent()
          : Value(syncTimestamp),
      creatorId: creatorId == null && nullToAbsent
          ? const Value.absent()
          : Value(creatorId),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
      recordStatus: recordStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(recordStatus),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      phoneNumber: phoneNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(phoneNumber),
      phoneNumberExtension: phoneNumberExtension == null && nullToAbsent
          ? const Value.absent()
          : Value(phoneNumberExtension),
      mobilePhoneNumber: mobilePhoneNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(mobilePhoneNumber),
      receiveTextMessage: receiveTextMessage == null && nullToAbsent
          ? const Value.absent()
          : Value(receiveTextMessage),
      faxNumber: faxNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(faxNumber),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
    );
  }

  factory ContactData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ContactData(
      id: serializer.fromJson<int>(json['id']),
      recordType: $ContactTable.$converterrecordTypen
          .fromJson(serializer.fromJson<int?>(json['recordType'])),
      syncStatus: $ContactTable.$convertersyncStatusn
          .fromJson(serializer.fromJson<int?>(json['syncStatus'])),
      syncTimestamp: serializer.fromJson<DateTime?>(json['syncTimestamp']),
      creatorId: serializer.fromJson<int?>(json['creatorId']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
      recordStatus: $ContactTable.$converterrecordStatusn
          .fromJson(serializer.fromJson<int?>(json['recordStatus'])),
      name: serializer.fromJson<String?>(json['name']),
      title: serializer.fromJson<String?>(json['title']),
      phoneNumber: serializer.fromJson<String?>(json['phoneNumber']),
      phoneNumberExtension:
          serializer.fromJson<String?>(json['phoneNumberExtension']),
      mobilePhoneNumber:
          serializer.fromJson<String?>(json['mobilePhoneNumber']),
      receiveTextMessage:
          serializer.fromJson<bool?>(json['receiveTextMessage']),
      faxNumber: serializer.fromJson<String?>(json['faxNumber']),
      email: serializer.fromJson<String?>(json['email']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordType': serializer
          .toJson<int?>($ContactTable.$converterrecordTypen.toJson(recordType)),
      'syncStatus': serializer
          .toJson<int?>($ContactTable.$convertersyncStatusn.toJson(syncStatus)),
      'syncTimestamp': serializer.toJson<DateTime?>(syncTimestamp),
      'creatorId': serializer.toJson<int?>(creatorId),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
      'recordStatus': serializer.toJson<int?>(
          $ContactTable.$converterrecordStatusn.toJson(recordStatus)),
      'name': serializer.toJson<String?>(name),
      'title': serializer.toJson<String?>(title),
      'phoneNumber': serializer.toJson<String?>(phoneNumber),
      'phoneNumberExtension': serializer.toJson<String?>(phoneNumberExtension),
      'mobilePhoneNumber': serializer.toJson<String?>(mobilePhoneNumber),
      'receiveTextMessage': serializer.toJson<bool?>(receiveTextMessage),
      'faxNumber': serializer.toJson<String?>(faxNumber),
      'email': serializer.toJson<String?>(email),
    };
  }

  ContactData copyWith(
          {int? id,
          Value<RecordType?> recordType = const Value.absent(),
          Value<SyncStatus?> syncStatus = const Value.absent(),
          Value<DateTime?> syncTimestamp = const Value.absent(),
          Value<int?> creatorId = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent(),
          Value<RecordStatus?> recordStatus = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<String?> title = const Value.absent(),
          Value<String?> phoneNumber = const Value.absent(),
          Value<String?> phoneNumberExtension = const Value.absent(),
          Value<String?> mobilePhoneNumber = const Value.absent(),
          Value<bool?> receiveTextMessage = const Value.absent(),
          Value<String?> faxNumber = const Value.absent(),
          Value<String?> email = const Value.absent()}) =>
      ContactData(
        id: id ?? this.id,
        recordType: recordType.present ? recordType.value : this.recordType,
        syncStatus: syncStatus.present ? syncStatus.value : this.syncStatus,
        syncTimestamp:
            syncTimestamp.present ? syncTimestamp.value : this.syncTimestamp,
        creatorId: creatorId.present ? creatorId.value : this.creatorId,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
        recordStatus:
            recordStatus.present ? recordStatus.value : this.recordStatus,
        name: name.present ? name.value : this.name,
        title: title.present ? title.value : this.title,
        phoneNumber: phoneNumber.present ? phoneNumber.value : this.phoneNumber,
        phoneNumberExtension: phoneNumberExtension.present
            ? phoneNumberExtension.value
            : this.phoneNumberExtension,
        mobilePhoneNumber: mobilePhoneNumber.present
            ? mobilePhoneNumber.value
            : this.mobilePhoneNumber,
        receiveTextMessage: receiveTextMessage.present
            ? receiveTextMessage.value
            : this.receiveTextMessage,
        faxNumber: faxNumber.present ? faxNumber.value : this.faxNumber,
        email: email.present ? email.value : this.email,
      );
  @override
  String toString() {
    return (StringBuffer('ContactData(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('syncTimestamp: $syncTimestamp, ')
          ..write('creatorId: $creatorId, ')
          ..write('createdDate: $createdDate, ')
          ..write('recordStatus: $recordStatus, ')
          ..write('name: $name, ')
          ..write('title: $title, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('phoneNumberExtension: $phoneNumberExtension, ')
          ..write('mobilePhoneNumber: $mobilePhoneNumber, ')
          ..write('receiveTextMessage: $receiveTextMessage, ')
          ..write('faxNumber: $faxNumber, ')
          ..write('email: $email')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      recordType,
      syncStatus,
      syncTimestamp,
      creatorId,
      createdDate,
      recordStatus,
      name,
      title,
      phoneNumber,
      phoneNumberExtension,
      mobilePhoneNumber,
      receiveTextMessage,
      faxNumber,
      email);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ContactData &&
          other.id == this.id &&
          other.recordType == this.recordType &&
          other.syncStatus == this.syncStatus &&
          other.syncTimestamp == this.syncTimestamp &&
          other.creatorId == this.creatorId &&
          other.createdDate == this.createdDate &&
          other.recordStatus == this.recordStatus &&
          other.name == this.name &&
          other.title == this.title &&
          other.phoneNumber == this.phoneNumber &&
          other.phoneNumberExtension == this.phoneNumberExtension &&
          other.mobilePhoneNumber == this.mobilePhoneNumber &&
          other.receiveTextMessage == this.receiveTextMessage &&
          other.faxNumber == this.faxNumber &&
          other.email == this.email);
}

class ContactCompanion extends UpdateCompanion<ContactData> {
  final Value<int> id;
  final Value<RecordType?> recordType;
  final Value<SyncStatus?> syncStatus;
  final Value<DateTime?> syncTimestamp;
  final Value<int?> creatorId;
  final Value<DateTime?> createdDate;
  final Value<RecordStatus?> recordStatus;
  final Value<String?> name;
  final Value<String?> title;
  final Value<String?> phoneNumber;
  final Value<String?> phoneNumberExtension;
  final Value<String?> mobilePhoneNumber;
  final Value<bool?> receiveTextMessage;
  final Value<String?> faxNumber;
  final Value<String?> email;
  final Value<int> rowid;
  const ContactCompanion({
    this.id = const Value.absent(),
    this.recordType = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.syncTimestamp = const Value.absent(),
    this.creatorId = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.recordStatus = const Value.absent(),
    this.name = const Value.absent(),
    this.title = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.phoneNumberExtension = const Value.absent(),
    this.mobilePhoneNumber = const Value.absent(),
    this.receiveTextMessage = const Value.absent(),
    this.faxNumber = const Value.absent(),
    this.email = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ContactCompanion.insert({
    required int id,
    this.recordType = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.syncTimestamp = const Value.absent(),
    this.creatorId = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.recordStatus = const Value.absent(),
    this.name = const Value.absent(),
    this.title = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.phoneNumberExtension = const Value.absent(),
    this.mobilePhoneNumber = const Value.absent(),
    this.receiveTextMessage = const Value.absent(),
    this.faxNumber = const Value.absent(),
    this.email = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<ContactData> custom({
    Expression<int>? id,
    Expression<int>? recordType,
    Expression<int>? syncStatus,
    Expression<DateTime>? syncTimestamp,
    Expression<int>? creatorId,
    Expression<DateTime>? createdDate,
    Expression<int>? recordStatus,
    Expression<String>? name,
    Expression<String>? title,
    Expression<String>? phoneNumber,
    Expression<String>? phoneNumberExtension,
    Expression<String>? mobilePhoneNumber,
    Expression<bool>? receiveTextMessage,
    Expression<String>? faxNumber,
    Expression<String>? email,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordType != null) 'record_type': recordType,
      if (syncStatus != null) 'sync_status': syncStatus,
      if (syncTimestamp != null) 'sync_timestamp': syncTimestamp,
      if (creatorId != null) 'creator_id': creatorId,
      if (createdDate != null) 'created_date': createdDate,
      if (recordStatus != null) 'record_status': recordStatus,
      if (name != null) 'name': name,
      if (title != null) 'title': title,
      if (phoneNumber != null) 'phone_number': phoneNumber,
      if (phoneNumberExtension != null)
        'phone_number_extension': phoneNumberExtension,
      if (mobilePhoneNumber != null) 'mobile_phone_number': mobilePhoneNumber,
      if (receiveTextMessage != null)
        'receive_text_message': receiveTextMessage,
      if (faxNumber != null) 'fax_number': faxNumber,
      if (email != null) 'email': email,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ContactCompanion copyWith(
      {Value<int>? id,
      Value<RecordType?>? recordType,
      Value<SyncStatus?>? syncStatus,
      Value<DateTime?>? syncTimestamp,
      Value<int?>? creatorId,
      Value<DateTime?>? createdDate,
      Value<RecordStatus?>? recordStatus,
      Value<String?>? name,
      Value<String?>? title,
      Value<String?>? phoneNumber,
      Value<String?>? phoneNumberExtension,
      Value<String?>? mobilePhoneNumber,
      Value<bool?>? receiveTextMessage,
      Value<String?>? faxNumber,
      Value<String?>? email,
      Value<int>? rowid}) {
    return ContactCompanion(
      id: id ?? this.id,
      recordType: recordType ?? this.recordType,
      syncStatus: syncStatus ?? this.syncStatus,
      syncTimestamp: syncTimestamp ?? this.syncTimestamp,
      creatorId: creatorId ?? this.creatorId,
      createdDate: createdDate ?? this.createdDate,
      recordStatus: recordStatus ?? this.recordStatus,
      name: name ?? this.name,
      title: title ?? this.title,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      phoneNumberExtension: phoneNumberExtension ?? this.phoneNumberExtension,
      mobilePhoneNumber: mobilePhoneNumber ?? this.mobilePhoneNumber,
      receiveTextMessage: receiveTextMessage ?? this.receiveTextMessage,
      faxNumber: faxNumber ?? this.faxNumber,
      email: email ?? this.email,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordType.present) {
      final converter = $ContactTable.$converterrecordTypen;

      map['record_type'] = Variable<int>(converter.toSql(recordType.value));
    }
    if (syncStatus.present) {
      final converter = $ContactTable.$convertersyncStatusn;

      map['sync_status'] = Variable<int>(converter.toSql(syncStatus.value));
    }
    if (syncTimestamp.present) {
      map['sync_timestamp'] = Variable<DateTime>(syncTimestamp.value);
    }
    if (creatorId.present) {
      map['creator_id'] = Variable<int>(creatorId.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (recordStatus.present) {
      final converter = $ContactTable.$converterrecordStatusn;

      map['record_status'] = Variable<int>(converter.toSql(recordStatus.value));
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (phoneNumber.present) {
      map['phone_number'] = Variable<String>(phoneNumber.value);
    }
    if (phoneNumberExtension.present) {
      map['phone_number_extension'] =
          Variable<String>(phoneNumberExtension.value);
    }
    if (mobilePhoneNumber.present) {
      map['mobile_phone_number'] = Variable<String>(mobilePhoneNumber.value);
    }
    if (receiveTextMessage.present) {
      map['receive_text_message'] = Variable<bool>(receiveTextMessage.value);
    }
    if (faxNumber.present) {
      map['fax_number'] = Variable<String>(faxNumber.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ContactCompanion(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('syncTimestamp: $syncTimestamp, ')
          ..write('creatorId: $creatorId, ')
          ..write('createdDate: $createdDate, ')
          ..write('recordStatus: $recordStatus, ')
          ..write('name: $name, ')
          ..write('title: $title, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('phoneNumberExtension: $phoneNumberExtension, ')
          ..write('mobilePhoneNumber: $mobilePhoneNumber, ')
          ..write('receiveTextMessage: $receiveTextMessage, ')
          ..write('faxNumber: $faxNumber, ')
          ..write('email: $email, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FirmTable extends Firm with TableInfo<$FirmTable, FirmData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FirmTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<RecordType?, int> recordType =
      GeneratedColumn<int>('record_type', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<RecordType?>($FirmTable.$converterrecordTypen);
  @override
  late final GeneratedColumnWithTypeConverter<SyncStatus?, int> syncStatus =
      GeneratedColumn<int>('sync_status', aliasedName, true,
              type: DriftSqlType.int, requiredDuringInsert: false)
          .withConverter<SyncStatus?>($FirmTable.$convertersyncStatusn);
  @override
  late final GeneratedColumn<DateTime> syncTimestamp =
      GeneratedColumn<DateTime>('sync_timestamp', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<int> creatorId = GeneratedColumn<int>(
      'creator_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  late final GeneratedColumnWithTypeConverter<RecordStatus?, int> recordStatus =
      GeneratedColumn<int>('record_status', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<RecordStatus?>($FirmTable.$converterrecordStatusn);
  @override
  late final GeneratedColumn<int> localId = GeneratedColumn<int>(
      'local_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<int> lastSurvId = GeneratedColumn<int>(
      'last_surv_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        recordType,
        syncStatus,
        syncTimestamp,
        creatorId,
        createdDate,
        recordStatus,
        localId,
        lastSurvId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'firm';
  @override
  Set<GeneratedColumn> get $primaryKey => {id, recordType};
  @override
  FirmData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FirmData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      recordType: $FirmTable.$converterrecordTypen.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}record_type'])),
      syncStatus: $FirmTable.$convertersyncStatusn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sync_status'])),
      syncTimestamp: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}sync_timestamp']),
      creatorId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}creator_id']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
      recordStatus: $FirmTable.$converterrecordStatusn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}record_status'])),
      localId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}local_id']),
      lastSurvId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_surv_id']),
    );
  }

  @override
  $FirmTable createAlias(String alias) {
    return $FirmTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RecordType, int, int> $converterrecordType =
      const EnumIndexConverter<RecordType>(RecordType.values);
  static JsonTypeConverter2<RecordType?, int?, int?> $converterrecordTypen =
      JsonTypeConverter2.asNullable($converterrecordType);
  static JsonTypeConverter2<SyncStatus, int, int> $convertersyncStatus =
      const EnumIndexConverter<SyncStatus>(SyncStatus.values);
  static JsonTypeConverter2<SyncStatus?, int?, int?> $convertersyncStatusn =
      JsonTypeConverter2.asNullable($convertersyncStatus);
  static JsonTypeConverter2<RecordStatus, int, int> $converterrecordStatus =
      const EnumIndexConverter<RecordStatus>(RecordStatus.values);
  static JsonTypeConverter2<RecordStatus?, int?, int?> $converterrecordStatusn =
      JsonTypeConverter2.asNullable($converterrecordStatus);
}

class FirmData extends DataClassBehavioral<FirmData>
    implements Insertable<FirmData> {
  final int id;
  final RecordType? recordType;
  final SyncStatus? syncStatus;
  final DateTime? syncTimestamp;
  final int? creatorId;
  final DateTime? createdDate;
  final RecordStatus? recordStatus;
  final int? localId;
  final int? lastSurvId;
  const FirmData(
      {required this.id,
      this.recordType,
      this.syncStatus,
      this.syncTimestamp,
      this.creatorId,
      this.createdDate,
      this.recordStatus,
      this.localId,
      this.lastSurvId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || recordType != null) {
      final converter = $FirmTable.$converterrecordTypen;
      map['record_type'] = Variable<int>(converter.toSql(recordType));
    }
    if (!nullToAbsent || syncStatus != null) {
      final converter = $FirmTable.$convertersyncStatusn;
      map['sync_status'] = Variable<int>(converter.toSql(syncStatus));
    }
    if (!nullToAbsent || syncTimestamp != null) {
      map['sync_timestamp'] = Variable<DateTime>(syncTimestamp);
    }
    if (!nullToAbsent || creatorId != null) {
      map['creator_id'] = Variable<int>(creatorId);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    if (!nullToAbsent || recordStatus != null) {
      final converter = $FirmTable.$converterrecordStatusn;
      map['record_status'] = Variable<int>(converter.toSql(recordStatus));
    }
    if (!nullToAbsent || localId != null) {
      map['local_id'] = Variable<int>(localId);
    }
    if (!nullToAbsent || lastSurvId != null) {
      map['last_surv_id'] = Variable<int>(lastSurvId);
    }
    return map;
  }

  FirmCompanion toCompanion(bool nullToAbsent) {
    return FirmCompanion(
      id: Value(id),
      recordType: recordType == null && nullToAbsent
          ? const Value.absent()
          : Value(recordType),
      syncStatus: syncStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(syncStatus),
      syncTimestamp: syncTimestamp == null && nullToAbsent
          ? const Value.absent()
          : Value(syncTimestamp),
      creatorId: creatorId == null && nullToAbsent
          ? const Value.absent()
          : Value(creatorId),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
      recordStatus: recordStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(recordStatus),
      localId: localId == null && nullToAbsent
          ? const Value.absent()
          : Value(localId),
      lastSurvId: lastSurvId == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSurvId),
    );
  }

  factory FirmData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FirmData(
      id: serializer.fromJson<int>(json['id']),
      recordType: $FirmTable.$converterrecordTypen
          .fromJson(serializer.fromJson<int?>(json['recordType'])),
      syncStatus: $FirmTable.$convertersyncStatusn
          .fromJson(serializer.fromJson<int?>(json['syncStatus'])),
      syncTimestamp: serializer.fromJson<DateTime?>(json['syncTimestamp']),
      creatorId: serializer.fromJson<int?>(json['creatorId']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
      recordStatus: $FirmTable.$converterrecordStatusn
          .fromJson(serializer.fromJson<int?>(json['recordStatus'])),
      localId: serializer.fromJson<int?>(json['localId']),
      lastSurvId: serializer.fromJson<int?>(json['lastSurvId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordType': serializer
          .toJson<int?>($FirmTable.$converterrecordTypen.toJson(recordType)),
      'syncStatus': serializer
          .toJson<int?>($FirmTable.$convertersyncStatusn.toJson(syncStatus)),
      'syncTimestamp': serializer.toJson<DateTime?>(syncTimestamp),
      'creatorId': serializer.toJson<int?>(creatorId),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
      'recordStatus': serializer.toJson<int?>(
          $FirmTable.$converterrecordStatusn.toJson(recordStatus)),
      'localId': serializer.toJson<int?>(localId),
      'lastSurvId': serializer.toJson<int?>(lastSurvId),
    };
  }

  FirmData copyWith(
          {int? id,
          Value<RecordType?> recordType = const Value.absent(),
          Value<SyncStatus?> syncStatus = const Value.absent(),
          Value<DateTime?> syncTimestamp = const Value.absent(),
          Value<int?> creatorId = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent(),
          Value<RecordStatus?> recordStatus = const Value.absent(),
          Value<int?> localId = const Value.absent(),
          Value<int?> lastSurvId = const Value.absent()}) =>
      FirmData(
        id: id ?? this.id,
        recordType: recordType.present ? recordType.value : this.recordType,
        syncStatus: syncStatus.present ? syncStatus.value : this.syncStatus,
        syncTimestamp:
            syncTimestamp.present ? syncTimestamp.value : this.syncTimestamp,
        creatorId: creatorId.present ? creatorId.value : this.creatorId,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
        recordStatus:
            recordStatus.present ? recordStatus.value : this.recordStatus,
        localId: localId.present ? localId.value : this.localId,
        lastSurvId: lastSurvId.present ? lastSurvId.value : this.lastSurvId,
      );
  @override
  String toString() {
    return (StringBuffer('FirmData(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('syncTimestamp: $syncTimestamp, ')
          ..write('creatorId: $creatorId, ')
          ..write('createdDate: $createdDate, ')
          ..write('recordStatus: $recordStatus, ')
          ..write('localId: $localId, ')
          ..write('lastSurvId: $lastSurvId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, recordType, syncStatus, syncTimestamp,
      creatorId, createdDate, recordStatus, localId, lastSurvId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FirmData &&
          other.id == this.id &&
          other.recordType == this.recordType &&
          other.syncStatus == this.syncStatus &&
          other.syncTimestamp == this.syncTimestamp &&
          other.creatorId == this.creatorId &&
          other.createdDate == this.createdDate &&
          other.recordStatus == this.recordStatus &&
          other.localId == this.localId &&
          other.lastSurvId == this.lastSurvId);
}

class FirmCompanion extends UpdateCompanion<FirmData> {
  final Value<int> id;
  final Value<RecordType?> recordType;
  final Value<SyncStatus?> syncStatus;
  final Value<DateTime?> syncTimestamp;
  final Value<int?> creatorId;
  final Value<DateTime?> createdDate;
  final Value<RecordStatus?> recordStatus;
  final Value<int?> localId;
  final Value<int?> lastSurvId;
  final Value<int> rowid;
  const FirmCompanion({
    this.id = const Value.absent(),
    this.recordType = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.syncTimestamp = const Value.absent(),
    this.creatorId = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.recordStatus = const Value.absent(),
    this.localId = const Value.absent(),
    this.lastSurvId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FirmCompanion.insert({
    required int id,
    this.recordType = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.syncTimestamp = const Value.absent(),
    this.creatorId = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.recordStatus = const Value.absent(),
    this.localId = const Value.absent(),
    this.lastSurvId = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<FirmData> custom({
    Expression<int>? id,
    Expression<int>? recordType,
    Expression<int>? syncStatus,
    Expression<DateTime>? syncTimestamp,
    Expression<int>? creatorId,
    Expression<DateTime>? createdDate,
    Expression<int>? recordStatus,
    Expression<int>? localId,
    Expression<int>? lastSurvId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordType != null) 'record_type': recordType,
      if (syncStatus != null) 'sync_status': syncStatus,
      if (syncTimestamp != null) 'sync_timestamp': syncTimestamp,
      if (creatorId != null) 'creator_id': creatorId,
      if (createdDate != null) 'created_date': createdDate,
      if (recordStatus != null) 'record_status': recordStatus,
      if (localId != null) 'local_id': localId,
      if (lastSurvId != null) 'last_surv_id': lastSurvId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FirmCompanion copyWith(
      {Value<int>? id,
      Value<RecordType?>? recordType,
      Value<SyncStatus?>? syncStatus,
      Value<DateTime?>? syncTimestamp,
      Value<int?>? creatorId,
      Value<DateTime?>? createdDate,
      Value<RecordStatus?>? recordStatus,
      Value<int?>? localId,
      Value<int?>? lastSurvId,
      Value<int>? rowid}) {
    return FirmCompanion(
      id: id ?? this.id,
      recordType: recordType ?? this.recordType,
      syncStatus: syncStatus ?? this.syncStatus,
      syncTimestamp: syncTimestamp ?? this.syncTimestamp,
      creatorId: creatorId ?? this.creatorId,
      createdDate: createdDate ?? this.createdDate,
      recordStatus: recordStatus ?? this.recordStatus,
      localId: localId ?? this.localId,
      lastSurvId: lastSurvId ?? this.lastSurvId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordType.present) {
      final converter = $FirmTable.$converterrecordTypen;

      map['record_type'] = Variable<int>(converter.toSql(recordType.value));
    }
    if (syncStatus.present) {
      final converter = $FirmTable.$convertersyncStatusn;

      map['sync_status'] = Variable<int>(converter.toSql(syncStatus.value));
    }
    if (syncTimestamp.present) {
      map['sync_timestamp'] = Variable<DateTime>(syncTimestamp.value);
    }
    if (creatorId.present) {
      map['creator_id'] = Variable<int>(creatorId.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (recordStatus.present) {
      final converter = $FirmTable.$converterrecordStatusn;

      map['record_status'] = Variable<int>(converter.toSql(recordStatus.value));
    }
    if (localId.present) {
      map['local_id'] = Variable<int>(localId.value);
    }
    if (lastSurvId.present) {
      map['last_surv_id'] = Variable<int>(lastSurvId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FirmCompanion(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('syncTimestamp: $syncTimestamp, ')
          ..write('creatorId: $creatorId, ')
          ..write('createdDate: $createdDate, ')
          ..write('recordStatus: $recordStatus, ')
          ..write('localId: $localId, ')
          ..write('lastSurvId: $lastSurvId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FirmAdditionalInfoTable extends FirmAdditionalInfo
    with TableInfo<$FirmAdditionalInfoTable, FirmAdditionalInfoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FirmAdditionalInfoTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<RecordType?, int> recordType =
      GeneratedColumn<int>('record_type', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<RecordType?>(
              $FirmAdditionalInfoTable.$converterrecordTypen);
  @override
  late final GeneratedColumn<String> otherRegulatoryInfo =
      GeneratedColumn<String>('other_regulatory_info', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> additionalComments =
      GeneratedColumn<String>('additional_comments', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> updatePestInfo = GeneratedColumn<bool>(
      'update_pest_info', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("update_pest_info" IN (0, 1))'));
  @override
  late final GeneratedColumn<int> pestControlId = GeneratedColumn<int>(
      'pest_control_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<DateTime> datePestControl =
      GeneratedColumn<DateTime>('date_pest_control', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> pestSelfAdmin = GeneratedColumn<bool>(
      'pest_self_admin', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("pest_self_admin" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> pestControlName = GeneratedColumn<String>(
      'pest_control_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> frequency = GeneratedColumn<String>(
      'frequency', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> comments = GeneratedColumn<String>(
      'comments', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> address1 = GeneratedColumn<String>(
      'address1', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> address2 = GeneratedColumn<String>(
      'address2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
      'city', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> stateCode = GeneratedColumn<String>(
      'state_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> zipCode = GeneratedColumn<String>(
      'zip_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> ext = GeneratedColumn<String>(
      'ext', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> mobile = GeneratedColumn<String>(
      'mobile', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        recordType,
        otherRegulatoryInfo,
        additionalComments,
        updatePestInfo,
        pestControlId,
        datePestControl,
        pestSelfAdmin,
        pestControlName,
        frequency,
        comments,
        address1,
        address2,
        city,
        stateCode,
        zipCode,
        phone,
        ext,
        mobile,
        email
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'firm_additional_info';
  @override
  Set<GeneratedColumn> get $primaryKey => {id, recordType};
  @override
  FirmAdditionalInfoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FirmAdditionalInfoData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      recordType: $FirmAdditionalInfoTable.$converterrecordTypen.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}record_type'])),
      otherRegulatoryInfo: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}other_regulatory_info']),
      additionalComments: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}additional_comments']),
      updatePestInfo: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}update_pest_info']),
      pestControlId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pest_control_id']),
      datePestControl: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}date_pest_control']),
      pestSelfAdmin: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}pest_self_admin']),
      pestControlName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}pest_control_name']),
      frequency: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}frequency']),
      comments: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}comments']),
      address1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address1']),
      address2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address2']),
      city: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}city']),
      stateCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}state_code']),
      zipCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}zip_code']),
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone']),
      ext: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ext']),
      mobile: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mobile']),
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
    );
  }

  @override
  $FirmAdditionalInfoTable createAlias(String alias) {
    return $FirmAdditionalInfoTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RecordType, int, int> $converterrecordType =
      const EnumIndexConverter<RecordType>(RecordType.values);
  static JsonTypeConverter2<RecordType?, int?, int?> $converterrecordTypen =
      JsonTypeConverter2.asNullable($converterrecordType);
}

class FirmAdditionalInfoData extends DataClassBehavioral<FirmAdditionalInfoData>
    implements Insertable<FirmAdditionalInfoData> {
  final int id;
  final RecordType? recordType;
  final String? otherRegulatoryInfo;
  final String? additionalComments;
  final bool? updatePestInfo;
  final int? pestControlId;
  final DateTime? datePestControl;
  final bool? pestSelfAdmin;
  final String? pestControlName;
  final String? frequency;
  final String? comments;
  final String? address1;
  final String? address2;
  final String? city;
  final String? stateCode;
  final String? zipCode;
  final String? phone;
  final String? ext;
  final String? mobile;
  final String? email;
  const FirmAdditionalInfoData(
      {required this.id,
      this.recordType,
      this.otherRegulatoryInfo,
      this.additionalComments,
      this.updatePestInfo,
      this.pestControlId,
      this.datePestControl,
      this.pestSelfAdmin,
      this.pestControlName,
      this.frequency,
      this.comments,
      this.address1,
      this.address2,
      this.city,
      this.stateCode,
      this.zipCode,
      this.phone,
      this.ext,
      this.mobile,
      this.email});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || recordType != null) {
      final converter = $FirmAdditionalInfoTable.$converterrecordTypen;
      map['record_type'] = Variable<int>(converter.toSql(recordType));
    }
    if (!nullToAbsent || otherRegulatoryInfo != null) {
      map['other_regulatory_info'] = Variable<String>(otherRegulatoryInfo);
    }
    if (!nullToAbsent || additionalComments != null) {
      map['additional_comments'] = Variable<String>(additionalComments);
    }
    if (!nullToAbsent || updatePestInfo != null) {
      map['update_pest_info'] = Variable<bool>(updatePestInfo);
    }
    if (!nullToAbsent || pestControlId != null) {
      map['pest_control_id'] = Variable<int>(pestControlId);
    }
    if (!nullToAbsent || datePestControl != null) {
      map['date_pest_control'] = Variable<DateTime>(datePestControl);
    }
    if (!nullToAbsent || pestSelfAdmin != null) {
      map['pest_self_admin'] = Variable<bool>(pestSelfAdmin);
    }
    if (!nullToAbsent || pestControlName != null) {
      map['pest_control_name'] = Variable<String>(pestControlName);
    }
    if (!nullToAbsent || frequency != null) {
      map['frequency'] = Variable<String>(frequency);
    }
    if (!nullToAbsent || comments != null) {
      map['comments'] = Variable<String>(comments);
    }
    if (!nullToAbsent || address1 != null) {
      map['address1'] = Variable<String>(address1);
    }
    if (!nullToAbsent || address2 != null) {
      map['address2'] = Variable<String>(address2);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String>(city);
    }
    if (!nullToAbsent || stateCode != null) {
      map['state_code'] = Variable<String>(stateCode);
    }
    if (!nullToAbsent || zipCode != null) {
      map['zip_code'] = Variable<String>(zipCode);
    }
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String>(phone);
    }
    if (!nullToAbsent || ext != null) {
      map['ext'] = Variable<String>(ext);
    }
    if (!nullToAbsent || mobile != null) {
      map['mobile'] = Variable<String>(mobile);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    return map;
  }

  FirmAdditionalInfoCompanion toCompanion(bool nullToAbsent) {
    return FirmAdditionalInfoCompanion(
      id: Value(id),
      recordType: recordType == null && nullToAbsent
          ? const Value.absent()
          : Value(recordType),
      otherRegulatoryInfo: otherRegulatoryInfo == null && nullToAbsent
          ? const Value.absent()
          : Value(otherRegulatoryInfo),
      additionalComments: additionalComments == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalComments),
      updatePestInfo: updatePestInfo == null && nullToAbsent
          ? const Value.absent()
          : Value(updatePestInfo),
      pestControlId: pestControlId == null && nullToAbsent
          ? const Value.absent()
          : Value(pestControlId),
      datePestControl: datePestControl == null && nullToAbsent
          ? const Value.absent()
          : Value(datePestControl),
      pestSelfAdmin: pestSelfAdmin == null && nullToAbsent
          ? const Value.absent()
          : Value(pestSelfAdmin),
      pestControlName: pestControlName == null && nullToAbsent
          ? const Value.absent()
          : Value(pestControlName),
      frequency: frequency == null && nullToAbsent
          ? const Value.absent()
          : Value(frequency),
      comments: comments == null && nullToAbsent
          ? const Value.absent()
          : Value(comments),
      address1: address1 == null && nullToAbsent
          ? const Value.absent()
          : Value(address1),
      address2: address2 == null && nullToAbsent
          ? const Value.absent()
          : Value(address2),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      stateCode: stateCode == null && nullToAbsent
          ? const Value.absent()
          : Value(stateCode),
      zipCode: zipCode == null && nullToAbsent
          ? const Value.absent()
          : Value(zipCode),
      phone:
          phone == null && nullToAbsent ? const Value.absent() : Value(phone),
      ext: ext == null && nullToAbsent ? const Value.absent() : Value(ext),
      mobile:
          mobile == null && nullToAbsent ? const Value.absent() : Value(mobile),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
    );
  }

  factory FirmAdditionalInfoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FirmAdditionalInfoData(
      id: serializer.fromJson<int>(json['id']),
      recordType: $FirmAdditionalInfoTable.$converterrecordTypen
          .fromJson(serializer.fromJson<int?>(json['recordType'])),
      otherRegulatoryInfo:
          serializer.fromJson<String?>(json['otherRegulatoryInfo']),
      additionalComments:
          serializer.fromJson<String?>(json['additionalComments']),
      updatePestInfo: serializer.fromJson<bool?>(json['updatePestInfo']),
      pestControlId: serializer.fromJson<int?>(json['pestControlId']),
      datePestControl: serializer.fromJson<DateTime?>(json['datePestControl']),
      pestSelfAdmin: serializer.fromJson<bool?>(json['pestSelfAdmin']),
      pestControlName: serializer.fromJson<String?>(json['pestControlName']),
      frequency: serializer.fromJson<String?>(json['frequency']),
      comments: serializer.fromJson<String?>(json['comments']),
      address1: serializer.fromJson<String?>(json['address1']),
      address2: serializer.fromJson<String?>(json['address2']),
      city: serializer.fromJson<String?>(json['city']),
      stateCode: serializer.fromJson<String?>(json['stateCode']),
      zipCode: serializer.fromJson<String?>(json['zipCode']),
      phone: serializer.fromJson<String?>(json['phone']),
      ext: serializer.fromJson<String?>(json['ext']),
      mobile: serializer.fromJson<String?>(json['mobile']),
      email: serializer.fromJson<String?>(json['email']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordType': serializer.toJson<int?>(
          $FirmAdditionalInfoTable.$converterrecordTypen.toJson(recordType)),
      'otherRegulatoryInfo': serializer.toJson<String?>(otherRegulatoryInfo),
      'additionalComments': serializer.toJson<String?>(additionalComments),
      'updatePestInfo': serializer.toJson<bool?>(updatePestInfo),
      'pestControlId': serializer.toJson<int?>(pestControlId),
      'datePestControl': serializer.toJson<DateTime?>(datePestControl),
      'pestSelfAdmin': serializer.toJson<bool?>(pestSelfAdmin),
      'pestControlName': serializer.toJson<String?>(pestControlName),
      'frequency': serializer.toJson<String?>(frequency),
      'comments': serializer.toJson<String?>(comments),
      'address1': serializer.toJson<String?>(address1),
      'address2': serializer.toJson<String?>(address2),
      'city': serializer.toJson<String?>(city),
      'stateCode': serializer.toJson<String?>(stateCode),
      'zipCode': serializer.toJson<String?>(zipCode),
      'phone': serializer.toJson<String?>(phone),
      'ext': serializer.toJson<String?>(ext),
      'mobile': serializer.toJson<String?>(mobile),
      'email': serializer.toJson<String?>(email),
    };
  }

  FirmAdditionalInfoData copyWith(
          {int? id,
          Value<RecordType?> recordType = const Value.absent(),
          Value<String?> otherRegulatoryInfo = const Value.absent(),
          Value<String?> additionalComments = const Value.absent(),
          Value<bool?> updatePestInfo = const Value.absent(),
          Value<int?> pestControlId = const Value.absent(),
          Value<DateTime?> datePestControl = const Value.absent(),
          Value<bool?> pestSelfAdmin = const Value.absent(),
          Value<String?> pestControlName = const Value.absent(),
          Value<String?> frequency = const Value.absent(),
          Value<String?> comments = const Value.absent(),
          Value<String?> address1 = const Value.absent(),
          Value<String?> address2 = const Value.absent(),
          Value<String?> city = const Value.absent(),
          Value<String?> stateCode = const Value.absent(),
          Value<String?> zipCode = const Value.absent(),
          Value<String?> phone = const Value.absent(),
          Value<String?> ext = const Value.absent(),
          Value<String?> mobile = const Value.absent(),
          Value<String?> email = const Value.absent()}) =>
      FirmAdditionalInfoData(
        id: id ?? this.id,
        recordType: recordType.present ? recordType.value : this.recordType,
        otherRegulatoryInfo: otherRegulatoryInfo.present
            ? otherRegulatoryInfo.value
            : this.otherRegulatoryInfo,
        additionalComments: additionalComments.present
            ? additionalComments.value
            : this.additionalComments,
        updatePestInfo:
            updatePestInfo.present ? updatePestInfo.value : this.updatePestInfo,
        pestControlId:
            pestControlId.present ? pestControlId.value : this.pestControlId,
        datePestControl: datePestControl.present
            ? datePestControl.value
            : this.datePestControl,
        pestSelfAdmin:
            pestSelfAdmin.present ? pestSelfAdmin.value : this.pestSelfAdmin,
        pestControlName: pestControlName.present
            ? pestControlName.value
            : this.pestControlName,
        frequency: frequency.present ? frequency.value : this.frequency,
        comments: comments.present ? comments.value : this.comments,
        address1: address1.present ? address1.value : this.address1,
        address2: address2.present ? address2.value : this.address2,
        city: city.present ? city.value : this.city,
        stateCode: stateCode.present ? stateCode.value : this.stateCode,
        zipCode: zipCode.present ? zipCode.value : this.zipCode,
        phone: phone.present ? phone.value : this.phone,
        ext: ext.present ? ext.value : this.ext,
        mobile: mobile.present ? mobile.value : this.mobile,
        email: email.present ? email.value : this.email,
      );
  @override
  String toString() {
    return (StringBuffer('FirmAdditionalInfoData(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('otherRegulatoryInfo: $otherRegulatoryInfo, ')
          ..write('additionalComments: $additionalComments, ')
          ..write('updatePestInfo: $updatePestInfo, ')
          ..write('pestControlId: $pestControlId, ')
          ..write('datePestControl: $datePestControl, ')
          ..write('pestSelfAdmin: $pestSelfAdmin, ')
          ..write('pestControlName: $pestControlName, ')
          ..write('frequency: $frequency, ')
          ..write('comments: $comments, ')
          ..write('address1: $address1, ')
          ..write('address2: $address2, ')
          ..write('city: $city, ')
          ..write('stateCode: $stateCode, ')
          ..write('zipCode: $zipCode, ')
          ..write('phone: $phone, ')
          ..write('ext: $ext, ')
          ..write('mobile: $mobile, ')
          ..write('email: $email')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      recordType,
      otherRegulatoryInfo,
      additionalComments,
      updatePestInfo,
      pestControlId,
      datePestControl,
      pestSelfAdmin,
      pestControlName,
      frequency,
      comments,
      address1,
      address2,
      city,
      stateCode,
      zipCode,
      phone,
      ext,
      mobile,
      email);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FirmAdditionalInfoData &&
          other.id == this.id &&
          other.recordType == this.recordType &&
          other.otherRegulatoryInfo == this.otherRegulatoryInfo &&
          other.additionalComments == this.additionalComments &&
          other.updatePestInfo == this.updatePestInfo &&
          other.pestControlId == this.pestControlId &&
          other.datePestControl == this.datePestControl &&
          other.pestSelfAdmin == this.pestSelfAdmin &&
          other.pestControlName == this.pestControlName &&
          other.frequency == this.frequency &&
          other.comments == this.comments &&
          other.address1 == this.address1 &&
          other.address2 == this.address2 &&
          other.city == this.city &&
          other.stateCode == this.stateCode &&
          other.zipCode == this.zipCode &&
          other.phone == this.phone &&
          other.ext == this.ext &&
          other.mobile == this.mobile &&
          other.email == this.email);
}

class FirmAdditionalInfoCompanion
    extends UpdateCompanion<FirmAdditionalInfoData> {
  final Value<int> id;
  final Value<RecordType?> recordType;
  final Value<String?> otherRegulatoryInfo;
  final Value<String?> additionalComments;
  final Value<bool?> updatePestInfo;
  final Value<int?> pestControlId;
  final Value<DateTime?> datePestControl;
  final Value<bool?> pestSelfAdmin;
  final Value<String?> pestControlName;
  final Value<String?> frequency;
  final Value<String?> comments;
  final Value<String?> address1;
  final Value<String?> address2;
  final Value<String?> city;
  final Value<String?> stateCode;
  final Value<String?> zipCode;
  final Value<String?> phone;
  final Value<String?> ext;
  final Value<String?> mobile;
  final Value<String?> email;
  final Value<int> rowid;
  const FirmAdditionalInfoCompanion({
    this.id = const Value.absent(),
    this.recordType = const Value.absent(),
    this.otherRegulatoryInfo = const Value.absent(),
    this.additionalComments = const Value.absent(),
    this.updatePestInfo = const Value.absent(),
    this.pestControlId = const Value.absent(),
    this.datePestControl = const Value.absent(),
    this.pestSelfAdmin = const Value.absent(),
    this.pestControlName = const Value.absent(),
    this.frequency = const Value.absent(),
    this.comments = const Value.absent(),
    this.address1 = const Value.absent(),
    this.address2 = const Value.absent(),
    this.city = const Value.absent(),
    this.stateCode = const Value.absent(),
    this.zipCode = const Value.absent(),
    this.phone = const Value.absent(),
    this.ext = const Value.absent(),
    this.mobile = const Value.absent(),
    this.email = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FirmAdditionalInfoCompanion.insert({
    required int id,
    this.recordType = const Value.absent(),
    this.otherRegulatoryInfo = const Value.absent(),
    this.additionalComments = const Value.absent(),
    this.updatePestInfo = const Value.absent(),
    this.pestControlId = const Value.absent(),
    this.datePestControl = const Value.absent(),
    this.pestSelfAdmin = const Value.absent(),
    this.pestControlName = const Value.absent(),
    this.frequency = const Value.absent(),
    this.comments = const Value.absent(),
    this.address1 = const Value.absent(),
    this.address2 = const Value.absent(),
    this.city = const Value.absent(),
    this.stateCode = const Value.absent(),
    this.zipCode = const Value.absent(),
    this.phone = const Value.absent(),
    this.ext = const Value.absent(),
    this.mobile = const Value.absent(),
    this.email = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<FirmAdditionalInfoData> custom({
    Expression<int>? id,
    Expression<int>? recordType,
    Expression<String>? otherRegulatoryInfo,
    Expression<String>? additionalComments,
    Expression<bool>? updatePestInfo,
    Expression<int>? pestControlId,
    Expression<DateTime>? datePestControl,
    Expression<bool>? pestSelfAdmin,
    Expression<String>? pestControlName,
    Expression<String>? frequency,
    Expression<String>? comments,
    Expression<String>? address1,
    Expression<String>? address2,
    Expression<String>? city,
    Expression<String>? stateCode,
    Expression<String>? zipCode,
    Expression<String>? phone,
    Expression<String>? ext,
    Expression<String>? mobile,
    Expression<String>? email,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordType != null) 'record_type': recordType,
      if (otherRegulatoryInfo != null)
        'other_regulatory_info': otherRegulatoryInfo,
      if (additionalComments != null) 'additional_comments': additionalComments,
      if (updatePestInfo != null) 'update_pest_info': updatePestInfo,
      if (pestControlId != null) 'pest_control_id': pestControlId,
      if (datePestControl != null) 'date_pest_control': datePestControl,
      if (pestSelfAdmin != null) 'pest_self_admin': pestSelfAdmin,
      if (pestControlName != null) 'pest_control_name': pestControlName,
      if (frequency != null) 'frequency': frequency,
      if (comments != null) 'comments': comments,
      if (address1 != null) 'address1': address1,
      if (address2 != null) 'address2': address2,
      if (city != null) 'city': city,
      if (stateCode != null) 'state_code': stateCode,
      if (zipCode != null) 'zip_code': zipCode,
      if (phone != null) 'phone': phone,
      if (ext != null) 'ext': ext,
      if (mobile != null) 'mobile': mobile,
      if (email != null) 'email': email,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FirmAdditionalInfoCompanion copyWith(
      {Value<int>? id,
      Value<RecordType?>? recordType,
      Value<String?>? otherRegulatoryInfo,
      Value<String?>? additionalComments,
      Value<bool?>? updatePestInfo,
      Value<int?>? pestControlId,
      Value<DateTime?>? datePestControl,
      Value<bool?>? pestSelfAdmin,
      Value<String?>? pestControlName,
      Value<String?>? frequency,
      Value<String?>? comments,
      Value<String?>? address1,
      Value<String?>? address2,
      Value<String?>? city,
      Value<String?>? stateCode,
      Value<String?>? zipCode,
      Value<String?>? phone,
      Value<String?>? ext,
      Value<String?>? mobile,
      Value<String?>? email,
      Value<int>? rowid}) {
    return FirmAdditionalInfoCompanion(
      id: id ?? this.id,
      recordType: recordType ?? this.recordType,
      otherRegulatoryInfo: otherRegulatoryInfo ?? this.otherRegulatoryInfo,
      additionalComments: additionalComments ?? this.additionalComments,
      updatePestInfo: updatePestInfo ?? this.updatePestInfo,
      pestControlId: pestControlId ?? this.pestControlId,
      datePestControl: datePestControl ?? this.datePestControl,
      pestSelfAdmin: pestSelfAdmin ?? this.pestSelfAdmin,
      pestControlName: pestControlName ?? this.pestControlName,
      frequency: frequency ?? this.frequency,
      comments: comments ?? this.comments,
      address1: address1 ?? this.address1,
      address2: address2 ?? this.address2,
      city: city ?? this.city,
      stateCode: stateCode ?? this.stateCode,
      zipCode: zipCode ?? this.zipCode,
      phone: phone ?? this.phone,
      ext: ext ?? this.ext,
      mobile: mobile ?? this.mobile,
      email: email ?? this.email,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordType.present) {
      final converter = $FirmAdditionalInfoTable.$converterrecordTypen;

      map['record_type'] = Variable<int>(converter.toSql(recordType.value));
    }
    if (otherRegulatoryInfo.present) {
      map['other_regulatory_info'] =
          Variable<String>(otherRegulatoryInfo.value);
    }
    if (additionalComments.present) {
      map['additional_comments'] = Variable<String>(additionalComments.value);
    }
    if (updatePestInfo.present) {
      map['update_pest_info'] = Variable<bool>(updatePestInfo.value);
    }
    if (pestControlId.present) {
      map['pest_control_id'] = Variable<int>(pestControlId.value);
    }
    if (datePestControl.present) {
      map['date_pest_control'] = Variable<DateTime>(datePestControl.value);
    }
    if (pestSelfAdmin.present) {
      map['pest_self_admin'] = Variable<bool>(pestSelfAdmin.value);
    }
    if (pestControlName.present) {
      map['pest_control_name'] = Variable<String>(pestControlName.value);
    }
    if (frequency.present) {
      map['frequency'] = Variable<String>(frequency.value);
    }
    if (comments.present) {
      map['comments'] = Variable<String>(comments.value);
    }
    if (address1.present) {
      map['address1'] = Variable<String>(address1.value);
    }
    if (address2.present) {
      map['address2'] = Variable<String>(address2.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (stateCode.present) {
      map['state_code'] = Variable<String>(stateCode.value);
    }
    if (zipCode.present) {
      map['zip_code'] = Variable<String>(zipCode.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (ext.present) {
      map['ext'] = Variable<String>(ext.value);
    }
    if (mobile.present) {
      map['mobile'] = Variable<String>(mobile.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FirmAdditionalInfoCompanion(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('otherRegulatoryInfo: $otherRegulatoryInfo, ')
          ..write('additionalComments: $additionalComments, ')
          ..write('updatePestInfo: $updatePestInfo, ')
          ..write('pestControlId: $pestControlId, ')
          ..write('datePestControl: $datePestControl, ')
          ..write('pestSelfAdmin: $pestSelfAdmin, ')
          ..write('pestControlName: $pestControlName, ')
          ..write('frequency: $frequency, ')
          ..write('comments: $comments, ')
          ..write('address1: $address1, ')
          ..write('address2: $address2, ')
          ..write('city: $city, ')
          ..write('stateCode: $stateCode, ')
          ..write('zipCode: $zipCode, ')
          ..write('phone: $phone, ')
          ..write('ext: $ext, ')
          ..write('mobile: $mobile, ')
          ..write('email: $email, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FirmGeneralInfoTable extends FirmGeneralInfo
    with TableInfo<$FirmGeneralInfoTable, FirmGeneralInfoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FirmGeneralInfoTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<RecordType?, int> recordType =
      GeneratedColumn<int>('record_type', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<RecordType?>(
              $FirmGeneralInfoTable.$converterrecordTypen);
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 75),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> doingBusinessAs = GeneratedColumn<String>(
      'doing_business_as', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 75),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> alsoKnownAs = GeneratedColumn<String>(
      'also_known_as', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 75),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> previousName = GeneratedColumn<String>(
      'previous_name', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 75),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> contactRegionalOffice =
      GeneratedColumn<bool>('contact_regional_office', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("contact_regional_office" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> mailingAddressSameAsFirmAddress =
      GeneratedColumn<bool>(
          'mailing_address_same_as_firm_address', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("mailing_address_same_as_firm_address" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> establishmentNumber =
      GeneratedColumn<String>('establishment_number', aliasedName, true,
          additionalChecks: GeneratedColumn.checkTextLength(
              minTextLength: 0, maxTextLength: 40),
          type: DriftSqlType.string,
          requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> risk = GeneratedColumn<String>(
      'risk', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 10),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> regionCode = GeneratedColumn<String>(
      'region_code', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 3),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> subRegionCode = GeneratedColumn<String>(
      'sub_region_code', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 5),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> assignCode = GeneratedColumn<String>(
      'assign_code', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 10),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> numberOfFloors = GeneratedColumn<String>(
      'number_of_floors', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 3),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> numberOfEmp = GeneratedColumn<String>(
      'number_of_emp', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 75),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> approxSqFootage = GeneratedColumn<String>(
      'approx_sq_footage', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 10),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> primaryBusinessType =
      GeneratedColumn<String>('primary_business_type', aliasedName, true,
          additionalChecks: GeneratedColumn.checkTextLength(
              minTextLength: 0, maxTextLength: 25),
          type: DriftSqlType.string,
          requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> secondaryBusinessType =
      GeneratedColumn<String>('secondary_business_type', aliasedName, true,
          additionalChecks: GeneratedColumn.checkTextLength(
              minTextLength: 0, maxTextLength: 25),
          type: DriftSqlType.string,
          requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> tertiaryBusinessType =
      GeneratedColumn<String>(
          'tertiary_business_type', aliasedName, true,
          additionalChecks: GeneratedColumn.checkTextLength(
              minTextLength: 0, maxTextLength: 25),
          type: DriftSqlType.string,
          requiredDuringInsert: false);
  @override
  late final GeneratedColumnWithTypeConverter<MultiString?, String>
      businessActivities = GeneratedColumn<String>(
              'business_activities', aliasedName, true,
              additionalChecks: GeneratedColumn.checkTextLength(
                  minTextLength: 0, maxTextLength: 25),
              type: DriftSqlType.string,
              requiredDuringInsert: false)
          .withConverter<MultiString?>(
              $FirmGeneralInfoTable.$converterbusinessActivities);
  @override
  late final GeneratedColumn<String> tier = GeneratedColumn<String>(
      'tier', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 25),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> isFirmRegistered = GeneratedColumn<bool>(
      'is_firm_registered', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_firm_registered" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> backupEnergySource =
      GeneratedColumn<String>('backup_energy_source', aliasedName, true,
          additionalChecks: GeneratedColumn.checkTextLength(
              minTextLength: 0, maxTextLength: 25),
          type: DriftSqlType.string,
          requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> firmIsUnderOrder = GeneratedColumn<bool>(
      'firm_is_under_order', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("firm_is_under_order" IN (0, 1))'));
  @override
  late final GeneratedColumnWithTypeConverter<MultiString?, String>
      typeOfOrder = GeneratedColumn<String>('type_of_order', aliasedName, true,
              additionalChecks: GeneratedColumn.checkTextLength(
                  minTextLength: 0, maxTextLength: 75),
              type: DriftSqlType.string,
              requiredDuringInsert: false)
          .withConverter<MultiString?>(
              $FirmGeneralInfoTable.$convertertypeOfOrder);
  @override
  late final GeneratedColumn<bool> orderIsPermanent = GeneratedColumn<bool>(
      'order_is_permanent', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("order_is_permanent" IN (0, 1))'));
  @override
  late final GeneratedColumn<DateTime> expirationOfOrder =
      GeneratedColumn<DateTime>('expiration_of_order', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> comments = GeneratedColumn<String>(
      'comments', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 25),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> isSundayClosed = GeneratedColumn<bool>(
      'is_sunday_closed', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_sunday_closed" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> sundayOpenTime = GeneratedColumn<String>(
      'sunday_open_time', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 25),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> sundayCloseTime = GeneratedColumn<String>(
      'sunday_close_time', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 25),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> isMondayClosed = GeneratedColumn<bool>(
      'is_monday_closed', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_monday_closed" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> mondayOpenTime = GeneratedColumn<String>(
      'monday_open_time', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 25),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> mondayCloseTime = GeneratedColumn<String>(
      'monday_close_time', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 25),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> isTuesdayClosed = GeneratedColumn<bool>(
      'is_tuesday_closed', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_tuesday_closed" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> tuesdayOpenTime = GeneratedColumn<String>(
      'tuesday_open_time', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 25),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> tuesdayCloseTime = GeneratedColumn<String>(
      'tuesday_close_time', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 25),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> isWednesdayClosed = GeneratedColumn<bool>(
      'is_wednesday_closed', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_wednesday_closed" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> wednesdayOpenTime =
      GeneratedColumn<String>('wednesday_open_time', aliasedName, true,
          additionalChecks: GeneratedColumn.checkTextLength(
              minTextLength: 0, maxTextLength: 25),
          type: DriftSqlType.string,
          requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> wednesdayCloseTime =
      GeneratedColumn<String>('wednesday_close_time', aliasedName, true,
          additionalChecks: GeneratedColumn.checkTextLength(
              minTextLength: 0, maxTextLength: 25),
          type: DriftSqlType.string,
          requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> isThursdayClosed = GeneratedColumn<bool>(
      'is_thursday_closed', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_thursday_closed" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> thursdayOpenTime = GeneratedColumn<String>(
      'thursday_open_time', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 25),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> thursdayCloseTime =
      GeneratedColumn<String>('thursday_close_time', aliasedName, true,
          additionalChecks: GeneratedColumn.checkTextLength(
              minTextLength: 0, maxTextLength: 25),
          type: DriftSqlType.string,
          requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> isFridayClosed = GeneratedColumn<bool>(
      'is_friday_closed', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_friday_closed" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> fridayOpenTime = GeneratedColumn<String>(
      'friday_open_time', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 25),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> fridayCloseTime = GeneratedColumn<String>(
      'friday_close_time', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 25),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> isSaturdayClosed = GeneratedColumn<bool>(
      'is_saturday_closed', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_saturday_closed" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> saturdayOpenTime = GeneratedColumn<String>(
      'saturday_open_time', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 25),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> saturdayCloseTime =
      GeneratedColumn<String>('saturday_close_time', aliasedName, true,
          additionalChecks: GeneratedColumn.checkTextLength(
              minTextLength: 0, maxTextLength: 25),
          type: DriftSqlType.string,
          requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        recordType,
        name,
        doingBusinessAs,
        alsoKnownAs,
        previousName,
        contactRegionalOffice,
        mailingAddressSameAsFirmAddress,
        establishmentNumber,
        risk,
        regionCode,
        subRegionCode,
        assignCode,
        numberOfFloors,
        numberOfEmp,
        approxSqFootage,
        primaryBusinessType,
        secondaryBusinessType,
        tertiaryBusinessType,
        businessActivities,
        tier,
        isFirmRegistered,
        backupEnergySource,
        firmIsUnderOrder,
        typeOfOrder,
        orderIsPermanent,
        expirationOfOrder,
        comments,
        isSundayClosed,
        sundayOpenTime,
        sundayCloseTime,
        isMondayClosed,
        mondayOpenTime,
        mondayCloseTime,
        isTuesdayClosed,
        tuesdayOpenTime,
        tuesdayCloseTime,
        isWednesdayClosed,
        wednesdayOpenTime,
        wednesdayCloseTime,
        isThursdayClosed,
        thursdayOpenTime,
        thursdayCloseTime,
        isFridayClosed,
        fridayOpenTime,
        fridayCloseTime,
        isSaturdayClosed,
        saturdayOpenTime,
        saturdayCloseTime
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'firm_general_info';
  @override
  Set<GeneratedColumn> get $primaryKey => {id, recordType};
  @override
  FirmGeneralInfoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FirmGeneralInfoData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      recordType: $FirmGeneralInfoTable.$converterrecordTypen.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}record_type'])),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      doingBusinessAs: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}doing_business_as']),
      alsoKnownAs: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}also_known_as']),
      previousName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}previous_name']),
      contactRegionalOffice: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}contact_regional_office']),
      mailingAddressSameAsFirmAddress: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}mailing_address_same_as_firm_address']),
      establishmentNumber: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}establishment_number']),
      risk: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}risk']),
      regionCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}region_code']),
      subRegionCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sub_region_code']),
      assignCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}assign_code']),
      numberOfFloors: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}number_of_floors']),
      numberOfEmp: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}number_of_emp']),
      approxSqFootage: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}approx_sq_footage']),
      primaryBusinessType: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}primary_business_type']),
      secondaryBusinessType: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}secondary_business_type']),
      tertiaryBusinessType: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}tertiary_business_type']),
      businessActivities: $FirmGeneralInfoTable.$converterbusinessActivities
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}business_activities'])),
      tier: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tier']),
      isFirmRegistered: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}is_firm_registered']),
      backupEnergySource: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}backup_energy_source']),
      firmIsUnderOrder: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}firm_is_under_order']),
      typeOfOrder: $FirmGeneralInfoTable.$convertertypeOfOrder.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}type_of_order'])),
      orderIsPermanent: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}order_is_permanent']),
      expirationOfOrder: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}expiration_of_order']),
      comments: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}comments']),
      isSundayClosed: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_sunday_closed']),
      sundayOpenTime: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}sunday_open_time']),
      sundayCloseTime: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}sunday_close_time']),
      isMondayClosed: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_monday_closed']),
      mondayOpenTime: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}monday_open_time']),
      mondayCloseTime: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}monday_close_time']),
      isTuesdayClosed: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_tuesday_closed']),
      tuesdayOpenTime: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}tuesday_open_time']),
      tuesdayCloseTime: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}tuesday_close_time']),
      isWednesdayClosed: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}is_wednesday_closed']),
      wednesdayOpenTime: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}wednesday_open_time']),
      wednesdayCloseTime: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}wednesday_close_time']),
      isThursdayClosed: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}is_thursday_closed']),
      thursdayOpenTime: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}thursday_open_time']),
      thursdayCloseTime: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}thursday_close_time']),
      isFridayClosed: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_friday_closed']),
      fridayOpenTime: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}friday_open_time']),
      fridayCloseTime: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}friday_close_time']),
      isSaturdayClosed: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}is_saturday_closed']),
      saturdayOpenTime: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}saturday_open_time']),
      saturdayCloseTime: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}saturday_close_time']),
    );
  }

  @override
  $FirmGeneralInfoTable createAlias(String alias) {
    return $FirmGeneralInfoTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RecordType, int, int> $converterrecordType =
      const EnumIndexConverter<RecordType>(RecordType.values);
  static JsonTypeConverter2<RecordType?, int?, int?> $converterrecordTypen =
      JsonTypeConverter2.asNullable($converterrecordType);
  static TypeConverter<MultiString?, String?> $converterbusinessActivities =
      const MultiStringConverter();
  static TypeConverter<MultiString?, String?> $convertertypeOfOrder =
      const MultiStringConverter();
}

class FirmGeneralInfoData extends DataClassBehavioral<FirmGeneralInfoData>
    implements Insertable<FirmGeneralInfoData> {
  final int id;
  final RecordType? recordType;
  final String? name;
  final String? doingBusinessAs;
  final String? alsoKnownAs;
  final String? previousName;
  final bool? contactRegionalOffice;
  final bool? mailingAddressSameAsFirmAddress;
  final String? establishmentNumber;
  final String? risk;
  final String? regionCode;
  final String? subRegionCode;
  final String? assignCode;
  final String? numberOfFloors;
  final String? numberOfEmp;
  final String? approxSqFootage;
  final String? primaryBusinessType;
  final String? secondaryBusinessType;
  final String? tertiaryBusinessType;
  final MultiString? businessActivities;
  final String? tier;
  final bool? isFirmRegistered;
  final String? backupEnergySource;
  final bool? firmIsUnderOrder;
  final MultiString? typeOfOrder;
  final bool? orderIsPermanent;
  final DateTime? expirationOfOrder;
  final String? comments;
  final bool? isSundayClosed;
  final String? sundayOpenTime;
  final String? sundayCloseTime;
  final bool? isMondayClosed;
  final String? mondayOpenTime;
  final String? mondayCloseTime;
  final bool? isTuesdayClosed;
  final String? tuesdayOpenTime;
  final String? tuesdayCloseTime;
  final bool? isWednesdayClosed;
  final String? wednesdayOpenTime;
  final String? wednesdayCloseTime;
  final bool? isThursdayClosed;
  final String? thursdayOpenTime;
  final String? thursdayCloseTime;
  final bool? isFridayClosed;
  final String? fridayOpenTime;
  final String? fridayCloseTime;
  final bool? isSaturdayClosed;
  final String? saturdayOpenTime;
  final String? saturdayCloseTime;
  const FirmGeneralInfoData(
      {required this.id,
      this.recordType,
      this.name,
      this.doingBusinessAs,
      this.alsoKnownAs,
      this.previousName,
      this.contactRegionalOffice,
      this.mailingAddressSameAsFirmAddress,
      this.establishmentNumber,
      this.risk,
      this.regionCode,
      this.subRegionCode,
      this.assignCode,
      this.numberOfFloors,
      this.numberOfEmp,
      this.approxSqFootage,
      this.primaryBusinessType,
      this.secondaryBusinessType,
      this.tertiaryBusinessType,
      this.businessActivities,
      this.tier,
      this.isFirmRegistered,
      this.backupEnergySource,
      this.firmIsUnderOrder,
      this.typeOfOrder,
      this.orderIsPermanent,
      this.expirationOfOrder,
      this.comments,
      this.isSundayClosed,
      this.sundayOpenTime,
      this.sundayCloseTime,
      this.isMondayClosed,
      this.mondayOpenTime,
      this.mondayCloseTime,
      this.isTuesdayClosed,
      this.tuesdayOpenTime,
      this.tuesdayCloseTime,
      this.isWednesdayClosed,
      this.wednesdayOpenTime,
      this.wednesdayCloseTime,
      this.isThursdayClosed,
      this.thursdayOpenTime,
      this.thursdayCloseTime,
      this.isFridayClosed,
      this.fridayOpenTime,
      this.fridayCloseTime,
      this.isSaturdayClosed,
      this.saturdayOpenTime,
      this.saturdayCloseTime});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || recordType != null) {
      final converter = $FirmGeneralInfoTable.$converterrecordTypen;
      map['record_type'] = Variable<int>(converter.toSql(recordType));
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || doingBusinessAs != null) {
      map['doing_business_as'] = Variable<String>(doingBusinessAs);
    }
    if (!nullToAbsent || alsoKnownAs != null) {
      map['also_known_as'] = Variable<String>(alsoKnownAs);
    }
    if (!nullToAbsent || previousName != null) {
      map['previous_name'] = Variable<String>(previousName);
    }
    if (!nullToAbsent || contactRegionalOffice != null) {
      map['contact_regional_office'] = Variable<bool>(contactRegionalOffice);
    }
    if (!nullToAbsent || mailingAddressSameAsFirmAddress != null) {
      map['mailing_address_same_as_firm_address'] =
          Variable<bool>(mailingAddressSameAsFirmAddress);
    }
    if (!nullToAbsent || establishmentNumber != null) {
      map['establishment_number'] = Variable<String>(establishmentNumber);
    }
    if (!nullToAbsent || risk != null) {
      map['risk'] = Variable<String>(risk);
    }
    if (!nullToAbsent || regionCode != null) {
      map['region_code'] = Variable<String>(regionCode);
    }
    if (!nullToAbsent || subRegionCode != null) {
      map['sub_region_code'] = Variable<String>(subRegionCode);
    }
    if (!nullToAbsent || assignCode != null) {
      map['assign_code'] = Variable<String>(assignCode);
    }
    if (!nullToAbsent || numberOfFloors != null) {
      map['number_of_floors'] = Variable<String>(numberOfFloors);
    }
    if (!nullToAbsent || numberOfEmp != null) {
      map['number_of_emp'] = Variable<String>(numberOfEmp);
    }
    if (!nullToAbsent || approxSqFootage != null) {
      map['approx_sq_footage'] = Variable<String>(approxSqFootage);
    }
    if (!nullToAbsent || primaryBusinessType != null) {
      map['primary_business_type'] = Variable<String>(primaryBusinessType);
    }
    if (!nullToAbsent || secondaryBusinessType != null) {
      map['secondary_business_type'] = Variable<String>(secondaryBusinessType);
    }
    if (!nullToAbsent || tertiaryBusinessType != null) {
      map['tertiary_business_type'] = Variable<String>(tertiaryBusinessType);
    }
    if (!nullToAbsent || businessActivities != null) {
      final converter = $FirmGeneralInfoTable.$converterbusinessActivities;
      map['business_activities'] =
          Variable<String>(converter.toSql(businessActivities));
    }
    if (!nullToAbsent || tier != null) {
      map['tier'] = Variable<String>(tier);
    }
    if (!nullToAbsent || isFirmRegistered != null) {
      map['is_firm_registered'] = Variable<bool>(isFirmRegistered);
    }
    if (!nullToAbsent || backupEnergySource != null) {
      map['backup_energy_source'] = Variable<String>(backupEnergySource);
    }
    if (!nullToAbsent || firmIsUnderOrder != null) {
      map['firm_is_under_order'] = Variable<bool>(firmIsUnderOrder);
    }
    if (!nullToAbsent || typeOfOrder != null) {
      final converter = $FirmGeneralInfoTable.$convertertypeOfOrder;
      map['type_of_order'] = Variable<String>(converter.toSql(typeOfOrder));
    }
    if (!nullToAbsent || orderIsPermanent != null) {
      map['order_is_permanent'] = Variable<bool>(orderIsPermanent);
    }
    if (!nullToAbsent || expirationOfOrder != null) {
      map['expiration_of_order'] = Variable<DateTime>(expirationOfOrder);
    }
    if (!nullToAbsent || comments != null) {
      map['comments'] = Variable<String>(comments);
    }
    if (!nullToAbsent || isSundayClosed != null) {
      map['is_sunday_closed'] = Variable<bool>(isSundayClosed);
    }
    if (!nullToAbsent || sundayOpenTime != null) {
      map['sunday_open_time'] = Variable<String>(sundayOpenTime);
    }
    if (!nullToAbsent || sundayCloseTime != null) {
      map['sunday_close_time'] = Variable<String>(sundayCloseTime);
    }
    if (!nullToAbsent || isMondayClosed != null) {
      map['is_monday_closed'] = Variable<bool>(isMondayClosed);
    }
    if (!nullToAbsent || mondayOpenTime != null) {
      map['monday_open_time'] = Variable<String>(mondayOpenTime);
    }
    if (!nullToAbsent || mondayCloseTime != null) {
      map['monday_close_time'] = Variable<String>(mondayCloseTime);
    }
    if (!nullToAbsent || isTuesdayClosed != null) {
      map['is_tuesday_closed'] = Variable<bool>(isTuesdayClosed);
    }
    if (!nullToAbsent || tuesdayOpenTime != null) {
      map['tuesday_open_time'] = Variable<String>(tuesdayOpenTime);
    }
    if (!nullToAbsent || tuesdayCloseTime != null) {
      map['tuesday_close_time'] = Variable<String>(tuesdayCloseTime);
    }
    if (!nullToAbsent || isWednesdayClosed != null) {
      map['is_wednesday_closed'] = Variable<bool>(isWednesdayClosed);
    }
    if (!nullToAbsent || wednesdayOpenTime != null) {
      map['wednesday_open_time'] = Variable<String>(wednesdayOpenTime);
    }
    if (!nullToAbsent || wednesdayCloseTime != null) {
      map['wednesday_close_time'] = Variable<String>(wednesdayCloseTime);
    }
    if (!nullToAbsent || isThursdayClosed != null) {
      map['is_thursday_closed'] = Variable<bool>(isThursdayClosed);
    }
    if (!nullToAbsent || thursdayOpenTime != null) {
      map['thursday_open_time'] = Variable<String>(thursdayOpenTime);
    }
    if (!nullToAbsent || thursdayCloseTime != null) {
      map['thursday_close_time'] = Variable<String>(thursdayCloseTime);
    }
    if (!nullToAbsent || isFridayClosed != null) {
      map['is_friday_closed'] = Variable<bool>(isFridayClosed);
    }
    if (!nullToAbsent || fridayOpenTime != null) {
      map['friday_open_time'] = Variable<String>(fridayOpenTime);
    }
    if (!nullToAbsent || fridayCloseTime != null) {
      map['friday_close_time'] = Variable<String>(fridayCloseTime);
    }
    if (!nullToAbsent || isSaturdayClosed != null) {
      map['is_saturday_closed'] = Variable<bool>(isSaturdayClosed);
    }
    if (!nullToAbsent || saturdayOpenTime != null) {
      map['saturday_open_time'] = Variable<String>(saturdayOpenTime);
    }
    if (!nullToAbsent || saturdayCloseTime != null) {
      map['saturday_close_time'] = Variable<String>(saturdayCloseTime);
    }
    return map;
  }

  FirmGeneralInfoCompanion toCompanion(bool nullToAbsent) {
    return FirmGeneralInfoCompanion(
      id: Value(id),
      recordType: recordType == null && nullToAbsent
          ? const Value.absent()
          : Value(recordType),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      doingBusinessAs: doingBusinessAs == null && nullToAbsent
          ? const Value.absent()
          : Value(doingBusinessAs),
      alsoKnownAs: alsoKnownAs == null && nullToAbsent
          ? const Value.absent()
          : Value(alsoKnownAs),
      previousName: previousName == null && nullToAbsent
          ? const Value.absent()
          : Value(previousName),
      contactRegionalOffice: contactRegionalOffice == null && nullToAbsent
          ? const Value.absent()
          : Value(contactRegionalOffice),
      mailingAddressSameAsFirmAddress:
          mailingAddressSameAsFirmAddress == null && nullToAbsent
              ? const Value.absent()
              : Value(mailingAddressSameAsFirmAddress),
      establishmentNumber: establishmentNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(establishmentNumber),
      risk: risk == null && nullToAbsent ? const Value.absent() : Value(risk),
      regionCode: regionCode == null && nullToAbsent
          ? const Value.absent()
          : Value(regionCode),
      subRegionCode: subRegionCode == null && nullToAbsent
          ? const Value.absent()
          : Value(subRegionCode),
      assignCode: assignCode == null && nullToAbsent
          ? const Value.absent()
          : Value(assignCode),
      numberOfFloors: numberOfFloors == null && nullToAbsent
          ? const Value.absent()
          : Value(numberOfFloors),
      numberOfEmp: numberOfEmp == null && nullToAbsent
          ? const Value.absent()
          : Value(numberOfEmp),
      approxSqFootage: approxSqFootage == null && nullToAbsent
          ? const Value.absent()
          : Value(approxSqFootage),
      primaryBusinessType: primaryBusinessType == null && nullToAbsent
          ? const Value.absent()
          : Value(primaryBusinessType),
      secondaryBusinessType: secondaryBusinessType == null && nullToAbsent
          ? const Value.absent()
          : Value(secondaryBusinessType),
      tertiaryBusinessType: tertiaryBusinessType == null && nullToAbsent
          ? const Value.absent()
          : Value(tertiaryBusinessType),
      businessActivities: businessActivities == null && nullToAbsent
          ? const Value.absent()
          : Value(businessActivities),
      tier: tier == null && nullToAbsent ? const Value.absent() : Value(tier),
      isFirmRegistered: isFirmRegistered == null && nullToAbsent
          ? const Value.absent()
          : Value(isFirmRegistered),
      backupEnergySource: backupEnergySource == null && nullToAbsent
          ? const Value.absent()
          : Value(backupEnergySource),
      firmIsUnderOrder: firmIsUnderOrder == null && nullToAbsent
          ? const Value.absent()
          : Value(firmIsUnderOrder),
      typeOfOrder: typeOfOrder == null && nullToAbsent
          ? const Value.absent()
          : Value(typeOfOrder),
      orderIsPermanent: orderIsPermanent == null && nullToAbsent
          ? const Value.absent()
          : Value(orderIsPermanent),
      expirationOfOrder: expirationOfOrder == null && nullToAbsent
          ? const Value.absent()
          : Value(expirationOfOrder),
      comments: comments == null && nullToAbsent
          ? const Value.absent()
          : Value(comments),
      isSundayClosed: isSundayClosed == null && nullToAbsent
          ? const Value.absent()
          : Value(isSundayClosed),
      sundayOpenTime: sundayOpenTime == null && nullToAbsent
          ? const Value.absent()
          : Value(sundayOpenTime),
      sundayCloseTime: sundayCloseTime == null && nullToAbsent
          ? const Value.absent()
          : Value(sundayCloseTime),
      isMondayClosed: isMondayClosed == null && nullToAbsent
          ? const Value.absent()
          : Value(isMondayClosed),
      mondayOpenTime: mondayOpenTime == null && nullToAbsent
          ? const Value.absent()
          : Value(mondayOpenTime),
      mondayCloseTime: mondayCloseTime == null && nullToAbsent
          ? const Value.absent()
          : Value(mondayCloseTime),
      isTuesdayClosed: isTuesdayClosed == null && nullToAbsent
          ? const Value.absent()
          : Value(isTuesdayClosed),
      tuesdayOpenTime: tuesdayOpenTime == null && nullToAbsent
          ? const Value.absent()
          : Value(tuesdayOpenTime),
      tuesdayCloseTime: tuesdayCloseTime == null && nullToAbsent
          ? const Value.absent()
          : Value(tuesdayCloseTime),
      isWednesdayClosed: isWednesdayClosed == null && nullToAbsent
          ? const Value.absent()
          : Value(isWednesdayClosed),
      wednesdayOpenTime: wednesdayOpenTime == null && nullToAbsent
          ? const Value.absent()
          : Value(wednesdayOpenTime),
      wednesdayCloseTime: wednesdayCloseTime == null && nullToAbsent
          ? const Value.absent()
          : Value(wednesdayCloseTime),
      isThursdayClosed: isThursdayClosed == null && nullToAbsent
          ? const Value.absent()
          : Value(isThursdayClosed),
      thursdayOpenTime: thursdayOpenTime == null && nullToAbsent
          ? const Value.absent()
          : Value(thursdayOpenTime),
      thursdayCloseTime: thursdayCloseTime == null && nullToAbsent
          ? const Value.absent()
          : Value(thursdayCloseTime),
      isFridayClosed: isFridayClosed == null && nullToAbsent
          ? const Value.absent()
          : Value(isFridayClosed),
      fridayOpenTime: fridayOpenTime == null && nullToAbsent
          ? const Value.absent()
          : Value(fridayOpenTime),
      fridayCloseTime: fridayCloseTime == null && nullToAbsent
          ? const Value.absent()
          : Value(fridayCloseTime),
      isSaturdayClosed: isSaturdayClosed == null && nullToAbsent
          ? const Value.absent()
          : Value(isSaturdayClosed),
      saturdayOpenTime: saturdayOpenTime == null && nullToAbsent
          ? const Value.absent()
          : Value(saturdayOpenTime),
      saturdayCloseTime: saturdayCloseTime == null && nullToAbsent
          ? const Value.absent()
          : Value(saturdayCloseTime),
    );
  }

  factory FirmGeneralInfoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FirmGeneralInfoData(
      id: serializer.fromJson<int>(json['id']),
      recordType: $FirmGeneralInfoTable.$converterrecordTypen
          .fromJson(serializer.fromJson<int?>(json['recordType'])),
      name: serializer.fromJson<String?>(json['name']),
      doingBusinessAs: serializer.fromJson<String?>(json['doingBusinessAs']),
      alsoKnownAs: serializer.fromJson<String?>(json['alsoKnownAs']),
      previousName: serializer.fromJson<String?>(json['previousName']),
      contactRegionalOffice:
          serializer.fromJson<bool?>(json['contactRegionalOffice']),
      mailingAddressSameAsFirmAddress:
          serializer.fromJson<bool?>(json['mailingAddressSameAsFirmAddress']),
      establishmentNumber:
          serializer.fromJson<String?>(json['establishmentNumber']),
      risk: serializer.fromJson<String?>(json['risk']),
      regionCode: serializer.fromJson<String?>(json['regionCode']),
      subRegionCode: serializer.fromJson<String?>(json['subRegionCode']),
      assignCode: serializer.fromJson<String?>(json['assignCode']),
      numberOfFloors: serializer.fromJson<String?>(json['numberOfFloors']),
      numberOfEmp: serializer.fromJson<String?>(json['numberOfEmp']),
      approxSqFootage: serializer.fromJson<String?>(json['approxSqFootage']),
      primaryBusinessType:
          serializer.fromJson<String?>(json['primaryBusinessType']),
      secondaryBusinessType:
          serializer.fromJson<String?>(json['secondaryBusinessType']),
      tertiaryBusinessType:
          serializer.fromJson<String?>(json['tertiaryBusinessType']),
      businessActivities:
          serializer.fromJson<MultiString?>(json['businessActivities']),
      tier: serializer.fromJson<String?>(json['tier']),
      isFirmRegistered: serializer.fromJson<bool?>(json['isFirmRegistered']),
      backupEnergySource:
          serializer.fromJson<String?>(json['backupEnergySource']),
      firmIsUnderOrder: serializer.fromJson<bool?>(json['firmIsUnderOrder']),
      typeOfOrder: serializer.fromJson<MultiString?>(json['typeOfOrder']),
      orderIsPermanent: serializer.fromJson<bool?>(json['orderIsPermanent']),
      expirationOfOrder:
          serializer.fromJson<DateTime?>(json['expirationOfOrder']),
      comments: serializer.fromJson<String?>(json['comments']),
      isSundayClosed: serializer.fromJson<bool?>(json['isSundayClosed']),
      sundayOpenTime: serializer.fromJson<String?>(json['sundayOpenTime']),
      sundayCloseTime: serializer.fromJson<String?>(json['sundayCloseTime']),
      isMondayClosed: serializer.fromJson<bool?>(json['isMondayClosed']),
      mondayOpenTime: serializer.fromJson<String?>(json['mondayOpenTime']),
      mondayCloseTime: serializer.fromJson<String?>(json['mondayCloseTime']),
      isTuesdayClosed: serializer.fromJson<bool?>(json['isTuesdayClosed']),
      tuesdayOpenTime: serializer.fromJson<String?>(json['tuesdayOpenTime']),
      tuesdayCloseTime: serializer.fromJson<String?>(json['tuesdayCloseTime']),
      isWednesdayClosed: serializer.fromJson<bool?>(json['isWednesdayClosed']),
      wednesdayOpenTime:
          serializer.fromJson<String?>(json['wednesdayOpenTime']),
      wednesdayCloseTime:
          serializer.fromJson<String?>(json['wednesdayCloseTime']),
      isThursdayClosed: serializer.fromJson<bool?>(json['isThursdayClosed']),
      thursdayOpenTime: serializer.fromJson<String?>(json['thursdayOpenTime']),
      thursdayCloseTime:
          serializer.fromJson<String?>(json['thursdayCloseTime']),
      isFridayClosed: serializer.fromJson<bool?>(json['isFridayClosed']),
      fridayOpenTime: serializer.fromJson<String?>(json['fridayOpenTime']),
      fridayCloseTime: serializer.fromJson<String?>(json['fridayCloseTime']),
      isSaturdayClosed: serializer.fromJson<bool?>(json['isSaturdayClosed']),
      saturdayOpenTime: serializer.fromJson<String?>(json['saturdayOpenTime']),
      saturdayCloseTime:
          serializer.fromJson<String?>(json['saturdayCloseTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordType': serializer.toJson<int?>(
          $FirmGeneralInfoTable.$converterrecordTypen.toJson(recordType)),
      'name': serializer.toJson<String?>(name),
      'doingBusinessAs': serializer.toJson<String?>(doingBusinessAs),
      'alsoKnownAs': serializer.toJson<String?>(alsoKnownAs),
      'previousName': serializer.toJson<String?>(previousName),
      'contactRegionalOffice': serializer.toJson<bool?>(contactRegionalOffice),
      'mailingAddressSameAsFirmAddress':
          serializer.toJson<bool?>(mailingAddressSameAsFirmAddress),
      'establishmentNumber': serializer.toJson<String?>(establishmentNumber),
      'risk': serializer.toJson<String?>(risk),
      'regionCode': serializer.toJson<String?>(regionCode),
      'subRegionCode': serializer.toJson<String?>(subRegionCode),
      'assignCode': serializer.toJson<String?>(assignCode),
      'numberOfFloors': serializer.toJson<String?>(numberOfFloors),
      'numberOfEmp': serializer.toJson<String?>(numberOfEmp),
      'approxSqFootage': serializer.toJson<String?>(approxSqFootage),
      'primaryBusinessType': serializer.toJson<String?>(primaryBusinessType),
      'secondaryBusinessType':
          serializer.toJson<String?>(secondaryBusinessType),
      'tertiaryBusinessType': serializer.toJson<String?>(tertiaryBusinessType),
      'businessActivities': serializer.toJson<MultiString?>(businessActivities),
      'tier': serializer.toJson<String?>(tier),
      'isFirmRegistered': serializer.toJson<bool?>(isFirmRegistered),
      'backupEnergySource': serializer.toJson<String?>(backupEnergySource),
      'firmIsUnderOrder': serializer.toJson<bool?>(firmIsUnderOrder),
      'typeOfOrder': serializer.toJson<MultiString?>(typeOfOrder),
      'orderIsPermanent': serializer.toJson<bool?>(orderIsPermanent),
      'expirationOfOrder': serializer.toJson<DateTime?>(expirationOfOrder),
      'comments': serializer.toJson<String?>(comments),
      'isSundayClosed': serializer.toJson<bool?>(isSundayClosed),
      'sundayOpenTime': serializer.toJson<String?>(sundayOpenTime),
      'sundayCloseTime': serializer.toJson<String?>(sundayCloseTime),
      'isMondayClosed': serializer.toJson<bool?>(isMondayClosed),
      'mondayOpenTime': serializer.toJson<String?>(mondayOpenTime),
      'mondayCloseTime': serializer.toJson<String?>(mondayCloseTime),
      'isTuesdayClosed': serializer.toJson<bool?>(isTuesdayClosed),
      'tuesdayOpenTime': serializer.toJson<String?>(tuesdayOpenTime),
      'tuesdayCloseTime': serializer.toJson<String?>(tuesdayCloseTime),
      'isWednesdayClosed': serializer.toJson<bool?>(isWednesdayClosed),
      'wednesdayOpenTime': serializer.toJson<String?>(wednesdayOpenTime),
      'wednesdayCloseTime': serializer.toJson<String?>(wednesdayCloseTime),
      'isThursdayClosed': serializer.toJson<bool?>(isThursdayClosed),
      'thursdayOpenTime': serializer.toJson<String?>(thursdayOpenTime),
      'thursdayCloseTime': serializer.toJson<String?>(thursdayCloseTime),
      'isFridayClosed': serializer.toJson<bool?>(isFridayClosed),
      'fridayOpenTime': serializer.toJson<String?>(fridayOpenTime),
      'fridayCloseTime': serializer.toJson<String?>(fridayCloseTime),
      'isSaturdayClosed': serializer.toJson<bool?>(isSaturdayClosed),
      'saturdayOpenTime': serializer.toJson<String?>(saturdayOpenTime),
      'saturdayCloseTime': serializer.toJson<String?>(saturdayCloseTime),
    };
  }

  FirmGeneralInfoData copyWith(
          {int? id,
          Value<RecordType?> recordType = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<String?> doingBusinessAs = const Value.absent(),
          Value<String?> alsoKnownAs = const Value.absent(),
          Value<String?> previousName = const Value.absent(),
          Value<bool?> contactRegionalOffice = const Value.absent(),
          Value<bool?> mailingAddressSameAsFirmAddress = const Value.absent(),
          Value<String?> establishmentNumber = const Value.absent(),
          Value<String?> risk = const Value.absent(),
          Value<String?> regionCode = const Value.absent(),
          Value<String?> subRegionCode = const Value.absent(),
          Value<String?> assignCode = const Value.absent(),
          Value<String?> numberOfFloors = const Value.absent(),
          Value<String?> numberOfEmp = const Value.absent(),
          Value<String?> approxSqFootage = const Value.absent(),
          Value<String?> primaryBusinessType = const Value.absent(),
          Value<String?> secondaryBusinessType = const Value.absent(),
          Value<String?> tertiaryBusinessType = const Value.absent(),
          Value<MultiString?> businessActivities = const Value.absent(),
          Value<String?> tier = const Value.absent(),
          Value<bool?> isFirmRegistered = const Value.absent(),
          Value<String?> backupEnergySource = const Value.absent(),
          Value<bool?> firmIsUnderOrder = const Value.absent(),
          Value<MultiString?> typeOfOrder = const Value.absent(),
          Value<bool?> orderIsPermanent = const Value.absent(),
          Value<DateTime?> expirationOfOrder = const Value.absent(),
          Value<String?> comments = const Value.absent(),
          Value<bool?> isSundayClosed = const Value.absent(),
          Value<String?> sundayOpenTime = const Value.absent(),
          Value<String?> sundayCloseTime = const Value.absent(),
          Value<bool?> isMondayClosed = const Value.absent(),
          Value<String?> mondayOpenTime = const Value.absent(),
          Value<String?> mondayCloseTime = const Value.absent(),
          Value<bool?> isTuesdayClosed = const Value.absent(),
          Value<String?> tuesdayOpenTime = const Value.absent(),
          Value<String?> tuesdayCloseTime = const Value.absent(),
          Value<bool?> isWednesdayClosed = const Value.absent(),
          Value<String?> wednesdayOpenTime = const Value.absent(),
          Value<String?> wednesdayCloseTime = const Value.absent(),
          Value<bool?> isThursdayClosed = const Value.absent(),
          Value<String?> thursdayOpenTime = const Value.absent(),
          Value<String?> thursdayCloseTime = const Value.absent(),
          Value<bool?> isFridayClosed = const Value.absent(),
          Value<String?> fridayOpenTime = const Value.absent(),
          Value<String?> fridayCloseTime = const Value.absent(),
          Value<bool?> isSaturdayClosed = const Value.absent(),
          Value<String?> saturdayOpenTime = const Value.absent(),
          Value<String?> saturdayCloseTime = const Value.absent()}) =>
      FirmGeneralInfoData(
        id: id ?? this.id,
        recordType: recordType.present ? recordType.value : this.recordType,
        name: name.present ? name.value : this.name,
        doingBusinessAs: doingBusinessAs.present
            ? doingBusinessAs.value
            : this.doingBusinessAs,
        alsoKnownAs: alsoKnownAs.present ? alsoKnownAs.value : this.alsoKnownAs,
        previousName:
            previousName.present ? previousName.value : this.previousName,
        contactRegionalOffice: contactRegionalOffice.present
            ? contactRegionalOffice.value
            : this.contactRegionalOffice,
        mailingAddressSameAsFirmAddress: mailingAddressSameAsFirmAddress.present
            ? mailingAddressSameAsFirmAddress.value
            : this.mailingAddressSameAsFirmAddress,
        establishmentNumber: establishmentNumber.present
            ? establishmentNumber.value
            : this.establishmentNumber,
        risk: risk.present ? risk.value : this.risk,
        regionCode: regionCode.present ? regionCode.value : this.regionCode,
        subRegionCode:
            subRegionCode.present ? subRegionCode.value : this.subRegionCode,
        assignCode: assignCode.present ? assignCode.value : this.assignCode,
        numberOfFloors:
            numberOfFloors.present ? numberOfFloors.value : this.numberOfFloors,
        numberOfEmp: numberOfEmp.present ? numberOfEmp.value : this.numberOfEmp,
        approxSqFootage: approxSqFootage.present
            ? approxSqFootage.value
            : this.approxSqFootage,
        primaryBusinessType: primaryBusinessType.present
            ? primaryBusinessType.value
            : this.primaryBusinessType,
        secondaryBusinessType: secondaryBusinessType.present
            ? secondaryBusinessType.value
            : this.secondaryBusinessType,
        tertiaryBusinessType: tertiaryBusinessType.present
            ? tertiaryBusinessType.value
            : this.tertiaryBusinessType,
        businessActivities: businessActivities.present
            ? businessActivities.value
            : this.businessActivities,
        tier: tier.present ? tier.value : this.tier,
        isFirmRegistered: isFirmRegistered.present
            ? isFirmRegistered.value
            : this.isFirmRegistered,
        backupEnergySource: backupEnergySource.present
            ? backupEnergySource.value
            : this.backupEnergySource,
        firmIsUnderOrder: firmIsUnderOrder.present
            ? firmIsUnderOrder.value
            : this.firmIsUnderOrder,
        typeOfOrder: typeOfOrder.present ? typeOfOrder.value : this.typeOfOrder,
        orderIsPermanent: orderIsPermanent.present
            ? orderIsPermanent.value
            : this.orderIsPermanent,
        expirationOfOrder: expirationOfOrder.present
            ? expirationOfOrder.value
            : this.expirationOfOrder,
        comments: comments.present ? comments.value : this.comments,
        isSundayClosed:
            isSundayClosed.present ? isSundayClosed.value : this.isSundayClosed,
        sundayOpenTime:
            sundayOpenTime.present ? sundayOpenTime.value : this.sundayOpenTime,
        sundayCloseTime: sundayCloseTime.present
            ? sundayCloseTime.value
            : this.sundayCloseTime,
        isMondayClosed:
            isMondayClosed.present ? isMondayClosed.value : this.isMondayClosed,
        mondayOpenTime:
            mondayOpenTime.present ? mondayOpenTime.value : this.mondayOpenTime,
        mondayCloseTime: mondayCloseTime.present
            ? mondayCloseTime.value
            : this.mondayCloseTime,
        isTuesdayClosed: isTuesdayClosed.present
            ? isTuesdayClosed.value
            : this.isTuesdayClosed,
        tuesdayOpenTime: tuesdayOpenTime.present
            ? tuesdayOpenTime.value
            : this.tuesdayOpenTime,
        tuesdayCloseTime: tuesdayCloseTime.present
            ? tuesdayCloseTime.value
            : this.tuesdayCloseTime,
        isWednesdayClosed: isWednesdayClosed.present
            ? isWednesdayClosed.value
            : this.isWednesdayClosed,
        wednesdayOpenTime: wednesdayOpenTime.present
            ? wednesdayOpenTime.value
            : this.wednesdayOpenTime,
        wednesdayCloseTime: wednesdayCloseTime.present
            ? wednesdayCloseTime.value
            : this.wednesdayCloseTime,
        isThursdayClosed: isThursdayClosed.present
            ? isThursdayClosed.value
            : this.isThursdayClosed,
        thursdayOpenTime: thursdayOpenTime.present
            ? thursdayOpenTime.value
            : this.thursdayOpenTime,
        thursdayCloseTime: thursdayCloseTime.present
            ? thursdayCloseTime.value
            : this.thursdayCloseTime,
        isFridayClosed:
            isFridayClosed.present ? isFridayClosed.value : this.isFridayClosed,
        fridayOpenTime:
            fridayOpenTime.present ? fridayOpenTime.value : this.fridayOpenTime,
        fridayCloseTime: fridayCloseTime.present
            ? fridayCloseTime.value
            : this.fridayCloseTime,
        isSaturdayClosed: isSaturdayClosed.present
            ? isSaturdayClosed.value
            : this.isSaturdayClosed,
        saturdayOpenTime: saturdayOpenTime.present
            ? saturdayOpenTime.value
            : this.saturdayOpenTime,
        saturdayCloseTime: saturdayCloseTime.present
            ? saturdayCloseTime.value
            : this.saturdayCloseTime,
      );
  @override
  String toString() {
    return (StringBuffer('FirmGeneralInfoData(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('name: $name, ')
          ..write('doingBusinessAs: $doingBusinessAs, ')
          ..write('alsoKnownAs: $alsoKnownAs, ')
          ..write('previousName: $previousName, ')
          ..write('contactRegionalOffice: $contactRegionalOffice, ')
          ..write(
              'mailingAddressSameAsFirmAddress: $mailingAddressSameAsFirmAddress, ')
          ..write('establishmentNumber: $establishmentNumber, ')
          ..write('risk: $risk, ')
          ..write('regionCode: $regionCode, ')
          ..write('subRegionCode: $subRegionCode, ')
          ..write('assignCode: $assignCode, ')
          ..write('numberOfFloors: $numberOfFloors, ')
          ..write('numberOfEmp: $numberOfEmp, ')
          ..write('approxSqFootage: $approxSqFootage, ')
          ..write('primaryBusinessType: $primaryBusinessType, ')
          ..write('secondaryBusinessType: $secondaryBusinessType, ')
          ..write('tertiaryBusinessType: $tertiaryBusinessType, ')
          ..write('businessActivities: $businessActivities, ')
          ..write('tier: $tier, ')
          ..write('isFirmRegistered: $isFirmRegistered, ')
          ..write('backupEnergySource: $backupEnergySource, ')
          ..write('firmIsUnderOrder: $firmIsUnderOrder, ')
          ..write('typeOfOrder: $typeOfOrder, ')
          ..write('orderIsPermanent: $orderIsPermanent, ')
          ..write('expirationOfOrder: $expirationOfOrder, ')
          ..write('comments: $comments, ')
          ..write('isSundayClosed: $isSundayClosed, ')
          ..write('sundayOpenTime: $sundayOpenTime, ')
          ..write('sundayCloseTime: $sundayCloseTime, ')
          ..write('isMondayClosed: $isMondayClosed, ')
          ..write('mondayOpenTime: $mondayOpenTime, ')
          ..write('mondayCloseTime: $mondayCloseTime, ')
          ..write('isTuesdayClosed: $isTuesdayClosed, ')
          ..write('tuesdayOpenTime: $tuesdayOpenTime, ')
          ..write('tuesdayCloseTime: $tuesdayCloseTime, ')
          ..write('isWednesdayClosed: $isWednesdayClosed, ')
          ..write('wednesdayOpenTime: $wednesdayOpenTime, ')
          ..write('wednesdayCloseTime: $wednesdayCloseTime, ')
          ..write('isThursdayClosed: $isThursdayClosed, ')
          ..write('thursdayOpenTime: $thursdayOpenTime, ')
          ..write('thursdayCloseTime: $thursdayCloseTime, ')
          ..write('isFridayClosed: $isFridayClosed, ')
          ..write('fridayOpenTime: $fridayOpenTime, ')
          ..write('fridayCloseTime: $fridayCloseTime, ')
          ..write('isSaturdayClosed: $isSaturdayClosed, ')
          ..write('saturdayOpenTime: $saturdayOpenTime, ')
          ..write('saturdayCloseTime: $saturdayCloseTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        recordType,
        name,
        doingBusinessAs,
        alsoKnownAs,
        previousName,
        contactRegionalOffice,
        mailingAddressSameAsFirmAddress,
        establishmentNumber,
        risk,
        regionCode,
        subRegionCode,
        assignCode,
        numberOfFloors,
        numberOfEmp,
        approxSqFootage,
        primaryBusinessType,
        secondaryBusinessType,
        tertiaryBusinessType,
        businessActivities,
        tier,
        isFirmRegistered,
        backupEnergySource,
        firmIsUnderOrder,
        typeOfOrder,
        orderIsPermanent,
        expirationOfOrder,
        comments,
        isSundayClosed,
        sundayOpenTime,
        sundayCloseTime,
        isMondayClosed,
        mondayOpenTime,
        mondayCloseTime,
        isTuesdayClosed,
        tuesdayOpenTime,
        tuesdayCloseTime,
        isWednesdayClosed,
        wednesdayOpenTime,
        wednesdayCloseTime,
        isThursdayClosed,
        thursdayOpenTime,
        thursdayCloseTime,
        isFridayClosed,
        fridayOpenTime,
        fridayCloseTime,
        isSaturdayClosed,
        saturdayOpenTime,
        saturdayCloseTime
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FirmGeneralInfoData &&
          other.id == this.id &&
          other.recordType == this.recordType &&
          other.name == this.name &&
          other.doingBusinessAs == this.doingBusinessAs &&
          other.alsoKnownAs == this.alsoKnownAs &&
          other.previousName == this.previousName &&
          other.contactRegionalOffice == this.contactRegionalOffice &&
          other.mailingAddressSameAsFirmAddress ==
              this.mailingAddressSameAsFirmAddress &&
          other.establishmentNumber == this.establishmentNumber &&
          other.risk == this.risk &&
          other.regionCode == this.regionCode &&
          other.subRegionCode == this.subRegionCode &&
          other.assignCode == this.assignCode &&
          other.numberOfFloors == this.numberOfFloors &&
          other.numberOfEmp == this.numberOfEmp &&
          other.approxSqFootage == this.approxSqFootage &&
          other.primaryBusinessType == this.primaryBusinessType &&
          other.secondaryBusinessType == this.secondaryBusinessType &&
          other.tertiaryBusinessType == this.tertiaryBusinessType &&
          other.businessActivities == this.businessActivities &&
          other.tier == this.tier &&
          other.isFirmRegistered == this.isFirmRegistered &&
          other.backupEnergySource == this.backupEnergySource &&
          other.firmIsUnderOrder == this.firmIsUnderOrder &&
          other.typeOfOrder == this.typeOfOrder &&
          other.orderIsPermanent == this.orderIsPermanent &&
          other.expirationOfOrder == this.expirationOfOrder &&
          other.comments == this.comments &&
          other.isSundayClosed == this.isSundayClosed &&
          other.sundayOpenTime == this.sundayOpenTime &&
          other.sundayCloseTime == this.sundayCloseTime &&
          other.isMondayClosed == this.isMondayClosed &&
          other.mondayOpenTime == this.mondayOpenTime &&
          other.mondayCloseTime == this.mondayCloseTime &&
          other.isTuesdayClosed == this.isTuesdayClosed &&
          other.tuesdayOpenTime == this.tuesdayOpenTime &&
          other.tuesdayCloseTime == this.tuesdayCloseTime &&
          other.isWednesdayClosed == this.isWednesdayClosed &&
          other.wednesdayOpenTime == this.wednesdayOpenTime &&
          other.wednesdayCloseTime == this.wednesdayCloseTime &&
          other.isThursdayClosed == this.isThursdayClosed &&
          other.thursdayOpenTime == this.thursdayOpenTime &&
          other.thursdayCloseTime == this.thursdayCloseTime &&
          other.isFridayClosed == this.isFridayClosed &&
          other.fridayOpenTime == this.fridayOpenTime &&
          other.fridayCloseTime == this.fridayCloseTime &&
          other.isSaturdayClosed == this.isSaturdayClosed &&
          other.saturdayOpenTime == this.saturdayOpenTime &&
          other.saturdayCloseTime == this.saturdayCloseTime);
}

class FirmGeneralInfoCompanion extends UpdateCompanion<FirmGeneralInfoData> {
  final Value<int> id;
  final Value<RecordType?> recordType;
  final Value<String?> name;
  final Value<String?> doingBusinessAs;
  final Value<String?> alsoKnownAs;
  final Value<String?> previousName;
  final Value<bool?> contactRegionalOffice;
  final Value<bool?> mailingAddressSameAsFirmAddress;
  final Value<String?> establishmentNumber;
  final Value<String?> risk;
  final Value<String?> regionCode;
  final Value<String?> subRegionCode;
  final Value<String?> assignCode;
  final Value<String?> numberOfFloors;
  final Value<String?> numberOfEmp;
  final Value<String?> approxSqFootage;
  final Value<String?> primaryBusinessType;
  final Value<String?> secondaryBusinessType;
  final Value<String?> tertiaryBusinessType;
  final Value<MultiString?> businessActivities;
  final Value<String?> tier;
  final Value<bool?> isFirmRegistered;
  final Value<String?> backupEnergySource;
  final Value<bool?> firmIsUnderOrder;
  final Value<MultiString?> typeOfOrder;
  final Value<bool?> orderIsPermanent;
  final Value<DateTime?> expirationOfOrder;
  final Value<String?> comments;
  final Value<bool?> isSundayClosed;
  final Value<String?> sundayOpenTime;
  final Value<String?> sundayCloseTime;
  final Value<bool?> isMondayClosed;
  final Value<String?> mondayOpenTime;
  final Value<String?> mondayCloseTime;
  final Value<bool?> isTuesdayClosed;
  final Value<String?> tuesdayOpenTime;
  final Value<String?> tuesdayCloseTime;
  final Value<bool?> isWednesdayClosed;
  final Value<String?> wednesdayOpenTime;
  final Value<String?> wednesdayCloseTime;
  final Value<bool?> isThursdayClosed;
  final Value<String?> thursdayOpenTime;
  final Value<String?> thursdayCloseTime;
  final Value<bool?> isFridayClosed;
  final Value<String?> fridayOpenTime;
  final Value<String?> fridayCloseTime;
  final Value<bool?> isSaturdayClosed;
  final Value<String?> saturdayOpenTime;
  final Value<String?> saturdayCloseTime;
  final Value<int> rowid;
  const FirmGeneralInfoCompanion({
    this.id = const Value.absent(),
    this.recordType = const Value.absent(),
    this.name = const Value.absent(),
    this.doingBusinessAs = const Value.absent(),
    this.alsoKnownAs = const Value.absent(),
    this.previousName = const Value.absent(),
    this.contactRegionalOffice = const Value.absent(),
    this.mailingAddressSameAsFirmAddress = const Value.absent(),
    this.establishmentNumber = const Value.absent(),
    this.risk = const Value.absent(),
    this.regionCode = const Value.absent(),
    this.subRegionCode = const Value.absent(),
    this.assignCode = const Value.absent(),
    this.numberOfFloors = const Value.absent(),
    this.numberOfEmp = const Value.absent(),
    this.approxSqFootage = const Value.absent(),
    this.primaryBusinessType = const Value.absent(),
    this.secondaryBusinessType = const Value.absent(),
    this.tertiaryBusinessType = const Value.absent(),
    this.businessActivities = const Value.absent(),
    this.tier = const Value.absent(),
    this.isFirmRegistered = const Value.absent(),
    this.backupEnergySource = const Value.absent(),
    this.firmIsUnderOrder = const Value.absent(),
    this.typeOfOrder = const Value.absent(),
    this.orderIsPermanent = const Value.absent(),
    this.expirationOfOrder = const Value.absent(),
    this.comments = const Value.absent(),
    this.isSundayClosed = const Value.absent(),
    this.sundayOpenTime = const Value.absent(),
    this.sundayCloseTime = const Value.absent(),
    this.isMondayClosed = const Value.absent(),
    this.mondayOpenTime = const Value.absent(),
    this.mondayCloseTime = const Value.absent(),
    this.isTuesdayClosed = const Value.absent(),
    this.tuesdayOpenTime = const Value.absent(),
    this.tuesdayCloseTime = const Value.absent(),
    this.isWednesdayClosed = const Value.absent(),
    this.wednesdayOpenTime = const Value.absent(),
    this.wednesdayCloseTime = const Value.absent(),
    this.isThursdayClosed = const Value.absent(),
    this.thursdayOpenTime = const Value.absent(),
    this.thursdayCloseTime = const Value.absent(),
    this.isFridayClosed = const Value.absent(),
    this.fridayOpenTime = const Value.absent(),
    this.fridayCloseTime = const Value.absent(),
    this.isSaturdayClosed = const Value.absent(),
    this.saturdayOpenTime = const Value.absent(),
    this.saturdayCloseTime = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FirmGeneralInfoCompanion.insert({
    required int id,
    this.recordType = const Value.absent(),
    this.name = const Value.absent(),
    this.doingBusinessAs = const Value.absent(),
    this.alsoKnownAs = const Value.absent(),
    this.previousName = const Value.absent(),
    this.contactRegionalOffice = const Value.absent(),
    this.mailingAddressSameAsFirmAddress = const Value.absent(),
    this.establishmentNumber = const Value.absent(),
    this.risk = const Value.absent(),
    this.regionCode = const Value.absent(),
    this.subRegionCode = const Value.absent(),
    this.assignCode = const Value.absent(),
    this.numberOfFloors = const Value.absent(),
    this.numberOfEmp = const Value.absent(),
    this.approxSqFootage = const Value.absent(),
    this.primaryBusinessType = const Value.absent(),
    this.secondaryBusinessType = const Value.absent(),
    this.tertiaryBusinessType = const Value.absent(),
    this.businessActivities = const Value.absent(),
    this.tier = const Value.absent(),
    this.isFirmRegistered = const Value.absent(),
    this.backupEnergySource = const Value.absent(),
    this.firmIsUnderOrder = const Value.absent(),
    this.typeOfOrder = const Value.absent(),
    this.orderIsPermanent = const Value.absent(),
    this.expirationOfOrder = const Value.absent(),
    this.comments = const Value.absent(),
    this.isSundayClosed = const Value.absent(),
    this.sundayOpenTime = const Value.absent(),
    this.sundayCloseTime = const Value.absent(),
    this.isMondayClosed = const Value.absent(),
    this.mondayOpenTime = const Value.absent(),
    this.mondayCloseTime = const Value.absent(),
    this.isTuesdayClosed = const Value.absent(),
    this.tuesdayOpenTime = const Value.absent(),
    this.tuesdayCloseTime = const Value.absent(),
    this.isWednesdayClosed = const Value.absent(),
    this.wednesdayOpenTime = const Value.absent(),
    this.wednesdayCloseTime = const Value.absent(),
    this.isThursdayClosed = const Value.absent(),
    this.thursdayOpenTime = const Value.absent(),
    this.thursdayCloseTime = const Value.absent(),
    this.isFridayClosed = const Value.absent(),
    this.fridayOpenTime = const Value.absent(),
    this.fridayCloseTime = const Value.absent(),
    this.isSaturdayClosed = const Value.absent(),
    this.saturdayOpenTime = const Value.absent(),
    this.saturdayCloseTime = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<FirmGeneralInfoData> custom({
    Expression<int>? id,
    Expression<int>? recordType,
    Expression<String>? name,
    Expression<String>? doingBusinessAs,
    Expression<String>? alsoKnownAs,
    Expression<String>? previousName,
    Expression<bool>? contactRegionalOffice,
    Expression<bool>? mailingAddressSameAsFirmAddress,
    Expression<String>? establishmentNumber,
    Expression<String>? risk,
    Expression<String>? regionCode,
    Expression<String>? subRegionCode,
    Expression<String>? assignCode,
    Expression<String>? numberOfFloors,
    Expression<String>? numberOfEmp,
    Expression<String>? approxSqFootage,
    Expression<String>? primaryBusinessType,
    Expression<String>? secondaryBusinessType,
    Expression<String>? tertiaryBusinessType,
    Expression<String>? businessActivities,
    Expression<String>? tier,
    Expression<bool>? isFirmRegistered,
    Expression<String>? backupEnergySource,
    Expression<bool>? firmIsUnderOrder,
    Expression<String>? typeOfOrder,
    Expression<bool>? orderIsPermanent,
    Expression<DateTime>? expirationOfOrder,
    Expression<String>? comments,
    Expression<bool>? isSundayClosed,
    Expression<String>? sundayOpenTime,
    Expression<String>? sundayCloseTime,
    Expression<bool>? isMondayClosed,
    Expression<String>? mondayOpenTime,
    Expression<String>? mondayCloseTime,
    Expression<bool>? isTuesdayClosed,
    Expression<String>? tuesdayOpenTime,
    Expression<String>? tuesdayCloseTime,
    Expression<bool>? isWednesdayClosed,
    Expression<String>? wednesdayOpenTime,
    Expression<String>? wednesdayCloseTime,
    Expression<bool>? isThursdayClosed,
    Expression<String>? thursdayOpenTime,
    Expression<String>? thursdayCloseTime,
    Expression<bool>? isFridayClosed,
    Expression<String>? fridayOpenTime,
    Expression<String>? fridayCloseTime,
    Expression<bool>? isSaturdayClosed,
    Expression<String>? saturdayOpenTime,
    Expression<String>? saturdayCloseTime,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordType != null) 'record_type': recordType,
      if (name != null) 'name': name,
      if (doingBusinessAs != null) 'doing_business_as': doingBusinessAs,
      if (alsoKnownAs != null) 'also_known_as': alsoKnownAs,
      if (previousName != null) 'previous_name': previousName,
      if (contactRegionalOffice != null)
        'contact_regional_office': contactRegionalOffice,
      if (mailingAddressSameAsFirmAddress != null)
        'mailing_address_same_as_firm_address': mailingAddressSameAsFirmAddress,
      if (establishmentNumber != null)
        'establishment_number': establishmentNumber,
      if (risk != null) 'risk': risk,
      if (regionCode != null) 'region_code': regionCode,
      if (subRegionCode != null) 'sub_region_code': subRegionCode,
      if (assignCode != null) 'assign_code': assignCode,
      if (numberOfFloors != null) 'number_of_floors': numberOfFloors,
      if (numberOfEmp != null) 'number_of_emp': numberOfEmp,
      if (approxSqFootage != null) 'approx_sq_footage': approxSqFootage,
      if (primaryBusinessType != null)
        'primary_business_type': primaryBusinessType,
      if (secondaryBusinessType != null)
        'secondary_business_type': secondaryBusinessType,
      if (tertiaryBusinessType != null)
        'tertiary_business_type': tertiaryBusinessType,
      if (businessActivities != null) 'business_activities': businessActivities,
      if (tier != null) 'tier': tier,
      if (isFirmRegistered != null) 'is_firm_registered': isFirmRegistered,
      if (backupEnergySource != null)
        'backup_energy_source': backupEnergySource,
      if (firmIsUnderOrder != null) 'firm_is_under_order': firmIsUnderOrder,
      if (typeOfOrder != null) 'type_of_order': typeOfOrder,
      if (orderIsPermanent != null) 'order_is_permanent': orderIsPermanent,
      if (expirationOfOrder != null) 'expiration_of_order': expirationOfOrder,
      if (comments != null) 'comments': comments,
      if (isSundayClosed != null) 'is_sunday_closed': isSundayClosed,
      if (sundayOpenTime != null) 'sunday_open_time': sundayOpenTime,
      if (sundayCloseTime != null) 'sunday_close_time': sundayCloseTime,
      if (isMondayClosed != null) 'is_monday_closed': isMondayClosed,
      if (mondayOpenTime != null) 'monday_open_time': mondayOpenTime,
      if (mondayCloseTime != null) 'monday_close_time': mondayCloseTime,
      if (isTuesdayClosed != null) 'is_tuesday_closed': isTuesdayClosed,
      if (tuesdayOpenTime != null) 'tuesday_open_time': tuesdayOpenTime,
      if (tuesdayCloseTime != null) 'tuesday_close_time': tuesdayCloseTime,
      if (isWednesdayClosed != null) 'is_wednesday_closed': isWednesdayClosed,
      if (wednesdayOpenTime != null) 'wednesday_open_time': wednesdayOpenTime,
      if (wednesdayCloseTime != null)
        'wednesday_close_time': wednesdayCloseTime,
      if (isThursdayClosed != null) 'is_thursday_closed': isThursdayClosed,
      if (thursdayOpenTime != null) 'thursday_open_time': thursdayOpenTime,
      if (thursdayCloseTime != null) 'thursday_close_time': thursdayCloseTime,
      if (isFridayClosed != null) 'is_friday_closed': isFridayClosed,
      if (fridayOpenTime != null) 'friday_open_time': fridayOpenTime,
      if (fridayCloseTime != null) 'friday_close_time': fridayCloseTime,
      if (isSaturdayClosed != null) 'is_saturday_closed': isSaturdayClosed,
      if (saturdayOpenTime != null) 'saturday_open_time': saturdayOpenTime,
      if (saturdayCloseTime != null) 'saturday_close_time': saturdayCloseTime,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FirmGeneralInfoCompanion copyWith(
      {Value<int>? id,
      Value<RecordType?>? recordType,
      Value<String?>? name,
      Value<String?>? doingBusinessAs,
      Value<String?>? alsoKnownAs,
      Value<String?>? previousName,
      Value<bool?>? contactRegionalOffice,
      Value<bool?>? mailingAddressSameAsFirmAddress,
      Value<String?>? establishmentNumber,
      Value<String?>? risk,
      Value<String?>? regionCode,
      Value<String?>? subRegionCode,
      Value<String?>? assignCode,
      Value<String?>? numberOfFloors,
      Value<String?>? numberOfEmp,
      Value<String?>? approxSqFootage,
      Value<String?>? primaryBusinessType,
      Value<String?>? secondaryBusinessType,
      Value<String?>? tertiaryBusinessType,
      Value<MultiString?>? businessActivities,
      Value<String?>? tier,
      Value<bool?>? isFirmRegistered,
      Value<String?>? backupEnergySource,
      Value<bool?>? firmIsUnderOrder,
      Value<MultiString?>? typeOfOrder,
      Value<bool?>? orderIsPermanent,
      Value<DateTime?>? expirationOfOrder,
      Value<String?>? comments,
      Value<bool?>? isSundayClosed,
      Value<String?>? sundayOpenTime,
      Value<String?>? sundayCloseTime,
      Value<bool?>? isMondayClosed,
      Value<String?>? mondayOpenTime,
      Value<String?>? mondayCloseTime,
      Value<bool?>? isTuesdayClosed,
      Value<String?>? tuesdayOpenTime,
      Value<String?>? tuesdayCloseTime,
      Value<bool?>? isWednesdayClosed,
      Value<String?>? wednesdayOpenTime,
      Value<String?>? wednesdayCloseTime,
      Value<bool?>? isThursdayClosed,
      Value<String?>? thursdayOpenTime,
      Value<String?>? thursdayCloseTime,
      Value<bool?>? isFridayClosed,
      Value<String?>? fridayOpenTime,
      Value<String?>? fridayCloseTime,
      Value<bool?>? isSaturdayClosed,
      Value<String?>? saturdayOpenTime,
      Value<String?>? saturdayCloseTime,
      Value<int>? rowid}) {
    return FirmGeneralInfoCompanion(
      id: id ?? this.id,
      recordType: recordType ?? this.recordType,
      name: name ?? this.name,
      doingBusinessAs: doingBusinessAs ?? this.doingBusinessAs,
      alsoKnownAs: alsoKnownAs ?? this.alsoKnownAs,
      previousName: previousName ?? this.previousName,
      contactRegionalOffice:
          contactRegionalOffice ?? this.contactRegionalOffice,
      mailingAddressSameAsFirmAddress: mailingAddressSameAsFirmAddress ??
          this.mailingAddressSameAsFirmAddress,
      establishmentNumber: establishmentNumber ?? this.establishmentNumber,
      risk: risk ?? this.risk,
      regionCode: regionCode ?? this.regionCode,
      subRegionCode: subRegionCode ?? this.subRegionCode,
      assignCode: assignCode ?? this.assignCode,
      numberOfFloors: numberOfFloors ?? this.numberOfFloors,
      numberOfEmp: numberOfEmp ?? this.numberOfEmp,
      approxSqFootage: approxSqFootage ?? this.approxSqFootage,
      primaryBusinessType: primaryBusinessType ?? this.primaryBusinessType,
      secondaryBusinessType:
          secondaryBusinessType ?? this.secondaryBusinessType,
      tertiaryBusinessType: tertiaryBusinessType ?? this.tertiaryBusinessType,
      businessActivities: businessActivities ?? this.businessActivities,
      tier: tier ?? this.tier,
      isFirmRegistered: isFirmRegistered ?? this.isFirmRegistered,
      backupEnergySource: backupEnergySource ?? this.backupEnergySource,
      firmIsUnderOrder: firmIsUnderOrder ?? this.firmIsUnderOrder,
      typeOfOrder: typeOfOrder ?? this.typeOfOrder,
      orderIsPermanent: orderIsPermanent ?? this.orderIsPermanent,
      expirationOfOrder: expirationOfOrder ?? this.expirationOfOrder,
      comments: comments ?? this.comments,
      isSundayClosed: isSundayClosed ?? this.isSundayClosed,
      sundayOpenTime: sundayOpenTime ?? this.sundayOpenTime,
      sundayCloseTime: sundayCloseTime ?? this.sundayCloseTime,
      isMondayClosed: isMondayClosed ?? this.isMondayClosed,
      mondayOpenTime: mondayOpenTime ?? this.mondayOpenTime,
      mondayCloseTime: mondayCloseTime ?? this.mondayCloseTime,
      isTuesdayClosed: isTuesdayClosed ?? this.isTuesdayClosed,
      tuesdayOpenTime: tuesdayOpenTime ?? this.tuesdayOpenTime,
      tuesdayCloseTime: tuesdayCloseTime ?? this.tuesdayCloseTime,
      isWednesdayClosed: isWednesdayClosed ?? this.isWednesdayClosed,
      wednesdayOpenTime: wednesdayOpenTime ?? this.wednesdayOpenTime,
      wednesdayCloseTime: wednesdayCloseTime ?? this.wednesdayCloseTime,
      isThursdayClosed: isThursdayClosed ?? this.isThursdayClosed,
      thursdayOpenTime: thursdayOpenTime ?? this.thursdayOpenTime,
      thursdayCloseTime: thursdayCloseTime ?? this.thursdayCloseTime,
      isFridayClosed: isFridayClosed ?? this.isFridayClosed,
      fridayOpenTime: fridayOpenTime ?? this.fridayOpenTime,
      fridayCloseTime: fridayCloseTime ?? this.fridayCloseTime,
      isSaturdayClosed: isSaturdayClosed ?? this.isSaturdayClosed,
      saturdayOpenTime: saturdayOpenTime ?? this.saturdayOpenTime,
      saturdayCloseTime: saturdayCloseTime ?? this.saturdayCloseTime,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordType.present) {
      final converter = $FirmGeneralInfoTable.$converterrecordTypen;

      map['record_type'] = Variable<int>(converter.toSql(recordType.value));
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (doingBusinessAs.present) {
      map['doing_business_as'] = Variable<String>(doingBusinessAs.value);
    }
    if (alsoKnownAs.present) {
      map['also_known_as'] = Variable<String>(alsoKnownAs.value);
    }
    if (previousName.present) {
      map['previous_name'] = Variable<String>(previousName.value);
    }
    if (contactRegionalOffice.present) {
      map['contact_regional_office'] =
          Variable<bool>(contactRegionalOffice.value);
    }
    if (mailingAddressSameAsFirmAddress.present) {
      map['mailing_address_same_as_firm_address'] =
          Variable<bool>(mailingAddressSameAsFirmAddress.value);
    }
    if (establishmentNumber.present) {
      map['establishment_number'] = Variable<String>(establishmentNumber.value);
    }
    if (risk.present) {
      map['risk'] = Variable<String>(risk.value);
    }
    if (regionCode.present) {
      map['region_code'] = Variable<String>(regionCode.value);
    }
    if (subRegionCode.present) {
      map['sub_region_code'] = Variable<String>(subRegionCode.value);
    }
    if (assignCode.present) {
      map['assign_code'] = Variable<String>(assignCode.value);
    }
    if (numberOfFloors.present) {
      map['number_of_floors'] = Variable<String>(numberOfFloors.value);
    }
    if (numberOfEmp.present) {
      map['number_of_emp'] = Variable<String>(numberOfEmp.value);
    }
    if (approxSqFootage.present) {
      map['approx_sq_footage'] = Variable<String>(approxSqFootage.value);
    }
    if (primaryBusinessType.present) {
      map['primary_business_type'] =
          Variable<String>(primaryBusinessType.value);
    }
    if (secondaryBusinessType.present) {
      map['secondary_business_type'] =
          Variable<String>(secondaryBusinessType.value);
    }
    if (tertiaryBusinessType.present) {
      map['tertiary_business_type'] =
          Variable<String>(tertiaryBusinessType.value);
    }
    if (businessActivities.present) {
      final converter = $FirmGeneralInfoTable.$converterbusinessActivities;

      map['business_activities'] =
          Variable<String>(converter.toSql(businessActivities.value));
    }
    if (tier.present) {
      map['tier'] = Variable<String>(tier.value);
    }
    if (isFirmRegistered.present) {
      map['is_firm_registered'] = Variable<bool>(isFirmRegistered.value);
    }
    if (backupEnergySource.present) {
      map['backup_energy_source'] = Variable<String>(backupEnergySource.value);
    }
    if (firmIsUnderOrder.present) {
      map['firm_is_under_order'] = Variable<bool>(firmIsUnderOrder.value);
    }
    if (typeOfOrder.present) {
      final converter = $FirmGeneralInfoTable.$convertertypeOfOrder;

      map['type_of_order'] =
          Variable<String>(converter.toSql(typeOfOrder.value));
    }
    if (orderIsPermanent.present) {
      map['order_is_permanent'] = Variable<bool>(orderIsPermanent.value);
    }
    if (expirationOfOrder.present) {
      map['expiration_of_order'] = Variable<DateTime>(expirationOfOrder.value);
    }
    if (comments.present) {
      map['comments'] = Variable<String>(comments.value);
    }
    if (isSundayClosed.present) {
      map['is_sunday_closed'] = Variable<bool>(isSundayClosed.value);
    }
    if (sundayOpenTime.present) {
      map['sunday_open_time'] = Variable<String>(sundayOpenTime.value);
    }
    if (sundayCloseTime.present) {
      map['sunday_close_time'] = Variable<String>(sundayCloseTime.value);
    }
    if (isMondayClosed.present) {
      map['is_monday_closed'] = Variable<bool>(isMondayClosed.value);
    }
    if (mondayOpenTime.present) {
      map['monday_open_time'] = Variable<String>(mondayOpenTime.value);
    }
    if (mondayCloseTime.present) {
      map['monday_close_time'] = Variable<String>(mondayCloseTime.value);
    }
    if (isTuesdayClosed.present) {
      map['is_tuesday_closed'] = Variable<bool>(isTuesdayClosed.value);
    }
    if (tuesdayOpenTime.present) {
      map['tuesday_open_time'] = Variable<String>(tuesdayOpenTime.value);
    }
    if (tuesdayCloseTime.present) {
      map['tuesday_close_time'] = Variable<String>(tuesdayCloseTime.value);
    }
    if (isWednesdayClosed.present) {
      map['is_wednesday_closed'] = Variable<bool>(isWednesdayClosed.value);
    }
    if (wednesdayOpenTime.present) {
      map['wednesday_open_time'] = Variable<String>(wednesdayOpenTime.value);
    }
    if (wednesdayCloseTime.present) {
      map['wednesday_close_time'] = Variable<String>(wednesdayCloseTime.value);
    }
    if (isThursdayClosed.present) {
      map['is_thursday_closed'] = Variable<bool>(isThursdayClosed.value);
    }
    if (thursdayOpenTime.present) {
      map['thursday_open_time'] = Variable<String>(thursdayOpenTime.value);
    }
    if (thursdayCloseTime.present) {
      map['thursday_close_time'] = Variable<String>(thursdayCloseTime.value);
    }
    if (isFridayClosed.present) {
      map['is_friday_closed'] = Variable<bool>(isFridayClosed.value);
    }
    if (fridayOpenTime.present) {
      map['friday_open_time'] = Variable<String>(fridayOpenTime.value);
    }
    if (fridayCloseTime.present) {
      map['friday_close_time'] = Variable<String>(fridayCloseTime.value);
    }
    if (isSaturdayClosed.present) {
      map['is_saturday_closed'] = Variable<bool>(isSaturdayClosed.value);
    }
    if (saturdayOpenTime.present) {
      map['saturday_open_time'] = Variable<String>(saturdayOpenTime.value);
    }
    if (saturdayCloseTime.present) {
      map['saturday_close_time'] = Variable<String>(saturdayCloseTime.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FirmGeneralInfoCompanion(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('name: $name, ')
          ..write('doingBusinessAs: $doingBusinessAs, ')
          ..write('alsoKnownAs: $alsoKnownAs, ')
          ..write('previousName: $previousName, ')
          ..write('contactRegionalOffice: $contactRegionalOffice, ')
          ..write(
              'mailingAddressSameAsFirmAddress: $mailingAddressSameAsFirmAddress, ')
          ..write('establishmentNumber: $establishmentNumber, ')
          ..write('risk: $risk, ')
          ..write('regionCode: $regionCode, ')
          ..write('subRegionCode: $subRegionCode, ')
          ..write('assignCode: $assignCode, ')
          ..write('numberOfFloors: $numberOfFloors, ')
          ..write('numberOfEmp: $numberOfEmp, ')
          ..write('approxSqFootage: $approxSqFootage, ')
          ..write('primaryBusinessType: $primaryBusinessType, ')
          ..write('secondaryBusinessType: $secondaryBusinessType, ')
          ..write('tertiaryBusinessType: $tertiaryBusinessType, ')
          ..write('businessActivities: $businessActivities, ')
          ..write('tier: $tier, ')
          ..write('isFirmRegistered: $isFirmRegistered, ')
          ..write('backupEnergySource: $backupEnergySource, ')
          ..write('firmIsUnderOrder: $firmIsUnderOrder, ')
          ..write('typeOfOrder: $typeOfOrder, ')
          ..write('orderIsPermanent: $orderIsPermanent, ')
          ..write('expirationOfOrder: $expirationOfOrder, ')
          ..write('comments: $comments, ')
          ..write('isSundayClosed: $isSundayClosed, ')
          ..write('sundayOpenTime: $sundayOpenTime, ')
          ..write('sundayCloseTime: $sundayCloseTime, ')
          ..write('isMondayClosed: $isMondayClosed, ')
          ..write('mondayOpenTime: $mondayOpenTime, ')
          ..write('mondayCloseTime: $mondayCloseTime, ')
          ..write('isTuesdayClosed: $isTuesdayClosed, ')
          ..write('tuesdayOpenTime: $tuesdayOpenTime, ')
          ..write('tuesdayCloseTime: $tuesdayCloseTime, ')
          ..write('isWednesdayClosed: $isWednesdayClosed, ')
          ..write('wednesdayOpenTime: $wednesdayOpenTime, ')
          ..write('wednesdayCloseTime: $wednesdayCloseTime, ')
          ..write('isThursdayClosed: $isThursdayClosed, ')
          ..write('thursdayOpenTime: $thursdayOpenTime, ')
          ..write('thursdayCloseTime: $thursdayCloseTime, ')
          ..write('isFridayClosed: $isFridayClosed, ')
          ..write('fridayOpenTime: $fridayOpenTime, ')
          ..write('fridayCloseTime: $fridayCloseTime, ')
          ..write('isSaturdayClosed: $isSaturdayClosed, ')
          ..write('saturdayOpenTime: $saturdayOpenTime, ')
          ..write('saturdayCloseTime: $saturdayCloseTime, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FirmManagingOfficialTable extends FirmManagingOfficial
    with TableInfo<$FirmManagingOfficialTable, FirmManagingOfficialData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FirmManagingOfficialTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<RecordType?, int> recordType =
      GeneratedColumn<int>('record_type', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<RecordType?>(
              $FirmManagingOfficialTable.$converterrecordTypen);
  @override
  late final GeneratedColumn<String> officalName1 = GeneratedColumn<String>(
      'offical_name1', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 75),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> officalTitle1 = GeneratedColumn<String>(
      'offical_title1', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 75),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> officalPhone1 = GeneratedColumn<String>(
      'offical_phone1', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 75),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> officalExt1 = GeneratedColumn<String>(
      'offical_ext1', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 75),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> officalFax1 = GeneratedColumn<String>(
      'offical_fax1', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 75),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> officalEmail1 = GeneratedColumn<String>(
      'offical_email1', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 75),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> officalMobile1 = GeneratedColumn<String>(
      'offical_mobile1', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 75),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> receiveMobileMessages1 =
      GeneratedColumn<bool>('receive_mobile_messages1', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("receive_mobile_messages1" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> officalName2 = GeneratedColumn<String>(
      'offical_name2', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 75),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> officalTitle2 = GeneratedColumn<String>(
      'offical_title2', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 75),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> officalPhone2 = GeneratedColumn<String>(
      'offical_phone2', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 75),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> officalExt2 = GeneratedColumn<String>(
      'offical_ext2', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 75),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> officalFax2 = GeneratedColumn<String>(
      'offical_fax2', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 75),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> officalEmail2 = GeneratedColumn<String>(
      'offical_email2', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 75),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> officalMobile2 = GeneratedColumn<String>(
      'offical_mobile2', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 75),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> receiveMobileMessages2 =
      GeneratedColumn<bool>('receive_mobile_messages2', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("receive_mobile_messages2" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> managingOfficialsInFirm =
      GeneratedColumn<bool>('managing_officials_in_firm', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("managing_officials_in_firm" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> sameAsOwnerInfo = GeneratedColumn<bool>(
      'same_as_owner_info', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("same_as_owner_info" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        recordType,
        officalName1,
        officalTitle1,
        officalPhone1,
        officalExt1,
        officalFax1,
        officalEmail1,
        officalMobile1,
        receiveMobileMessages1,
        officalName2,
        officalTitle2,
        officalPhone2,
        officalExt2,
        officalFax2,
        officalEmail2,
        officalMobile2,
        receiveMobileMessages2,
        managingOfficialsInFirm,
        sameAsOwnerInfo
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'firm_managing_offical';
  @override
  Set<GeneratedColumn> get $primaryKey => {id, recordType};
  @override
  FirmManagingOfficialData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FirmManagingOfficialData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      recordType: $FirmManagingOfficialTable.$converterrecordTypen.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}record_type'])),
      officalName1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}offical_name1']),
      officalTitle1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}offical_title1']),
      officalPhone1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}offical_phone1']),
      officalExt1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}offical_ext1']),
      officalFax1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}offical_fax1']),
      officalEmail1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}offical_email1']),
      officalMobile1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}offical_mobile1']),
      receiveMobileMessages1: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}receive_mobile_messages1']),
      officalName2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}offical_name2']),
      officalTitle2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}offical_title2']),
      officalPhone2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}offical_phone2']),
      officalExt2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}offical_ext2']),
      officalFax2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}offical_fax2']),
      officalEmail2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}offical_email2']),
      officalMobile2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}offical_mobile2']),
      receiveMobileMessages2: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}receive_mobile_messages2']),
      managingOfficialsInFirm: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}managing_officials_in_firm']),
      sameAsOwnerInfo: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}same_as_owner_info']),
    );
  }

  @override
  $FirmManagingOfficialTable createAlias(String alias) {
    return $FirmManagingOfficialTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RecordType, int, int> $converterrecordType =
      const EnumIndexConverter<RecordType>(RecordType.values);
  static JsonTypeConverter2<RecordType?, int?, int?> $converterrecordTypen =
      JsonTypeConverter2.asNullable($converterrecordType);
}

class FirmManagingOfficialData
    extends DataClassBehavioral<FirmManagingOfficialData>
    implements Insertable<FirmManagingOfficialData> {
  final int id;
  final RecordType? recordType;
  final String? officalName1;
  final String? officalTitle1;
  final String? officalPhone1;
  final String? officalExt1;
  final String? officalFax1;
  final String? officalEmail1;
  final String? officalMobile1;
  final bool? receiveMobileMessages1;
  final String? officalName2;
  final String? officalTitle2;
  final String? officalPhone2;
  final String? officalExt2;
  final String? officalFax2;
  final String? officalEmail2;
  final String? officalMobile2;
  final bool? receiveMobileMessages2;
  final bool? managingOfficialsInFirm;
  final bool? sameAsOwnerInfo;
  const FirmManagingOfficialData(
      {required this.id,
      this.recordType,
      this.officalName1,
      this.officalTitle1,
      this.officalPhone1,
      this.officalExt1,
      this.officalFax1,
      this.officalEmail1,
      this.officalMobile1,
      this.receiveMobileMessages1,
      this.officalName2,
      this.officalTitle2,
      this.officalPhone2,
      this.officalExt2,
      this.officalFax2,
      this.officalEmail2,
      this.officalMobile2,
      this.receiveMobileMessages2,
      this.managingOfficialsInFirm,
      this.sameAsOwnerInfo});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || recordType != null) {
      final converter = $FirmManagingOfficialTable.$converterrecordTypen;
      map['record_type'] = Variable<int>(converter.toSql(recordType));
    }
    if (!nullToAbsent || officalName1 != null) {
      map['offical_name1'] = Variable<String>(officalName1);
    }
    if (!nullToAbsent || officalTitle1 != null) {
      map['offical_title1'] = Variable<String>(officalTitle1);
    }
    if (!nullToAbsent || officalPhone1 != null) {
      map['offical_phone1'] = Variable<String>(officalPhone1);
    }
    if (!nullToAbsent || officalExt1 != null) {
      map['offical_ext1'] = Variable<String>(officalExt1);
    }
    if (!nullToAbsent || officalFax1 != null) {
      map['offical_fax1'] = Variable<String>(officalFax1);
    }
    if (!nullToAbsent || officalEmail1 != null) {
      map['offical_email1'] = Variable<String>(officalEmail1);
    }
    if (!nullToAbsent || officalMobile1 != null) {
      map['offical_mobile1'] = Variable<String>(officalMobile1);
    }
    if (!nullToAbsent || receiveMobileMessages1 != null) {
      map['receive_mobile_messages1'] = Variable<bool>(receiveMobileMessages1);
    }
    if (!nullToAbsent || officalName2 != null) {
      map['offical_name2'] = Variable<String>(officalName2);
    }
    if (!nullToAbsent || officalTitle2 != null) {
      map['offical_title2'] = Variable<String>(officalTitle2);
    }
    if (!nullToAbsent || officalPhone2 != null) {
      map['offical_phone2'] = Variable<String>(officalPhone2);
    }
    if (!nullToAbsent || officalExt2 != null) {
      map['offical_ext2'] = Variable<String>(officalExt2);
    }
    if (!nullToAbsent || officalFax2 != null) {
      map['offical_fax2'] = Variable<String>(officalFax2);
    }
    if (!nullToAbsent || officalEmail2 != null) {
      map['offical_email2'] = Variable<String>(officalEmail2);
    }
    if (!nullToAbsent || officalMobile2 != null) {
      map['offical_mobile2'] = Variable<String>(officalMobile2);
    }
    if (!nullToAbsent || receiveMobileMessages2 != null) {
      map['receive_mobile_messages2'] = Variable<bool>(receiveMobileMessages2);
    }
    if (!nullToAbsent || managingOfficialsInFirm != null) {
      map['managing_officials_in_firm'] =
          Variable<bool>(managingOfficialsInFirm);
    }
    if (!nullToAbsent || sameAsOwnerInfo != null) {
      map['same_as_owner_info'] = Variable<bool>(sameAsOwnerInfo);
    }
    return map;
  }

  FirmManagingOfficialCompanion toCompanion(bool nullToAbsent) {
    return FirmManagingOfficialCompanion(
      id: Value(id),
      recordType: recordType == null && nullToAbsent
          ? const Value.absent()
          : Value(recordType),
      officalName1: officalName1 == null && nullToAbsent
          ? const Value.absent()
          : Value(officalName1),
      officalTitle1: officalTitle1 == null && nullToAbsent
          ? const Value.absent()
          : Value(officalTitle1),
      officalPhone1: officalPhone1 == null && nullToAbsent
          ? const Value.absent()
          : Value(officalPhone1),
      officalExt1: officalExt1 == null && nullToAbsent
          ? const Value.absent()
          : Value(officalExt1),
      officalFax1: officalFax1 == null && nullToAbsent
          ? const Value.absent()
          : Value(officalFax1),
      officalEmail1: officalEmail1 == null && nullToAbsent
          ? const Value.absent()
          : Value(officalEmail1),
      officalMobile1: officalMobile1 == null && nullToAbsent
          ? const Value.absent()
          : Value(officalMobile1),
      receiveMobileMessages1: receiveMobileMessages1 == null && nullToAbsent
          ? const Value.absent()
          : Value(receiveMobileMessages1),
      officalName2: officalName2 == null && nullToAbsent
          ? const Value.absent()
          : Value(officalName2),
      officalTitle2: officalTitle2 == null && nullToAbsent
          ? const Value.absent()
          : Value(officalTitle2),
      officalPhone2: officalPhone2 == null && nullToAbsent
          ? const Value.absent()
          : Value(officalPhone2),
      officalExt2: officalExt2 == null && nullToAbsent
          ? const Value.absent()
          : Value(officalExt2),
      officalFax2: officalFax2 == null && nullToAbsent
          ? const Value.absent()
          : Value(officalFax2),
      officalEmail2: officalEmail2 == null && nullToAbsent
          ? const Value.absent()
          : Value(officalEmail2),
      officalMobile2: officalMobile2 == null && nullToAbsent
          ? const Value.absent()
          : Value(officalMobile2),
      receiveMobileMessages2: receiveMobileMessages2 == null && nullToAbsent
          ? const Value.absent()
          : Value(receiveMobileMessages2),
      managingOfficialsInFirm: managingOfficialsInFirm == null && nullToAbsent
          ? const Value.absent()
          : Value(managingOfficialsInFirm),
      sameAsOwnerInfo: sameAsOwnerInfo == null && nullToAbsent
          ? const Value.absent()
          : Value(sameAsOwnerInfo),
    );
  }

  factory FirmManagingOfficialData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FirmManagingOfficialData(
      id: serializer.fromJson<int>(json['id']),
      recordType: $FirmManagingOfficialTable.$converterrecordTypen
          .fromJson(serializer.fromJson<int?>(json['recordType'])),
      officalName1: serializer.fromJson<String?>(json['officalName1']),
      officalTitle1: serializer.fromJson<String?>(json['officalTitle1']),
      officalPhone1: serializer.fromJson<String?>(json['officalPhone1']),
      officalExt1: serializer.fromJson<String?>(json['officalExt1']),
      officalFax1: serializer.fromJson<String?>(json['officalFax1']),
      officalEmail1: serializer.fromJson<String?>(json['officalEmail1']),
      officalMobile1: serializer.fromJson<String?>(json['officalMobile1']),
      receiveMobileMessages1:
          serializer.fromJson<bool?>(json['receiveMobileMessages1']),
      officalName2: serializer.fromJson<String?>(json['officalName2']),
      officalTitle2: serializer.fromJson<String?>(json['officalTitle2']),
      officalPhone2: serializer.fromJson<String?>(json['officalPhone2']),
      officalExt2: serializer.fromJson<String?>(json['officalExt2']),
      officalFax2: serializer.fromJson<String?>(json['officalFax2']),
      officalEmail2: serializer.fromJson<String?>(json['officalEmail2']),
      officalMobile2: serializer.fromJson<String?>(json['officalMobile2']),
      receiveMobileMessages2:
          serializer.fromJson<bool?>(json['receiveMobileMessages2']),
      managingOfficialsInFirm:
          serializer.fromJson<bool?>(json['managingOfficialsInFirm']),
      sameAsOwnerInfo: serializer.fromJson<bool?>(json['sameAsOwnerInfo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordType': serializer.toJson<int?>(
          $FirmManagingOfficialTable.$converterrecordTypen.toJson(recordType)),
      'officalName1': serializer.toJson<String?>(officalName1),
      'officalTitle1': serializer.toJson<String?>(officalTitle1),
      'officalPhone1': serializer.toJson<String?>(officalPhone1),
      'officalExt1': serializer.toJson<String?>(officalExt1),
      'officalFax1': serializer.toJson<String?>(officalFax1),
      'officalEmail1': serializer.toJson<String?>(officalEmail1),
      'officalMobile1': serializer.toJson<String?>(officalMobile1),
      'receiveMobileMessages1':
          serializer.toJson<bool?>(receiveMobileMessages1),
      'officalName2': serializer.toJson<String?>(officalName2),
      'officalTitle2': serializer.toJson<String?>(officalTitle2),
      'officalPhone2': serializer.toJson<String?>(officalPhone2),
      'officalExt2': serializer.toJson<String?>(officalExt2),
      'officalFax2': serializer.toJson<String?>(officalFax2),
      'officalEmail2': serializer.toJson<String?>(officalEmail2),
      'officalMobile2': serializer.toJson<String?>(officalMobile2),
      'receiveMobileMessages2':
          serializer.toJson<bool?>(receiveMobileMessages2),
      'managingOfficialsInFirm':
          serializer.toJson<bool?>(managingOfficialsInFirm),
      'sameAsOwnerInfo': serializer.toJson<bool?>(sameAsOwnerInfo),
    };
  }

  FirmManagingOfficialData copyWith(
          {int? id,
          Value<RecordType?> recordType = const Value.absent(),
          Value<String?> officalName1 = const Value.absent(),
          Value<String?> officalTitle1 = const Value.absent(),
          Value<String?> officalPhone1 = const Value.absent(),
          Value<String?> officalExt1 = const Value.absent(),
          Value<String?> officalFax1 = const Value.absent(),
          Value<String?> officalEmail1 = const Value.absent(),
          Value<String?> officalMobile1 = const Value.absent(),
          Value<bool?> receiveMobileMessages1 = const Value.absent(),
          Value<String?> officalName2 = const Value.absent(),
          Value<String?> officalTitle2 = const Value.absent(),
          Value<String?> officalPhone2 = const Value.absent(),
          Value<String?> officalExt2 = const Value.absent(),
          Value<String?> officalFax2 = const Value.absent(),
          Value<String?> officalEmail2 = const Value.absent(),
          Value<String?> officalMobile2 = const Value.absent(),
          Value<bool?> receiveMobileMessages2 = const Value.absent(),
          Value<bool?> managingOfficialsInFirm = const Value.absent(),
          Value<bool?> sameAsOwnerInfo = const Value.absent()}) =>
      FirmManagingOfficialData(
        id: id ?? this.id,
        recordType: recordType.present ? recordType.value : this.recordType,
        officalName1:
            officalName1.present ? officalName1.value : this.officalName1,
        officalTitle1:
            officalTitle1.present ? officalTitle1.value : this.officalTitle1,
        officalPhone1:
            officalPhone1.present ? officalPhone1.value : this.officalPhone1,
        officalExt1: officalExt1.present ? officalExt1.value : this.officalExt1,
        officalFax1: officalFax1.present ? officalFax1.value : this.officalFax1,
        officalEmail1:
            officalEmail1.present ? officalEmail1.value : this.officalEmail1,
        officalMobile1:
            officalMobile1.present ? officalMobile1.value : this.officalMobile1,
        receiveMobileMessages1: receiveMobileMessages1.present
            ? receiveMobileMessages1.value
            : this.receiveMobileMessages1,
        officalName2:
            officalName2.present ? officalName2.value : this.officalName2,
        officalTitle2:
            officalTitle2.present ? officalTitle2.value : this.officalTitle2,
        officalPhone2:
            officalPhone2.present ? officalPhone2.value : this.officalPhone2,
        officalExt2: officalExt2.present ? officalExt2.value : this.officalExt2,
        officalFax2: officalFax2.present ? officalFax2.value : this.officalFax2,
        officalEmail2:
            officalEmail2.present ? officalEmail2.value : this.officalEmail2,
        officalMobile2:
            officalMobile2.present ? officalMobile2.value : this.officalMobile2,
        receiveMobileMessages2: receiveMobileMessages2.present
            ? receiveMobileMessages2.value
            : this.receiveMobileMessages2,
        managingOfficialsInFirm: managingOfficialsInFirm.present
            ? managingOfficialsInFirm.value
            : this.managingOfficialsInFirm,
        sameAsOwnerInfo: sameAsOwnerInfo.present
            ? sameAsOwnerInfo.value
            : this.sameAsOwnerInfo,
      );
  @override
  String toString() {
    return (StringBuffer('FirmManagingOfficialData(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('officalName1: $officalName1, ')
          ..write('officalTitle1: $officalTitle1, ')
          ..write('officalPhone1: $officalPhone1, ')
          ..write('officalExt1: $officalExt1, ')
          ..write('officalFax1: $officalFax1, ')
          ..write('officalEmail1: $officalEmail1, ')
          ..write('officalMobile1: $officalMobile1, ')
          ..write('receiveMobileMessages1: $receiveMobileMessages1, ')
          ..write('officalName2: $officalName2, ')
          ..write('officalTitle2: $officalTitle2, ')
          ..write('officalPhone2: $officalPhone2, ')
          ..write('officalExt2: $officalExt2, ')
          ..write('officalFax2: $officalFax2, ')
          ..write('officalEmail2: $officalEmail2, ')
          ..write('officalMobile2: $officalMobile2, ')
          ..write('receiveMobileMessages2: $receiveMobileMessages2, ')
          ..write('managingOfficialsInFirm: $managingOfficialsInFirm, ')
          ..write('sameAsOwnerInfo: $sameAsOwnerInfo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      recordType,
      officalName1,
      officalTitle1,
      officalPhone1,
      officalExt1,
      officalFax1,
      officalEmail1,
      officalMobile1,
      receiveMobileMessages1,
      officalName2,
      officalTitle2,
      officalPhone2,
      officalExt2,
      officalFax2,
      officalEmail2,
      officalMobile2,
      receiveMobileMessages2,
      managingOfficialsInFirm,
      sameAsOwnerInfo);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FirmManagingOfficialData &&
          other.id == this.id &&
          other.recordType == this.recordType &&
          other.officalName1 == this.officalName1 &&
          other.officalTitle1 == this.officalTitle1 &&
          other.officalPhone1 == this.officalPhone1 &&
          other.officalExt1 == this.officalExt1 &&
          other.officalFax1 == this.officalFax1 &&
          other.officalEmail1 == this.officalEmail1 &&
          other.officalMobile1 == this.officalMobile1 &&
          other.receiveMobileMessages1 == this.receiveMobileMessages1 &&
          other.officalName2 == this.officalName2 &&
          other.officalTitle2 == this.officalTitle2 &&
          other.officalPhone2 == this.officalPhone2 &&
          other.officalExt2 == this.officalExt2 &&
          other.officalFax2 == this.officalFax2 &&
          other.officalEmail2 == this.officalEmail2 &&
          other.officalMobile2 == this.officalMobile2 &&
          other.receiveMobileMessages2 == this.receiveMobileMessages2 &&
          other.managingOfficialsInFirm == this.managingOfficialsInFirm &&
          other.sameAsOwnerInfo == this.sameAsOwnerInfo);
}

class FirmManagingOfficialCompanion
    extends UpdateCompanion<FirmManagingOfficialData> {
  final Value<int> id;
  final Value<RecordType?> recordType;
  final Value<String?> officalName1;
  final Value<String?> officalTitle1;
  final Value<String?> officalPhone1;
  final Value<String?> officalExt1;
  final Value<String?> officalFax1;
  final Value<String?> officalEmail1;
  final Value<String?> officalMobile1;
  final Value<bool?> receiveMobileMessages1;
  final Value<String?> officalName2;
  final Value<String?> officalTitle2;
  final Value<String?> officalPhone2;
  final Value<String?> officalExt2;
  final Value<String?> officalFax2;
  final Value<String?> officalEmail2;
  final Value<String?> officalMobile2;
  final Value<bool?> receiveMobileMessages2;
  final Value<bool?> managingOfficialsInFirm;
  final Value<bool?> sameAsOwnerInfo;
  final Value<int> rowid;
  const FirmManagingOfficialCompanion({
    this.id = const Value.absent(),
    this.recordType = const Value.absent(),
    this.officalName1 = const Value.absent(),
    this.officalTitle1 = const Value.absent(),
    this.officalPhone1 = const Value.absent(),
    this.officalExt1 = const Value.absent(),
    this.officalFax1 = const Value.absent(),
    this.officalEmail1 = const Value.absent(),
    this.officalMobile1 = const Value.absent(),
    this.receiveMobileMessages1 = const Value.absent(),
    this.officalName2 = const Value.absent(),
    this.officalTitle2 = const Value.absent(),
    this.officalPhone2 = const Value.absent(),
    this.officalExt2 = const Value.absent(),
    this.officalFax2 = const Value.absent(),
    this.officalEmail2 = const Value.absent(),
    this.officalMobile2 = const Value.absent(),
    this.receiveMobileMessages2 = const Value.absent(),
    this.managingOfficialsInFirm = const Value.absent(),
    this.sameAsOwnerInfo = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FirmManagingOfficialCompanion.insert({
    required int id,
    this.recordType = const Value.absent(),
    this.officalName1 = const Value.absent(),
    this.officalTitle1 = const Value.absent(),
    this.officalPhone1 = const Value.absent(),
    this.officalExt1 = const Value.absent(),
    this.officalFax1 = const Value.absent(),
    this.officalEmail1 = const Value.absent(),
    this.officalMobile1 = const Value.absent(),
    this.receiveMobileMessages1 = const Value.absent(),
    this.officalName2 = const Value.absent(),
    this.officalTitle2 = const Value.absent(),
    this.officalPhone2 = const Value.absent(),
    this.officalExt2 = const Value.absent(),
    this.officalFax2 = const Value.absent(),
    this.officalEmail2 = const Value.absent(),
    this.officalMobile2 = const Value.absent(),
    this.receiveMobileMessages2 = const Value.absent(),
    this.managingOfficialsInFirm = const Value.absent(),
    this.sameAsOwnerInfo = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<FirmManagingOfficialData> custom({
    Expression<int>? id,
    Expression<int>? recordType,
    Expression<String>? officalName1,
    Expression<String>? officalTitle1,
    Expression<String>? officalPhone1,
    Expression<String>? officalExt1,
    Expression<String>? officalFax1,
    Expression<String>? officalEmail1,
    Expression<String>? officalMobile1,
    Expression<bool>? receiveMobileMessages1,
    Expression<String>? officalName2,
    Expression<String>? officalTitle2,
    Expression<String>? officalPhone2,
    Expression<String>? officalExt2,
    Expression<String>? officalFax2,
    Expression<String>? officalEmail2,
    Expression<String>? officalMobile2,
    Expression<bool>? receiveMobileMessages2,
    Expression<bool>? managingOfficialsInFirm,
    Expression<bool>? sameAsOwnerInfo,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordType != null) 'record_type': recordType,
      if (officalName1 != null) 'offical_name1': officalName1,
      if (officalTitle1 != null) 'offical_title1': officalTitle1,
      if (officalPhone1 != null) 'offical_phone1': officalPhone1,
      if (officalExt1 != null) 'offical_ext1': officalExt1,
      if (officalFax1 != null) 'offical_fax1': officalFax1,
      if (officalEmail1 != null) 'offical_email1': officalEmail1,
      if (officalMobile1 != null) 'offical_mobile1': officalMobile1,
      if (receiveMobileMessages1 != null)
        'receive_mobile_messages1': receiveMobileMessages1,
      if (officalName2 != null) 'offical_name2': officalName2,
      if (officalTitle2 != null) 'offical_title2': officalTitle2,
      if (officalPhone2 != null) 'offical_phone2': officalPhone2,
      if (officalExt2 != null) 'offical_ext2': officalExt2,
      if (officalFax2 != null) 'offical_fax2': officalFax2,
      if (officalEmail2 != null) 'offical_email2': officalEmail2,
      if (officalMobile2 != null) 'offical_mobile2': officalMobile2,
      if (receiveMobileMessages2 != null)
        'receive_mobile_messages2': receiveMobileMessages2,
      if (managingOfficialsInFirm != null)
        'managing_officials_in_firm': managingOfficialsInFirm,
      if (sameAsOwnerInfo != null) 'same_as_owner_info': sameAsOwnerInfo,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FirmManagingOfficialCompanion copyWith(
      {Value<int>? id,
      Value<RecordType?>? recordType,
      Value<String?>? officalName1,
      Value<String?>? officalTitle1,
      Value<String?>? officalPhone1,
      Value<String?>? officalExt1,
      Value<String?>? officalFax1,
      Value<String?>? officalEmail1,
      Value<String?>? officalMobile1,
      Value<bool?>? receiveMobileMessages1,
      Value<String?>? officalName2,
      Value<String?>? officalTitle2,
      Value<String?>? officalPhone2,
      Value<String?>? officalExt2,
      Value<String?>? officalFax2,
      Value<String?>? officalEmail2,
      Value<String?>? officalMobile2,
      Value<bool?>? receiveMobileMessages2,
      Value<bool?>? managingOfficialsInFirm,
      Value<bool?>? sameAsOwnerInfo,
      Value<int>? rowid}) {
    return FirmManagingOfficialCompanion(
      id: id ?? this.id,
      recordType: recordType ?? this.recordType,
      officalName1: officalName1 ?? this.officalName1,
      officalTitle1: officalTitle1 ?? this.officalTitle1,
      officalPhone1: officalPhone1 ?? this.officalPhone1,
      officalExt1: officalExt1 ?? this.officalExt1,
      officalFax1: officalFax1 ?? this.officalFax1,
      officalEmail1: officalEmail1 ?? this.officalEmail1,
      officalMobile1: officalMobile1 ?? this.officalMobile1,
      receiveMobileMessages1:
          receiveMobileMessages1 ?? this.receiveMobileMessages1,
      officalName2: officalName2 ?? this.officalName2,
      officalTitle2: officalTitle2 ?? this.officalTitle2,
      officalPhone2: officalPhone2 ?? this.officalPhone2,
      officalExt2: officalExt2 ?? this.officalExt2,
      officalFax2: officalFax2 ?? this.officalFax2,
      officalEmail2: officalEmail2 ?? this.officalEmail2,
      officalMobile2: officalMobile2 ?? this.officalMobile2,
      receiveMobileMessages2:
          receiveMobileMessages2 ?? this.receiveMobileMessages2,
      managingOfficialsInFirm:
          managingOfficialsInFirm ?? this.managingOfficialsInFirm,
      sameAsOwnerInfo: sameAsOwnerInfo ?? this.sameAsOwnerInfo,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordType.present) {
      final converter = $FirmManagingOfficialTable.$converterrecordTypen;

      map['record_type'] = Variable<int>(converter.toSql(recordType.value));
    }
    if (officalName1.present) {
      map['offical_name1'] = Variable<String>(officalName1.value);
    }
    if (officalTitle1.present) {
      map['offical_title1'] = Variable<String>(officalTitle1.value);
    }
    if (officalPhone1.present) {
      map['offical_phone1'] = Variable<String>(officalPhone1.value);
    }
    if (officalExt1.present) {
      map['offical_ext1'] = Variable<String>(officalExt1.value);
    }
    if (officalFax1.present) {
      map['offical_fax1'] = Variable<String>(officalFax1.value);
    }
    if (officalEmail1.present) {
      map['offical_email1'] = Variable<String>(officalEmail1.value);
    }
    if (officalMobile1.present) {
      map['offical_mobile1'] = Variable<String>(officalMobile1.value);
    }
    if (receiveMobileMessages1.present) {
      map['receive_mobile_messages1'] =
          Variable<bool>(receiveMobileMessages1.value);
    }
    if (officalName2.present) {
      map['offical_name2'] = Variable<String>(officalName2.value);
    }
    if (officalTitle2.present) {
      map['offical_title2'] = Variable<String>(officalTitle2.value);
    }
    if (officalPhone2.present) {
      map['offical_phone2'] = Variable<String>(officalPhone2.value);
    }
    if (officalExt2.present) {
      map['offical_ext2'] = Variable<String>(officalExt2.value);
    }
    if (officalFax2.present) {
      map['offical_fax2'] = Variable<String>(officalFax2.value);
    }
    if (officalEmail2.present) {
      map['offical_email2'] = Variable<String>(officalEmail2.value);
    }
    if (officalMobile2.present) {
      map['offical_mobile2'] = Variable<String>(officalMobile2.value);
    }
    if (receiveMobileMessages2.present) {
      map['receive_mobile_messages2'] =
          Variable<bool>(receiveMobileMessages2.value);
    }
    if (managingOfficialsInFirm.present) {
      map['managing_officials_in_firm'] =
          Variable<bool>(managingOfficialsInFirm.value);
    }
    if (sameAsOwnerInfo.present) {
      map['same_as_owner_info'] = Variable<bool>(sameAsOwnerInfo.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FirmManagingOfficialCompanion(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('officalName1: $officalName1, ')
          ..write('officalTitle1: $officalTitle1, ')
          ..write('officalPhone1: $officalPhone1, ')
          ..write('officalExt1: $officalExt1, ')
          ..write('officalFax1: $officalFax1, ')
          ..write('officalEmail1: $officalEmail1, ')
          ..write('officalMobile1: $officalMobile1, ')
          ..write('receiveMobileMessages1: $receiveMobileMessages1, ')
          ..write('officalName2: $officalName2, ')
          ..write('officalTitle2: $officalTitle2, ')
          ..write('officalPhone2: $officalPhone2, ')
          ..write('officalExt2: $officalExt2, ')
          ..write('officalFax2: $officalFax2, ')
          ..write('officalEmail2: $officalEmail2, ')
          ..write('officalMobile2: $officalMobile2, ')
          ..write('receiveMobileMessages2: $receiveMobileMessages2, ')
          ..write('managingOfficialsInFirm: $managingOfficialsInFirm, ')
          ..write('sameAsOwnerInfo: $sameAsOwnerInfo, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FirmOrganizationStructTable extends FirmOrganizationStruct
    with TableInfo<$FirmOrganizationStructTable, FirmOrganizationStructData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FirmOrganizationStructTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<RecordType?, int> recordType =
      GeneratedColumn<int>('record_type', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<RecordType?>(
              $FirmOrganizationStructTable.$converterrecordTypen);
  @override
  late final GeneratedColumn<String> organizationName = GeneratedColumn<String>(
      'organization_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> organizationType = GeneratedColumn<String>(
      'organization_type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> organizationAddress1 =
      GeneratedColumn<String>('organization_address1', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> organizationAddress2 =
      GeneratedColumn<String>('organization_address2', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> organizationCity = GeneratedColumn<String>(
      'organization_city', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> organizationState =
      GeneratedColumn<String>('organization_state', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> organizationZipCode =
      GeneratedColumn<String>('organization_zip_code', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> organizationCounty =
      GeneratedColumn<String>('organization_county', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> sameAsFirmName = GeneratedColumn<bool>(
      'same_as_firm_name', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("same_as_firm_name" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> sameAsPhysicalAddress =
      GeneratedColumn<bool>('same_as_physical_address', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("same_as_physical_address" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> sameAsMailingAddress = GeneratedColumn<bool>(
      'same_as_mailing_address', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("same_as_mailing_address" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        recordType,
        organizationName,
        organizationType,
        organizationAddress1,
        organizationAddress2,
        organizationCity,
        organizationState,
        organizationZipCode,
        organizationCounty,
        sameAsFirmName,
        sameAsPhysicalAddress,
        sameAsMailingAddress
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'firm_organization_struct';
  @override
  Set<GeneratedColumn> get $primaryKey => {id, recordType};
  @override
  FirmOrganizationStructData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FirmOrganizationStructData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      recordType: $FirmOrganizationStructTable.$converterrecordTypen.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}record_type'])),
      organizationName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}organization_name']),
      organizationType: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}organization_type']),
      organizationAddress1: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}organization_address1']),
      organizationAddress2: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}organization_address2']),
      organizationCity: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}organization_city']),
      organizationState: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}organization_state']),
      organizationZipCode: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}organization_zip_code']),
      organizationCounty: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}organization_county']),
      sameAsFirmName: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}same_as_firm_name']),
      sameAsPhysicalAddress: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}same_as_physical_address']),
      sameAsMailingAddress: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}same_as_mailing_address']),
    );
  }

  @override
  $FirmOrganizationStructTable createAlias(String alias) {
    return $FirmOrganizationStructTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RecordType, int, int> $converterrecordType =
      const EnumIndexConverter<RecordType>(RecordType.values);
  static JsonTypeConverter2<RecordType?, int?, int?> $converterrecordTypen =
      JsonTypeConverter2.asNullable($converterrecordType);
}

class FirmOrganizationStructData
    extends DataClassBehavioral<FirmOrganizationStructData>
    implements Insertable<FirmOrganizationStructData> {
  final int id;
  final RecordType? recordType;
  final String? organizationName;
  final String? organizationType;
  final String? organizationAddress1;
  final String? organizationAddress2;
  final String? organizationCity;
  final String? organizationState;
  final String? organizationZipCode;
  final String? organizationCounty;
  final bool? sameAsFirmName;
  final bool? sameAsPhysicalAddress;
  final bool? sameAsMailingAddress;
  const FirmOrganizationStructData(
      {required this.id,
      this.recordType,
      this.organizationName,
      this.organizationType,
      this.organizationAddress1,
      this.organizationAddress2,
      this.organizationCity,
      this.organizationState,
      this.organizationZipCode,
      this.organizationCounty,
      this.sameAsFirmName,
      this.sameAsPhysicalAddress,
      this.sameAsMailingAddress});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || recordType != null) {
      final converter = $FirmOrganizationStructTable.$converterrecordTypen;
      map['record_type'] = Variable<int>(converter.toSql(recordType));
    }
    if (!nullToAbsent || organizationName != null) {
      map['organization_name'] = Variable<String>(organizationName);
    }
    if (!nullToAbsent || organizationType != null) {
      map['organization_type'] = Variable<String>(organizationType);
    }
    if (!nullToAbsent || organizationAddress1 != null) {
      map['organization_address1'] = Variable<String>(organizationAddress1);
    }
    if (!nullToAbsent || organizationAddress2 != null) {
      map['organization_address2'] = Variable<String>(organizationAddress2);
    }
    if (!nullToAbsent || organizationCity != null) {
      map['organization_city'] = Variable<String>(organizationCity);
    }
    if (!nullToAbsent || organizationState != null) {
      map['organization_state'] = Variable<String>(organizationState);
    }
    if (!nullToAbsent || organizationZipCode != null) {
      map['organization_zip_code'] = Variable<String>(organizationZipCode);
    }
    if (!nullToAbsent || organizationCounty != null) {
      map['organization_county'] = Variable<String>(organizationCounty);
    }
    if (!nullToAbsent || sameAsFirmName != null) {
      map['same_as_firm_name'] = Variable<bool>(sameAsFirmName);
    }
    if (!nullToAbsent || sameAsPhysicalAddress != null) {
      map['same_as_physical_address'] = Variable<bool>(sameAsPhysicalAddress);
    }
    if (!nullToAbsent || sameAsMailingAddress != null) {
      map['same_as_mailing_address'] = Variable<bool>(sameAsMailingAddress);
    }
    return map;
  }

  FirmOrganizationStructCompanion toCompanion(bool nullToAbsent) {
    return FirmOrganizationStructCompanion(
      id: Value(id),
      recordType: recordType == null && nullToAbsent
          ? const Value.absent()
          : Value(recordType),
      organizationName: organizationName == null && nullToAbsent
          ? const Value.absent()
          : Value(organizationName),
      organizationType: organizationType == null && nullToAbsent
          ? const Value.absent()
          : Value(organizationType),
      organizationAddress1: organizationAddress1 == null && nullToAbsent
          ? const Value.absent()
          : Value(organizationAddress1),
      organizationAddress2: organizationAddress2 == null && nullToAbsent
          ? const Value.absent()
          : Value(organizationAddress2),
      organizationCity: organizationCity == null && nullToAbsent
          ? const Value.absent()
          : Value(organizationCity),
      organizationState: organizationState == null && nullToAbsent
          ? const Value.absent()
          : Value(organizationState),
      organizationZipCode: organizationZipCode == null && nullToAbsent
          ? const Value.absent()
          : Value(organizationZipCode),
      organizationCounty: organizationCounty == null && nullToAbsent
          ? const Value.absent()
          : Value(organizationCounty),
      sameAsFirmName: sameAsFirmName == null && nullToAbsent
          ? const Value.absent()
          : Value(sameAsFirmName),
      sameAsPhysicalAddress: sameAsPhysicalAddress == null && nullToAbsent
          ? const Value.absent()
          : Value(sameAsPhysicalAddress),
      sameAsMailingAddress: sameAsMailingAddress == null && nullToAbsent
          ? const Value.absent()
          : Value(sameAsMailingAddress),
    );
  }

  factory FirmOrganizationStructData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FirmOrganizationStructData(
      id: serializer.fromJson<int>(json['id']),
      recordType: $FirmOrganizationStructTable.$converterrecordTypen
          .fromJson(serializer.fromJson<int?>(json['recordType'])),
      organizationName: serializer.fromJson<String?>(json['organizationName']),
      organizationType: serializer.fromJson<String?>(json['organizationType']),
      organizationAddress1:
          serializer.fromJson<String?>(json['organizationAddress1']),
      organizationAddress2:
          serializer.fromJson<String?>(json['organizationAddress2']),
      organizationCity: serializer.fromJson<String?>(json['organizationCity']),
      organizationState:
          serializer.fromJson<String?>(json['organizationState']),
      organizationZipCode:
          serializer.fromJson<String?>(json['organizationZipCode']),
      organizationCounty:
          serializer.fromJson<String?>(json['organizationCounty']),
      sameAsFirmName: serializer.fromJson<bool?>(json['sameAsFirmName']),
      sameAsPhysicalAddress:
          serializer.fromJson<bool?>(json['sameAsPhysicalAddress']),
      sameAsMailingAddress:
          serializer.fromJson<bool?>(json['sameAsMailingAddress']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordType': serializer.toJson<int?>($FirmOrganizationStructTable
          .$converterrecordTypen
          .toJson(recordType)),
      'organizationName': serializer.toJson<String?>(organizationName),
      'organizationType': serializer.toJson<String?>(organizationType),
      'organizationAddress1': serializer.toJson<String?>(organizationAddress1),
      'organizationAddress2': serializer.toJson<String?>(organizationAddress2),
      'organizationCity': serializer.toJson<String?>(organizationCity),
      'organizationState': serializer.toJson<String?>(organizationState),
      'organizationZipCode': serializer.toJson<String?>(organizationZipCode),
      'organizationCounty': serializer.toJson<String?>(organizationCounty),
      'sameAsFirmName': serializer.toJson<bool?>(sameAsFirmName),
      'sameAsPhysicalAddress': serializer.toJson<bool?>(sameAsPhysicalAddress),
      'sameAsMailingAddress': serializer.toJson<bool?>(sameAsMailingAddress),
    };
  }

  FirmOrganizationStructData copyWith(
          {int? id,
          Value<RecordType?> recordType = const Value.absent(),
          Value<String?> organizationName = const Value.absent(),
          Value<String?> organizationType = const Value.absent(),
          Value<String?> organizationAddress1 = const Value.absent(),
          Value<String?> organizationAddress2 = const Value.absent(),
          Value<String?> organizationCity = const Value.absent(),
          Value<String?> organizationState = const Value.absent(),
          Value<String?> organizationZipCode = const Value.absent(),
          Value<String?> organizationCounty = const Value.absent(),
          Value<bool?> sameAsFirmName = const Value.absent(),
          Value<bool?> sameAsPhysicalAddress = const Value.absent(),
          Value<bool?> sameAsMailingAddress = const Value.absent()}) =>
      FirmOrganizationStructData(
        id: id ?? this.id,
        recordType: recordType.present ? recordType.value : this.recordType,
        organizationName: organizationName.present
            ? organizationName.value
            : this.organizationName,
        organizationType: organizationType.present
            ? organizationType.value
            : this.organizationType,
        organizationAddress1: organizationAddress1.present
            ? organizationAddress1.value
            : this.organizationAddress1,
        organizationAddress2: organizationAddress2.present
            ? organizationAddress2.value
            : this.organizationAddress2,
        organizationCity: organizationCity.present
            ? organizationCity.value
            : this.organizationCity,
        organizationState: organizationState.present
            ? organizationState.value
            : this.organizationState,
        organizationZipCode: organizationZipCode.present
            ? organizationZipCode.value
            : this.organizationZipCode,
        organizationCounty: organizationCounty.present
            ? organizationCounty.value
            : this.organizationCounty,
        sameAsFirmName:
            sameAsFirmName.present ? sameAsFirmName.value : this.sameAsFirmName,
        sameAsPhysicalAddress: sameAsPhysicalAddress.present
            ? sameAsPhysicalAddress.value
            : this.sameAsPhysicalAddress,
        sameAsMailingAddress: sameAsMailingAddress.present
            ? sameAsMailingAddress.value
            : this.sameAsMailingAddress,
      );
  @override
  String toString() {
    return (StringBuffer('FirmOrganizationStructData(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('organizationName: $organizationName, ')
          ..write('organizationType: $organizationType, ')
          ..write('organizationAddress1: $organizationAddress1, ')
          ..write('organizationAddress2: $organizationAddress2, ')
          ..write('organizationCity: $organizationCity, ')
          ..write('organizationState: $organizationState, ')
          ..write('organizationZipCode: $organizationZipCode, ')
          ..write('organizationCounty: $organizationCounty, ')
          ..write('sameAsFirmName: $sameAsFirmName, ')
          ..write('sameAsPhysicalAddress: $sameAsPhysicalAddress, ')
          ..write('sameAsMailingAddress: $sameAsMailingAddress')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      recordType,
      organizationName,
      organizationType,
      organizationAddress1,
      organizationAddress2,
      organizationCity,
      organizationState,
      organizationZipCode,
      organizationCounty,
      sameAsFirmName,
      sameAsPhysicalAddress,
      sameAsMailingAddress);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FirmOrganizationStructData &&
          other.id == this.id &&
          other.recordType == this.recordType &&
          other.organizationName == this.organizationName &&
          other.organizationType == this.organizationType &&
          other.organizationAddress1 == this.organizationAddress1 &&
          other.organizationAddress2 == this.organizationAddress2 &&
          other.organizationCity == this.organizationCity &&
          other.organizationState == this.organizationState &&
          other.organizationZipCode == this.organizationZipCode &&
          other.organizationCounty == this.organizationCounty &&
          other.sameAsFirmName == this.sameAsFirmName &&
          other.sameAsPhysicalAddress == this.sameAsPhysicalAddress &&
          other.sameAsMailingAddress == this.sameAsMailingAddress);
}

class FirmOrganizationStructCompanion
    extends UpdateCompanion<FirmOrganizationStructData> {
  final Value<int> id;
  final Value<RecordType?> recordType;
  final Value<String?> organizationName;
  final Value<String?> organizationType;
  final Value<String?> organizationAddress1;
  final Value<String?> organizationAddress2;
  final Value<String?> organizationCity;
  final Value<String?> organizationState;
  final Value<String?> organizationZipCode;
  final Value<String?> organizationCounty;
  final Value<bool?> sameAsFirmName;
  final Value<bool?> sameAsPhysicalAddress;
  final Value<bool?> sameAsMailingAddress;
  final Value<int> rowid;
  const FirmOrganizationStructCompanion({
    this.id = const Value.absent(),
    this.recordType = const Value.absent(),
    this.organizationName = const Value.absent(),
    this.organizationType = const Value.absent(),
    this.organizationAddress1 = const Value.absent(),
    this.organizationAddress2 = const Value.absent(),
    this.organizationCity = const Value.absent(),
    this.organizationState = const Value.absent(),
    this.organizationZipCode = const Value.absent(),
    this.organizationCounty = const Value.absent(),
    this.sameAsFirmName = const Value.absent(),
    this.sameAsPhysicalAddress = const Value.absent(),
    this.sameAsMailingAddress = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FirmOrganizationStructCompanion.insert({
    required int id,
    this.recordType = const Value.absent(),
    this.organizationName = const Value.absent(),
    this.organizationType = const Value.absent(),
    this.organizationAddress1 = const Value.absent(),
    this.organizationAddress2 = const Value.absent(),
    this.organizationCity = const Value.absent(),
    this.organizationState = const Value.absent(),
    this.organizationZipCode = const Value.absent(),
    this.organizationCounty = const Value.absent(),
    this.sameAsFirmName = const Value.absent(),
    this.sameAsPhysicalAddress = const Value.absent(),
    this.sameAsMailingAddress = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<FirmOrganizationStructData> custom({
    Expression<int>? id,
    Expression<int>? recordType,
    Expression<String>? organizationName,
    Expression<String>? organizationType,
    Expression<String>? organizationAddress1,
    Expression<String>? organizationAddress2,
    Expression<String>? organizationCity,
    Expression<String>? organizationState,
    Expression<String>? organizationZipCode,
    Expression<String>? organizationCounty,
    Expression<bool>? sameAsFirmName,
    Expression<bool>? sameAsPhysicalAddress,
    Expression<bool>? sameAsMailingAddress,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordType != null) 'record_type': recordType,
      if (organizationName != null) 'organization_name': organizationName,
      if (organizationType != null) 'organization_type': organizationType,
      if (organizationAddress1 != null)
        'organization_address1': organizationAddress1,
      if (organizationAddress2 != null)
        'organization_address2': organizationAddress2,
      if (organizationCity != null) 'organization_city': organizationCity,
      if (organizationState != null) 'organization_state': organizationState,
      if (organizationZipCode != null)
        'organization_zip_code': organizationZipCode,
      if (organizationCounty != null) 'organization_county': organizationCounty,
      if (sameAsFirmName != null) 'same_as_firm_name': sameAsFirmName,
      if (sameAsPhysicalAddress != null)
        'same_as_physical_address': sameAsPhysicalAddress,
      if (sameAsMailingAddress != null)
        'same_as_mailing_address': sameAsMailingAddress,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FirmOrganizationStructCompanion copyWith(
      {Value<int>? id,
      Value<RecordType?>? recordType,
      Value<String?>? organizationName,
      Value<String?>? organizationType,
      Value<String?>? organizationAddress1,
      Value<String?>? organizationAddress2,
      Value<String?>? organizationCity,
      Value<String?>? organizationState,
      Value<String?>? organizationZipCode,
      Value<String?>? organizationCounty,
      Value<bool?>? sameAsFirmName,
      Value<bool?>? sameAsPhysicalAddress,
      Value<bool?>? sameAsMailingAddress,
      Value<int>? rowid}) {
    return FirmOrganizationStructCompanion(
      id: id ?? this.id,
      recordType: recordType ?? this.recordType,
      organizationName: organizationName ?? this.organizationName,
      organizationType: organizationType ?? this.organizationType,
      organizationAddress1: organizationAddress1 ?? this.organizationAddress1,
      organizationAddress2: organizationAddress2 ?? this.organizationAddress2,
      organizationCity: organizationCity ?? this.organizationCity,
      organizationState: organizationState ?? this.organizationState,
      organizationZipCode: organizationZipCode ?? this.organizationZipCode,
      organizationCounty: organizationCounty ?? this.organizationCounty,
      sameAsFirmName: sameAsFirmName ?? this.sameAsFirmName,
      sameAsPhysicalAddress:
          sameAsPhysicalAddress ?? this.sameAsPhysicalAddress,
      sameAsMailingAddress: sameAsMailingAddress ?? this.sameAsMailingAddress,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordType.present) {
      final converter = $FirmOrganizationStructTable.$converterrecordTypen;

      map['record_type'] = Variable<int>(converter.toSql(recordType.value));
    }
    if (organizationName.present) {
      map['organization_name'] = Variable<String>(organizationName.value);
    }
    if (organizationType.present) {
      map['organization_type'] = Variable<String>(organizationType.value);
    }
    if (organizationAddress1.present) {
      map['organization_address1'] =
          Variable<String>(organizationAddress1.value);
    }
    if (organizationAddress2.present) {
      map['organization_address2'] =
          Variable<String>(organizationAddress2.value);
    }
    if (organizationCity.present) {
      map['organization_city'] = Variable<String>(organizationCity.value);
    }
    if (organizationState.present) {
      map['organization_state'] = Variable<String>(organizationState.value);
    }
    if (organizationZipCode.present) {
      map['organization_zip_code'] =
          Variable<String>(organizationZipCode.value);
    }
    if (organizationCounty.present) {
      map['organization_county'] = Variable<String>(organizationCounty.value);
    }
    if (sameAsFirmName.present) {
      map['same_as_firm_name'] = Variable<bool>(sameAsFirmName.value);
    }
    if (sameAsPhysicalAddress.present) {
      map['same_as_physical_address'] =
          Variable<bool>(sameAsPhysicalAddress.value);
    }
    if (sameAsMailingAddress.present) {
      map['same_as_mailing_address'] =
          Variable<bool>(sameAsMailingAddress.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FirmOrganizationStructCompanion(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('organizationName: $organizationName, ')
          ..write('organizationType: $organizationType, ')
          ..write('organizationAddress1: $organizationAddress1, ')
          ..write('organizationAddress2: $organizationAddress2, ')
          ..write('organizationCity: $organizationCity, ')
          ..write('organizationState: $organizationState, ')
          ..write('organizationZipCode: $organizationZipCode, ')
          ..write('organizationCounty: $organizationCounty, ')
          ..write('sameAsFirmName: $sameAsFirmName, ')
          ..write('sameAsPhysicalAddress: $sameAsPhysicalAddress, ')
          ..write('sameAsMailingAddress: $sameAsMailingAddress, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FirmOwnerInfoTable extends FirmOwnerInfo
    with TableInfo<$FirmOwnerInfoTable, FirmOwnerInfoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FirmOwnerInfoTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<RecordType?, int> recordType =
      GeneratedColumn<int>('record_type', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<RecordType?>(
              $FirmOwnerInfoTable.$converterrecordTypen);
  @override
  late final GeneratedColumn<bool> updateInfo = GeneratedColumn<bool>(
      'update_info', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("update_info" IN (0, 1))'));
  @override
  late final GeneratedColumn<DateTime> dateOfOwnershipUpdate =
      GeneratedColumn<DateTime>('date_of_ownership_update', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<int> ownerContactId = GeneratedColumn<int>(
      'owner_contact_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> ownerName = GeneratedColumn<String>(
      'owner_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> ownerTitle = GeneratedColumn<String>(
      'owner_title', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> ownerPhone = GeneratedColumn<String>(
      'owner_phone', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> ownerExt = GeneratedColumn<String>(
      'owner_ext', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> ownerFax = GeneratedColumn<String>(
      'owner_fax', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> ownerEmail = GeneratedColumn<String>(
      'owner_email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> ownerMobile = GeneratedColumn<String>(
      'owner_mobile', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> receiveMobileMessages =
      GeneratedColumn<bool>('receive_mobile_messages', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("receive_mobile_messages" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        recordType,
        updateInfo,
        dateOfOwnershipUpdate,
        ownerContactId,
        ownerName,
        ownerTitle,
        ownerPhone,
        ownerExt,
        ownerFax,
        ownerEmail,
        ownerMobile,
        receiveMobileMessages
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'firm_owner_info';
  @override
  Set<GeneratedColumn> get $primaryKey => {id, recordType};
  @override
  FirmOwnerInfoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FirmOwnerInfoData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      recordType: $FirmOwnerInfoTable.$converterrecordTypen.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}record_type'])),
      updateInfo: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}update_info']),
      dateOfOwnershipUpdate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}date_of_ownership_update']),
      ownerContactId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}owner_contact_id']),
      ownerName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}owner_name']),
      ownerTitle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}owner_title']),
      ownerPhone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}owner_phone']),
      ownerExt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}owner_ext']),
      ownerFax: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}owner_fax']),
      ownerEmail: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}owner_email']),
      ownerMobile: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}owner_mobile']),
      receiveMobileMessages: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}receive_mobile_messages']),
    );
  }

  @override
  $FirmOwnerInfoTable createAlias(String alias) {
    return $FirmOwnerInfoTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RecordType, int, int> $converterrecordType =
      const EnumIndexConverter<RecordType>(RecordType.values);
  static JsonTypeConverter2<RecordType?, int?, int?> $converterrecordTypen =
      JsonTypeConverter2.asNullable($converterrecordType);
}

class FirmOwnerInfoData extends DataClassBehavioral<FirmOwnerInfoData>
    implements Insertable<FirmOwnerInfoData> {
  final int id;
  final RecordType? recordType;
  final bool? updateInfo;
  final DateTime? dateOfOwnershipUpdate;
  final int? ownerContactId;
  final String? ownerName;
  final String? ownerTitle;
  final String? ownerPhone;
  final String? ownerExt;
  final String? ownerFax;
  final String? ownerEmail;
  final String? ownerMobile;
  final bool? receiveMobileMessages;
  const FirmOwnerInfoData(
      {required this.id,
      this.recordType,
      this.updateInfo,
      this.dateOfOwnershipUpdate,
      this.ownerContactId,
      this.ownerName,
      this.ownerTitle,
      this.ownerPhone,
      this.ownerExt,
      this.ownerFax,
      this.ownerEmail,
      this.ownerMobile,
      this.receiveMobileMessages});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || recordType != null) {
      final converter = $FirmOwnerInfoTable.$converterrecordTypen;
      map['record_type'] = Variable<int>(converter.toSql(recordType));
    }
    if (!nullToAbsent || updateInfo != null) {
      map['update_info'] = Variable<bool>(updateInfo);
    }
    if (!nullToAbsent || dateOfOwnershipUpdate != null) {
      map['date_of_ownership_update'] =
          Variable<DateTime>(dateOfOwnershipUpdate);
    }
    if (!nullToAbsent || ownerContactId != null) {
      map['owner_contact_id'] = Variable<int>(ownerContactId);
    }
    if (!nullToAbsent || ownerName != null) {
      map['owner_name'] = Variable<String>(ownerName);
    }
    if (!nullToAbsent || ownerTitle != null) {
      map['owner_title'] = Variable<String>(ownerTitle);
    }
    if (!nullToAbsent || ownerPhone != null) {
      map['owner_phone'] = Variable<String>(ownerPhone);
    }
    if (!nullToAbsent || ownerExt != null) {
      map['owner_ext'] = Variable<String>(ownerExt);
    }
    if (!nullToAbsent || ownerFax != null) {
      map['owner_fax'] = Variable<String>(ownerFax);
    }
    if (!nullToAbsent || ownerEmail != null) {
      map['owner_email'] = Variable<String>(ownerEmail);
    }
    if (!nullToAbsent || ownerMobile != null) {
      map['owner_mobile'] = Variable<String>(ownerMobile);
    }
    if (!nullToAbsent || receiveMobileMessages != null) {
      map['receive_mobile_messages'] = Variable<bool>(receiveMobileMessages);
    }
    return map;
  }

  FirmOwnerInfoCompanion toCompanion(bool nullToAbsent) {
    return FirmOwnerInfoCompanion(
      id: Value(id),
      recordType: recordType == null && nullToAbsent
          ? const Value.absent()
          : Value(recordType),
      updateInfo: updateInfo == null && nullToAbsent
          ? const Value.absent()
          : Value(updateInfo),
      dateOfOwnershipUpdate: dateOfOwnershipUpdate == null && nullToAbsent
          ? const Value.absent()
          : Value(dateOfOwnershipUpdate),
      ownerContactId: ownerContactId == null && nullToAbsent
          ? const Value.absent()
          : Value(ownerContactId),
      ownerName: ownerName == null && nullToAbsent
          ? const Value.absent()
          : Value(ownerName),
      ownerTitle: ownerTitle == null && nullToAbsent
          ? const Value.absent()
          : Value(ownerTitle),
      ownerPhone: ownerPhone == null && nullToAbsent
          ? const Value.absent()
          : Value(ownerPhone),
      ownerExt: ownerExt == null && nullToAbsent
          ? const Value.absent()
          : Value(ownerExt),
      ownerFax: ownerFax == null && nullToAbsent
          ? const Value.absent()
          : Value(ownerFax),
      ownerEmail: ownerEmail == null && nullToAbsent
          ? const Value.absent()
          : Value(ownerEmail),
      ownerMobile: ownerMobile == null && nullToAbsent
          ? const Value.absent()
          : Value(ownerMobile),
      receiveMobileMessages: receiveMobileMessages == null && nullToAbsent
          ? const Value.absent()
          : Value(receiveMobileMessages),
    );
  }

  factory FirmOwnerInfoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FirmOwnerInfoData(
      id: serializer.fromJson<int>(json['id']),
      recordType: $FirmOwnerInfoTable.$converterrecordTypen
          .fromJson(serializer.fromJson<int?>(json['recordType'])),
      updateInfo: serializer.fromJson<bool?>(json['updateInfo']),
      dateOfOwnershipUpdate:
          serializer.fromJson<DateTime?>(json['dateOfOwnershipUpdate']),
      ownerContactId: serializer.fromJson<int?>(json['ownerContactId']),
      ownerName: serializer.fromJson<String?>(json['ownerName']),
      ownerTitle: serializer.fromJson<String?>(json['ownerTitle']),
      ownerPhone: serializer.fromJson<String?>(json['ownerPhone']),
      ownerExt: serializer.fromJson<String?>(json['ownerExt']),
      ownerFax: serializer.fromJson<String?>(json['ownerFax']),
      ownerEmail: serializer.fromJson<String?>(json['ownerEmail']),
      ownerMobile: serializer.fromJson<String?>(json['ownerMobile']),
      receiveMobileMessages:
          serializer.fromJson<bool?>(json['receiveMobileMessages']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordType': serializer.toJson<int?>(
          $FirmOwnerInfoTable.$converterrecordTypen.toJson(recordType)),
      'updateInfo': serializer.toJson<bool?>(updateInfo),
      'dateOfOwnershipUpdate':
          serializer.toJson<DateTime?>(dateOfOwnershipUpdate),
      'ownerContactId': serializer.toJson<int?>(ownerContactId),
      'ownerName': serializer.toJson<String?>(ownerName),
      'ownerTitle': serializer.toJson<String?>(ownerTitle),
      'ownerPhone': serializer.toJson<String?>(ownerPhone),
      'ownerExt': serializer.toJson<String?>(ownerExt),
      'ownerFax': serializer.toJson<String?>(ownerFax),
      'ownerEmail': serializer.toJson<String?>(ownerEmail),
      'ownerMobile': serializer.toJson<String?>(ownerMobile),
      'receiveMobileMessages': serializer.toJson<bool?>(receiveMobileMessages),
    };
  }

  FirmOwnerInfoData copyWith(
          {int? id,
          Value<RecordType?> recordType = const Value.absent(),
          Value<bool?> updateInfo = const Value.absent(),
          Value<DateTime?> dateOfOwnershipUpdate = const Value.absent(),
          Value<int?> ownerContactId = const Value.absent(),
          Value<String?> ownerName = const Value.absent(),
          Value<String?> ownerTitle = const Value.absent(),
          Value<String?> ownerPhone = const Value.absent(),
          Value<String?> ownerExt = const Value.absent(),
          Value<String?> ownerFax = const Value.absent(),
          Value<String?> ownerEmail = const Value.absent(),
          Value<String?> ownerMobile = const Value.absent(),
          Value<bool?> receiveMobileMessages = const Value.absent()}) =>
      FirmOwnerInfoData(
        id: id ?? this.id,
        recordType: recordType.present ? recordType.value : this.recordType,
        updateInfo: updateInfo.present ? updateInfo.value : this.updateInfo,
        dateOfOwnershipUpdate: dateOfOwnershipUpdate.present
            ? dateOfOwnershipUpdate.value
            : this.dateOfOwnershipUpdate,
        ownerContactId:
            ownerContactId.present ? ownerContactId.value : this.ownerContactId,
        ownerName: ownerName.present ? ownerName.value : this.ownerName,
        ownerTitle: ownerTitle.present ? ownerTitle.value : this.ownerTitle,
        ownerPhone: ownerPhone.present ? ownerPhone.value : this.ownerPhone,
        ownerExt: ownerExt.present ? ownerExt.value : this.ownerExt,
        ownerFax: ownerFax.present ? ownerFax.value : this.ownerFax,
        ownerEmail: ownerEmail.present ? ownerEmail.value : this.ownerEmail,
        ownerMobile: ownerMobile.present ? ownerMobile.value : this.ownerMobile,
        receiveMobileMessages: receiveMobileMessages.present
            ? receiveMobileMessages.value
            : this.receiveMobileMessages,
      );
  @override
  String toString() {
    return (StringBuffer('FirmOwnerInfoData(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('updateInfo: $updateInfo, ')
          ..write('dateOfOwnershipUpdate: $dateOfOwnershipUpdate, ')
          ..write('ownerContactId: $ownerContactId, ')
          ..write('ownerName: $ownerName, ')
          ..write('ownerTitle: $ownerTitle, ')
          ..write('ownerPhone: $ownerPhone, ')
          ..write('ownerExt: $ownerExt, ')
          ..write('ownerFax: $ownerFax, ')
          ..write('ownerEmail: $ownerEmail, ')
          ..write('ownerMobile: $ownerMobile, ')
          ..write('receiveMobileMessages: $receiveMobileMessages')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      recordType,
      updateInfo,
      dateOfOwnershipUpdate,
      ownerContactId,
      ownerName,
      ownerTitle,
      ownerPhone,
      ownerExt,
      ownerFax,
      ownerEmail,
      ownerMobile,
      receiveMobileMessages);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FirmOwnerInfoData &&
          other.id == this.id &&
          other.recordType == this.recordType &&
          other.updateInfo == this.updateInfo &&
          other.dateOfOwnershipUpdate == this.dateOfOwnershipUpdate &&
          other.ownerContactId == this.ownerContactId &&
          other.ownerName == this.ownerName &&
          other.ownerTitle == this.ownerTitle &&
          other.ownerPhone == this.ownerPhone &&
          other.ownerExt == this.ownerExt &&
          other.ownerFax == this.ownerFax &&
          other.ownerEmail == this.ownerEmail &&
          other.ownerMobile == this.ownerMobile &&
          other.receiveMobileMessages == this.receiveMobileMessages);
}

class FirmOwnerInfoCompanion extends UpdateCompanion<FirmOwnerInfoData> {
  final Value<int> id;
  final Value<RecordType?> recordType;
  final Value<bool?> updateInfo;
  final Value<DateTime?> dateOfOwnershipUpdate;
  final Value<int?> ownerContactId;
  final Value<String?> ownerName;
  final Value<String?> ownerTitle;
  final Value<String?> ownerPhone;
  final Value<String?> ownerExt;
  final Value<String?> ownerFax;
  final Value<String?> ownerEmail;
  final Value<String?> ownerMobile;
  final Value<bool?> receiveMobileMessages;
  final Value<int> rowid;
  const FirmOwnerInfoCompanion({
    this.id = const Value.absent(),
    this.recordType = const Value.absent(),
    this.updateInfo = const Value.absent(),
    this.dateOfOwnershipUpdate = const Value.absent(),
    this.ownerContactId = const Value.absent(),
    this.ownerName = const Value.absent(),
    this.ownerTitle = const Value.absent(),
    this.ownerPhone = const Value.absent(),
    this.ownerExt = const Value.absent(),
    this.ownerFax = const Value.absent(),
    this.ownerEmail = const Value.absent(),
    this.ownerMobile = const Value.absent(),
    this.receiveMobileMessages = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FirmOwnerInfoCompanion.insert({
    required int id,
    this.recordType = const Value.absent(),
    this.updateInfo = const Value.absent(),
    this.dateOfOwnershipUpdate = const Value.absent(),
    this.ownerContactId = const Value.absent(),
    this.ownerName = const Value.absent(),
    this.ownerTitle = const Value.absent(),
    this.ownerPhone = const Value.absent(),
    this.ownerExt = const Value.absent(),
    this.ownerFax = const Value.absent(),
    this.ownerEmail = const Value.absent(),
    this.ownerMobile = const Value.absent(),
    this.receiveMobileMessages = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<FirmOwnerInfoData> custom({
    Expression<int>? id,
    Expression<int>? recordType,
    Expression<bool>? updateInfo,
    Expression<DateTime>? dateOfOwnershipUpdate,
    Expression<int>? ownerContactId,
    Expression<String>? ownerName,
    Expression<String>? ownerTitle,
    Expression<String>? ownerPhone,
    Expression<String>? ownerExt,
    Expression<String>? ownerFax,
    Expression<String>? ownerEmail,
    Expression<String>? ownerMobile,
    Expression<bool>? receiveMobileMessages,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordType != null) 'record_type': recordType,
      if (updateInfo != null) 'update_info': updateInfo,
      if (dateOfOwnershipUpdate != null)
        'date_of_ownership_update': dateOfOwnershipUpdate,
      if (ownerContactId != null) 'owner_contact_id': ownerContactId,
      if (ownerName != null) 'owner_name': ownerName,
      if (ownerTitle != null) 'owner_title': ownerTitle,
      if (ownerPhone != null) 'owner_phone': ownerPhone,
      if (ownerExt != null) 'owner_ext': ownerExt,
      if (ownerFax != null) 'owner_fax': ownerFax,
      if (ownerEmail != null) 'owner_email': ownerEmail,
      if (ownerMobile != null) 'owner_mobile': ownerMobile,
      if (receiveMobileMessages != null)
        'receive_mobile_messages': receiveMobileMessages,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FirmOwnerInfoCompanion copyWith(
      {Value<int>? id,
      Value<RecordType?>? recordType,
      Value<bool?>? updateInfo,
      Value<DateTime?>? dateOfOwnershipUpdate,
      Value<int?>? ownerContactId,
      Value<String?>? ownerName,
      Value<String?>? ownerTitle,
      Value<String?>? ownerPhone,
      Value<String?>? ownerExt,
      Value<String?>? ownerFax,
      Value<String?>? ownerEmail,
      Value<String?>? ownerMobile,
      Value<bool?>? receiveMobileMessages,
      Value<int>? rowid}) {
    return FirmOwnerInfoCompanion(
      id: id ?? this.id,
      recordType: recordType ?? this.recordType,
      updateInfo: updateInfo ?? this.updateInfo,
      dateOfOwnershipUpdate:
          dateOfOwnershipUpdate ?? this.dateOfOwnershipUpdate,
      ownerContactId: ownerContactId ?? this.ownerContactId,
      ownerName: ownerName ?? this.ownerName,
      ownerTitle: ownerTitle ?? this.ownerTitle,
      ownerPhone: ownerPhone ?? this.ownerPhone,
      ownerExt: ownerExt ?? this.ownerExt,
      ownerFax: ownerFax ?? this.ownerFax,
      ownerEmail: ownerEmail ?? this.ownerEmail,
      ownerMobile: ownerMobile ?? this.ownerMobile,
      receiveMobileMessages:
          receiveMobileMessages ?? this.receiveMobileMessages,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordType.present) {
      final converter = $FirmOwnerInfoTable.$converterrecordTypen;

      map['record_type'] = Variable<int>(converter.toSql(recordType.value));
    }
    if (updateInfo.present) {
      map['update_info'] = Variable<bool>(updateInfo.value);
    }
    if (dateOfOwnershipUpdate.present) {
      map['date_of_ownership_update'] =
          Variable<DateTime>(dateOfOwnershipUpdate.value);
    }
    if (ownerContactId.present) {
      map['owner_contact_id'] = Variable<int>(ownerContactId.value);
    }
    if (ownerName.present) {
      map['owner_name'] = Variable<String>(ownerName.value);
    }
    if (ownerTitle.present) {
      map['owner_title'] = Variable<String>(ownerTitle.value);
    }
    if (ownerPhone.present) {
      map['owner_phone'] = Variable<String>(ownerPhone.value);
    }
    if (ownerExt.present) {
      map['owner_ext'] = Variable<String>(ownerExt.value);
    }
    if (ownerFax.present) {
      map['owner_fax'] = Variable<String>(ownerFax.value);
    }
    if (ownerEmail.present) {
      map['owner_email'] = Variable<String>(ownerEmail.value);
    }
    if (ownerMobile.present) {
      map['owner_mobile'] = Variable<String>(ownerMobile.value);
    }
    if (receiveMobileMessages.present) {
      map['receive_mobile_messages'] =
          Variable<bool>(receiveMobileMessages.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FirmOwnerInfoCompanion(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('updateInfo: $updateInfo, ')
          ..write('dateOfOwnershipUpdate: $dateOfOwnershipUpdate, ')
          ..write('ownerContactId: $ownerContactId, ')
          ..write('ownerName: $ownerName, ')
          ..write('ownerTitle: $ownerTitle, ')
          ..write('ownerPhone: $ownerPhone, ')
          ..write('ownerExt: $ownerExt, ')
          ..write('ownerFax: $ownerFax, ')
          ..write('ownerEmail: $ownerEmail, ')
          ..write('ownerMobile: $ownerMobile, ')
          ..write('receiveMobileMessages: $receiveMobileMessages, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FirmProductInfoTable extends FirmProductInfo
    with TableInfo<$FirmProductInfoTable, FirmProductInfoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FirmProductInfoTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<RecordType?, int> recordType =
      GeneratedColumn<int>('record_type', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<RecordType?>(
              $FirmProductInfoTable.$converterrecordTypen);
  @override
  late final GeneratedColumnWithTypeConverter<MultiString?, String>
      productsHandled = GeneratedColumn<String>(
              'products_handled', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<MultiString?>(
              $FirmProductInfoTable.$converterproductsHandled);
  @override
  late final GeneratedColumnWithTypeConverter<MultiString?, String>
      amenableProducts = GeneratedColumn<String>(
              'amenable_products', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<MultiString?>(
              $FirmProductInfoTable.$converteramenableProducts);
  @override
  late final GeneratedColumnWithTypeConverter<MultiString?, String>
      productOrigin = GeneratedColumn<String>(
              'product_origin', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<MultiString?>(
              $FirmProductInfoTable.$converterproductOrigin);
  @override
  late final GeneratedColumn<String> countryOfOrigin = GeneratedColumn<String>(
      'country_of_origin', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        recordType,
        productsHandled,
        amenableProducts,
        productOrigin,
        countryOfOrigin
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'firm_product_info';
  @override
  Set<GeneratedColumn> get $primaryKey => {id, recordType};
  @override
  FirmProductInfoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FirmProductInfoData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      recordType: $FirmProductInfoTable.$converterrecordTypen.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}record_type'])),
      productsHandled: $FirmProductInfoTable.$converterproductsHandled.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}products_handled'])),
      amenableProducts: $FirmProductInfoTable.$converteramenableProducts
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}amenable_products'])),
      productOrigin: $FirmProductInfoTable.$converterproductOrigin.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}product_origin'])),
      countryOfOrigin: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}country_of_origin']),
    );
  }

  @override
  $FirmProductInfoTable createAlias(String alias) {
    return $FirmProductInfoTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RecordType, int, int> $converterrecordType =
      const EnumIndexConverter<RecordType>(RecordType.values);
  static JsonTypeConverter2<RecordType?, int?, int?> $converterrecordTypen =
      JsonTypeConverter2.asNullable($converterrecordType);
  static TypeConverter<MultiString?, String?> $converterproductsHandled =
      const MultiStringConverter();
  static TypeConverter<MultiString?, String?> $converteramenableProducts =
      const MultiStringConverter();
  static TypeConverter<MultiString?, String?> $converterproductOrigin =
      const MultiStringConverter();
}

class FirmProductInfoData extends DataClassBehavioral<FirmProductInfoData>
    implements Insertable<FirmProductInfoData> {
  final int id;
  final RecordType? recordType;
  final MultiString? productsHandled;
  final MultiString? amenableProducts;
  final MultiString? productOrigin;
  final String? countryOfOrigin;
  const FirmProductInfoData(
      {required this.id,
      this.recordType,
      this.productsHandled,
      this.amenableProducts,
      this.productOrigin,
      this.countryOfOrigin});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || recordType != null) {
      final converter = $FirmProductInfoTable.$converterrecordTypen;
      map['record_type'] = Variable<int>(converter.toSql(recordType));
    }
    if (!nullToAbsent || productsHandled != null) {
      final converter = $FirmProductInfoTable.$converterproductsHandled;
      map['products_handled'] =
          Variable<String>(converter.toSql(productsHandled));
    }
    if (!nullToAbsent || amenableProducts != null) {
      final converter = $FirmProductInfoTable.$converteramenableProducts;
      map['amenable_products'] =
          Variable<String>(converter.toSql(amenableProducts));
    }
    if (!nullToAbsent || productOrigin != null) {
      final converter = $FirmProductInfoTable.$converterproductOrigin;
      map['product_origin'] = Variable<String>(converter.toSql(productOrigin));
    }
    if (!nullToAbsent || countryOfOrigin != null) {
      map['country_of_origin'] = Variable<String>(countryOfOrigin);
    }
    return map;
  }

  FirmProductInfoCompanion toCompanion(bool nullToAbsent) {
    return FirmProductInfoCompanion(
      id: Value(id),
      recordType: recordType == null && nullToAbsent
          ? const Value.absent()
          : Value(recordType),
      productsHandled: productsHandled == null && nullToAbsent
          ? const Value.absent()
          : Value(productsHandled),
      amenableProducts: amenableProducts == null && nullToAbsent
          ? const Value.absent()
          : Value(amenableProducts),
      productOrigin: productOrigin == null && nullToAbsent
          ? const Value.absent()
          : Value(productOrigin),
      countryOfOrigin: countryOfOrigin == null && nullToAbsent
          ? const Value.absent()
          : Value(countryOfOrigin),
    );
  }

  factory FirmProductInfoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FirmProductInfoData(
      id: serializer.fromJson<int>(json['id']),
      recordType: $FirmProductInfoTable.$converterrecordTypen
          .fromJson(serializer.fromJson<int?>(json['recordType'])),
      productsHandled:
          serializer.fromJson<MultiString?>(json['productsHandled']),
      amenableProducts:
          serializer.fromJson<MultiString?>(json['amenableProducts']),
      productOrigin: serializer.fromJson<MultiString?>(json['productOrigin']),
      countryOfOrigin: serializer.fromJson<String?>(json['countryOfOrigin']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordType': serializer.toJson<int?>(
          $FirmProductInfoTable.$converterrecordTypen.toJson(recordType)),
      'productsHandled': serializer.toJson<MultiString?>(productsHandled),
      'amenableProducts': serializer.toJson<MultiString?>(amenableProducts),
      'productOrigin': serializer.toJson<MultiString?>(productOrigin),
      'countryOfOrigin': serializer.toJson<String?>(countryOfOrigin),
    };
  }

  FirmProductInfoData copyWith(
          {int? id,
          Value<RecordType?> recordType = const Value.absent(),
          Value<MultiString?> productsHandled = const Value.absent(),
          Value<MultiString?> amenableProducts = const Value.absent(),
          Value<MultiString?> productOrigin = const Value.absent(),
          Value<String?> countryOfOrigin = const Value.absent()}) =>
      FirmProductInfoData(
        id: id ?? this.id,
        recordType: recordType.present ? recordType.value : this.recordType,
        productsHandled: productsHandled.present
            ? productsHandled.value
            : this.productsHandled,
        amenableProducts: amenableProducts.present
            ? amenableProducts.value
            : this.amenableProducts,
        productOrigin:
            productOrigin.present ? productOrigin.value : this.productOrigin,
        countryOfOrigin: countryOfOrigin.present
            ? countryOfOrigin.value
            : this.countryOfOrigin,
      );
  @override
  String toString() {
    return (StringBuffer('FirmProductInfoData(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('productsHandled: $productsHandled, ')
          ..write('amenableProducts: $amenableProducts, ')
          ..write('productOrigin: $productOrigin, ')
          ..write('countryOfOrigin: $countryOfOrigin')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, recordType, productsHandled,
      amenableProducts, productOrigin, countryOfOrigin);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FirmProductInfoData &&
          other.id == this.id &&
          other.recordType == this.recordType &&
          other.productsHandled == this.productsHandled &&
          other.amenableProducts == this.amenableProducts &&
          other.productOrigin == this.productOrigin &&
          other.countryOfOrigin == this.countryOfOrigin);
}

class FirmProductInfoCompanion extends UpdateCompanion<FirmProductInfoData> {
  final Value<int> id;
  final Value<RecordType?> recordType;
  final Value<MultiString?> productsHandled;
  final Value<MultiString?> amenableProducts;
  final Value<MultiString?> productOrigin;
  final Value<String?> countryOfOrigin;
  final Value<int> rowid;
  const FirmProductInfoCompanion({
    this.id = const Value.absent(),
    this.recordType = const Value.absent(),
    this.productsHandled = const Value.absent(),
    this.amenableProducts = const Value.absent(),
    this.productOrigin = const Value.absent(),
    this.countryOfOrigin = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FirmProductInfoCompanion.insert({
    required int id,
    this.recordType = const Value.absent(),
    this.productsHandled = const Value.absent(),
    this.amenableProducts = const Value.absent(),
    this.productOrigin = const Value.absent(),
    this.countryOfOrigin = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<FirmProductInfoData> custom({
    Expression<int>? id,
    Expression<int>? recordType,
    Expression<String>? productsHandled,
    Expression<String>? amenableProducts,
    Expression<String>? productOrigin,
    Expression<String>? countryOfOrigin,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordType != null) 'record_type': recordType,
      if (productsHandled != null) 'products_handled': productsHandled,
      if (amenableProducts != null) 'amenable_products': amenableProducts,
      if (productOrigin != null) 'product_origin': productOrigin,
      if (countryOfOrigin != null) 'country_of_origin': countryOfOrigin,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FirmProductInfoCompanion copyWith(
      {Value<int>? id,
      Value<RecordType?>? recordType,
      Value<MultiString?>? productsHandled,
      Value<MultiString?>? amenableProducts,
      Value<MultiString?>? productOrigin,
      Value<String?>? countryOfOrigin,
      Value<int>? rowid}) {
    return FirmProductInfoCompanion(
      id: id ?? this.id,
      recordType: recordType ?? this.recordType,
      productsHandled: productsHandled ?? this.productsHandled,
      amenableProducts: amenableProducts ?? this.amenableProducts,
      productOrigin: productOrigin ?? this.productOrigin,
      countryOfOrigin: countryOfOrigin ?? this.countryOfOrigin,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordType.present) {
      final converter = $FirmProductInfoTable.$converterrecordTypen;

      map['record_type'] = Variable<int>(converter.toSql(recordType.value));
    }
    if (productsHandled.present) {
      final converter = $FirmProductInfoTable.$converterproductsHandled;

      map['products_handled'] =
          Variable<String>(converter.toSql(productsHandled.value));
    }
    if (amenableProducts.present) {
      final converter = $FirmProductInfoTable.$converteramenableProducts;

      map['amenable_products'] =
          Variable<String>(converter.toSql(amenableProducts.value));
    }
    if (productOrigin.present) {
      final converter = $FirmProductInfoTable.$converterproductOrigin;

      map['product_origin'] =
          Variable<String>(converter.toSql(productOrigin.value));
    }
    if (countryOfOrigin.present) {
      map['country_of_origin'] = Variable<String>(countryOfOrigin.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FirmProductInfoCompanion(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('productsHandled: $productsHandled, ')
          ..write('amenableProducts: $amenableProducts, ')
          ..write('productOrigin: $productOrigin, ')
          ..write('countryOfOrigin: $countryOfOrigin, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalIdTable extends LocalId with TableInfo<$LocalIdTable, LocalIdData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalIdTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  @override
  late final GeneratedColumnWithTypeConverter<Feature, int> feature =
      GeneratedColumn<int>('feature', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<Feature>($LocalIdTable.$converterfeature);
  @override
  List<GeneratedColumn> get $columns => [id, feature];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'localid';
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocalIdData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalIdData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      feature: $LocalIdTable.$converterfeature.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}feature'])!),
    );
  }

  @override
  $LocalIdTable createAlias(String alias) {
    return $LocalIdTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<Feature, int, int> $converterfeature =
      const EnumIndexConverter<Feature>(Feature.values);
}

class LocalIdData extends DataClassBehavioral<LocalIdData>
    implements Insertable<LocalIdData> {
  final int id;
  final Feature feature;
  const LocalIdData({required this.id, required this.feature});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    {
      final converter = $LocalIdTable.$converterfeature;
      map['feature'] = Variable<int>(converter.toSql(feature));
    }
    return map;
  }

  LocalIdCompanion toCompanion(bool nullToAbsent) {
    return LocalIdCompanion(
      id: Value(id),
      feature: Value(feature),
    );
  }

  factory LocalIdData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalIdData(
      id: serializer.fromJson<int>(json['id']),
      feature: $LocalIdTable.$converterfeature
          .fromJson(serializer.fromJson<int>(json['feature'])),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'feature': serializer
          .toJson<int>($LocalIdTable.$converterfeature.toJson(feature)),
    };
  }

  LocalIdData copyWith({int? id, Feature? feature}) => LocalIdData(
        id: id ?? this.id,
        feature: feature ?? this.feature,
      );
  @override
  String toString() {
    return (StringBuffer('LocalIdData(')
          ..write('id: $id, ')
          ..write('feature: $feature')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, feature);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalIdData &&
          other.id == this.id &&
          other.feature == this.feature);
}

class LocalIdCompanion extends UpdateCompanion<LocalIdData> {
  final Value<int> id;
  final Value<Feature> feature;
  const LocalIdCompanion({
    this.id = const Value.absent(),
    this.feature = const Value.absent(),
  });
  LocalIdCompanion.insert({
    this.id = const Value.absent(),
    required Feature feature,
  }) : feature = Value(feature);
  static Insertable<LocalIdData> custom({
    Expression<int>? id,
    Expression<int>? feature,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (feature != null) 'feature': feature,
    });
  }

  LocalIdCompanion copyWith({Value<int>? id, Value<Feature>? feature}) {
    return LocalIdCompanion(
      id: id ?? this.id,
      feature: feature ?? this.feature,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (feature.present) {
      final converter = $LocalIdTable.$converterfeature;

      map['feature'] = Variable<int>(converter.toSql(feature.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalIdCompanion(')
          ..write('id: $id, ')
          ..write('feature: $feature')
          ..write(')'))
        .toString();
  }
}

class $PestControlTable extends PestControl
    with TableInfo<$PestControlTable, PestControlData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PestControlTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<RecordType?, int> recordType =
      GeneratedColumn<int>('record_type', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<RecordType?>($PestControlTable.$converterrecordTypen);
  @override
  late final GeneratedColumnWithTypeConverter<SyncStatus?, int> syncStatus =
      GeneratedColumn<int>('sync_status', aliasedName, true,
              type: DriftSqlType.int, requiredDuringInsert: false)
          .withConverter<SyncStatus?>($PestControlTable.$convertersyncStatusn);
  @override
  late final GeneratedColumn<DateTime> syncTimestamp =
      GeneratedColumn<DateTime>('sync_timestamp', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<int> creatorId = GeneratedColumn<int>(
      'creator_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  late final GeneratedColumnWithTypeConverter<RecordStatus?, int> recordStatus =
      GeneratedColumn<int>('record_status', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<RecordStatus?>(
              $PestControlTable.$converterrecordStatusn);
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> phoneNumber = GeneratedColumn<String>(
      'phone_number', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> phoneNumberExtension =
      GeneratedColumn<String>('phone_number_extension', aliasedName, true,
          additionalChecks: GeneratedColumn.checkTextLength(),
          type: DriftSqlType.string,
          requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> mobilePhoneNumber =
      GeneratedColumn<String>('mobile_phone_number', aliasedName, true,
          additionalChecks: GeneratedColumn.checkTextLength(),
          type: DriftSqlType.string,
          requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> selfAdministered = GeneratedColumn<bool>(
      'self_administered', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("self_administered" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> frequencyOfVisits =
      GeneratedColumn<String>('frequency_of_visits', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        recordType,
        syncStatus,
        syncTimestamp,
        creatorId,
        createdDate,
        recordStatus,
        name,
        phoneNumber,
        phoneNumberExtension,
        mobilePhoneNumber,
        email,
        selfAdministered,
        frequencyOfVisits
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pest_control';
  @override
  Set<GeneratedColumn> get $primaryKey => {id, recordType};
  @override
  PestControlData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PestControlData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      recordType: $PestControlTable.$converterrecordTypen.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}record_type'])),
      syncStatus: $PestControlTable.$convertersyncStatusn.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}sync_status'])),
      syncTimestamp: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}sync_timestamp']),
      creatorId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}creator_id']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
      recordStatus: $PestControlTable.$converterrecordStatusn.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}record_status'])),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      phoneNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone_number']),
      phoneNumberExtension: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}phone_number_extension']),
      mobilePhoneNumber: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}mobile_phone_number']),
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      selfAdministered: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}self_administered']),
      frequencyOfVisits: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}frequency_of_visits']),
    );
  }

  @override
  $PestControlTable createAlias(String alias) {
    return $PestControlTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RecordType, int, int> $converterrecordType =
      const EnumIndexConverter<RecordType>(RecordType.values);
  static JsonTypeConverter2<RecordType?, int?, int?> $converterrecordTypen =
      JsonTypeConverter2.asNullable($converterrecordType);
  static JsonTypeConverter2<SyncStatus, int, int> $convertersyncStatus =
      const EnumIndexConverter<SyncStatus>(SyncStatus.values);
  static JsonTypeConverter2<SyncStatus?, int?, int?> $convertersyncStatusn =
      JsonTypeConverter2.asNullable($convertersyncStatus);
  static JsonTypeConverter2<RecordStatus, int, int> $converterrecordStatus =
      const EnumIndexConverter<RecordStatus>(RecordStatus.values);
  static JsonTypeConverter2<RecordStatus?, int?, int?> $converterrecordStatusn =
      JsonTypeConverter2.asNullable($converterrecordStatus);
}

class PestControlData extends DataClassBehavioral<PestControlData>
    implements Insertable<PestControlData> {
  final int id;
  final RecordType? recordType;
  final SyncStatus? syncStatus;
  final DateTime? syncTimestamp;
  final int? creatorId;
  final DateTime? createdDate;
  final RecordStatus? recordStatus;
  final String? name;
  final String? phoneNumber;
  final String? phoneNumberExtension;
  final String? mobilePhoneNumber;
  final String? email;
  final bool? selfAdministered;
  final String? frequencyOfVisits;
  const PestControlData(
      {required this.id,
      this.recordType,
      this.syncStatus,
      this.syncTimestamp,
      this.creatorId,
      this.createdDate,
      this.recordStatus,
      this.name,
      this.phoneNumber,
      this.phoneNumberExtension,
      this.mobilePhoneNumber,
      this.email,
      this.selfAdministered,
      this.frequencyOfVisits});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || recordType != null) {
      final converter = $PestControlTable.$converterrecordTypen;
      map['record_type'] = Variable<int>(converter.toSql(recordType));
    }
    if (!nullToAbsent || syncStatus != null) {
      final converter = $PestControlTable.$convertersyncStatusn;
      map['sync_status'] = Variable<int>(converter.toSql(syncStatus));
    }
    if (!nullToAbsent || syncTimestamp != null) {
      map['sync_timestamp'] = Variable<DateTime>(syncTimestamp);
    }
    if (!nullToAbsent || creatorId != null) {
      map['creator_id'] = Variable<int>(creatorId);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    if (!nullToAbsent || recordStatus != null) {
      final converter = $PestControlTable.$converterrecordStatusn;
      map['record_status'] = Variable<int>(converter.toSql(recordStatus));
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || phoneNumber != null) {
      map['phone_number'] = Variable<String>(phoneNumber);
    }
    if (!nullToAbsent || phoneNumberExtension != null) {
      map['phone_number_extension'] = Variable<String>(phoneNumberExtension);
    }
    if (!nullToAbsent || mobilePhoneNumber != null) {
      map['mobile_phone_number'] = Variable<String>(mobilePhoneNumber);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || selfAdministered != null) {
      map['self_administered'] = Variable<bool>(selfAdministered);
    }
    if (!nullToAbsent || frequencyOfVisits != null) {
      map['frequency_of_visits'] = Variable<String>(frequencyOfVisits);
    }
    return map;
  }

  PestControlCompanion toCompanion(bool nullToAbsent) {
    return PestControlCompanion(
      id: Value(id),
      recordType: recordType == null && nullToAbsent
          ? const Value.absent()
          : Value(recordType),
      syncStatus: syncStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(syncStatus),
      syncTimestamp: syncTimestamp == null && nullToAbsent
          ? const Value.absent()
          : Value(syncTimestamp),
      creatorId: creatorId == null && nullToAbsent
          ? const Value.absent()
          : Value(creatorId),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
      recordStatus: recordStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(recordStatus),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      phoneNumber: phoneNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(phoneNumber),
      phoneNumberExtension: phoneNumberExtension == null && nullToAbsent
          ? const Value.absent()
          : Value(phoneNumberExtension),
      mobilePhoneNumber: mobilePhoneNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(mobilePhoneNumber),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      selfAdministered: selfAdministered == null && nullToAbsent
          ? const Value.absent()
          : Value(selfAdministered),
      frequencyOfVisits: frequencyOfVisits == null && nullToAbsent
          ? const Value.absent()
          : Value(frequencyOfVisits),
    );
  }

  factory PestControlData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PestControlData(
      id: serializer.fromJson<int>(json['id']),
      recordType: $PestControlTable.$converterrecordTypen
          .fromJson(serializer.fromJson<int?>(json['recordType'])),
      syncStatus: $PestControlTable.$convertersyncStatusn
          .fromJson(serializer.fromJson<int?>(json['syncStatus'])),
      syncTimestamp: serializer.fromJson<DateTime?>(json['syncTimestamp']),
      creatorId: serializer.fromJson<int?>(json['creatorId']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
      recordStatus: $PestControlTable.$converterrecordStatusn
          .fromJson(serializer.fromJson<int?>(json['recordStatus'])),
      name: serializer.fromJson<String?>(json['name']),
      phoneNumber: serializer.fromJson<String?>(json['phoneNumber']),
      phoneNumberExtension:
          serializer.fromJson<String?>(json['phoneNumberExtension']),
      mobilePhoneNumber:
          serializer.fromJson<String?>(json['mobilePhoneNumber']),
      email: serializer.fromJson<String?>(json['email']),
      selfAdministered: serializer.fromJson<bool?>(json['selfAdministered']),
      frequencyOfVisits:
          serializer.fromJson<String?>(json['frequencyOfVisits']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordType': serializer.toJson<int?>(
          $PestControlTable.$converterrecordTypen.toJson(recordType)),
      'syncStatus': serializer.toJson<int?>(
          $PestControlTable.$convertersyncStatusn.toJson(syncStatus)),
      'syncTimestamp': serializer.toJson<DateTime?>(syncTimestamp),
      'creatorId': serializer.toJson<int?>(creatorId),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
      'recordStatus': serializer.toJson<int?>(
          $PestControlTable.$converterrecordStatusn.toJson(recordStatus)),
      'name': serializer.toJson<String?>(name),
      'phoneNumber': serializer.toJson<String?>(phoneNumber),
      'phoneNumberExtension': serializer.toJson<String?>(phoneNumberExtension),
      'mobilePhoneNumber': serializer.toJson<String?>(mobilePhoneNumber),
      'email': serializer.toJson<String?>(email),
      'selfAdministered': serializer.toJson<bool?>(selfAdministered),
      'frequencyOfVisits': serializer.toJson<String?>(frequencyOfVisits),
    };
  }

  PestControlData copyWith(
          {int? id,
          Value<RecordType?> recordType = const Value.absent(),
          Value<SyncStatus?> syncStatus = const Value.absent(),
          Value<DateTime?> syncTimestamp = const Value.absent(),
          Value<int?> creatorId = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent(),
          Value<RecordStatus?> recordStatus = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<String?> phoneNumber = const Value.absent(),
          Value<String?> phoneNumberExtension = const Value.absent(),
          Value<String?> mobilePhoneNumber = const Value.absent(),
          Value<String?> email = const Value.absent(),
          Value<bool?> selfAdministered = const Value.absent(),
          Value<String?> frequencyOfVisits = const Value.absent()}) =>
      PestControlData(
        id: id ?? this.id,
        recordType: recordType.present ? recordType.value : this.recordType,
        syncStatus: syncStatus.present ? syncStatus.value : this.syncStatus,
        syncTimestamp:
            syncTimestamp.present ? syncTimestamp.value : this.syncTimestamp,
        creatorId: creatorId.present ? creatorId.value : this.creatorId,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
        recordStatus:
            recordStatus.present ? recordStatus.value : this.recordStatus,
        name: name.present ? name.value : this.name,
        phoneNumber: phoneNumber.present ? phoneNumber.value : this.phoneNumber,
        phoneNumberExtension: phoneNumberExtension.present
            ? phoneNumberExtension.value
            : this.phoneNumberExtension,
        mobilePhoneNumber: mobilePhoneNumber.present
            ? mobilePhoneNumber.value
            : this.mobilePhoneNumber,
        email: email.present ? email.value : this.email,
        selfAdministered: selfAdministered.present
            ? selfAdministered.value
            : this.selfAdministered,
        frequencyOfVisits: frequencyOfVisits.present
            ? frequencyOfVisits.value
            : this.frequencyOfVisits,
      );
  @override
  String toString() {
    return (StringBuffer('PestControlData(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('syncTimestamp: $syncTimestamp, ')
          ..write('creatorId: $creatorId, ')
          ..write('createdDate: $createdDate, ')
          ..write('recordStatus: $recordStatus, ')
          ..write('name: $name, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('phoneNumberExtension: $phoneNumberExtension, ')
          ..write('mobilePhoneNumber: $mobilePhoneNumber, ')
          ..write('email: $email, ')
          ..write('selfAdministered: $selfAdministered, ')
          ..write('frequencyOfVisits: $frequencyOfVisits')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      recordType,
      syncStatus,
      syncTimestamp,
      creatorId,
      createdDate,
      recordStatus,
      name,
      phoneNumber,
      phoneNumberExtension,
      mobilePhoneNumber,
      email,
      selfAdministered,
      frequencyOfVisits);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PestControlData &&
          other.id == this.id &&
          other.recordType == this.recordType &&
          other.syncStatus == this.syncStatus &&
          other.syncTimestamp == this.syncTimestamp &&
          other.creatorId == this.creatorId &&
          other.createdDate == this.createdDate &&
          other.recordStatus == this.recordStatus &&
          other.name == this.name &&
          other.phoneNumber == this.phoneNumber &&
          other.phoneNumberExtension == this.phoneNumberExtension &&
          other.mobilePhoneNumber == this.mobilePhoneNumber &&
          other.email == this.email &&
          other.selfAdministered == this.selfAdministered &&
          other.frequencyOfVisits == this.frequencyOfVisits);
}

class PestControlCompanion extends UpdateCompanion<PestControlData> {
  final Value<int> id;
  final Value<RecordType?> recordType;
  final Value<SyncStatus?> syncStatus;
  final Value<DateTime?> syncTimestamp;
  final Value<int?> creatorId;
  final Value<DateTime?> createdDate;
  final Value<RecordStatus?> recordStatus;
  final Value<String?> name;
  final Value<String?> phoneNumber;
  final Value<String?> phoneNumberExtension;
  final Value<String?> mobilePhoneNumber;
  final Value<String?> email;
  final Value<bool?> selfAdministered;
  final Value<String?> frequencyOfVisits;
  final Value<int> rowid;
  const PestControlCompanion({
    this.id = const Value.absent(),
    this.recordType = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.syncTimestamp = const Value.absent(),
    this.creatorId = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.recordStatus = const Value.absent(),
    this.name = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.phoneNumberExtension = const Value.absent(),
    this.mobilePhoneNumber = const Value.absent(),
    this.email = const Value.absent(),
    this.selfAdministered = const Value.absent(),
    this.frequencyOfVisits = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PestControlCompanion.insert({
    required int id,
    this.recordType = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.syncTimestamp = const Value.absent(),
    this.creatorId = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.recordStatus = const Value.absent(),
    this.name = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.phoneNumberExtension = const Value.absent(),
    this.mobilePhoneNumber = const Value.absent(),
    this.email = const Value.absent(),
    this.selfAdministered = const Value.absent(),
    this.frequencyOfVisits = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<PestControlData> custom({
    Expression<int>? id,
    Expression<int>? recordType,
    Expression<int>? syncStatus,
    Expression<DateTime>? syncTimestamp,
    Expression<int>? creatorId,
    Expression<DateTime>? createdDate,
    Expression<int>? recordStatus,
    Expression<String>? name,
    Expression<String>? phoneNumber,
    Expression<String>? phoneNumberExtension,
    Expression<String>? mobilePhoneNumber,
    Expression<String>? email,
    Expression<bool>? selfAdministered,
    Expression<String>? frequencyOfVisits,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordType != null) 'record_type': recordType,
      if (syncStatus != null) 'sync_status': syncStatus,
      if (syncTimestamp != null) 'sync_timestamp': syncTimestamp,
      if (creatorId != null) 'creator_id': creatorId,
      if (createdDate != null) 'created_date': createdDate,
      if (recordStatus != null) 'record_status': recordStatus,
      if (name != null) 'name': name,
      if (phoneNumber != null) 'phone_number': phoneNumber,
      if (phoneNumberExtension != null)
        'phone_number_extension': phoneNumberExtension,
      if (mobilePhoneNumber != null) 'mobile_phone_number': mobilePhoneNumber,
      if (email != null) 'email': email,
      if (selfAdministered != null) 'self_administered': selfAdministered,
      if (frequencyOfVisits != null) 'frequency_of_visits': frequencyOfVisits,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PestControlCompanion copyWith(
      {Value<int>? id,
      Value<RecordType?>? recordType,
      Value<SyncStatus?>? syncStatus,
      Value<DateTime?>? syncTimestamp,
      Value<int?>? creatorId,
      Value<DateTime?>? createdDate,
      Value<RecordStatus?>? recordStatus,
      Value<String?>? name,
      Value<String?>? phoneNumber,
      Value<String?>? phoneNumberExtension,
      Value<String?>? mobilePhoneNumber,
      Value<String?>? email,
      Value<bool?>? selfAdministered,
      Value<String?>? frequencyOfVisits,
      Value<int>? rowid}) {
    return PestControlCompanion(
      id: id ?? this.id,
      recordType: recordType ?? this.recordType,
      syncStatus: syncStatus ?? this.syncStatus,
      syncTimestamp: syncTimestamp ?? this.syncTimestamp,
      creatorId: creatorId ?? this.creatorId,
      createdDate: createdDate ?? this.createdDate,
      recordStatus: recordStatus ?? this.recordStatus,
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      phoneNumberExtension: phoneNumberExtension ?? this.phoneNumberExtension,
      mobilePhoneNumber: mobilePhoneNumber ?? this.mobilePhoneNumber,
      email: email ?? this.email,
      selfAdministered: selfAdministered ?? this.selfAdministered,
      frequencyOfVisits: frequencyOfVisits ?? this.frequencyOfVisits,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordType.present) {
      final converter = $PestControlTable.$converterrecordTypen;

      map['record_type'] = Variable<int>(converter.toSql(recordType.value));
    }
    if (syncStatus.present) {
      final converter = $PestControlTable.$convertersyncStatusn;

      map['sync_status'] = Variable<int>(converter.toSql(syncStatus.value));
    }
    if (syncTimestamp.present) {
      map['sync_timestamp'] = Variable<DateTime>(syncTimestamp.value);
    }
    if (creatorId.present) {
      map['creator_id'] = Variable<int>(creatorId.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (recordStatus.present) {
      final converter = $PestControlTable.$converterrecordStatusn;

      map['record_status'] = Variable<int>(converter.toSql(recordStatus.value));
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (phoneNumber.present) {
      map['phone_number'] = Variable<String>(phoneNumber.value);
    }
    if (phoneNumberExtension.present) {
      map['phone_number_extension'] =
          Variable<String>(phoneNumberExtension.value);
    }
    if (mobilePhoneNumber.present) {
      map['mobile_phone_number'] = Variable<String>(mobilePhoneNumber.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (selfAdministered.present) {
      map['self_administered'] = Variable<bool>(selfAdministered.value);
    }
    if (frequencyOfVisits.present) {
      map['frequency_of_visits'] = Variable<String>(frequencyOfVisits.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PestControlCompanion(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('syncTimestamp: $syncTimestamp, ')
          ..write('creatorId: $creatorId, ')
          ..write('createdDate: $createdDate, ')
          ..write('recordStatus: $recordStatus, ')
          ..write('name: $name, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('phoneNumberExtension: $phoneNumberExtension, ')
          ..write('mobilePhoneNumber: $mobilePhoneNumber, ')
          ..write('email: $email, ')
          ..write('selfAdministered: $selfAdministered, ')
          ..write('frequencyOfVisits: $frequencyOfVisits, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PhysicalLocationRefTable extends PhysicalLocationRef
    with TableInfo<$PhysicalLocationRefTable, PhysicalLocationRefData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PhysicalLocationRefTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumnWithTypeConverter<RecordType?, int> recordType =
      GeneratedColumn<int>('record_type', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<RecordType?>(
              $PhysicalLocationRefTable.$converterrecordTypen);
  @override
  late final GeneratedColumn<int> creatorId = GeneratedColumn<int>(
      'creator_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<int> locationId = GeneratedColumn<int>(
      'location_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumn<int> refId = GeneratedColumn<int>(
      'ref_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<LocationRefType, int> refType =
      GeneratedColumn<int>('ref_type', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<LocationRefType>(
              $PhysicalLocationRefTable.$converterrefType);
  @override
  List<GeneratedColumn> get $columns =>
      [recordType, creatorId, createdDate, locationId, refId, refType];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'physical_location_ref';
  @override
  Set<GeneratedColumn> get $primaryKey => {locationId, refId, refType};
  @override
  PhysicalLocationRefData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PhysicalLocationRefData(
      recordType: $PhysicalLocationRefTable.$converterrecordTypen.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}record_type'])),
      creatorId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}creator_id']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
      locationId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}location_id'])!,
      refId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ref_id'])!,
      refType: $PhysicalLocationRefTable.$converterrefType.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}ref_type'])!),
    );
  }

  @override
  $PhysicalLocationRefTable createAlias(String alias) {
    return $PhysicalLocationRefTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RecordType, int, int> $converterrecordType =
      const EnumIndexConverter<RecordType>(RecordType.values);
  static JsonTypeConverter2<RecordType?, int?, int?> $converterrecordTypen =
      JsonTypeConverter2.asNullable($converterrecordType);
  static JsonTypeConverter2<LocationRefType, int, int> $converterrefType =
      const EnumIndexConverter<LocationRefType>(LocationRefType.values);
}

class PhysicalLocationRefData
    extends DataClassBehavioral<PhysicalLocationRefData>
    implements Insertable<PhysicalLocationRefData> {
  final RecordType? recordType;
  final int? creatorId;
  final DateTime? createdDate;
  final int locationId;
  final int refId;
  final LocationRefType refType;
  const PhysicalLocationRefData(
      {this.recordType,
      this.creatorId,
      this.createdDate,
      required this.locationId,
      required this.refId,
      required this.refType});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || recordType != null) {
      final converter = $PhysicalLocationRefTable.$converterrecordTypen;
      map['record_type'] = Variable<int>(converter.toSql(recordType));
    }
    if (!nullToAbsent || creatorId != null) {
      map['creator_id'] = Variable<int>(creatorId);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    map['location_id'] = Variable<int>(locationId);
    map['ref_id'] = Variable<int>(refId);
    {
      final converter = $PhysicalLocationRefTable.$converterrefType;
      map['ref_type'] = Variable<int>(converter.toSql(refType));
    }
    return map;
  }

  PhysicalLocationRefCompanion toCompanion(bool nullToAbsent) {
    return PhysicalLocationRefCompanion(
      recordType: recordType == null && nullToAbsent
          ? const Value.absent()
          : Value(recordType),
      creatorId: creatorId == null && nullToAbsent
          ? const Value.absent()
          : Value(creatorId),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
      locationId: Value(locationId),
      refId: Value(refId),
      refType: Value(refType),
    );
  }

  factory PhysicalLocationRefData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PhysicalLocationRefData(
      recordType: $PhysicalLocationRefTable.$converterrecordTypen
          .fromJson(serializer.fromJson<int?>(json['recordType'])),
      creatorId: serializer.fromJson<int?>(json['creatorId']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
      locationId: serializer.fromJson<int>(json['locationId']),
      refId: serializer.fromJson<int>(json['refId']),
      refType: $PhysicalLocationRefTable.$converterrefType
          .fromJson(serializer.fromJson<int>(json['refType'])),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'recordType': serializer.toJson<int?>(
          $PhysicalLocationRefTable.$converterrecordTypen.toJson(recordType)),
      'creatorId': serializer.toJson<int?>(creatorId),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
      'locationId': serializer.toJson<int>(locationId),
      'refId': serializer.toJson<int>(refId),
      'refType': serializer.toJson<int>(
          $PhysicalLocationRefTable.$converterrefType.toJson(refType)),
    };
  }

  PhysicalLocationRefData copyWith(
          {Value<RecordType?> recordType = const Value.absent(),
          Value<int?> creatorId = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent(),
          int? locationId,
          int? refId,
          LocationRefType? refType}) =>
      PhysicalLocationRefData(
        recordType: recordType.present ? recordType.value : this.recordType,
        creatorId: creatorId.present ? creatorId.value : this.creatorId,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
        locationId: locationId ?? this.locationId,
        refId: refId ?? this.refId,
        refType: refType ?? this.refType,
      );
  @override
  String toString() {
    return (StringBuffer('PhysicalLocationRefData(')
          ..write('recordType: $recordType, ')
          ..write('creatorId: $creatorId, ')
          ..write('createdDate: $createdDate, ')
          ..write('locationId: $locationId, ')
          ..write('refId: $refId, ')
          ..write('refType: $refType')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      recordType, creatorId, createdDate, locationId, refId, refType);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PhysicalLocationRefData &&
          other.recordType == this.recordType &&
          other.creatorId == this.creatorId &&
          other.createdDate == this.createdDate &&
          other.locationId == this.locationId &&
          other.refId == this.refId &&
          other.refType == this.refType);
}

class PhysicalLocationRefCompanion
    extends UpdateCompanion<PhysicalLocationRefData> {
  final Value<RecordType?> recordType;
  final Value<int?> creatorId;
  final Value<DateTime?> createdDate;
  final Value<int> locationId;
  final Value<int> refId;
  final Value<LocationRefType> refType;
  final Value<int> rowid;
  const PhysicalLocationRefCompanion({
    this.recordType = const Value.absent(),
    this.creatorId = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.locationId = const Value.absent(),
    this.refId = const Value.absent(),
    this.refType = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PhysicalLocationRefCompanion.insert({
    this.recordType = const Value.absent(),
    this.creatorId = const Value.absent(),
    this.createdDate = const Value.absent(),
    required int locationId,
    required int refId,
    required LocationRefType refType,
    this.rowid = const Value.absent(),
  })  : locationId = Value(locationId),
        refId = Value(refId),
        refType = Value(refType);
  static Insertable<PhysicalLocationRefData> custom({
    Expression<int>? recordType,
    Expression<int>? creatorId,
    Expression<DateTime>? createdDate,
    Expression<int>? locationId,
    Expression<int>? refId,
    Expression<int>? refType,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (recordType != null) 'record_type': recordType,
      if (creatorId != null) 'creator_id': creatorId,
      if (createdDate != null) 'created_date': createdDate,
      if (locationId != null) 'location_id': locationId,
      if (refId != null) 'ref_id': refId,
      if (refType != null) 'ref_type': refType,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PhysicalLocationRefCompanion copyWith(
      {Value<RecordType?>? recordType,
      Value<int?>? creatorId,
      Value<DateTime?>? createdDate,
      Value<int>? locationId,
      Value<int>? refId,
      Value<LocationRefType>? refType,
      Value<int>? rowid}) {
    return PhysicalLocationRefCompanion(
      recordType: recordType ?? this.recordType,
      creatorId: creatorId ?? this.creatorId,
      createdDate: createdDate ?? this.createdDate,
      locationId: locationId ?? this.locationId,
      refId: refId ?? this.refId,
      refType: refType ?? this.refType,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (recordType.present) {
      final converter = $PhysicalLocationRefTable.$converterrecordTypen;

      map['record_type'] = Variable<int>(converter.toSql(recordType.value));
    }
    if (creatorId.present) {
      map['creator_id'] = Variable<int>(creatorId.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (locationId.present) {
      map['location_id'] = Variable<int>(locationId.value);
    }
    if (refId.present) {
      map['ref_id'] = Variable<int>(refId.value);
    }
    if (refType.present) {
      final converter = $PhysicalLocationRefTable.$converterrefType;

      map['ref_type'] = Variable<int>(converter.toSql(refType.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PhysicalLocationRefCompanion(')
          ..write('recordType: $recordType, ')
          ..write('creatorId: $creatorId, ')
          ..write('createdDate: $createdDate, ')
          ..write('locationId: $locationId, ')
          ..write('refId: $refId, ')
          ..write('refType: $refType, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PhysicalLocationTable extends PhysicalLocation
    with TableInfo<$PhysicalLocationTable, PhysicalLocationData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PhysicalLocationTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  @override
  late final GeneratedColumnWithTypeConverter<RecordType?, int> recordType =
      GeneratedColumn<int>('record_type', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<RecordType?>(
              $PhysicalLocationTable.$converterrecordTypen);
  @override
  late final GeneratedColumn<int> creatorId = GeneratedColumn<int>(
      'creator_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> address1 = GeneratedColumn<String>(
      'address1', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> address2 = GeneratedColumn<String>(
      'address2', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
      'city', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> stateCode = GeneratedColumn<String>(
      'state_code', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> zipCode = GeneratedColumn<String>(
      'zip_code', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> county = GeneratedColumn<String>(
      'county', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> latitude = GeneratedColumn<String>(
      'latitude', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> longitude = GeneratedColumn<String>(
      'longitude', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumnWithTypeConverter<LocationSoundness, int>
      soundness = GeneratedColumn<int>('soundness', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<LocationSoundness>(
              $PhysicalLocationTable.$convertersoundness);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        recordType,
        creatorId,
        createdDate,
        address1,
        address2,
        city,
        stateCode,
        zipCode,
        county,
        latitude,
        longitude,
        soundness
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'physical_location';
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PhysicalLocationData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PhysicalLocationData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      recordType: $PhysicalLocationTable.$converterrecordTypen.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}record_type'])),
      creatorId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}creator_id']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
      address1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address1']),
      address2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address2']),
      city: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}city']),
      stateCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}state_code']),
      zipCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}zip_code']),
      county: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}county']),
      latitude: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}latitude']),
      longitude: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}longitude']),
      soundness: $PhysicalLocationTable.$convertersoundness.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}soundness'])!),
    );
  }

  @override
  $PhysicalLocationTable createAlias(String alias) {
    return $PhysicalLocationTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RecordType, int, int> $converterrecordType =
      const EnumIndexConverter<RecordType>(RecordType.values);
  static JsonTypeConverter2<RecordType?, int?, int?> $converterrecordTypen =
      JsonTypeConverter2.asNullable($converterrecordType);
  static JsonTypeConverter2<LocationSoundness, int, int> $convertersoundness =
      const EnumIndexConverter<LocationSoundness>(LocationSoundness.values);
}

class PhysicalLocationData extends DataClassBehavioral<PhysicalLocationData>
    implements Insertable<PhysicalLocationData> {
  final int id;
  final RecordType? recordType;
  final int? creatorId;
  final DateTime? createdDate;
  final String? address1;
  final String? address2;
  final String? city;
  final String? stateCode;
  final String? zipCode;
  final String? county;
  final String? latitude;
  final String? longitude;
  final LocationSoundness soundness;
  const PhysicalLocationData(
      {required this.id,
      this.recordType,
      this.creatorId,
      this.createdDate,
      this.address1,
      this.address2,
      this.city,
      this.stateCode,
      this.zipCode,
      this.county,
      this.latitude,
      this.longitude,
      required this.soundness});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || recordType != null) {
      final converter = $PhysicalLocationTable.$converterrecordTypen;
      map['record_type'] = Variable<int>(converter.toSql(recordType));
    }
    if (!nullToAbsent || creatorId != null) {
      map['creator_id'] = Variable<int>(creatorId);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    if (!nullToAbsent || address1 != null) {
      map['address1'] = Variable<String>(address1);
    }
    if (!nullToAbsent || address2 != null) {
      map['address2'] = Variable<String>(address2);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String>(city);
    }
    if (!nullToAbsent || stateCode != null) {
      map['state_code'] = Variable<String>(stateCode);
    }
    if (!nullToAbsent || zipCode != null) {
      map['zip_code'] = Variable<String>(zipCode);
    }
    if (!nullToAbsent || county != null) {
      map['county'] = Variable<String>(county);
    }
    if (!nullToAbsent || latitude != null) {
      map['latitude'] = Variable<String>(latitude);
    }
    if (!nullToAbsent || longitude != null) {
      map['longitude'] = Variable<String>(longitude);
    }
    {
      final converter = $PhysicalLocationTable.$convertersoundness;
      map['soundness'] = Variable<int>(converter.toSql(soundness));
    }
    return map;
  }

  PhysicalLocationCompanion toCompanion(bool nullToAbsent) {
    return PhysicalLocationCompanion(
      id: Value(id),
      recordType: recordType == null && nullToAbsent
          ? const Value.absent()
          : Value(recordType),
      creatorId: creatorId == null && nullToAbsent
          ? const Value.absent()
          : Value(creatorId),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
      address1: address1 == null && nullToAbsent
          ? const Value.absent()
          : Value(address1),
      address2: address2 == null && nullToAbsent
          ? const Value.absent()
          : Value(address2),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      stateCode: stateCode == null && nullToAbsent
          ? const Value.absent()
          : Value(stateCode),
      zipCode: zipCode == null && nullToAbsent
          ? const Value.absent()
          : Value(zipCode),
      county:
          county == null && nullToAbsent ? const Value.absent() : Value(county),
      latitude: latitude == null && nullToAbsent
          ? const Value.absent()
          : Value(latitude),
      longitude: longitude == null && nullToAbsent
          ? const Value.absent()
          : Value(longitude),
      soundness: Value(soundness),
    );
  }

  factory PhysicalLocationData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PhysicalLocationData(
      id: serializer.fromJson<int>(json['id']),
      recordType: $PhysicalLocationTable.$converterrecordTypen
          .fromJson(serializer.fromJson<int?>(json['recordType'])),
      creatorId: serializer.fromJson<int?>(json['creatorId']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
      address1: serializer.fromJson<String?>(json['address1']),
      address2: serializer.fromJson<String?>(json['address2']),
      city: serializer.fromJson<String?>(json['city']),
      stateCode: serializer.fromJson<String?>(json['stateCode']),
      zipCode: serializer.fromJson<String?>(json['zipCode']),
      county: serializer.fromJson<String?>(json['county']),
      latitude: serializer.fromJson<String?>(json['latitude']),
      longitude: serializer.fromJson<String?>(json['longitude']),
      soundness: $PhysicalLocationTable.$convertersoundness
          .fromJson(serializer.fromJson<int>(json['soundness'])),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordType': serializer.toJson<int?>(
          $PhysicalLocationTable.$converterrecordTypen.toJson(recordType)),
      'creatorId': serializer.toJson<int?>(creatorId),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
      'address1': serializer.toJson<String?>(address1),
      'address2': serializer.toJson<String?>(address2),
      'city': serializer.toJson<String?>(city),
      'stateCode': serializer.toJson<String?>(stateCode),
      'zipCode': serializer.toJson<String?>(zipCode),
      'county': serializer.toJson<String?>(county),
      'latitude': serializer.toJson<String?>(latitude),
      'longitude': serializer.toJson<String?>(longitude),
      'soundness': serializer.toJson<int>(
          $PhysicalLocationTable.$convertersoundness.toJson(soundness)),
    };
  }

  PhysicalLocationData copyWith(
          {int? id,
          Value<RecordType?> recordType = const Value.absent(),
          Value<int?> creatorId = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent(),
          Value<String?> address1 = const Value.absent(),
          Value<String?> address2 = const Value.absent(),
          Value<String?> city = const Value.absent(),
          Value<String?> stateCode = const Value.absent(),
          Value<String?> zipCode = const Value.absent(),
          Value<String?> county = const Value.absent(),
          Value<String?> latitude = const Value.absent(),
          Value<String?> longitude = const Value.absent(),
          LocationSoundness? soundness}) =>
      PhysicalLocationData(
        id: id ?? this.id,
        recordType: recordType.present ? recordType.value : this.recordType,
        creatorId: creatorId.present ? creatorId.value : this.creatorId,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
        address1: address1.present ? address1.value : this.address1,
        address2: address2.present ? address2.value : this.address2,
        city: city.present ? city.value : this.city,
        stateCode: stateCode.present ? stateCode.value : this.stateCode,
        zipCode: zipCode.present ? zipCode.value : this.zipCode,
        county: county.present ? county.value : this.county,
        latitude: latitude.present ? latitude.value : this.latitude,
        longitude: longitude.present ? longitude.value : this.longitude,
        soundness: soundness ?? this.soundness,
      );
  @override
  String toString() {
    return (StringBuffer('PhysicalLocationData(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('creatorId: $creatorId, ')
          ..write('createdDate: $createdDate, ')
          ..write('address1: $address1, ')
          ..write('address2: $address2, ')
          ..write('city: $city, ')
          ..write('stateCode: $stateCode, ')
          ..write('zipCode: $zipCode, ')
          ..write('county: $county, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('soundness: $soundness')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      recordType,
      creatorId,
      createdDate,
      address1,
      address2,
      city,
      stateCode,
      zipCode,
      county,
      latitude,
      longitude,
      soundness);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PhysicalLocationData &&
          other.id == this.id &&
          other.recordType == this.recordType &&
          other.creatorId == this.creatorId &&
          other.createdDate == this.createdDate &&
          other.address1 == this.address1 &&
          other.address2 == this.address2 &&
          other.city == this.city &&
          other.stateCode == this.stateCode &&
          other.zipCode == this.zipCode &&
          other.county == this.county &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.soundness == this.soundness);
}

class PhysicalLocationCompanion extends UpdateCompanion<PhysicalLocationData> {
  final Value<int> id;
  final Value<RecordType?> recordType;
  final Value<int?> creatorId;
  final Value<DateTime?> createdDate;
  final Value<String?> address1;
  final Value<String?> address2;
  final Value<String?> city;
  final Value<String?> stateCode;
  final Value<String?> zipCode;
  final Value<String?> county;
  final Value<String?> latitude;
  final Value<String?> longitude;
  final Value<LocationSoundness> soundness;
  const PhysicalLocationCompanion({
    this.id = const Value.absent(),
    this.recordType = const Value.absent(),
    this.creatorId = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.address1 = const Value.absent(),
    this.address2 = const Value.absent(),
    this.city = const Value.absent(),
    this.stateCode = const Value.absent(),
    this.zipCode = const Value.absent(),
    this.county = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.soundness = const Value.absent(),
  });
  PhysicalLocationCompanion.insert({
    this.id = const Value.absent(),
    this.recordType = const Value.absent(),
    this.creatorId = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.address1 = const Value.absent(),
    this.address2 = const Value.absent(),
    this.city = const Value.absent(),
    this.stateCode = const Value.absent(),
    this.zipCode = const Value.absent(),
    this.county = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.soundness = const Value.absent(),
  });
  static Insertable<PhysicalLocationData> custom({
    Expression<int>? id,
    Expression<int>? recordType,
    Expression<int>? creatorId,
    Expression<DateTime>? createdDate,
    Expression<String>? address1,
    Expression<String>? address2,
    Expression<String>? city,
    Expression<String>? stateCode,
    Expression<String>? zipCode,
    Expression<String>? county,
    Expression<String>? latitude,
    Expression<String>? longitude,
    Expression<int>? soundness,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordType != null) 'record_type': recordType,
      if (creatorId != null) 'creator_id': creatorId,
      if (createdDate != null) 'created_date': createdDate,
      if (address1 != null) 'address1': address1,
      if (address2 != null) 'address2': address2,
      if (city != null) 'city': city,
      if (stateCode != null) 'state_code': stateCode,
      if (zipCode != null) 'zip_code': zipCode,
      if (county != null) 'county': county,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (soundness != null) 'soundness': soundness,
    });
  }

  PhysicalLocationCompanion copyWith(
      {Value<int>? id,
      Value<RecordType?>? recordType,
      Value<int?>? creatorId,
      Value<DateTime?>? createdDate,
      Value<String?>? address1,
      Value<String?>? address2,
      Value<String?>? city,
      Value<String?>? stateCode,
      Value<String?>? zipCode,
      Value<String?>? county,
      Value<String?>? latitude,
      Value<String?>? longitude,
      Value<LocationSoundness>? soundness}) {
    return PhysicalLocationCompanion(
      id: id ?? this.id,
      recordType: recordType ?? this.recordType,
      creatorId: creatorId ?? this.creatorId,
      createdDate: createdDate ?? this.createdDate,
      address1: address1 ?? this.address1,
      address2: address2 ?? this.address2,
      city: city ?? this.city,
      stateCode: stateCode ?? this.stateCode,
      zipCode: zipCode ?? this.zipCode,
      county: county ?? this.county,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      soundness: soundness ?? this.soundness,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordType.present) {
      final converter = $PhysicalLocationTable.$converterrecordTypen;

      map['record_type'] = Variable<int>(converter.toSql(recordType.value));
    }
    if (creatorId.present) {
      map['creator_id'] = Variable<int>(creatorId.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (address1.present) {
      map['address1'] = Variable<String>(address1.value);
    }
    if (address2.present) {
      map['address2'] = Variable<String>(address2.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (stateCode.present) {
      map['state_code'] = Variable<String>(stateCode.value);
    }
    if (zipCode.present) {
      map['zip_code'] = Variable<String>(zipCode.value);
    }
    if (county.present) {
      map['county'] = Variable<String>(county.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<String>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<String>(longitude.value);
    }
    if (soundness.present) {
      final converter = $PhysicalLocationTable.$convertersoundness;

      map['soundness'] = Variable<int>(converter.toSql(soundness.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PhysicalLocationCompanion(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('creatorId: $creatorId, ')
          ..write('createdDate: $createdDate, ')
          ..write('address1: $address1, ')
          ..write('address2: $address2, ')
          ..write('city: $city, ')
          ..write('stateCode: $stateCode, ')
          ..write('zipCode: $zipCode, ')
          ..write('county: $county, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('soundness: $soundness')
          ..write(')'))
        .toString();
  }
}

class $SurvTable extends Surv with TableInfo<$SurvTable, SurvData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SurvTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<RecordType?, int> recordType =
      GeneratedColumn<int>('record_type', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<RecordType?>($SurvTable.$converterrecordTypen);
  @override
  late final GeneratedColumnWithTypeConverter<SyncStatus?, int> syncStatus =
      GeneratedColumn<int>('sync_status', aliasedName, true,
              type: DriftSqlType.int, requiredDuringInsert: false)
          .withConverter<SyncStatus?>($SurvTable.$convertersyncStatusn);
  @override
  late final GeneratedColumn<DateTime> syncTimestamp =
      GeneratedColumn<DateTime>('sync_timestamp', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<int> creatorId = GeneratedColumn<int>(
      'creator_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  late final GeneratedColumnWithTypeConverter<RecordStatus?, int> recordStatus =
      GeneratedColumn<int>('record_status', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<RecordStatus?>($SurvTable.$converterrecordStatusn);
  @override
  late final GeneratedColumn<int> localId = GeneratedColumn<int>(
      'local_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<int> firmId = GeneratedColumn<int>(
      'firm_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        recordType,
        syncStatus,
        syncTimestamp,
        creatorId,
        createdDate,
        recordStatus,
        localId,
        firmId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'surv';
  @override
  Set<GeneratedColumn> get $primaryKey => {id, recordType};
  @override
  SurvData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SurvData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      recordType: $SurvTable.$converterrecordTypen.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}record_type'])),
      syncStatus: $SurvTable.$convertersyncStatusn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sync_status'])),
      syncTimestamp: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}sync_timestamp']),
      creatorId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}creator_id']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
      recordStatus: $SurvTable.$converterrecordStatusn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}record_status'])),
      localId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}local_id']),
      firmId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}firm_id']),
    );
  }

  @override
  $SurvTable createAlias(String alias) {
    return $SurvTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RecordType, int, int> $converterrecordType =
      const EnumIndexConverter<RecordType>(RecordType.values);
  static JsonTypeConverter2<RecordType?, int?, int?> $converterrecordTypen =
      JsonTypeConverter2.asNullable($converterrecordType);
  static JsonTypeConverter2<SyncStatus, int, int> $convertersyncStatus =
      const EnumIndexConverter<SyncStatus>(SyncStatus.values);
  static JsonTypeConverter2<SyncStatus?, int?, int?> $convertersyncStatusn =
      JsonTypeConverter2.asNullable($convertersyncStatus);
  static JsonTypeConverter2<RecordStatus, int, int> $converterrecordStatus =
      const EnumIndexConverter<RecordStatus>(RecordStatus.values);
  static JsonTypeConverter2<RecordStatus?, int?, int?> $converterrecordStatusn =
      JsonTypeConverter2.asNullable($converterrecordStatus);
}

class SurvData extends DataClassBehavioral<SurvData>
    implements Insertable<SurvData> {
  final int id;
  final RecordType? recordType;
  final SyncStatus? syncStatus;
  final DateTime? syncTimestamp;
  final int? creatorId;
  final DateTime? createdDate;
  final RecordStatus? recordStatus;
  final int? localId;
  final int? firmId;
  const SurvData(
      {required this.id,
      this.recordType,
      this.syncStatus,
      this.syncTimestamp,
      this.creatorId,
      this.createdDate,
      this.recordStatus,
      this.localId,
      this.firmId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || recordType != null) {
      final converter = $SurvTable.$converterrecordTypen;
      map['record_type'] = Variable<int>(converter.toSql(recordType));
    }
    if (!nullToAbsent || syncStatus != null) {
      final converter = $SurvTable.$convertersyncStatusn;
      map['sync_status'] = Variable<int>(converter.toSql(syncStatus));
    }
    if (!nullToAbsent || syncTimestamp != null) {
      map['sync_timestamp'] = Variable<DateTime>(syncTimestamp);
    }
    if (!nullToAbsent || creatorId != null) {
      map['creator_id'] = Variable<int>(creatorId);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    if (!nullToAbsent || recordStatus != null) {
      final converter = $SurvTable.$converterrecordStatusn;
      map['record_status'] = Variable<int>(converter.toSql(recordStatus));
    }
    if (!nullToAbsent || localId != null) {
      map['local_id'] = Variable<int>(localId);
    }
    if (!nullToAbsent || firmId != null) {
      map['firm_id'] = Variable<int>(firmId);
    }
    return map;
  }

  SurvCompanion toCompanion(bool nullToAbsent) {
    return SurvCompanion(
      id: Value(id),
      recordType: recordType == null && nullToAbsent
          ? const Value.absent()
          : Value(recordType),
      syncStatus: syncStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(syncStatus),
      syncTimestamp: syncTimestamp == null && nullToAbsent
          ? const Value.absent()
          : Value(syncTimestamp),
      creatorId: creatorId == null && nullToAbsent
          ? const Value.absent()
          : Value(creatorId),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
      recordStatus: recordStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(recordStatus),
      localId: localId == null && nullToAbsent
          ? const Value.absent()
          : Value(localId),
      firmId:
          firmId == null && nullToAbsent ? const Value.absent() : Value(firmId),
    );
  }

  factory SurvData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SurvData(
      id: serializer.fromJson<int>(json['id']),
      recordType: $SurvTable.$converterrecordTypen
          .fromJson(serializer.fromJson<int?>(json['recordType'])),
      syncStatus: $SurvTable.$convertersyncStatusn
          .fromJson(serializer.fromJson<int?>(json['syncStatus'])),
      syncTimestamp: serializer.fromJson<DateTime?>(json['syncTimestamp']),
      creatorId: serializer.fromJson<int?>(json['creatorId']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
      recordStatus: $SurvTable.$converterrecordStatusn
          .fromJson(serializer.fromJson<int?>(json['recordStatus'])),
      localId: serializer.fromJson<int?>(json['localId']),
      firmId: serializer.fromJson<int?>(json['firmId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordType': serializer
          .toJson<int?>($SurvTable.$converterrecordTypen.toJson(recordType)),
      'syncStatus': serializer
          .toJson<int?>($SurvTable.$convertersyncStatusn.toJson(syncStatus)),
      'syncTimestamp': serializer.toJson<DateTime?>(syncTimestamp),
      'creatorId': serializer.toJson<int?>(creatorId),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
      'recordStatus': serializer.toJson<int?>(
          $SurvTable.$converterrecordStatusn.toJson(recordStatus)),
      'localId': serializer.toJson<int?>(localId),
      'firmId': serializer.toJson<int?>(firmId),
    };
  }

  SurvData copyWith(
          {int? id,
          Value<RecordType?> recordType = const Value.absent(),
          Value<SyncStatus?> syncStatus = const Value.absent(),
          Value<DateTime?> syncTimestamp = const Value.absent(),
          Value<int?> creatorId = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent(),
          Value<RecordStatus?> recordStatus = const Value.absent(),
          Value<int?> localId = const Value.absent(),
          Value<int?> firmId = const Value.absent()}) =>
      SurvData(
        id: id ?? this.id,
        recordType: recordType.present ? recordType.value : this.recordType,
        syncStatus: syncStatus.present ? syncStatus.value : this.syncStatus,
        syncTimestamp:
            syncTimestamp.present ? syncTimestamp.value : this.syncTimestamp,
        creatorId: creatorId.present ? creatorId.value : this.creatorId,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
        recordStatus:
            recordStatus.present ? recordStatus.value : this.recordStatus,
        localId: localId.present ? localId.value : this.localId,
        firmId: firmId.present ? firmId.value : this.firmId,
      );
  @override
  String toString() {
    return (StringBuffer('SurvData(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('syncTimestamp: $syncTimestamp, ')
          ..write('creatorId: $creatorId, ')
          ..write('createdDate: $createdDate, ')
          ..write('recordStatus: $recordStatus, ')
          ..write('localId: $localId, ')
          ..write('firmId: $firmId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, recordType, syncStatus, syncTimestamp,
      creatorId, createdDate, recordStatus, localId, firmId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SurvData &&
          other.id == this.id &&
          other.recordType == this.recordType &&
          other.syncStatus == this.syncStatus &&
          other.syncTimestamp == this.syncTimestamp &&
          other.creatorId == this.creatorId &&
          other.createdDate == this.createdDate &&
          other.recordStatus == this.recordStatus &&
          other.localId == this.localId &&
          other.firmId == this.firmId);
}

class SurvCompanion extends UpdateCompanion<SurvData> {
  final Value<int> id;
  final Value<RecordType?> recordType;
  final Value<SyncStatus?> syncStatus;
  final Value<DateTime?> syncTimestamp;
  final Value<int?> creatorId;
  final Value<DateTime?> createdDate;
  final Value<RecordStatus?> recordStatus;
  final Value<int?> localId;
  final Value<int?> firmId;
  final Value<int> rowid;
  const SurvCompanion({
    this.id = const Value.absent(),
    this.recordType = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.syncTimestamp = const Value.absent(),
    this.creatorId = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.recordStatus = const Value.absent(),
    this.localId = const Value.absent(),
    this.firmId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SurvCompanion.insert({
    required int id,
    this.recordType = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.syncTimestamp = const Value.absent(),
    this.creatorId = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.recordStatus = const Value.absent(),
    this.localId = const Value.absent(),
    this.firmId = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<SurvData> custom({
    Expression<int>? id,
    Expression<int>? recordType,
    Expression<int>? syncStatus,
    Expression<DateTime>? syncTimestamp,
    Expression<int>? creatorId,
    Expression<DateTime>? createdDate,
    Expression<int>? recordStatus,
    Expression<int>? localId,
    Expression<int>? firmId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordType != null) 'record_type': recordType,
      if (syncStatus != null) 'sync_status': syncStatus,
      if (syncTimestamp != null) 'sync_timestamp': syncTimestamp,
      if (creatorId != null) 'creator_id': creatorId,
      if (createdDate != null) 'created_date': createdDate,
      if (recordStatus != null) 'record_status': recordStatus,
      if (localId != null) 'local_id': localId,
      if (firmId != null) 'firm_id': firmId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SurvCompanion copyWith(
      {Value<int>? id,
      Value<RecordType?>? recordType,
      Value<SyncStatus?>? syncStatus,
      Value<DateTime?>? syncTimestamp,
      Value<int?>? creatorId,
      Value<DateTime?>? createdDate,
      Value<RecordStatus?>? recordStatus,
      Value<int?>? localId,
      Value<int?>? firmId,
      Value<int>? rowid}) {
    return SurvCompanion(
      id: id ?? this.id,
      recordType: recordType ?? this.recordType,
      syncStatus: syncStatus ?? this.syncStatus,
      syncTimestamp: syncTimestamp ?? this.syncTimestamp,
      creatorId: creatorId ?? this.creatorId,
      createdDate: createdDate ?? this.createdDate,
      recordStatus: recordStatus ?? this.recordStatus,
      localId: localId ?? this.localId,
      firmId: firmId ?? this.firmId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordType.present) {
      final converter = $SurvTable.$converterrecordTypen;

      map['record_type'] = Variable<int>(converter.toSql(recordType.value));
    }
    if (syncStatus.present) {
      final converter = $SurvTable.$convertersyncStatusn;

      map['sync_status'] = Variable<int>(converter.toSql(syncStatus.value));
    }
    if (syncTimestamp.present) {
      map['sync_timestamp'] = Variable<DateTime>(syncTimestamp.value);
    }
    if (creatorId.present) {
      map['creator_id'] = Variable<int>(creatorId.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (recordStatus.present) {
      final converter = $SurvTable.$converterrecordStatusn;

      map['record_status'] = Variable<int>(converter.toSql(recordStatus.value));
    }
    if (localId.present) {
      map['local_id'] = Variable<int>(localId.value);
    }
    if (firmId.present) {
      map['firm_id'] = Variable<int>(firmId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SurvCompanion(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('syncTimestamp: $syncTimestamp, ')
          ..write('creatorId: $creatorId, ')
          ..write('createdDate: $createdDate, ')
          ..write('recordStatus: $recordStatus, ')
          ..write('localId: $localId, ')
          ..write('firmId: $firmId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SurvAdditionalInfoTable extends SurvAdditionalInfo
    with TableInfo<$SurvAdditionalInfoTable, SurvAdditionalInfoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SurvAdditionalInfoTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  late final GeneratedColumnWithTypeConverter<RecordType?, int> recordType =
      GeneratedColumn<int>('record_type', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<RecordType?>(
              $SurvAdditionalInfoTable.$converterrecordTypen);
  @override
  late final GeneratedColumn<bool> investigatorMeetRep = GeneratedColumn<bool>(
      'investigator_meet_rep', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("investigator_meet_rep" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> investigatorReferFindings =
      GeneratedColumn<bool>('investigator_refer_findings', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("investigator_refer_findings" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> isFollowUpFromPrevious =
      GeneratedColumn<bool>('is_follow_up_from_previous', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("is_follow_up_from_previous" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> firmRepresentative1 =
      GeneratedColumn<String>('firm_representative1', aliasedName, true,
          additionalChecks: GeneratedColumn.checkTextLength(),
          type: DriftSqlType.string,
          requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> firmRepresentativeTitle1 =
      GeneratedColumn<String>('firm_representative_title1', aliasedName, true,
          additionalChecks: GeneratedColumn.checkTextLength(),
          type: DriftSqlType.string,
          requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> firmRepresentative2 =
      GeneratedColumn<String>('firm_representative2', aliasedName, true,
          additionalChecks: GeneratedColumn.checkTextLength(),
          type: DriftSqlType.string,
          requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> firmRepresentativeTitle2 =
      GeneratedColumn<String>('firm_representative_title2', aliasedName, true,
          additionalChecks: GeneratedColumn.checkTextLength(),
          type: DriftSqlType.string,
          requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> referralComments = GeneratedColumn<String>(
      'referral_comments', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> followUpComments = GeneratedColumn<String>(
      'follow_up_comments', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> location = GeneratedColumn<String>(
      'location', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<DateTime> followUpDateComplete =
      GeneratedColumn<DateTime>('follow_up_date_complete', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> followUpMonths = GeneratedColumn<String>(
      'follow_up_months', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> additionalComments =
      GeneratedColumn<String>('additional_comments', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> primaryBusinessType =
      GeneratedColumn<String>('primary_business_type', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> region = GeneratedColumn<String>(
      'region', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> mailingAddress = GeneratedColumn<String>(
      'mailing_address', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> assignment = GeneratedColumn<String>(
      'assignment', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> estimatedId = GeneratedColumn<String>(
      'estimated_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> estimatedNumber = GeneratedColumn<String>(
      'estimated_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> estimatedAddress1 =
      GeneratedColumn<String>('estimated_address1', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> estimatedAddress2 =
      GeneratedColumn<String>('estimated_address2', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> estimatedCity = GeneratedColumn<String>(
      'estimated_city', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> estimatedState = GeneratedColumn<String>(
      'estimated_state', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> estimatedZipCode = GeneratedColumn<String>(
      'estimated_zip_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> operation = GeneratedColumn<String>(
      'operation', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> isProcessor = GeneratedColumn<bool>(
      'is_processor', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_processor" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> isDistributor = GeneratedColumn<bool>(
      'is_distributor', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_distributor" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> isRenderer = GeneratedColumn<bool>(
      'is_renderer', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_renderer" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> isBroker = GeneratedColumn<bool>(
      'is_broker', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_broker" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> is3D4D = GeneratedColumn<bool>(
      'is3_d4_d', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is3_d4_d" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> isRetailer = GeneratedColumn<bool>(
      'is_retailer', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_retailer" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> isTransporter = GeneratedColumn<bool>(
      'is_transporter', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_transporter" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> isCustom = GeneratedColumn<bool>(
      'is_custom', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_custom" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> isRestaurant = GeneratedColumn<bool>(
      'is_restaurant', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_restaurant" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> isMiscellaneous = GeneratedColumn<bool>(
      'is_miscellaneous', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_miscellaneous" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> isAnimalFood = GeneratedColumn<bool>(
      'is_animal_food', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_animal_food" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> isWarehouse = GeneratedColumn<bool>(
      'is_warehouse', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_warehouse" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> isSalvage = GeneratedColumn<bool>(
      'is_salvage', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_salvage" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> isPointOfEntry = GeneratedColumn<bool>(
      'is_point_of_entry', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_point_of_entry" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> isBondedArea = GeneratedColumn<bool>(
      'is_bonded_area', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_bonded_area" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> isAbattoir = GeneratedColumn<bool>(
      'is_abattoir', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_abattoir" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> isExemptPoultry = GeneratedColumn<bool>(
      'is_exempt_poultry', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_exempt_poultry" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> isFoodBank = GeneratedColumn<bool>(
      'is_food_bank', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_food_bank" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> isFollowUp = GeneratedColumn<bool>(
      'is_follow_up', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_follow_up" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> followUpComplete = GeneratedColumn<bool>(
      'follow_up_complete', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("follow_up_complete" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        recordType,
        investigatorMeetRep,
        investigatorReferFindings,
        isFollowUpFromPrevious,
        firmRepresentative1,
        firmRepresentativeTitle1,
        firmRepresentative2,
        firmRepresentativeTitle2,
        referralComments,
        followUpComments,
        location,
        followUpDateComplete,
        followUpMonths,
        additionalComments,
        primaryBusinessType,
        region,
        mailingAddress,
        assignment,
        estimatedId,
        estimatedNumber,
        estimatedAddress1,
        estimatedAddress2,
        estimatedCity,
        estimatedState,
        estimatedZipCode,
        operation,
        isProcessor,
        isDistributor,
        isRenderer,
        isBroker,
        is3D4D,
        isRetailer,
        isTransporter,
        isCustom,
        isRestaurant,
        isMiscellaneous,
        isAnimalFood,
        isWarehouse,
        isSalvage,
        isPointOfEntry,
        isBondedArea,
        isAbattoir,
        isExemptPoultry,
        isFoodBank,
        isFollowUp,
        followUpComplete
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'surv_additional_info';
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SurvAdditionalInfoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SurvAdditionalInfoData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      recordType: $SurvAdditionalInfoTable.$converterrecordTypen.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}record_type'])),
      investigatorMeetRep: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}investigator_meet_rep']),
      investigatorReferFindings: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}investigator_refer_findings']),
      isFollowUpFromPrevious: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}is_follow_up_from_previous']),
      firmRepresentative1: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}firm_representative1']),
      firmRepresentativeTitle1: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}firm_representative_title1']),
      firmRepresentative2: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}firm_representative2']),
      firmRepresentativeTitle2: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}firm_representative_title2']),
      referralComments: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}referral_comments']),
      followUpComments: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}follow_up_comments']),
      location: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}location']),
      followUpDateComplete: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}follow_up_date_complete']),
      followUpMonths: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}follow_up_months']),
      additionalComments: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}additional_comments']),
      primaryBusinessType: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}primary_business_type']),
      region: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}region']),
      mailingAddress: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mailing_address']),
      assignment: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}assignment']),
      estimatedId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}estimated_id']),
      estimatedNumber: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}estimated_number']),
      estimatedAddress1: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}estimated_address1']),
      estimatedAddress2: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}estimated_address2']),
      estimatedCity: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}estimated_city']),
      estimatedState: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}estimated_state']),
      estimatedZipCode: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}estimated_zip_code']),
      operation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}operation']),
      isProcessor: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_processor']),
      isDistributor: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_distributor']),
      isRenderer: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_renderer']),
      isBroker: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_broker']),
      is3D4D: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is3_d4_d']),
      isRetailer: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_retailer']),
      isTransporter: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_transporter']),
      isCustom: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_custom']),
      isRestaurant: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_restaurant']),
      isMiscellaneous: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_miscellaneous']),
      isAnimalFood: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_animal_food']),
      isWarehouse: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_warehouse']),
      isSalvage: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_salvage']),
      isPointOfEntry: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_point_of_entry']),
      isBondedArea: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_bonded_area']),
      isAbattoir: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_abattoir']),
      isExemptPoultry: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_exempt_poultry']),
      isFoodBank: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_food_bank']),
      isFollowUp: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_follow_up']),
      followUpComplete: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}follow_up_complete']),
    );
  }

  @override
  $SurvAdditionalInfoTable createAlias(String alias) {
    return $SurvAdditionalInfoTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RecordType, int, int> $converterrecordType =
      const EnumIndexConverter<RecordType>(RecordType.values);
  static JsonTypeConverter2<RecordType?, int?, int?> $converterrecordTypen =
      JsonTypeConverter2.asNullable($converterrecordType);
}

class SurvAdditionalInfoData extends DataClassBehavioral<SurvAdditionalInfoData>
    implements Insertable<SurvAdditionalInfoData> {
  final int id;
  final RecordType? recordType;
  final bool? investigatorMeetRep;
  final bool? investigatorReferFindings;
  final bool? isFollowUpFromPrevious;
  final String? firmRepresentative1;
  final String? firmRepresentativeTitle1;
  final String? firmRepresentative2;
  final String? firmRepresentativeTitle2;
  final String? referralComments;
  final String? followUpComments;
  final String? location;
  final DateTime? followUpDateComplete;
  final String? followUpMonths;
  final String? additionalComments;
  final String? primaryBusinessType;
  final String? region;
  final String? mailingAddress;
  final String? assignment;
  final String? estimatedId;
  final String? estimatedNumber;
  final String? estimatedAddress1;
  final String? estimatedAddress2;
  final String? estimatedCity;
  final String? estimatedState;
  final String? estimatedZipCode;
  final String? operation;
  final bool? isProcessor;
  final bool? isDistributor;
  final bool? isRenderer;
  final bool? isBroker;
  final bool? is3D4D;
  final bool? isRetailer;
  final bool? isTransporter;
  final bool? isCustom;
  final bool? isRestaurant;
  final bool? isMiscellaneous;
  final bool? isAnimalFood;
  final bool? isWarehouse;
  final bool? isSalvage;
  final bool? isPointOfEntry;
  final bool? isBondedArea;
  final bool? isAbattoir;
  final bool? isExemptPoultry;
  final bool? isFoodBank;
  final bool? isFollowUp;
  final bool? followUpComplete;
  const SurvAdditionalInfoData(
      {required this.id,
      this.recordType,
      this.investigatorMeetRep,
      this.investigatorReferFindings,
      this.isFollowUpFromPrevious,
      this.firmRepresentative1,
      this.firmRepresentativeTitle1,
      this.firmRepresentative2,
      this.firmRepresentativeTitle2,
      this.referralComments,
      this.followUpComments,
      this.location,
      this.followUpDateComplete,
      this.followUpMonths,
      this.additionalComments,
      this.primaryBusinessType,
      this.region,
      this.mailingAddress,
      this.assignment,
      this.estimatedId,
      this.estimatedNumber,
      this.estimatedAddress1,
      this.estimatedAddress2,
      this.estimatedCity,
      this.estimatedState,
      this.estimatedZipCode,
      this.operation,
      this.isProcessor,
      this.isDistributor,
      this.isRenderer,
      this.isBroker,
      this.is3D4D,
      this.isRetailer,
      this.isTransporter,
      this.isCustom,
      this.isRestaurant,
      this.isMiscellaneous,
      this.isAnimalFood,
      this.isWarehouse,
      this.isSalvage,
      this.isPointOfEntry,
      this.isBondedArea,
      this.isAbattoir,
      this.isExemptPoultry,
      this.isFoodBank,
      this.isFollowUp,
      this.followUpComplete});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || recordType != null) {
      final converter = $SurvAdditionalInfoTable.$converterrecordTypen;
      map['record_type'] = Variable<int>(converter.toSql(recordType));
    }
    if (!nullToAbsent || investigatorMeetRep != null) {
      map['investigator_meet_rep'] = Variable<bool>(investigatorMeetRep);
    }
    if (!nullToAbsent || investigatorReferFindings != null) {
      map['investigator_refer_findings'] =
          Variable<bool>(investigatorReferFindings);
    }
    if (!nullToAbsent || isFollowUpFromPrevious != null) {
      map['is_follow_up_from_previous'] =
          Variable<bool>(isFollowUpFromPrevious);
    }
    if (!nullToAbsent || firmRepresentative1 != null) {
      map['firm_representative1'] = Variable<String>(firmRepresentative1);
    }
    if (!nullToAbsent || firmRepresentativeTitle1 != null) {
      map['firm_representative_title1'] =
          Variable<String>(firmRepresentativeTitle1);
    }
    if (!nullToAbsent || firmRepresentative2 != null) {
      map['firm_representative2'] = Variable<String>(firmRepresentative2);
    }
    if (!nullToAbsent || firmRepresentativeTitle2 != null) {
      map['firm_representative_title2'] =
          Variable<String>(firmRepresentativeTitle2);
    }
    if (!nullToAbsent || referralComments != null) {
      map['referral_comments'] = Variable<String>(referralComments);
    }
    if (!nullToAbsent || followUpComments != null) {
      map['follow_up_comments'] = Variable<String>(followUpComments);
    }
    if (!nullToAbsent || location != null) {
      map['location'] = Variable<String>(location);
    }
    if (!nullToAbsent || followUpDateComplete != null) {
      map['follow_up_date_complete'] = Variable<DateTime>(followUpDateComplete);
    }
    if (!nullToAbsent || followUpMonths != null) {
      map['follow_up_months'] = Variable<String>(followUpMonths);
    }
    if (!nullToAbsent || additionalComments != null) {
      map['additional_comments'] = Variable<String>(additionalComments);
    }
    if (!nullToAbsent || primaryBusinessType != null) {
      map['primary_business_type'] = Variable<String>(primaryBusinessType);
    }
    if (!nullToAbsent || region != null) {
      map['region'] = Variable<String>(region);
    }
    if (!nullToAbsent || mailingAddress != null) {
      map['mailing_address'] = Variable<String>(mailingAddress);
    }
    if (!nullToAbsent || assignment != null) {
      map['assignment'] = Variable<String>(assignment);
    }
    if (!nullToAbsent || estimatedId != null) {
      map['estimated_id'] = Variable<String>(estimatedId);
    }
    if (!nullToAbsent || estimatedNumber != null) {
      map['estimated_number'] = Variable<String>(estimatedNumber);
    }
    if (!nullToAbsent || estimatedAddress1 != null) {
      map['estimated_address1'] = Variable<String>(estimatedAddress1);
    }
    if (!nullToAbsent || estimatedAddress2 != null) {
      map['estimated_address2'] = Variable<String>(estimatedAddress2);
    }
    if (!nullToAbsent || estimatedCity != null) {
      map['estimated_city'] = Variable<String>(estimatedCity);
    }
    if (!nullToAbsent || estimatedState != null) {
      map['estimated_state'] = Variable<String>(estimatedState);
    }
    if (!nullToAbsent || estimatedZipCode != null) {
      map['estimated_zip_code'] = Variable<String>(estimatedZipCode);
    }
    if (!nullToAbsent || operation != null) {
      map['operation'] = Variable<String>(operation);
    }
    if (!nullToAbsent || isProcessor != null) {
      map['is_processor'] = Variable<bool>(isProcessor);
    }
    if (!nullToAbsent || isDistributor != null) {
      map['is_distributor'] = Variable<bool>(isDistributor);
    }
    if (!nullToAbsent || isRenderer != null) {
      map['is_renderer'] = Variable<bool>(isRenderer);
    }
    if (!nullToAbsent || isBroker != null) {
      map['is_broker'] = Variable<bool>(isBroker);
    }
    if (!nullToAbsent || is3D4D != null) {
      map['is3_d4_d'] = Variable<bool>(is3D4D);
    }
    if (!nullToAbsent || isRetailer != null) {
      map['is_retailer'] = Variable<bool>(isRetailer);
    }
    if (!nullToAbsent || isTransporter != null) {
      map['is_transporter'] = Variable<bool>(isTransporter);
    }
    if (!nullToAbsent || isCustom != null) {
      map['is_custom'] = Variable<bool>(isCustom);
    }
    if (!nullToAbsent || isRestaurant != null) {
      map['is_restaurant'] = Variable<bool>(isRestaurant);
    }
    if (!nullToAbsent || isMiscellaneous != null) {
      map['is_miscellaneous'] = Variable<bool>(isMiscellaneous);
    }
    if (!nullToAbsent || isAnimalFood != null) {
      map['is_animal_food'] = Variable<bool>(isAnimalFood);
    }
    if (!nullToAbsent || isWarehouse != null) {
      map['is_warehouse'] = Variable<bool>(isWarehouse);
    }
    if (!nullToAbsent || isSalvage != null) {
      map['is_salvage'] = Variable<bool>(isSalvage);
    }
    if (!nullToAbsent || isPointOfEntry != null) {
      map['is_point_of_entry'] = Variable<bool>(isPointOfEntry);
    }
    if (!nullToAbsent || isBondedArea != null) {
      map['is_bonded_area'] = Variable<bool>(isBondedArea);
    }
    if (!nullToAbsent || isAbattoir != null) {
      map['is_abattoir'] = Variable<bool>(isAbattoir);
    }
    if (!nullToAbsent || isExemptPoultry != null) {
      map['is_exempt_poultry'] = Variable<bool>(isExemptPoultry);
    }
    if (!nullToAbsent || isFoodBank != null) {
      map['is_food_bank'] = Variable<bool>(isFoodBank);
    }
    if (!nullToAbsent || isFollowUp != null) {
      map['is_follow_up'] = Variable<bool>(isFollowUp);
    }
    if (!nullToAbsent || followUpComplete != null) {
      map['follow_up_complete'] = Variable<bool>(followUpComplete);
    }
    return map;
  }

  SurvAdditionalInfoCompanion toCompanion(bool nullToAbsent) {
    return SurvAdditionalInfoCompanion(
      id: Value(id),
      recordType: recordType == null && nullToAbsent
          ? const Value.absent()
          : Value(recordType),
      investigatorMeetRep: investigatorMeetRep == null && nullToAbsent
          ? const Value.absent()
          : Value(investigatorMeetRep),
      investigatorReferFindings:
          investigatorReferFindings == null && nullToAbsent
              ? const Value.absent()
              : Value(investigatorReferFindings),
      isFollowUpFromPrevious: isFollowUpFromPrevious == null && nullToAbsent
          ? const Value.absent()
          : Value(isFollowUpFromPrevious),
      firmRepresentative1: firmRepresentative1 == null && nullToAbsent
          ? const Value.absent()
          : Value(firmRepresentative1),
      firmRepresentativeTitle1: firmRepresentativeTitle1 == null && nullToAbsent
          ? const Value.absent()
          : Value(firmRepresentativeTitle1),
      firmRepresentative2: firmRepresentative2 == null && nullToAbsent
          ? const Value.absent()
          : Value(firmRepresentative2),
      firmRepresentativeTitle2: firmRepresentativeTitle2 == null && nullToAbsent
          ? const Value.absent()
          : Value(firmRepresentativeTitle2),
      referralComments: referralComments == null && nullToAbsent
          ? const Value.absent()
          : Value(referralComments),
      followUpComments: followUpComments == null && nullToAbsent
          ? const Value.absent()
          : Value(followUpComments),
      location: location == null && nullToAbsent
          ? const Value.absent()
          : Value(location),
      followUpDateComplete: followUpDateComplete == null && nullToAbsent
          ? const Value.absent()
          : Value(followUpDateComplete),
      followUpMonths: followUpMonths == null && nullToAbsent
          ? const Value.absent()
          : Value(followUpMonths),
      additionalComments: additionalComments == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalComments),
      primaryBusinessType: primaryBusinessType == null && nullToAbsent
          ? const Value.absent()
          : Value(primaryBusinessType),
      region:
          region == null && nullToAbsent ? const Value.absent() : Value(region),
      mailingAddress: mailingAddress == null && nullToAbsent
          ? const Value.absent()
          : Value(mailingAddress),
      assignment: assignment == null && nullToAbsent
          ? const Value.absent()
          : Value(assignment),
      estimatedId: estimatedId == null && nullToAbsent
          ? const Value.absent()
          : Value(estimatedId),
      estimatedNumber: estimatedNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(estimatedNumber),
      estimatedAddress1: estimatedAddress1 == null && nullToAbsent
          ? const Value.absent()
          : Value(estimatedAddress1),
      estimatedAddress2: estimatedAddress2 == null && nullToAbsent
          ? const Value.absent()
          : Value(estimatedAddress2),
      estimatedCity: estimatedCity == null && nullToAbsent
          ? const Value.absent()
          : Value(estimatedCity),
      estimatedState: estimatedState == null && nullToAbsent
          ? const Value.absent()
          : Value(estimatedState),
      estimatedZipCode: estimatedZipCode == null && nullToAbsent
          ? const Value.absent()
          : Value(estimatedZipCode),
      operation: operation == null && nullToAbsent
          ? const Value.absent()
          : Value(operation),
      isProcessor: isProcessor == null && nullToAbsent
          ? const Value.absent()
          : Value(isProcessor),
      isDistributor: isDistributor == null && nullToAbsent
          ? const Value.absent()
          : Value(isDistributor),
      isRenderer: isRenderer == null && nullToAbsent
          ? const Value.absent()
          : Value(isRenderer),
      isBroker: isBroker == null && nullToAbsent
          ? const Value.absent()
          : Value(isBroker),
      is3D4D:
          is3D4D == null && nullToAbsent ? const Value.absent() : Value(is3D4D),
      isRetailer: isRetailer == null && nullToAbsent
          ? const Value.absent()
          : Value(isRetailer),
      isTransporter: isTransporter == null && nullToAbsent
          ? const Value.absent()
          : Value(isTransporter),
      isCustom: isCustom == null && nullToAbsent
          ? const Value.absent()
          : Value(isCustom),
      isRestaurant: isRestaurant == null && nullToAbsent
          ? const Value.absent()
          : Value(isRestaurant),
      isMiscellaneous: isMiscellaneous == null && nullToAbsent
          ? const Value.absent()
          : Value(isMiscellaneous),
      isAnimalFood: isAnimalFood == null && nullToAbsent
          ? const Value.absent()
          : Value(isAnimalFood),
      isWarehouse: isWarehouse == null && nullToAbsent
          ? const Value.absent()
          : Value(isWarehouse),
      isSalvage: isSalvage == null && nullToAbsent
          ? const Value.absent()
          : Value(isSalvage),
      isPointOfEntry: isPointOfEntry == null && nullToAbsent
          ? const Value.absent()
          : Value(isPointOfEntry),
      isBondedArea: isBondedArea == null && nullToAbsent
          ? const Value.absent()
          : Value(isBondedArea),
      isAbattoir: isAbattoir == null && nullToAbsent
          ? const Value.absent()
          : Value(isAbattoir),
      isExemptPoultry: isExemptPoultry == null && nullToAbsent
          ? const Value.absent()
          : Value(isExemptPoultry),
      isFoodBank: isFoodBank == null && nullToAbsent
          ? const Value.absent()
          : Value(isFoodBank),
      isFollowUp: isFollowUp == null && nullToAbsent
          ? const Value.absent()
          : Value(isFollowUp),
      followUpComplete: followUpComplete == null && nullToAbsent
          ? const Value.absent()
          : Value(followUpComplete),
    );
  }

  factory SurvAdditionalInfoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SurvAdditionalInfoData(
      id: serializer.fromJson<int>(json['id']),
      recordType: $SurvAdditionalInfoTable.$converterrecordTypen
          .fromJson(serializer.fromJson<int?>(json['recordType'])),
      investigatorMeetRep:
          serializer.fromJson<bool?>(json['investigatorMeetRep']),
      investigatorReferFindings:
          serializer.fromJson<bool?>(json['investigatorReferFindings']),
      isFollowUpFromPrevious:
          serializer.fromJson<bool?>(json['isFollowUpFromPrevious']),
      firmRepresentative1:
          serializer.fromJson<String?>(json['firmRepresentative1']),
      firmRepresentativeTitle1:
          serializer.fromJson<String?>(json['firmRepresentativeTitle1']),
      firmRepresentative2:
          serializer.fromJson<String?>(json['firmRepresentative2']),
      firmRepresentativeTitle2:
          serializer.fromJson<String?>(json['firmRepresentativeTitle2']),
      referralComments: serializer.fromJson<String?>(json['referralComments']),
      followUpComments: serializer.fromJson<String?>(json['followUpComments']),
      location: serializer.fromJson<String?>(json['location']),
      followUpDateComplete:
          serializer.fromJson<DateTime?>(json['followUpDateComplete']),
      followUpMonths: serializer.fromJson<String?>(json['followUpMonths']),
      additionalComments:
          serializer.fromJson<String?>(json['additionalComments']),
      primaryBusinessType:
          serializer.fromJson<String?>(json['primaryBusinessType']),
      region: serializer.fromJson<String?>(json['region']),
      mailingAddress: serializer.fromJson<String?>(json['mailingAddress']),
      assignment: serializer.fromJson<String?>(json['assignment']),
      estimatedId: serializer.fromJson<String?>(json['estimatedId']),
      estimatedNumber: serializer.fromJson<String?>(json['estimatedNumber']),
      estimatedAddress1:
          serializer.fromJson<String?>(json['estimatedAddress1']),
      estimatedAddress2:
          serializer.fromJson<String?>(json['estimatedAddress2']),
      estimatedCity: serializer.fromJson<String?>(json['estimatedCity']),
      estimatedState: serializer.fromJson<String?>(json['estimatedState']),
      estimatedZipCode: serializer.fromJson<String?>(json['estimatedZipCode']),
      operation: serializer.fromJson<String?>(json['operation']),
      isProcessor: serializer.fromJson<bool?>(json['isProcessor']),
      isDistributor: serializer.fromJson<bool?>(json['isDistributor']),
      isRenderer: serializer.fromJson<bool?>(json['isRenderer']),
      isBroker: serializer.fromJson<bool?>(json['isBroker']),
      is3D4D: serializer.fromJson<bool?>(json['is3D4D']),
      isRetailer: serializer.fromJson<bool?>(json['isRetailer']),
      isTransporter: serializer.fromJson<bool?>(json['isTransporter']),
      isCustom: serializer.fromJson<bool?>(json['isCustom']),
      isRestaurant: serializer.fromJson<bool?>(json['isRestaurant']),
      isMiscellaneous: serializer.fromJson<bool?>(json['isMiscellaneous']),
      isAnimalFood: serializer.fromJson<bool?>(json['isAnimalFood']),
      isWarehouse: serializer.fromJson<bool?>(json['isWarehouse']),
      isSalvage: serializer.fromJson<bool?>(json['isSalvage']),
      isPointOfEntry: serializer.fromJson<bool?>(json['isPointOfEntry']),
      isBondedArea: serializer.fromJson<bool?>(json['isBondedArea']),
      isAbattoir: serializer.fromJson<bool?>(json['isAbattoir']),
      isExemptPoultry: serializer.fromJson<bool?>(json['isExemptPoultry']),
      isFoodBank: serializer.fromJson<bool?>(json['isFoodBank']),
      isFollowUp: serializer.fromJson<bool?>(json['isFollowUp']),
      followUpComplete: serializer.fromJson<bool?>(json['followUpComplete']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordType': serializer.toJson<int?>(
          $SurvAdditionalInfoTable.$converterrecordTypen.toJson(recordType)),
      'investigatorMeetRep': serializer.toJson<bool?>(investigatorMeetRep),
      'investigatorReferFindings':
          serializer.toJson<bool?>(investigatorReferFindings),
      'isFollowUpFromPrevious':
          serializer.toJson<bool?>(isFollowUpFromPrevious),
      'firmRepresentative1': serializer.toJson<String?>(firmRepresentative1),
      'firmRepresentativeTitle1':
          serializer.toJson<String?>(firmRepresentativeTitle1),
      'firmRepresentative2': serializer.toJson<String?>(firmRepresentative2),
      'firmRepresentativeTitle2':
          serializer.toJson<String?>(firmRepresentativeTitle2),
      'referralComments': serializer.toJson<String?>(referralComments),
      'followUpComments': serializer.toJson<String?>(followUpComments),
      'location': serializer.toJson<String?>(location),
      'followUpDateComplete':
          serializer.toJson<DateTime?>(followUpDateComplete),
      'followUpMonths': serializer.toJson<String?>(followUpMonths),
      'additionalComments': serializer.toJson<String?>(additionalComments),
      'primaryBusinessType': serializer.toJson<String?>(primaryBusinessType),
      'region': serializer.toJson<String?>(region),
      'mailingAddress': serializer.toJson<String?>(mailingAddress),
      'assignment': serializer.toJson<String?>(assignment),
      'estimatedId': serializer.toJson<String?>(estimatedId),
      'estimatedNumber': serializer.toJson<String?>(estimatedNumber),
      'estimatedAddress1': serializer.toJson<String?>(estimatedAddress1),
      'estimatedAddress2': serializer.toJson<String?>(estimatedAddress2),
      'estimatedCity': serializer.toJson<String?>(estimatedCity),
      'estimatedState': serializer.toJson<String?>(estimatedState),
      'estimatedZipCode': serializer.toJson<String?>(estimatedZipCode),
      'operation': serializer.toJson<String?>(operation),
      'isProcessor': serializer.toJson<bool?>(isProcessor),
      'isDistributor': serializer.toJson<bool?>(isDistributor),
      'isRenderer': serializer.toJson<bool?>(isRenderer),
      'isBroker': serializer.toJson<bool?>(isBroker),
      'is3D4D': serializer.toJson<bool?>(is3D4D),
      'isRetailer': serializer.toJson<bool?>(isRetailer),
      'isTransporter': serializer.toJson<bool?>(isTransporter),
      'isCustom': serializer.toJson<bool?>(isCustom),
      'isRestaurant': serializer.toJson<bool?>(isRestaurant),
      'isMiscellaneous': serializer.toJson<bool?>(isMiscellaneous),
      'isAnimalFood': serializer.toJson<bool?>(isAnimalFood),
      'isWarehouse': serializer.toJson<bool?>(isWarehouse),
      'isSalvage': serializer.toJson<bool?>(isSalvage),
      'isPointOfEntry': serializer.toJson<bool?>(isPointOfEntry),
      'isBondedArea': serializer.toJson<bool?>(isBondedArea),
      'isAbattoir': serializer.toJson<bool?>(isAbattoir),
      'isExemptPoultry': serializer.toJson<bool?>(isExemptPoultry),
      'isFoodBank': serializer.toJson<bool?>(isFoodBank),
      'isFollowUp': serializer.toJson<bool?>(isFollowUp),
      'followUpComplete': serializer.toJson<bool?>(followUpComplete),
    };
  }

  SurvAdditionalInfoData copyWith(
          {int? id,
          Value<RecordType?> recordType = const Value.absent(),
          Value<bool?> investigatorMeetRep = const Value.absent(),
          Value<bool?> investigatorReferFindings = const Value.absent(),
          Value<bool?> isFollowUpFromPrevious = const Value.absent(),
          Value<String?> firmRepresentative1 = const Value.absent(),
          Value<String?> firmRepresentativeTitle1 = const Value.absent(),
          Value<String?> firmRepresentative2 = const Value.absent(),
          Value<String?> firmRepresentativeTitle2 = const Value.absent(),
          Value<String?> referralComments = const Value.absent(),
          Value<String?> followUpComments = const Value.absent(),
          Value<String?> location = const Value.absent(),
          Value<DateTime?> followUpDateComplete = const Value.absent(),
          Value<String?> followUpMonths = const Value.absent(),
          Value<String?> additionalComments = const Value.absent(),
          Value<String?> primaryBusinessType = const Value.absent(),
          Value<String?> region = const Value.absent(),
          Value<String?> mailingAddress = const Value.absent(),
          Value<String?> assignment = const Value.absent(),
          Value<String?> estimatedId = const Value.absent(),
          Value<String?> estimatedNumber = const Value.absent(),
          Value<String?> estimatedAddress1 = const Value.absent(),
          Value<String?> estimatedAddress2 = const Value.absent(),
          Value<String?> estimatedCity = const Value.absent(),
          Value<String?> estimatedState = const Value.absent(),
          Value<String?> estimatedZipCode = const Value.absent(),
          Value<String?> operation = const Value.absent(),
          Value<bool?> isProcessor = const Value.absent(),
          Value<bool?> isDistributor = const Value.absent(),
          Value<bool?> isRenderer = const Value.absent(),
          Value<bool?> isBroker = const Value.absent(),
          Value<bool?> is3D4D = const Value.absent(),
          Value<bool?> isRetailer = const Value.absent(),
          Value<bool?> isTransporter = const Value.absent(),
          Value<bool?> isCustom = const Value.absent(),
          Value<bool?> isRestaurant = const Value.absent(),
          Value<bool?> isMiscellaneous = const Value.absent(),
          Value<bool?> isAnimalFood = const Value.absent(),
          Value<bool?> isWarehouse = const Value.absent(),
          Value<bool?> isSalvage = const Value.absent(),
          Value<bool?> isPointOfEntry = const Value.absent(),
          Value<bool?> isBondedArea = const Value.absent(),
          Value<bool?> isAbattoir = const Value.absent(),
          Value<bool?> isExemptPoultry = const Value.absent(),
          Value<bool?> isFoodBank = const Value.absent(),
          Value<bool?> isFollowUp = const Value.absent(),
          Value<bool?> followUpComplete = const Value.absent()}) =>
      SurvAdditionalInfoData(
        id: id ?? this.id,
        recordType: recordType.present ? recordType.value : this.recordType,
        investigatorMeetRep: investigatorMeetRep.present
            ? investigatorMeetRep.value
            : this.investigatorMeetRep,
        investigatorReferFindings: investigatorReferFindings.present
            ? investigatorReferFindings.value
            : this.investigatorReferFindings,
        isFollowUpFromPrevious: isFollowUpFromPrevious.present
            ? isFollowUpFromPrevious.value
            : this.isFollowUpFromPrevious,
        firmRepresentative1: firmRepresentative1.present
            ? firmRepresentative1.value
            : this.firmRepresentative1,
        firmRepresentativeTitle1: firmRepresentativeTitle1.present
            ? firmRepresentativeTitle1.value
            : this.firmRepresentativeTitle1,
        firmRepresentative2: firmRepresentative2.present
            ? firmRepresentative2.value
            : this.firmRepresentative2,
        firmRepresentativeTitle2: firmRepresentativeTitle2.present
            ? firmRepresentativeTitle2.value
            : this.firmRepresentativeTitle2,
        referralComments: referralComments.present
            ? referralComments.value
            : this.referralComments,
        followUpComments: followUpComments.present
            ? followUpComments.value
            : this.followUpComments,
        location: location.present ? location.value : this.location,
        followUpDateComplete: followUpDateComplete.present
            ? followUpDateComplete.value
            : this.followUpDateComplete,
        followUpMonths:
            followUpMonths.present ? followUpMonths.value : this.followUpMonths,
        additionalComments: additionalComments.present
            ? additionalComments.value
            : this.additionalComments,
        primaryBusinessType: primaryBusinessType.present
            ? primaryBusinessType.value
            : this.primaryBusinessType,
        region: region.present ? region.value : this.region,
        mailingAddress:
            mailingAddress.present ? mailingAddress.value : this.mailingAddress,
        assignment: assignment.present ? assignment.value : this.assignment,
        estimatedId: estimatedId.present ? estimatedId.value : this.estimatedId,
        estimatedNumber: estimatedNumber.present
            ? estimatedNumber.value
            : this.estimatedNumber,
        estimatedAddress1: estimatedAddress1.present
            ? estimatedAddress1.value
            : this.estimatedAddress1,
        estimatedAddress2: estimatedAddress2.present
            ? estimatedAddress2.value
            : this.estimatedAddress2,
        estimatedCity:
            estimatedCity.present ? estimatedCity.value : this.estimatedCity,
        estimatedState:
            estimatedState.present ? estimatedState.value : this.estimatedState,
        estimatedZipCode: estimatedZipCode.present
            ? estimatedZipCode.value
            : this.estimatedZipCode,
        operation: operation.present ? operation.value : this.operation,
        isProcessor: isProcessor.present ? isProcessor.value : this.isProcessor,
        isDistributor:
            isDistributor.present ? isDistributor.value : this.isDistributor,
        isRenderer: isRenderer.present ? isRenderer.value : this.isRenderer,
        isBroker: isBroker.present ? isBroker.value : this.isBroker,
        is3D4D: is3D4D.present ? is3D4D.value : this.is3D4D,
        isRetailer: isRetailer.present ? isRetailer.value : this.isRetailer,
        isTransporter:
            isTransporter.present ? isTransporter.value : this.isTransporter,
        isCustom: isCustom.present ? isCustom.value : this.isCustom,
        isRestaurant:
            isRestaurant.present ? isRestaurant.value : this.isRestaurant,
        isMiscellaneous: isMiscellaneous.present
            ? isMiscellaneous.value
            : this.isMiscellaneous,
        isAnimalFood:
            isAnimalFood.present ? isAnimalFood.value : this.isAnimalFood,
        isWarehouse: isWarehouse.present ? isWarehouse.value : this.isWarehouse,
        isSalvage: isSalvage.present ? isSalvage.value : this.isSalvage,
        isPointOfEntry:
            isPointOfEntry.present ? isPointOfEntry.value : this.isPointOfEntry,
        isBondedArea:
            isBondedArea.present ? isBondedArea.value : this.isBondedArea,
        isAbattoir: isAbattoir.present ? isAbattoir.value : this.isAbattoir,
        isExemptPoultry: isExemptPoultry.present
            ? isExemptPoultry.value
            : this.isExemptPoultry,
        isFoodBank: isFoodBank.present ? isFoodBank.value : this.isFoodBank,
        isFollowUp: isFollowUp.present ? isFollowUp.value : this.isFollowUp,
        followUpComplete: followUpComplete.present
            ? followUpComplete.value
            : this.followUpComplete,
      );
  @override
  String toString() {
    return (StringBuffer('SurvAdditionalInfoData(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('investigatorMeetRep: $investigatorMeetRep, ')
          ..write('investigatorReferFindings: $investigatorReferFindings, ')
          ..write('isFollowUpFromPrevious: $isFollowUpFromPrevious, ')
          ..write('firmRepresentative1: $firmRepresentative1, ')
          ..write('firmRepresentativeTitle1: $firmRepresentativeTitle1, ')
          ..write('firmRepresentative2: $firmRepresentative2, ')
          ..write('firmRepresentativeTitle2: $firmRepresentativeTitle2, ')
          ..write('referralComments: $referralComments, ')
          ..write('followUpComments: $followUpComments, ')
          ..write('location: $location, ')
          ..write('followUpDateComplete: $followUpDateComplete, ')
          ..write('followUpMonths: $followUpMonths, ')
          ..write('additionalComments: $additionalComments, ')
          ..write('primaryBusinessType: $primaryBusinessType, ')
          ..write('region: $region, ')
          ..write('mailingAddress: $mailingAddress, ')
          ..write('assignment: $assignment, ')
          ..write('estimatedId: $estimatedId, ')
          ..write('estimatedNumber: $estimatedNumber, ')
          ..write('estimatedAddress1: $estimatedAddress1, ')
          ..write('estimatedAddress2: $estimatedAddress2, ')
          ..write('estimatedCity: $estimatedCity, ')
          ..write('estimatedState: $estimatedState, ')
          ..write('estimatedZipCode: $estimatedZipCode, ')
          ..write('operation: $operation, ')
          ..write('isProcessor: $isProcessor, ')
          ..write('isDistributor: $isDistributor, ')
          ..write('isRenderer: $isRenderer, ')
          ..write('isBroker: $isBroker, ')
          ..write('is3D4D: $is3D4D, ')
          ..write('isRetailer: $isRetailer, ')
          ..write('isTransporter: $isTransporter, ')
          ..write('isCustom: $isCustom, ')
          ..write('isRestaurant: $isRestaurant, ')
          ..write('isMiscellaneous: $isMiscellaneous, ')
          ..write('isAnimalFood: $isAnimalFood, ')
          ..write('isWarehouse: $isWarehouse, ')
          ..write('isSalvage: $isSalvage, ')
          ..write('isPointOfEntry: $isPointOfEntry, ')
          ..write('isBondedArea: $isBondedArea, ')
          ..write('isAbattoir: $isAbattoir, ')
          ..write('isExemptPoultry: $isExemptPoultry, ')
          ..write('isFoodBank: $isFoodBank, ')
          ..write('isFollowUp: $isFollowUp, ')
          ..write('followUpComplete: $followUpComplete')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        recordType,
        investigatorMeetRep,
        investigatorReferFindings,
        isFollowUpFromPrevious,
        firmRepresentative1,
        firmRepresentativeTitle1,
        firmRepresentative2,
        firmRepresentativeTitle2,
        referralComments,
        followUpComments,
        location,
        followUpDateComplete,
        followUpMonths,
        additionalComments,
        primaryBusinessType,
        region,
        mailingAddress,
        assignment,
        estimatedId,
        estimatedNumber,
        estimatedAddress1,
        estimatedAddress2,
        estimatedCity,
        estimatedState,
        estimatedZipCode,
        operation,
        isProcessor,
        isDistributor,
        isRenderer,
        isBroker,
        is3D4D,
        isRetailer,
        isTransporter,
        isCustom,
        isRestaurant,
        isMiscellaneous,
        isAnimalFood,
        isWarehouse,
        isSalvage,
        isPointOfEntry,
        isBondedArea,
        isAbattoir,
        isExemptPoultry,
        isFoodBank,
        isFollowUp,
        followUpComplete
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SurvAdditionalInfoData &&
          other.id == this.id &&
          other.recordType == this.recordType &&
          other.investigatorMeetRep == this.investigatorMeetRep &&
          other.investigatorReferFindings == this.investigatorReferFindings &&
          other.isFollowUpFromPrevious == this.isFollowUpFromPrevious &&
          other.firmRepresentative1 == this.firmRepresentative1 &&
          other.firmRepresentativeTitle1 == this.firmRepresentativeTitle1 &&
          other.firmRepresentative2 == this.firmRepresentative2 &&
          other.firmRepresentativeTitle2 == this.firmRepresentativeTitle2 &&
          other.referralComments == this.referralComments &&
          other.followUpComments == this.followUpComments &&
          other.location == this.location &&
          other.followUpDateComplete == this.followUpDateComplete &&
          other.followUpMonths == this.followUpMonths &&
          other.additionalComments == this.additionalComments &&
          other.primaryBusinessType == this.primaryBusinessType &&
          other.region == this.region &&
          other.mailingAddress == this.mailingAddress &&
          other.assignment == this.assignment &&
          other.estimatedId == this.estimatedId &&
          other.estimatedNumber == this.estimatedNumber &&
          other.estimatedAddress1 == this.estimatedAddress1 &&
          other.estimatedAddress2 == this.estimatedAddress2 &&
          other.estimatedCity == this.estimatedCity &&
          other.estimatedState == this.estimatedState &&
          other.estimatedZipCode == this.estimatedZipCode &&
          other.operation == this.operation &&
          other.isProcessor == this.isProcessor &&
          other.isDistributor == this.isDistributor &&
          other.isRenderer == this.isRenderer &&
          other.isBroker == this.isBroker &&
          other.is3D4D == this.is3D4D &&
          other.isRetailer == this.isRetailer &&
          other.isTransporter == this.isTransporter &&
          other.isCustom == this.isCustom &&
          other.isRestaurant == this.isRestaurant &&
          other.isMiscellaneous == this.isMiscellaneous &&
          other.isAnimalFood == this.isAnimalFood &&
          other.isWarehouse == this.isWarehouse &&
          other.isSalvage == this.isSalvage &&
          other.isPointOfEntry == this.isPointOfEntry &&
          other.isBondedArea == this.isBondedArea &&
          other.isAbattoir == this.isAbattoir &&
          other.isExemptPoultry == this.isExemptPoultry &&
          other.isFoodBank == this.isFoodBank &&
          other.isFollowUp == this.isFollowUp &&
          other.followUpComplete == this.followUpComplete);
}

class SurvAdditionalInfoCompanion
    extends UpdateCompanion<SurvAdditionalInfoData> {
  final Value<int> id;
  final Value<RecordType?> recordType;
  final Value<bool?> investigatorMeetRep;
  final Value<bool?> investigatorReferFindings;
  final Value<bool?> isFollowUpFromPrevious;
  final Value<String?> firmRepresentative1;
  final Value<String?> firmRepresentativeTitle1;
  final Value<String?> firmRepresentative2;
  final Value<String?> firmRepresentativeTitle2;
  final Value<String?> referralComments;
  final Value<String?> followUpComments;
  final Value<String?> location;
  final Value<DateTime?> followUpDateComplete;
  final Value<String?> followUpMonths;
  final Value<String?> additionalComments;
  final Value<String?> primaryBusinessType;
  final Value<String?> region;
  final Value<String?> mailingAddress;
  final Value<String?> assignment;
  final Value<String?> estimatedId;
  final Value<String?> estimatedNumber;
  final Value<String?> estimatedAddress1;
  final Value<String?> estimatedAddress2;
  final Value<String?> estimatedCity;
  final Value<String?> estimatedState;
  final Value<String?> estimatedZipCode;
  final Value<String?> operation;
  final Value<bool?> isProcessor;
  final Value<bool?> isDistributor;
  final Value<bool?> isRenderer;
  final Value<bool?> isBroker;
  final Value<bool?> is3D4D;
  final Value<bool?> isRetailer;
  final Value<bool?> isTransporter;
  final Value<bool?> isCustom;
  final Value<bool?> isRestaurant;
  final Value<bool?> isMiscellaneous;
  final Value<bool?> isAnimalFood;
  final Value<bool?> isWarehouse;
  final Value<bool?> isSalvage;
  final Value<bool?> isPointOfEntry;
  final Value<bool?> isBondedArea;
  final Value<bool?> isAbattoir;
  final Value<bool?> isExemptPoultry;
  final Value<bool?> isFoodBank;
  final Value<bool?> isFollowUp;
  final Value<bool?> followUpComplete;
  const SurvAdditionalInfoCompanion({
    this.id = const Value.absent(),
    this.recordType = const Value.absent(),
    this.investigatorMeetRep = const Value.absent(),
    this.investigatorReferFindings = const Value.absent(),
    this.isFollowUpFromPrevious = const Value.absent(),
    this.firmRepresentative1 = const Value.absent(),
    this.firmRepresentativeTitle1 = const Value.absent(),
    this.firmRepresentative2 = const Value.absent(),
    this.firmRepresentativeTitle2 = const Value.absent(),
    this.referralComments = const Value.absent(),
    this.followUpComments = const Value.absent(),
    this.location = const Value.absent(),
    this.followUpDateComplete = const Value.absent(),
    this.followUpMonths = const Value.absent(),
    this.additionalComments = const Value.absent(),
    this.primaryBusinessType = const Value.absent(),
    this.region = const Value.absent(),
    this.mailingAddress = const Value.absent(),
    this.assignment = const Value.absent(),
    this.estimatedId = const Value.absent(),
    this.estimatedNumber = const Value.absent(),
    this.estimatedAddress1 = const Value.absent(),
    this.estimatedAddress2 = const Value.absent(),
    this.estimatedCity = const Value.absent(),
    this.estimatedState = const Value.absent(),
    this.estimatedZipCode = const Value.absent(),
    this.operation = const Value.absent(),
    this.isProcessor = const Value.absent(),
    this.isDistributor = const Value.absent(),
    this.isRenderer = const Value.absent(),
    this.isBroker = const Value.absent(),
    this.is3D4D = const Value.absent(),
    this.isRetailer = const Value.absent(),
    this.isTransporter = const Value.absent(),
    this.isCustom = const Value.absent(),
    this.isRestaurant = const Value.absent(),
    this.isMiscellaneous = const Value.absent(),
    this.isAnimalFood = const Value.absent(),
    this.isWarehouse = const Value.absent(),
    this.isSalvage = const Value.absent(),
    this.isPointOfEntry = const Value.absent(),
    this.isBondedArea = const Value.absent(),
    this.isAbattoir = const Value.absent(),
    this.isExemptPoultry = const Value.absent(),
    this.isFoodBank = const Value.absent(),
    this.isFollowUp = const Value.absent(),
    this.followUpComplete = const Value.absent(),
  });
  SurvAdditionalInfoCompanion.insert({
    this.id = const Value.absent(),
    this.recordType = const Value.absent(),
    this.investigatorMeetRep = const Value.absent(),
    this.investigatorReferFindings = const Value.absent(),
    this.isFollowUpFromPrevious = const Value.absent(),
    this.firmRepresentative1 = const Value.absent(),
    this.firmRepresentativeTitle1 = const Value.absent(),
    this.firmRepresentative2 = const Value.absent(),
    this.firmRepresentativeTitle2 = const Value.absent(),
    this.referralComments = const Value.absent(),
    this.followUpComments = const Value.absent(),
    this.location = const Value.absent(),
    this.followUpDateComplete = const Value.absent(),
    this.followUpMonths = const Value.absent(),
    this.additionalComments = const Value.absent(),
    this.primaryBusinessType = const Value.absent(),
    this.region = const Value.absent(),
    this.mailingAddress = const Value.absent(),
    this.assignment = const Value.absent(),
    this.estimatedId = const Value.absent(),
    this.estimatedNumber = const Value.absent(),
    this.estimatedAddress1 = const Value.absent(),
    this.estimatedAddress2 = const Value.absent(),
    this.estimatedCity = const Value.absent(),
    this.estimatedState = const Value.absent(),
    this.estimatedZipCode = const Value.absent(),
    this.operation = const Value.absent(),
    this.isProcessor = const Value.absent(),
    this.isDistributor = const Value.absent(),
    this.isRenderer = const Value.absent(),
    this.isBroker = const Value.absent(),
    this.is3D4D = const Value.absent(),
    this.isRetailer = const Value.absent(),
    this.isTransporter = const Value.absent(),
    this.isCustom = const Value.absent(),
    this.isRestaurant = const Value.absent(),
    this.isMiscellaneous = const Value.absent(),
    this.isAnimalFood = const Value.absent(),
    this.isWarehouse = const Value.absent(),
    this.isSalvage = const Value.absent(),
    this.isPointOfEntry = const Value.absent(),
    this.isBondedArea = const Value.absent(),
    this.isAbattoir = const Value.absent(),
    this.isExemptPoultry = const Value.absent(),
    this.isFoodBank = const Value.absent(),
    this.isFollowUp = const Value.absent(),
    this.followUpComplete = const Value.absent(),
  });
  static Insertable<SurvAdditionalInfoData> custom({
    Expression<int>? id,
    Expression<int>? recordType,
    Expression<bool>? investigatorMeetRep,
    Expression<bool>? investigatorReferFindings,
    Expression<bool>? isFollowUpFromPrevious,
    Expression<String>? firmRepresentative1,
    Expression<String>? firmRepresentativeTitle1,
    Expression<String>? firmRepresentative2,
    Expression<String>? firmRepresentativeTitle2,
    Expression<String>? referralComments,
    Expression<String>? followUpComments,
    Expression<String>? location,
    Expression<DateTime>? followUpDateComplete,
    Expression<String>? followUpMonths,
    Expression<String>? additionalComments,
    Expression<String>? primaryBusinessType,
    Expression<String>? region,
    Expression<String>? mailingAddress,
    Expression<String>? assignment,
    Expression<String>? estimatedId,
    Expression<String>? estimatedNumber,
    Expression<String>? estimatedAddress1,
    Expression<String>? estimatedAddress2,
    Expression<String>? estimatedCity,
    Expression<String>? estimatedState,
    Expression<String>? estimatedZipCode,
    Expression<String>? operation,
    Expression<bool>? isProcessor,
    Expression<bool>? isDistributor,
    Expression<bool>? isRenderer,
    Expression<bool>? isBroker,
    Expression<bool>? is3D4D,
    Expression<bool>? isRetailer,
    Expression<bool>? isTransporter,
    Expression<bool>? isCustom,
    Expression<bool>? isRestaurant,
    Expression<bool>? isMiscellaneous,
    Expression<bool>? isAnimalFood,
    Expression<bool>? isWarehouse,
    Expression<bool>? isSalvage,
    Expression<bool>? isPointOfEntry,
    Expression<bool>? isBondedArea,
    Expression<bool>? isAbattoir,
    Expression<bool>? isExemptPoultry,
    Expression<bool>? isFoodBank,
    Expression<bool>? isFollowUp,
    Expression<bool>? followUpComplete,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordType != null) 'record_type': recordType,
      if (investigatorMeetRep != null)
        'investigator_meet_rep': investigatorMeetRep,
      if (investigatorReferFindings != null)
        'investigator_refer_findings': investigatorReferFindings,
      if (isFollowUpFromPrevious != null)
        'is_follow_up_from_previous': isFollowUpFromPrevious,
      if (firmRepresentative1 != null)
        'firm_representative1': firmRepresentative1,
      if (firmRepresentativeTitle1 != null)
        'firm_representative_title1': firmRepresentativeTitle1,
      if (firmRepresentative2 != null)
        'firm_representative2': firmRepresentative2,
      if (firmRepresentativeTitle2 != null)
        'firm_representative_title2': firmRepresentativeTitle2,
      if (referralComments != null) 'referral_comments': referralComments,
      if (followUpComments != null) 'follow_up_comments': followUpComments,
      if (location != null) 'location': location,
      if (followUpDateComplete != null)
        'follow_up_date_complete': followUpDateComplete,
      if (followUpMonths != null) 'follow_up_months': followUpMonths,
      if (additionalComments != null) 'additional_comments': additionalComments,
      if (primaryBusinessType != null)
        'primary_business_type': primaryBusinessType,
      if (region != null) 'region': region,
      if (mailingAddress != null) 'mailing_address': mailingAddress,
      if (assignment != null) 'assignment': assignment,
      if (estimatedId != null) 'estimated_id': estimatedId,
      if (estimatedNumber != null) 'estimated_number': estimatedNumber,
      if (estimatedAddress1 != null) 'estimated_address1': estimatedAddress1,
      if (estimatedAddress2 != null) 'estimated_address2': estimatedAddress2,
      if (estimatedCity != null) 'estimated_city': estimatedCity,
      if (estimatedState != null) 'estimated_state': estimatedState,
      if (estimatedZipCode != null) 'estimated_zip_code': estimatedZipCode,
      if (operation != null) 'operation': operation,
      if (isProcessor != null) 'is_processor': isProcessor,
      if (isDistributor != null) 'is_distributor': isDistributor,
      if (isRenderer != null) 'is_renderer': isRenderer,
      if (isBroker != null) 'is_broker': isBroker,
      if (is3D4D != null) 'is3_d4_d': is3D4D,
      if (isRetailer != null) 'is_retailer': isRetailer,
      if (isTransporter != null) 'is_transporter': isTransporter,
      if (isCustom != null) 'is_custom': isCustom,
      if (isRestaurant != null) 'is_restaurant': isRestaurant,
      if (isMiscellaneous != null) 'is_miscellaneous': isMiscellaneous,
      if (isAnimalFood != null) 'is_animal_food': isAnimalFood,
      if (isWarehouse != null) 'is_warehouse': isWarehouse,
      if (isSalvage != null) 'is_salvage': isSalvage,
      if (isPointOfEntry != null) 'is_point_of_entry': isPointOfEntry,
      if (isBondedArea != null) 'is_bonded_area': isBondedArea,
      if (isAbattoir != null) 'is_abattoir': isAbattoir,
      if (isExemptPoultry != null) 'is_exempt_poultry': isExemptPoultry,
      if (isFoodBank != null) 'is_food_bank': isFoodBank,
      if (isFollowUp != null) 'is_follow_up': isFollowUp,
      if (followUpComplete != null) 'follow_up_complete': followUpComplete,
    });
  }

  SurvAdditionalInfoCompanion copyWith(
      {Value<int>? id,
      Value<RecordType?>? recordType,
      Value<bool?>? investigatorMeetRep,
      Value<bool?>? investigatorReferFindings,
      Value<bool?>? isFollowUpFromPrevious,
      Value<String?>? firmRepresentative1,
      Value<String?>? firmRepresentativeTitle1,
      Value<String?>? firmRepresentative2,
      Value<String?>? firmRepresentativeTitle2,
      Value<String?>? referralComments,
      Value<String?>? followUpComments,
      Value<String?>? location,
      Value<DateTime?>? followUpDateComplete,
      Value<String?>? followUpMonths,
      Value<String?>? additionalComments,
      Value<String?>? primaryBusinessType,
      Value<String?>? region,
      Value<String?>? mailingAddress,
      Value<String?>? assignment,
      Value<String?>? estimatedId,
      Value<String?>? estimatedNumber,
      Value<String?>? estimatedAddress1,
      Value<String?>? estimatedAddress2,
      Value<String?>? estimatedCity,
      Value<String?>? estimatedState,
      Value<String?>? estimatedZipCode,
      Value<String?>? operation,
      Value<bool?>? isProcessor,
      Value<bool?>? isDistributor,
      Value<bool?>? isRenderer,
      Value<bool?>? isBroker,
      Value<bool?>? is3D4D,
      Value<bool?>? isRetailer,
      Value<bool?>? isTransporter,
      Value<bool?>? isCustom,
      Value<bool?>? isRestaurant,
      Value<bool?>? isMiscellaneous,
      Value<bool?>? isAnimalFood,
      Value<bool?>? isWarehouse,
      Value<bool?>? isSalvage,
      Value<bool?>? isPointOfEntry,
      Value<bool?>? isBondedArea,
      Value<bool?>? isAbattoir,
      Value<bool?>? isExemptPoultry,
      Value<bool?>? isFoodBank,
      Value<bool?>? isFollowUp,
      Value<bool?>? followUpComplete}) {
    return SurvAdditionalInfoCompanion(
      id: id ?? this.id,
      recordType: recordType ?? this.recordType,
      investigatorMeetRep: investigatorMeetRep ?? this.investigatorMeetRep,
      investigatorReferFindings:
          investigatorReferFindings ?? this.investigatorReferFindings,
      isFollowUpFromPrevious:
          isFollowUpFromPrevious ?? this.isFollowUpFromPrevious,
      firmRepresentative1: firmRepresentative1 ?? this.firmRepresentative1,
      firmRepresentativeTitle1:
          firmRepresentativeTitle1 ?? this.firmRepresentativeTitle1,
      firmRepresentative2: firmRepresentative2 ?? this.firmRepresentative2,
      firmRepresentativeTitle2:
          firmRepresentativeTitle2 ?? this.firmRepresentativeTitle2,
      referralComments: referralComments ?? this.referralComments,
      followUpComments: followUpComments ?? this.followUpComments,
      location: location ?? this.location,
      followUpDateComplete: followUpDateComplete ?? this.followUpDateComplete,
      followUpMonths: followUpMonths ?? this.followUpMonths,
      additionalComments: additionalComments ?? this.additionalComments,
      primaryBusinessType: primaryBusinessType ?? this.primaryBusinessType,
      region: region ?? this.region,
      mailingAddress: mailingAddress ?? this.mailingAddress,
      assignment: assignment ?? this.assignment,
      estimatedId: estimatedId ?? this.estimatedId,
      estimatedNumber: estimatedNumber ?? this.estimatedNumber,
      estimatedAddress1: estimatedAddress1 ?? this.estimatedAddress1,
      estimatedAddress2: estimatedAddress2 ?? this.estimatedAddress2,
      estimatedCity: estimatedCity ?? this.estimatedCity,
      estimatedState: estimatedState ?? this.estimatedState,
      estimatedZipCode: estimatedZipCode ?? this.estimatedZipCode,
      operation: operation ?? this.operation,
      isProcessor: isProcessor ?? this.isProcessor,
      isDistributor: isDistributor ?? this.isDistributor,
      isRenderer: isRenderer ?? this.isRenderer,
      isBroker: isBroker ?? this.isBroker,
      is3D4D: is3D4D ?? this.is3D4D,
      isRetailer: isRetailer ?? this.isRetailer,
      isTransporter: isTransporter ?? this.isTransporter,
      isCustom: isCustom ?? this.isCustom,
      isRestaurant: isRestaurant ?? this.isRestaurant,
      isMiscellaneous: isMiscellaneous ?? this.isMiscellaneous,
      isAnimalFood: isAnimalFood ?? this.isAnimalFood,
      isWarehouse: isWarehouse ?? this.isWarehouse,
      isSalvage: isSalvage ?? this.isSalvage,
      isPointOfEntry: isPointOfEntry ?? this.isPointOfEntry,
      isBondedArea: isBondedArea ?? this.isBondedArea,
      isAbattoir: isAbattoir ?? this.isAbattoir,
      isExemptPoultry: isExemptPoultry ?? this.isExemptPoultry,
      isFoodBank: isFoodBank ?? this.isFoodBank,
      isFollowUp: isFollowUp ?? this.isFollowUp,
      followUpComplete: followUpComplete ?? this.followUpComplete,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordType.present) {
      final converter = $SurvAdditionalInfoTable.$converterrecordTypen;

      map['record_type'] = Variable<int>(converter.toSql(recordType.value));
    }
    if (investigatorMeetRep.present) {
      map['investigator_meet_rep'] = Variable<bool>(investigatorMeetRep.value);
    }
    if (investigatorReferFindings.present) {
      map['investigator_refer_findings'] =
          Variable<bool>(investigatorReferFindings.value);
    }
    if (isFollowUpFromPrevious.present) {
      map['is_follow_up_from_previous'] =
          Variable<bool>(isFollowUpFromPrevious.value);
    }
    if (firmRepresentative1.present) {
      map['firm_representative1'] = Variable<String>(firmRepresentative1.value);
    }
    if (firmRepresentativeTitle1.present) {
      map['firm_representative_title1'] =
          Variable<String>(firmRepresentativeTitle1.value);
    }
    if (firmRepresentative2.present) {
      map['firm_representative2'] = Variable<String>(firmRepresentative2.value);
    }
    if (firmRepresentativeTitle2.present) {
      map['firm_representative_title2'] =
          Variable<String>(firmRepresentativeTitle2.value);
    }
    if (referralComments.present) {
      map['referral_comments'] = Variable<String>(referralComments.value);
    }
    if (followUpComments.present) {
      map['follow_up_comments'] = Variable<String>(followUpComments.value);
    }
    if (location.present) {
      map['location'] = Variable<String>(location.value);
    }
    if (followUpDateComplete.present) {
      map['follow_up_date_complete'] =
          Variable<DateTime>(followUpDateComplete.value);
    }
    if (followUpMonths.present) {
      map['follow_up_months'] = Variable<String>(followUpMonths.value);
    }
    if (additionalComments.present) {
      map['additional_comments'] = Variable<String>(additionalComments.value);
    }
    if (primaryBusinessType.present) {
      map['primary_business_type'] =
          Variable<String>(primaryBusinessType.value);
    }
    if (region.present) {
      map['region'] = Variable<String>(region.value);
    }
    if (mailingAddress.present) {
      map['mailing_address'] = Variable<String>(mailingAddress.value);
    }
    if (assignment.present) {
      map['assignment'] = Variable<String>(assignment.value);
    }
    if (estimatedId.present) {
      map['estimated_id'] = Variable<String>(estimatedId.value);
    }
    if (estimatedNumber.present) {
      map['estimated_number'] = Variable<String>(estimatedNumber.value);
    }
    if (estimatedAddress1.present) {
      map['estimated_address1'] = Variable<String>(estimatedAddress1.value);
    }
    if (estimatedAddress2.present) {
      map['estimated_address2'] = Variable<String>(estimatedAddress2.value);
    }
    if (estimatedCity.present) {
      map['estimated_city'] = Variable<String>(estimatedCity.value);
    }
    if (estimatedState.present) {
      map['estimated_state'] = Variable<String>(estimatedState.value);
    }
    if (estimatedZipCode.present) {
      map['estimated_zip_code'] = Variable<String>(estimatedZipCode.value);
    }
    if (operation.present) {
      map['operation'] = Variable<String>(operation.value);
    }
    if (isProcessor.present) {
      map['is_processor'] = Variable<bool>(isProcessor.value);
    }
    if (isDistributor.present) {
      map['is_distributor'] = Variable<bool>(isDistributor.value);
    }
    if (isRenderer.present) {
      map['is_renderer'] = Variable<bool>(isRenderer.value);
    }
    if (isBroker.present) {
      map['is_broker'] = Variable<bool>(isBroker.value);
    }
    if (is3D4D.present) {
      map['is3_d4_d'] = Variable<bool>(is3D4D.value);
    }
    if (isRetailer.present) {
      map['is_retailer'] = Variable<bool>(isRetailer.value);
    }
    if (isTransporter.present) {
      map['is_transporter'] = Variable<bool>(isTransporter.value);
    }
    if (isCustom.present) {
      map['is_custom'] = Variable<bool>(isCustom.value);
    }
    if (isRestaurant.present) {
      map['is_restaurant'] = Variable<bool>(isRestaurant.value);
    }
    if (isMiscellaneous.present) {
      map['is_miscellaneous'] = Variable<bool>(isMiscellaneous.value);
    }
    if (isAnimalFood.present) {
      map['is_animal_food'] = Variable<bool>(isAnimalFood.value);
    }
    if (isWarehouse.present) {
      map['is_warehouse'] = Variable<bool>(isWarehouse.value);
    }
    if (isSalvage.present) {
      map['is_salvage'] = Variable<bool>(isSalvage.value);
    }
    if (isPointOfEntry.present) {
      map['is_point_of_entry'] = Variable<bool>(isPointOfEntry.value);
    }
    if (isBondedArea.present) {
      map['is_bonded_area'] = Variable<bool>(isBondedArea.value);
    }
    if (isAbattoir.present) {
      map['is_abattoir'] = Variable<bool>(isAbattoir.value);
    }
    if (isExemptPoultry.present) {
      map['is_exempt_poultry'] = Variable<bool>(isExemptPoultry.value);
    }
    if (isFoodBank.present) {
      map['is_food_bank'] = Variable<bool>(isFoodBank.value);
    }
    if (isFollowUp.present) {
      map['is_follow_up'] = Variable<bool>(isFollowUp.value);
    }
    if (followUpComplete.present) {
      map['follow_up_complete'] = Variable<bool>(followUpComplete.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SurvAdditionalInfoCompanion(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('investigatorMeetRep: $investigatorMeetRep, ')
          ..write('investigatorReferFindings: $investigatorReferFindings, ')
          ..write('isFollowUpFromPrevious: $isFollowUpFromPrevious, ')
          ..write('firmRepresentative1: $firmRepresentative1, ')
          ..write('firmRepresentativeTitle1: $firmRepresentativeTitle1, ')
          ..write('firmRepresentative2: $firmRepresentative2, ')
          ..write('firmRepresentativeTitle2: $firmRepresentativeTitle2, ')
          ..write('referralComments: $referralComments, ')
          ..write('followUpComments: $followUpComments, ')
          ..write('location: $location, ')
          ..write('followUpDateComplete: $followUpDateComplete, ')
          ..write('followUpMonths: $followUpMonths, ')
          ..write('additionalComments: $additionalComments, ')
          ..write('primaryBusinessType: $primaryBusinessType, ')
          ..write('region: $region, ')
          ..write('mailingAddress: $mailingAddress, ')
          ..write('assignment: $assignment, ')
          ..write('estimatedId: $estimatedId, ')
          ..write('estimatedNumber: $estimatedNumber, ')
          ..write('estimatedAddress1: $estimatedAddress1, ')
          ..write('estimatedAddress2: $estimatedAddress2, ')
          ..write('estimatedCity: $estimatedCity, ')
          ..write('estimatedState: $estimatedState, ')
          ..write('estimatedZipCode: $estimatedZipCode, ')
          ..write('operation: $operation, ')
          ..write('isProcessor: $isProcessor, ')
          ..write('isDistributor: $isDistributor, ')
          ..write('isRenderer: $isRenderer, ')
          ..write('isBroker: $isBroker, ')
          ..write('is3D4D: $is3D4D, ')
          ..write('isRetailer: $isRetailer, ')
          ..write('isTransporter: $isTransporter, ')
          ..write('isCustom: $isCustom, ')
          ..write('isRestaurant: $isRestaurant, ')
          ..write('isMiscellaneous: $isMiscellaneous, ')
          ..write('isAnimalFood: $isAnimalFood, ')
          ..write('isWarehouse: $isWarehouse, ')
          ..write('isSalvage: $isSalvage, ')
          ..write('isPointOfEntry: $isPointOfEntry, ')
          ..write('isBondedArea: $isBondedArea, ')
          ..write('isAbattoir: $isAbattoir, ')
          ..write('isExemptPoultry: $isExemptPoultry, ')
          ..write('isFoodBank: $isFoodBank, ')
          ..write('isFollowUp: $isFollowUp, ')
          ..write('followUpComplete: $followUpComplete')
          ..write(')'))
        .toString();
  }
}

class $SurvGeneralInfoTable extends SurvGeneralInfo
    with TableInfo<$SurvGeneralInfoTable, SurvGeneralInfoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SurvGeneralInfoTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<RecordType?, int> recordType =
      GeneratedColumn<int>('record_type', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<RecordType?>(
              $SurvGeneralInfoTable.$converterrecordTypen);
  @override
  late final GeneratedColumn<DateTime> datePerformed =
      GeneratedColumn<DateTime>('date_performed', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> estimatedId = GeneratedColumn<String>(
      'estimated_id', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumnWithTypeConverter<MultiString?, String> reason =
      GeneratedColumn<String>('reason', aliasedName, true,
              additionalChecks: GeneratedColumn.checkTextLength(),
              type: DriftSqlType.string,
              requiredDuringInsert: false)
          .withConverter<MultiString?>($SurvGeneralInfoTable.$converterreason);
  @override
  late final GeneratedColumnWithTypeConverter<MultiString?, String>
      retailProject = GeneratedColumn<String>(
              'retail_project', aliasedName, true,
              additionalChecks: GeneratedColumn.checkTextLength(),
              type: DriftSqlType.string,
              requiredDuringInsert: false)
          .withConverter<MultiString?>(
              $SurvGeneralInfoTable.$converterretailProject);
  @override
  late final GeneratedColumnWithTypeConverter<MultiString?, String>
      retailProjectOther = GeneratedColumn<String>(
              'retail_project_other', aliasedName, true,
              additionalChecks: GeneratedColumn.checkTextLength(),
              type: DriftSqlType.string,
              requiredDuringInsert: false)
          .withConverter<MultiString?>(
              $SurvGeneralInfoTable.$converterretailProjectOther);
  @override
  late final GeneratedColumnWithTypeConverter<MultiString?, String>
      retailSpecialProject = GeneratedColumn<String>(
              'retail_special_project', aliasedName, true,
              additionalChecks: GeneratedColumn.checkTextLength(),
              type: DriftSqlType.string,
              requiredDuringInsert: false)
          .withConverter<MultiString?>(
              $SurvGeneralInfoTable.$converterretailSpecialProject);
  @override
  late final GeneratedColumnWithTypeConverter<MultiString?, String>
      specialProject = GeneratedColumn<String>(
              'special_project', aliasedName, true,
              additionalChecks: GeneratedColumn.checkTextLength(),
              type: DriftSqlType.string,
              requiredDuringInsert: false)
          .withConverter<MultiString?>(
              $SurvGeneralInfoTable.$converterspecialProject);
  @override
  late final GeneratedColumn<String> firmNameAtTimeOfAction =
      GeneratedColumn<String>('firm_name_at_time_of_action', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> isOPEERUser = GeneratedColumn<bool>(
      'is_o_p_e_e_r_user', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_o_p_e_e_r_user" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> isOIAUser = GeneratedColumn<bool>(
      'is_o_i_a_user', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_o_i_a_user" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> isSurvReviewer = GeneratedColumn<bool>(
      'is_surv_reviewer', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_surv_reviewer" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> isOIASurvReviewer = GeneratedColumn<bool>(
      'is_o_i_a_surv_reviewer', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_o_i_a_surv_reviewer" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        recordType,
        datePerformed,
        estimatedId,
        reason,
        retailProject,
        retailProjectOther,
        retailSpecialProject,
        specialProject,
        firmNameAtTimeOfAction,
        isOPEERUser,
        isOIAUser,
        isSurvReviewer,
        isOIASurvReviewer
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'surv_general_info';
  @override
  Set<GeneratedColumn> get $primaryKey => {id, recordType};
  @override
  SurvGeneralInfoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SurvGeneralInfoData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      recordType: $SurvGeneralInfoTable.$converterrecordTypen.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}record_type'])),
      datePerformed: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}date_performed']),
      estimatedId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}estimated_id']),
      reason: $SurvGeneralInfoTable.$converterreason.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}reason'])),
      retailProject: $SurvGeneralInfoTable.$converterretailProject.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}retail_project'])),
      retailProjectOther: $SurvGeneralInfoTable.$converterretailProjectOther
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}retail_project_other'])),
      retailSpecialProject: $SurvGeneralInfoTable.$converterretailSpecialProject
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}retail_special_project'])),
      specialProject: $SurvGeneralInfoTable.$converterspecialProject.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}special_project'])),
      firmNameAtTimeOfAction: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}firm_name_at_time_of_action']),
      isOPEERUser: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_o_p_e_e_r_user']),
      isOIAUser: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_o_i_a_user']),
      isSurvReviewer: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_surv_reviewer']),
      isOIASurvReviewer: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}is_o_i_a_surv_reviewer']),
    );
  }

  @override
  $SurvGeneralInfoTable createAlias(String alias) {
    return $SurvGeneralInfoTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RecordType, int, int> $converterrecordType =
      const EnumIndexConverter<RecordType>(RecordType.values);
  static JsonTypeConverter2<RecordType?, int?, int?> $converterrecordTypen =
      JsonTypeConverter2.asNullable($converterrecordType);
  static TypeConverter<MultiString?, String?> $converterreason =
      const MultiStringConverter();
  static TypeConverter<MultiString?, String?> $converterretailProject =
      const MultiStringConverter();
  static TypeConverter<MultiString?, String?> $converterretailProjectOther =
      const MultiStringConverter();
  static TypeConverter<MultiString?, String?> $converterretailSpecialProject =
      const MultiStringConverter();
  static TypeConverter<MultiString?, String?> $converterspecialProject =
      const MultiStringConverter();
}

class SurvGeneralInfoData extends DataClassBehavioral<SurvGeneralInfoData>
    implements Insertable<SurvGeneralInfoData> {
  final int id;
  final RecordType? recordType;
  final DateTime? datePerformed;
  final String? estimatedId;
  final MultiString? reason;
  final MultiString? retailProject;
  final MultiString? retailProjectOther;
  final MultiString? retailSpecialProject;
  final MultiString? specialProject;
  final String? firmNameAtTimeOfAction;
  final bool? isOPEERUser;
  final bool? isOIAUser;
  final bool? isSurvReviewer;
  final bool? isOIASurvReviewer;
  const SurvGeneralInfoData(
      {required this.id,
      this.recordType,
      this.datePerformed,
      this.estimatedId,
      this.reason,
      this.retailProject,
      this.retailProjectOther,
      this.retailSpecialProject,
      this.specialProject,
      this.firmNameAtTimeOfAction,
      this.isOPEERUser,
      this.isOIAUser,
      this.isSurvReviewer,
      this.isOIASurvReviewer});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || recordType != null) {
      final converter = $SurvGeneralInfoTable.$converterrecordTypen;
      map['record_type'] = Variable<int>(converter.toSql(recordType));
    }
    if (!nullToAbsent || datePerformed != null) {
      map['date_performed'] = Variable<DateTime>(datePerformed);
    }
    if (!nullToAbsent || estimatedId != null) {
      map['estimated_id'] = Variable<String>(estimatedId);
    }
    if (!nullToAbsent || reason != null) {
      final converter = $SurvGeneralInfoTable.$converterreason;
      map['reason'] = Variable<String>(converter.toSql(reason));
    }
    if (!nullToAbsent || retailProject != null) {
      final converter = $SurvGeneralInfoTable.$converterretailProject;
      map['retail_project'] = Variable<String>(converter.toSql(retailProject));
    }
    if (!nullToAbsent || retailProjectOther != null) {
      final converter = $SurvGeneralInfoTable.$converterretailProjectOther;
      map['retail_project_other'] =
          Variable<String>(converter.toSql(retailProjectOther));
    }
    if (!nullToAbsent || retailSpecialProject != null) {
      final converter = $SurvGeneralInfoTable.$converterretailSpecialProject;
      map['retail_special_project'] =
          Variable<String>(converter.toSql(retailSpecialProject));
    }
    if (!nullToAbsent || specialProject != null) {
      final converter = $SurvGeneralInfoTable.$converterspecialProject;
      map['special_project'] =
          Variable<String>(converter.toSql(specialProject));
    }
    if (!nullToAbsent || firmNameAtTimeOfAction != null) {
      map['firm_name_at_time_of_action'] =
          Variable<String>(firmNameAtTimeOfAction);
    }
    if (!nullToAbsent || isOPEERUser != null) {
      map['is_o_p_e_e_r_user'] = Variable<bool>(isOPEERUser);
    }
    if (!nullToAbsent || isOIAUser != null) {
      map['is_o_i_a_user'] = Variable<bool>(isOIAUser);
    }
    if (!nullToAbsent || isSurvReviewer != null) {
      map['is_surv_reviewer'] = Variable<bool>(isSurvReviewer);
    }
    if (!nullToAbsent || isOIASurvReviewer != null) {
      map['is_o_i_a_surv_reviewer'] = Variable<bool>(isOIASurvReviewer);
    }
    return map;
  }

  SurvGeneralInfoCompanion toCompanion(bool nullToAbsent) {
    return SurvGeneralInfoCompanion(
      id: Value(id),
      recordType: recordType == null && nullToAbsent
          ? const Value.absent()
          : Value(recordType),
      datePerformed: datePerformed == null && nullToAbsent
          ? const Value.absent()
          : Value(datePerformed),
      estimatedId: estimatedId == null && nullToAbsent
          ? const Value.absent()
          : Value(estimatedId),
      reason:
          reason == null && nullToAbsent ? const Value.absent() : Value(reason),
      retailProject: retailProject == null && nullToAbsent
          ? const Value.absent()
          : Value(retailProject),
      retailProjectOther: retailProjectOther == null && nullToAbsent
          ? const Value.absent()
          : Value(retailProjectOther),
      retailSpecialProject: retailSpecialProject == null && nullToAbsent
          ? const Value.absent()
          : Value(retailSpecialProject),
      specialProject: specialProject == null && nullToAbsent
          ? const Value.absent()
          : Value(specialProject),
      firmNameAtTimeOfAction: firmNameAtTimeOfAction == null && nullToAbsent
          ? const Value.absent()
          : Value(firmNameAtTimeOfAction),
      isOPEERUser: isOPEERUser == null && nullToAbsent
          ? const Value.absent()
          : Value(isOPEERUser),
      isOIAUser: isOIAUser == null && nullToAbsent
          ? const Value.absent()
          : Value(isOIAUser),
      isSurvReviewer: isSurvReviewer == null && nullToAbsent
          ? const Value.absent()
          : Value(isSurvReviewer),
      isOIASurvReviewer: isOIASurvReviewer == null && nullToAbsent
          ? const Value.absent()
          : Value(isOIASurvReviewer),
    );
  }

  factory SurvGeneralInfoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SurvGeneralInfoData(
      id: serializer.fromJson<int>(json['id']),
      recordType: $SurvGeneralInfoTable.$converterrecordTypen
          .fromJson(serializer.fromJson<int?>(json['recordType'])),
      datePerformed: serializer.fromJson<DateTime?>(json['datePerformed']),
      estimatedId: serializer.fromJson<String?>(json['estimatedId']),
      reason: serializer.fromJson<MultiString?>(json['reason']),
      retailProject: serializer.fromJson<MultiString?>(json['retailProject']),
      retailProjectOther:
          serializer.fromJson<MultiString?>(json['retailProjectOther']),
      retailSpecialProject:
          serializer.fromJson<MultiString?>(json['retailSpecialProject']),
      specialProject: serializer.fromJson<MultiString?>(json['specialProject']),
      firmNameAtTimeOfAction:
          serializer.fromJson<String?>(json['firmNameAtTimeOfAction']),
      isOPEERUser: serializer.fromJson<bool?>(json['isOPEERUser']),
      isOIAUser: serializer.fromJson<bool?>(json['isOIAUser']),
      isSurvReviewer: serializer.fromJson<bool?>(json['isSurvReviewer']),
      isOIASurvReviewer: serializer.fromJson<bool?>(json['isOIASurvReviewer']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordType': serializer.toJson<int?>(
          $SurvGeneralInfoTable.$converterrecordTypen.toJson(recordType)),
      'datePerformed': serializer.toJson<DateTime?>(datePerformed),
      'estimatedId': serializer.toJson<String?>(estimatedId),
      'reason': serializer.toJson<MultiString?>(reason),
      'retailProject': serializer.toJson<MultiString?>(retailProject),
      'retailProjectOther': serializer.toJson<MultiString?>(retailProjectOther),
      'retailSpecialProject':
          serializer.toJson<MultiString?>(retailSpecialProject),
      'specialProject': serializer.toJson<MultiString?>(specialProject),
      'firmNameAtTimeOfAction':
          serializer.toJson<String?>(firmNameAtTimeOfAction),
      'isOPEERUser': serializer.toJson<bool?>(isOPEERUser),
      'isOIAUser': serializer.toJson<bool?>(isOIAUser),
      'isSurvReviewer': serializer.toJson<bool?>(isSurvReviewer),
      'isOIASurvReviewer': serializer.toJson<bool?>(isOIASurvReviewer),
    };
  }

  SurvGeneralInfoData copyWith(
          {int? id,
          Value<RecordType?> recordType = const Value.absent(),
          Value<DateTime?> datePerformed = const Value.absent(),
          Value<String?> estimatedId = const Value.absent(),
          Value<MultiString?> reason = const Value.absent(),
          Value<MultiString?> retailProject = const Value.absent(),
          Value<MultiString?> retailProjectOther = const Value.absent(),
          Value<MultiString?> retailSpecialProject = const Value.absent(),
          Value<MultiString?> specialProject = const Value.absent(),
          Value<String?> firmNameAtTimeOfAction = const Value.absent(),
          Value<bool?> isOPEERUser = const Value.absent(),
          Value<bool?> isOIAUser = const Value.absent(),
          Value<bool?> isSurvReviewer = const Value.absent(),
          Value<bool?> isOIASurvReviewer = const Value.absent()}) =>
      SurvGeneralInfoData(
        id: id ?? this.id,
        recordType: recordType.present ? recordType.value : this.recordType,
        datePerformed:
            datePerformed.present ? datePerformed.value : this.datePerformed,
        estimatedId: estimatedId.present ? estimatedId.value : this.estimatedId,
        reason: reason.present ? reason.value : this.reason,
        retailProject:
            retailProject.present ? retailProject.value : this.retailProject,
        retailProjectOther: retailProjectOther.present
            ? retailProjectOther.value
            : this.retailProjectOther,
        retailSpecialProject: retailSpecialProject.present
            ? retailSpecialProject.value
            : this.retailSpecialProject,
        specialProject:
            specialProject.present ? specialProject.value : this.specialProject,
        firmNameAtTimeOfAction: firmNameAtTimeOfAction.present
            ? firmNameAtTimeOfAction.value
            : this.firmNameAtTimeOfAction,
        isOPEERUser: isOPEERUser.present ? isOPEERUser.value : this.isOPEERUser,
        isOIAUser: isOIAUser.present ? isOIAUser.value : this.isOIAUser,
        isSurvReviewer:
            isSurvReviewer.present ? isSurvReviewer.value : this.isSurvReviewer,
        isOIASurvReviewer: isOIASurvReviewer.present
            ? isOIASurvReviewer.value
            : this.isOIASurvReviewer,
      );
  @override
  String toString() {
    return (StringBuffer('SurvGeneralInfoData(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('datePerformed: $datePerformed, ')
          ..write('estimatedId: $estimatedId, ')
          ..write('reason: $reason, ')
          ..write('retailProject: $retailProject, ')
          ..write('retailProjectOther: $retailProjectOther, ')
          ..write('retailSpecialProject: $retailSpecialProject, ')
          ..write('specialProject: $specialProject, ')
          ..write('firmNameAtTimeOfAction: $firmNameAtTimeOfAction, ')
          ..write('isOPEERUser: $isOPEERUser, ')
          ..write('isOIAUser: $isOIAUser, ')
          ..write('isSurvReviewer: $isSurvReviewer, ')
          ..write('isOIASurvReviewer: $isOIASurvReviewer')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      recordType,
      datePerformed,
      estimatedId,
      reason,
      retailProject,
      retailProjectOther,
      retailSpecialProject,
      specialProject,
      firmNameAtTimeOfAction,
      isOPEERUser,
      isOIAUser,
      isSurvReviewer,
      isOIASurvReviewer);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SurvGeneralInfoData &&
          other.id == this.id &&
          other.recordType == this.recordType &&
          other.datePerformed == this.datePerformed &&
          other.estimatedId == this.estimatedId &&
          other.reason == this.reason &&
          other.retailProject == this.retailProject &&
          other.retailProjectOther == this.retailProjectOther &&
          other.retailSpecialProject == this.retailSpecialProject &&
          other.specialProject == this.specialProject &&
          other.firmNameAtTimeOfAction == this.firmNameAtTimeOfAction &&
          other.isOPEERUser == this.isOPEERUser &&
          other.isOIAUser == this.isOIAUser &&
          other.isSurvReviewer == this.isSurvReviewer &&
          other.isOIASurvReviewer == this.isOIASurvReviewer);
}

class SurvGeneralInfoCompanion extends UpdateCompanion<SurvGeneralInfoData> {
  final Value<int> id;
  final Value<RecordType?> recordType;
  final Value<DateTime?> datePerformed;
  final Value<String?> estimatedId;
  final Value<MultiString?> reason;
  final Value<MultiString?> retailProject;
  final Value<MultiString?> retailProjectOther;
  final Value<MultiString?> retailSpecialProject;
  final Value<MultiString?> specialProject;
  final Value<String?> firmNameAtTimeOfAction;
  final Value<bool?> isOPEERUser;
  final Value<bool?> isOIAUser;
  final Value<bool?> isSurvReviewer;
  final Value<bool?> isOIASurvReviewer;
  final Value<int> rowid;
  const SurvGeneralInfoCompanion({
    this.id = const Value.absent(),
    this.recordType = const Value.absent(),
    this.datePerformed = const Value.absent(),
    this.estimatedId = const Value.absent(),
    this.reason = const Value.absent(),
    this.retailProject = const Value.absent(),
    this.retailProjectOther = const Value.absent(),
    this.retailSpecialProject = const Value.absent(),
    this.specialProject = const Value.absent(),
    this.firmNameAtTimeOfAction = const Value.absent(),
    this.isOPEERUser = const Value.absent(),
    this.isOIAUser = const Value.absent(),
    this.isSurvReviewer = const Value.absent(),
    this.isOIASurvReviewer = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SurvGeneralInfoCompanion.insert({
    required int id,
    this.recordType = const Value.absent(),
    this.datePerformed = const Value.absent(),
    this.estimatedId = const Value.absent(),
    this.reason = const Value.absent(),
    this.retailProject = const Value.absent(),
    this.retailProjectOther = const Value.absent(),
    this.retailSpecialProject = const Value.absent(),
    this.specialProject = const Value.absent(),
    this.firmNameAtTimeOfAction = const Value.absent(),
    this.isOPEERUser = const Value.absent(),
    this.isOIAUser = const Value.absent(),
    this.isSurvReviewer = const Value.absent(),
    this.isOIASurvReviewer = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<SurvGeneralInfoData> custom({
    Expression<int>? id,
    Expression<int>? recordType,
    Expression<DateTime>? datePerformed,
    Expression<String>? estimatedId,
    Expression<String>? reason,
    Expression<String>? retailProject,
    Expression<String>? retailProjectOther,
    Expression<String>? retailSpecialProject,
    Expression<String>? specialProject,
    Expression<String>? firmNameAtTimeOfAction,
    Expression<bool>? isOPEERUser,
    Expression<bool>? isOIAUser,
    Expression<bool>? isSurvReviewer,
    Expression<bool>? isOIASurvReviewer,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordType != null) 'record_type': recordType,
      if (datePerformed != null) 'date_performed': datePerformed,
      if (estimatedId != null) 'estimated_id': estimatedId,
      if (reason != null) 'reason': reason,
      if (retailProject != null) 'retail_project': retailProject,
      if (retailProjectOther != null)
        'retail_project_other': retailProjectOther,
      if (retailSpecialProject != null)
        'retail_special_project': retailSpecialProject,
      if (specialProject != null) 'special_project': specialProject,
      if (firmNameAtTimeOfAction != null)
        'firm_name_at_time_of_action': firmNameAtTimeOfAction,
      if (isOPEERUser != null) 'is_o_p_e_e_r_user': isOPEERUser,
      if (isOIAUser != null) 'is_o_i_a_user': isOIAUser,
      if (isSurvReviewer != null) 'is_surv_reviewer': isSurvReviewer,
      if (isOIASurvReviewer != null)
        'is_o_i_a_surv_reviewer': isOIASurvReviewer,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SurvGeneralInfoCompanion copyWith(
      {Value<int>? id,
      Value<RecordType?>? recordType,
      Value<DateTime?>? datePerformed,
      Value<String?>? estimatedId,
      Value<MultiString?>? reason,
      Value<MultiString?>? retailProject,
      Value<MultiString?>? retailProjectOther,
      Value<MultiString?>? retailSpecialProject,
      Value<MultiString?>? specialProject,
      Value<String?>? firmNameAtTimeOfAction,
      Value<bool?>? isOPEERUser,
      Value<bool?>? isOIAUser,
      Value<bool?>? isSurvReviewer,
      Value<bool?>? isOIASurvReviewer,
      Value<int>? rowid}) {
    return SurvGeneralInfoCompanion(
      id: id ?? this.id,
      recordType: recordType ?? this.recordType,
      datePerformed: datePerformed ?? this.datePerformed,
      estimatedId: estimatedId ?? this.estimatedId,
      reason: reason ?? this.reason,
      retailProject: retailProject ?? this.retailProject,
      retailProjectOther: retailProjectOther ?? this.retailProjectOther,
      retailSpecialProject: retailSpecialProject ?? this.retailSpecialProject,
      specialProject: specialProject ?? this.specialProject,
      firmNameAtTimeOfAction:
          firmNameAtTimeOfAction ?? this.firmNameAtTimeOfAction,
      isOPEERUser: isOPEERUser ?? this.isOPEERUser,
      isOIAUser: isOIAUser ?? this.isOIAUser,
      isSurvReviewer: isSurvReviewer ?? this.isSurvReviewer,
      isOIASurvReviewer: isOIASurvReviewer ?? this.isOIASurvReviewer,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordType.present) {
      final converter = $SurvGeneralInfoTable.$converterrecordTypen;

      map['record_type'] = Variable<int>(converter.toSql(recordType.value));
    }
    if (datePerformed.present) {
      map['date_performed'] = Variable<DateTime>(datePerformed.value);
    }
    if (estimatedId.present) {
      map['estimated_id'] = Variable<String>(estimatedId.value);
    }
    if (reason.present) {
      final converter = $SurvGeneralInfoTable.$converterreason;

      map['reason'] = Variable<String>(converter.toSql(reason.value));
    }
    if (retailProject.present) {
      final converter = $SurvGeneralInfoTable.$converterretailProject;

      map['retail_project'] =
          Variable<String>(converter.toSql(retailProject.value));
    }
    if (retailProjectOther.present) {
      final converter = $SurvGeneralInfoTable.$converterretailProjectOther;

      map['retail_project_other'] =
          Variable<String>(converter.toSql(retailProjectOther.value));
    }
    if (retailSpecialProject.present) {
      final converter = $SurvGeneralInfoTable.$converterretailSpecialProject;

      map['retail_special_project'] =
          Variable<String>(converter.toSql(retailSpecialProject.value));
    }
    if (specialProject.present) {
      final converter = $SurvGeneralInfoTable.$converterspecialProject;

      map['special_project'] =
          Variable<String>(converter.toSql(specialProject.value));
    }
    if (firmNameAtTimeOfAction.present) {
      map['firm_name_at_time_of_action'] =
          Variable<String>(firmNameAtTimeOfAction.value);
    }
    if (isOPEERUser.present) {
      map['is_o_p_e_e_r_user'] = Variable<bool>(isOPEERUser.value);
    }
    if (isOIAUser.present) {
      map['is_o_i_a_user'] = Variable<bool>(isOIAUser.value);
    }
    if (isSurvReviewer.present) {
      map['is_surv_reviewer'] = Variable<bool>(isSurvReviewer.value);
    }
    if (isOIASurvReviewer.present) {
      map['is_o_i_a_surv_reviewer'] = Variable<bool>(isOIASurvReviewer.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SurvGeneralInfoCompanion(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('datePerformed: $datePerformed, ')
          ..write('estimatedId: $estimatedId, ')
          ..write('reason: $reason, ')
          ..write('retailProject: $retailProject, ')
          ..write('retailProjectOther: $retailProjectOther, ')
          ..write('retailSpecialProject: $retailSpecialProject, ')
          ..write('specialProject: $specialProject, ')
          ..write('firmNameAtTimeOfAction: $firmNameAtTimeOfAction, ')
          ..write('isOPEERUser: $isOPEERUser, ')
          ..write('isOIAUser: $isOIAUser, ')
          ..write('isSurvReviewer: $isSurvReviewer, ')
          ..write('isOIASurvReviewer: $isOIASurvReviewer, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SurvFoodDefenseTable extends SurvFoodDefense
    with TableInfo<$SurvFoodDefenseTable, SurvFoodDefenseData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SurvFoodDefenseTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<RecordType?, int> recordType =
      GeneratedColumn<int>('record_type', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<RecordType?>(
              $SurvFoodDefenseTable.$converterrecordTypen);
  @override
  late final GeneratedColumn<bool> wasFoodDefenseConducted =
      GeneratedColumn<bool>('was_food_defense_conducted', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("was_food_defense_conducted" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> meatCheck = GeneratedColumn<bool>(
      'meat_check', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("meat_check" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> eggCheck = GeneratedColumn<bool>(
      'egg_check', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("egg_check" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> shellEggCheck = GeneratedColumn<bool>(
      'shell_egg_check', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("shell_egg_check" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> poultryCheck = GeneratedColumn<bool>(
      'poultry_check', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("poultry_check" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> nonAmenableCheck = GeneratedColumn<bool>(
      'non_amenable_check', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("non_amenable_check" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> siluriformesFishCheck =
      GeneratedColumn<bool>('siluriformes_fish_check', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("siluriformes_fish_check" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> hasWrittenFoodDefensePlan =
      GeneratedColumn<bool>('has_written_food_defense_plan', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("has_written_food_defense_plan" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> hasEmergencyContactInfo =
      GeneratedColumn<bool>('has_emergency_contact_info', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("has_emergency_contact_info" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> hasOutsideSurveillanceSystem =
      GeneratedColumn<bool>(
          'has_outside_surveillance_system', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("has_outside_surveillance_system" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> hasInsideSurveillanceSystem =
      GeneratedColumn<bool>('has_inside_surveillance_system', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("has_inside_surveillance_system" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> hasProceduresForAuthorizedPersons =
      GeneratedColumn<bool>(
          'has_procedures_for_authorized_persons', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("has_procedures_for_authorized_persons" IN (0, 1))'));
  @override
  late final GeneratedColumn<
      bool> hasStoreProceduresForHazardousMaterials = GeneratedColumn<
          bool>(
      'has_store_procedures_for_hazardous_materials', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("has_store_procedures_for_hazardous_materials" IN (0, 1))'));
  @override
  late final GeneratedColumn<
      bool> hasLogToIdentifyEmployeesAndVisitors = GeneratedColumn<
          bool>('has_log_to_identify_employees_and_visitors', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("has_log_to_identify_employees_and_visitors" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> hasShippingRecordAccessRestricted =
      GeneratedColumn<bool>(
          'has_shipping_record_access_restricted', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("has_shipping_record_access_restricted" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> wasSecurityVulnerabilitiesDiscussed =
      GeneratedColumn<bool>(
          'was_security_vulnerabilities_discussed', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("was_security_vulnerabilities_discussed" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> recordsMaintained = GeneratedColumn<bool>(
      'records_maintained', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("records_maintained" IN (0, 1))'));
  @override
  late final GeneratedColumn<
      bool> hasProdedureForFoodAndFoodIngredients = GeneratedColumn<
          bool>(
      'has_prodedure_for_food_and_food_ingredients', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("has_prodedure_for_food_and_food_ingredients" IN (0, 1))'));
  @override
  late final GeneratedColumn<
      bool> hasProcedureForIncomingShippingDocuments = GeneratedColumn<
          bool>(
      'has_procedure_for_incoming_shipping_documents', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("has_procedure_for_incoming_shipping_documents" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> isFreeFromTampering = GeneratedColumn<bool>(
      'is_free_from_tampering', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_free_from_tampering" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> wasDriverIdentificationVerified =
      GeneratedColumn<bool>(
          'was_driver_identification_verified', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("was_driver_identification_verified" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> didDetentionOccur = GeneratedColumn<bool>(
      'did_detention_occur', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("did_detention_occur" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> wasForm5420Provided = GeneratedColumn<bool>(
      'was_form5420_provided', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("was_form5420_provided" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> wasMaintenenceSecurityDuringShip =
      GeneratedColumn<bool>(
          'was_maintenence_security_during_ship', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("was_maintenence_security_during_ship" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> productsFreeFromTampering =
      GeneratedColumn<bool>('products_free_from_tampering', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("products_free_from_tampering" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> foodDefenseExitNotes =
      GeneratedColumn<String>('food_defense_exit_notes', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> investigatorNotes =
      GeneratedColumn<String>('investigator_notes', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        recordType,
        wasFoodDefenseConducted,
        meatCheck,
        eggCheck,
        shellEggCheck,
        poultryCheck,
        nonAmenableCheck,
        siluriformesFishCheck,
        hasWrittenFoodDefensePlan,
        hasEmergencyContactInfo,
        hasOutsideSurveillanceSystem,
        hasInsideSurveillanceSystem,
        hasProceduresForAuthorizedPersons,
        hasStoreProceduresForHazardousMaterials,
        hasLogToIdentifyEmployeesAndVisitors,
        hasShippingRecordAccessRestricted,
        wasSecurityVulnerabilitiesDiscussed,
        recordsMaintained,
        hasProdedureForFoodAndFoodIngredients,
        hasProcedureForIncomingShippingDocuments,
        isFreeFromTampering,
        wasDriverIdentificationVerified,
        didDetentionOccur,
        wasForm5420Provided,
        wasMaintenenceSecurityDuringShip,
        productsFreeFromTampering,
        foodDefenseExitNotes,
        investigatorNotes
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'surv_food_defense';
  @override
  Set<GeneratedColumn> get $primaryKey => {id, recordType};
  @override
  SurvFoodDefenseData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SurvFoodDefenseData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      recordType: $SurvFoodDefenseTable.$converterrecordTypen.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}record_type'])),
      wasFoodDefenseConducted: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}was_food_defense_conducted']),
      meatCheck: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}meat_check']),
      eggCheck: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}egg_check']),
      shellEggCheck: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}shell_egg_check']),
      poultryCheck: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}poultry_check']),
      nonAmenableCheck: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}non_amenable_check']),
      siluriformesFishCheck: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}siluriformes_fish_check']),
      hasWrittenFoodDefensePlan: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}has_written_food_defense_plan']),
      hasEmergencyContactInfo: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}has_emergency_contact_info']),
      hasOutsideSurveillanceSystem: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}has_outside_surveillance_system']),
      hasInsideSurveillanceSystem: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}has_inside_surveillance_system']),
      hasProceduresForAuthorizedPersons: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}has_procedures_for_authorized_persons']),
      hasStoreProceduresForHazardousMaterials: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data[
              '${effectivePrefix}has_store_procedures_for_hazardous_materials']),
      hasLogToIdentifyEmployeesAndVisitors: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}has_log_to_identify_employees_and_visitors']),
      hasShippingRecordAccessRestricted: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}has_shipping_record_access_restricted']),
      wasSecurityVulnerabilitiesDiscussed: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}was_security_vulnerabilities_discussed']),
      recordsMaintained: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}records_maintained']),
      hasProdedureForFoodAndFoodIngredients: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data[
              '${effectivePrefix}has_prodedure_for_food_and_food_ingredients']),
      hasProcedureForIncomingShippingDocuments: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data[
              '${effectivePrefix}has_procedure_for_incoming_shipping_documents']),
      isFreeFromTampering: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}is_free_from_tampering']),
      wasDriverIdentificationVerified: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}was_driver_identification_verified']),
      didDetentionOccur: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}did_detention_occur']),
      wasForm5420Provided: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}was_form5420_provided']),
      wasMaintenenceSecurityDuringShip: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}was_maintenence_security_during_ship']),
      productsFreeFromTampering: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}products_free_from_tampering']),
      foodDefenseExitNotes: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}food_defense_exit_notes']),
      investigatorNotes: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}investigator_notes']),
    );
  }

  @override
  $SurvFoodDefenseTable createAlias(String alias) {
    return $SurvFoodDefenseTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RecordType, int, int> $converterrecordType =
      const EnumIndexConverter<RecordType>(RecordType.values);
  static JsonTypeConverter2<RecordType?, int?, int?> $converterrecordTypen =
      JsonTypeConverter2.asNullable($converterrecordType);
}

class SurvFoodDefenseData extends DataClassBehavioral<SurvFoodDefenseData>
    implements Insertable<SurvFoodDefenseData> {
  final int id;
  final RecordType? recordType;
  final bool? wasFoodDefenseConducted;
  final bool? meatCheck;
  final bool? eggCheck;
  final bool? shellEggCheck;
  final bool? poultryCheck;
  final bool? nonAmenableCheck;
  final bool? siluriformesFishCheck;
  final bool? hasWrittenFoodDefensePlan;
  final bool? hasEmergencyContactInfo;
  final bool? hasOutsideSurveillanceSystem;
  final bool? hasInsideSurveillanceSystem;
  final bool? hasProceduresForAuthorizedPersons;
  final bool? hasStoreProceduresForHazardousMaterials;
  final bool? hasLogToIdentifyEmployeesAndVisitors;
  final bool? hasShippingRecordAccessRestricted;
  final bool? wasSecurityVulnerabilitiesDiscussed;
  final bool? recordsMaintained;
  final bool? hasProdedureForFoodAndFoodIngredients;
  final bool? hasProcedureForIncomingShippingDocuments;
  final bool? isFreeFromTampering;
  final bool? wasDriverIdentificationVerified;
  final bool? didDetentionOccur;
  final bool? wasForm5420Provided;
  final bool? wasMaintenenceSecurityDuringShip;
  final bool? productsFreeFromTampering;
  final String? foodDefenseExitNotes;
  final String? investigatorNotes;
  const SurvFoodDefenseData(
      {required this.id,
      this.recordType,
      this.wasFoodDefenseConducted,
      this.meatCheck,
      this.eggCheck,
      this.shellEggCheck,
      this.poultryCheck,
      this.nonAmenableCheck,
      this.siluriformesFishCheck,
      this.hasWrittenFoodDefensePlan,
      this.hasEmergencyContactInfo,
      this.hasOutsideSurveillanceSystem,
      this.hasInsideSurveillanceSystem,
      this.hasProceduresForAuthorizedPersons,
      this.hasStoreProceduresForHazardousMaterials,
      this.hasLogToIdentifyEmployeesAndVisitors,
      this.hasShippingRecordAccessRestricted,
      this.wasSecurityVulnerabilitiesDiscussed,
      this.recordsMaintained,
      this.hasProdedureForFoodAndFoodIngredients,
      this.hasProcedureForIncomingShippingDocuments,
      this.isFreeFromTampering,
      this.wasDriverIdentificationVerified,
      this.didDetentionOccur,
      this.wasForm5420Provided,
      this.wasMaintenenceSecurityDuringShip,
      this.productsFreeFromTampering,
      this.foodDefenseExitNotes,
      this.investigatorNotes});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || recordType != null) {
      final converter = $SurvFoodDefenseTable.$converterrecordTypen;
      map['record_type'] = Variable<int>(converter.toSql(recordType));
    }
    if (!nullToAbsent || wasFoodDefenseConducted != null) {
      map['was_food_defense_conducted'] =
          Variable<bool>(wasFoodDefenseConducted);
    }
    if (!nullToAbsent || meatCheck != null) {
      map['meat_check'] = Variable<bool>(meatCheck);
    }
    if (!nullToAbsent || eggCheck != null) {
      map['egg_check'] = Variable<bool>(eggCheck);
    }
    if (!nullToAbsent || shellEggCheck != null) {
      map['shell_egg_check'] = Variable<bool>(shellEggCheck);
    }
    if (!nullToAbsent || poultryCheck != null) {
      map['poultry_check'] = Variable<bool>(poultryCheck);
    }
    if (!nullToAbsent || nonAmenableCheck != null) {
      map['non_amenable_check'] = Variable<bool>(nonAmenableCheck);
    }
    if (!nullToAbsent || siluriformesFishCheck != null) {
      map['siluriformes_fish_check'] = Variable<bool>(siluriformesFishCheck);
    }
    if (!nullToAbsent || hasWrittenFoodDefensePlan != null) {
      map['has_written_food_defense_plan'] =
          Variable<bool>(hasWrittenFoodDefensePlan);
    }
    if (!nullToAbsent || hasEmergencyContactInfo != null) {
      map['has_emergency_contact_info'] =
          Variable<bool>(hasEmergencyContactInfo);
    }
    if (!nullToAbsent || hasOutsideSurveillanceSystem != null) {
      map['has_outside_surveillance_system'] =
          Variable<bool>(hasOutsideSurveillanceSystem);
    }
    if (!nullToAbsent || hasInsideSurveillanceSystem != null) {
      map['has_inside_surveillance_system'] =
          Variable<bool>(hasInsideSurveillanceSystem);
    }
    if (!nullToAbsent || hasProceduresForAuthorizedPersons != null) {
      map['has_procedures_for_authorized_persons'] =
          Variable<bool>(hasProceduresForAuthorizedPersons);
    }
    if (!nullToAbsent || hasStoreProceduresForHazardousMaterials != null) {
      map['has_store_procedures_for_hazardous_materials'] =
          Variable<bool>(hasStoreProceduresForHazardousMaterials);
    }
    if (!nullToAbsent || hasLogToIdentifyEmployeesAndVisitors != null) {
      map['has_log_to_identify_employees_and_visitors'] =
          Variable<bool>(hasLogToIdentifyEmployeesAndVisitors);
    }
    if (!nullToAbsent || hasShippingRecordAccessRestricted != null) {
      map['has_shipping_record_access_restricted'] =
          Variable<bool>(hasShippingRecordAccessRestricted);
    }
    if (!nullToAbsent || wasSecurityVulnerabilitiesDiscussed != null) {
      map['was_security_vulnerabilities_discussed'] =
          Variable<bool>(wasSecurityVulnerabilitiesDiscussed);
    }
    if (!nullToAbsent || recordsMaintained != null) {
      map['records_maintained'] = Variable<bool>(recordsMaintained);
    }
    if (!nullToAbsent || hasProdedureForFoodAndFoodIngredients != null) {
      map['has_prodedure_for_food_and_food_ingredients'] =
          Variable<bool>(hasProdedureForFoodAndFoodIngredients);
    }
    if (!nullToAbsent || hasProcedureForIncomingShippingDocuments != null) {
      map['has_procedure_for_incoming_shipping_documents'] =
          Variable<bool>(hasProcedureForIncomingShippingDocuments);
    }
    if (!nullToAbsent || isFreeFromTampering != null) {
      map['is_free_from_tampering'] = Variable<bool>(isFreeFromTampering);
    }
    if (!nullToAbsent || wasDriverIdentificationVerified != null) {
      map['was_driver_identification_verified'] =
          Variable<bool>(wasDriverIdentificationVerified);
    }
    if (!nullToAbsent || didDetentionOccur != null) {
      map['did_detention_occur'] = Variable<bool>(didDetentionOccur);
    }
    if (!nullToAbsent || wasForm5420Provided != null) {
      map['was_form5420_provided'] = Variable<bool>(wasForm5420Provided);
    }
    if (!nullToAbsent || wasMaintenenceSecurityDuringShip != null) {
      map['was_maintenence_security_during_ship'] =
          Variable<bool>(wasMaintenenceSecurityDuringShip);
    }
    if (!nullToAbsent || productsFreeFromTampering != null) {
      map['products_free_from_tampering'] =
          Variable<bool>(productsFreeFromTampering);
    }
    if (!nullToAbsent || foodDefenseExitNotes != null) {
      map['food_defense_exit_notes'] = Variable<String>(foodDefenseExitNotes);
    }
    if (!nullToAbsent || investigatorNotes != null) {
      map['investigator_notes'] = Variable<String>(investigatorNotes);
    }
    return map;
  }

  SurvFoodDefenseCompanion toCompanion(bool nullToAbsent) {
    return SurvFoodDefenseCompanion(
      id: Value(id),
      recordType: recordType == null && nullToAbsent
          ? const Value.absent()
          : Value(recordType),
      wasFoodDefenseConducted: wasFoodDefenseConducted == null && nullToAbsent
          ? const Value.absent()
          : Value(wasFoodDefenseConducted),
      meatCheck: meatCheck == null && nullToAbsent
          ? const Value.absent()
          : Value(meatCheck),
      eggCheck: eggCheck == null && nullToAbsent
          ? const Value.absent()
          : Value(eggCheck),
      shellEggCheck: shellEggCheck == null && nullToAbsent
          ? const Value.absent()
          : Value(shellEggCheck),
      poultryCheck: poultryCheck == null && nullToAbsent
          ? const Value.absent()
          : Value(poultryCheck),
      nonAmenableCheck: nonAmenableCheck == null && nullToAbsent
          ? const Value.absent()
          : Value(nonAmenableCheck),
      siluriformesFishCheck: siluriformesFishCheck == null && nullToAbsent
          ? const Value.absent()
          : Value(siluriformesFishCheck),
      hasWrittenFoodDefensePlan:
          hasWrittenFoodDefensePlan == null && nullToAbsent
              ? const Value.absent()
              : Value(hasWrittenFoodDefensePlan),
      hasEmergencyContactInfo: hasEmergencyContactInfo == null && nullToAbsent
          ? const Value.absent()
          : Value(hasEmergencyContactInfo),
      hasOutsideSurveillanceSystem:
          hasOutsideSurveillanceSystem == null && nullToAbsent
              ? const Value.absent()
              : Value(hasOutsideSurveillanceSystem),
      hasInsideSurveillanceSystem:
          hasInsideSurveillanceSystem == null && nullToAbsent
              ? const Value.absent()
              : Value(hasInsideSurveillanceSystem),
      hasProceduresForAuthorizedPersons:
          hasProceduresForAuthorizedPersons == null && nullToAbsent
              ? const Value.absent()
              : Value(hasProceduresForAuthorizedPersons),
      hasStoreProceduresForHazardousMaterials:
          hasStoreProceduresForHazardousMaterials == null && nullToAbsent
              ? const Value.absent()
              : Value(hasStoreProceduresForHazardousMaterials),
      hasLogToIdentifyEmployeesAndVisitors:
          hasLogToIdentifyEmployeesAndVisitors == null && nullToAbsent
              ? const Value.absent()
              : Value(hasLogToIdentifyEmployeesAndVisitors),
      hasShippingRecordAccessRestricted:
          hasShippingRecordAccessRestricted == null && nullToAbsent
              ? const Value.absent()
              : Value(hasShippingRecordAccessRestricted),
      wasSecurityVulnerabilitiesDiscussed:
          wasSecurityVulnerabilitiesDiscussed == null && nullToAbsent
              ? const Value.absent()
              : Value(wasSecurityVulnerabilitiesDiscussed),
      recordsMaintained: recordsMaintained == null && nullToAbsent
          ? const Value.absent()
          : Value(recordsMaintained),
      hasProdedureForFoodAndFoodIngredients:
          hasProdedureForFoodAndFoodIngredients == null && nullToAbsent
              ? const Value.absent()
              : Value(hasProdedureForFoodAndFoodIngredients),
      hasProcedureForIncomingShippingDocuments:
          hasProcedureForIncomingShippingDocuments == null && nullToAbsent
              ? const Value.absent()
              : Value(hasProcedureForIncomingShippingDocuments),
      isFreeFromTampering: isFreeFromTampering == null && nullToAbsent
          ? const Value.absent()
          : Value(isFreeFromTampering),
      wasDriverIdentificationVerified:
          wasDriverIdentificationVerified == null && nullToAbsent
              ? const Value.absent()
              : Value(wasDriverIdentificationVerified),
      didDetentionOccur: didDetentionOccur == null && nullToAbsent
          ? const Value.absent()
          : Value(didDetentionOccur),
      wasForm5420Provided: wasForm5420Provided == null && nullToAbsent
          ? const Value.absent()
          : Value(wasForm5420Provided),
      wasMaintenenceSecurityDuringShip:
          wasMaintenenceSecurityDuringShip == null && nullToAbsent
              ? const Value.absent()
              : Value(wasMaintenenceSecurityDuringShip),
      productsFreeFromTampering:
          productsFreeFromTampering == null && nullToAbsent
              ? const Value.absent()
              : Value(productsFreeFromTampering),
      foodDefenseExitNotes: foodDefenseExitNotes == null && nullToAbsent
          ? const Value.absent()
          : Value(foodDefenseExitNotes),
      investigatorNotes: investigatorNotes == null && nullToAbsent
          ? const Value.absent()
          : Value(investigatorNotes),
    );
  }

  factory SurvFoodDefenseData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SurvFoodDefenseData(
      id: serializer.fromJson<int>(json['id']),
      recordType: $SurvFoodDefenseTable.$converterrecordTypen
          .fromJson(serializer.fromJson<int?>(json['recordType'])),
      wasFoodDefenseConducted:
          serializer.fromJson<bool?>(json['wasFoodDefenseConducted']),
      meatCheck: serializer.fromJson<bool?>(json['meatCheck']),
      eggCheck: serializer.fromJson<bool?>(json['eggCheck']),
      shellEggCheck: serializer.fromJson<bool?>(json['shellEggCheck']),
      poultryCheck: serializer.fromJson<bool?>(json['poultryCheck']),
      nonAmenableCheck: serializer.fromJson<bool?>(json['nonAmenableCheck']),
      siluriformesFishCheck:
          serializer.fromJson<bool?>(json['siluriformesFishCheck']),
      hasWrittenFoodDefensePlan:
          serializer.fromJson<bool?>(json['hasWrittenFoodDefensePlan']),
      hasEmergencyContactInfo:
          serializer.fromJson<bool?>(json['hasEmergencyContactInfo']),
      hasOutsideSurveillanceSystem:
          serializer.fromJson<bool?>(json['hasOutsideSurveillanceSystem']),
      hasInsideSurveillanceSystem:
          serializer.fromJson<bool?>(json['hasInsideSurveillanceSystem']),
      hasProceduresForAuthorizedPersons:
          serializer.fromJson<bool?>(json['hasProceduresForAuthorizedPersons']),
      hasStoreProceduresForHazardousMaterials: serializer
          .fromJson<bool?>(json['hasStoreProceduresForHazardousMaterials']),
      hasLogToIdentifyEmployeesAndVisitors: serializer
          .fromJson<bool?>(json['hasLogToIdentifyEmployeesAndVisitors']),
      hasShippingRecordAccessRestricted:
          serializer.fromJson<bool?>(json['hasShippingRecordAccessRestricted']),
      wasSecurityVulnerabilitiesDiscussed: serializer
          .fromJson<bool?>(json['wasSecurityVulnerabilitiesDiscussed']),
      recordsMaintained: serializer.fromJson<bool?>(json['recordsMaintained']),
      hasProdedureForFoodAndFoodIngredients: serializer
          .fromJson<bool?>(json['hasProdedureForFoodAndFoodIngredients']),
      hasProcedureForIncomingShippingDocuments: serializer
          .fromJson<bool?>(json['hasProcedureForIncomingShippingDocuments']),
      isFreeFromTampering:
          serializer.fromJson<bool?>(json['isFreeFromTampering']),
      wasDriverIdentificationVerified:
          serializer.fromJson<bool?>(json['wasDriverIdentificationVerified']),
      didDetentionOccur: serializer.fromJson<bool?>(json['didDetentionOccur']),
      wasForm5420Provided:
          serializer.fromJson<bool?>(json['wasForm5420Provided']),
      wasMaintenenceSecurityDuringShip:
          serializer.fromJson<bool?>(json['wasMaintenenceSecurityDuringShip']),
      productsFreeFromTampering:
          serializer.fromJson<bool?>(json['productsFreeFromTampering']),
      foodDefenseExitNotes:
          serializer.fromJson<String?>(json['foodDefenseExitNotes']),
      investigatorNotes:
          serializer.fromJson<String?>(json['investigatorNotes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordType': serializer.toJson<int?>(
          $SurvFoodDefenseTable.$converterrecordTypen.toJson(recordType)),
      'wasFoodDefenseConducted':
          serializer.toJson<bool?>(wasFoodDefenseConducted),
      'meatCheck': serializer.toJson<bool?>(meatCheck),
      'eggCheck': serializer.toJson<bool?>(eggCheck),
      'shellEggCheck': serializer.toJson<bool?>(shellEggCheck),
      'poultryCheck': serializer.toJson<bool?>(poultryCheck),
      'nonAmenableCheck': serializer.toJson<bool?>(nonAmenableCheck),
      'siluriformesFishCheck': serializer.toJson<bool?>(siluriformesFishCheck),
      'hasWrittenFoodDefensePlan':
          serializer.toJson<bool?>(hasWrittenFoodDefensePlan),
      'hasEmergencyContactInfo':
          serializer.toJson<bool?>(hasEmergencyContactInfo),
      'hasOutsideSurveillanceSystem':
          serializer.toJson<bool?>(hasOutsideSurveillanceSystem),
      'hasInsideSurveillanceSystem':
          serializer.toJson<bool?>(hasInsideSurveillanceSystem),
      'hasProceduresForAuthorizedPersons':
          serializer.toJson<bool?>(hasProceduresForAuthorizedPersons),
      'hasStoreProceduresForHazardousMaterials':
          serializer.toJson<bool?>(hasStoreProceduresForHazardousMaterials),
      'hasLogToIdentifyEmployeesAndVisitors':
          serializer.toJson<bool?>(hasLogToIdentifyEmployeesAndVisitors),
      'hasShippingRecordAccessRestricted':
          serializer.toJson<bool?>(hasShippingRecordAccessRestricted),
      'wasSecurityVulnerabilitiesDiscussed':
          serializer.toJson<bool?>(wasSecurityVulnerabilitiesDiscussed),
      'recordsMaintained': serializer.toJson<bool?>(recordsMaintained),
      'hasProdedureForFoodAndFoodIngredients':
          serializer.toJson<bool?>(hasProdedureForFoodAndFoodIngredients),
      'hasProcedureForIncomingShippingDocuments':
          serializer.toJson<bool?>(hasProcedureForIncomingShippingDocuments),
      'isFreeFromTampering': serializer.toJson<bool?>(isFreeFromTampering),
      'wasDriverIdentificationVerified':
          serializer.toJson<bool?>(wasDriverIdentificationVerified),
      'didDetentionOccur': serializer.toJson<bool?>(didDetentionOccur),
      'wasForm5420Provided': serializer.toJson<bool?>(wasForm5420Provided),
      'wasMaintenenceSecurityDuringShip':
          serializer.toJson<bool?>(wasMaintenenceSecurityDuringShip),
      'productsFreeFromTampering':
          serializer.toJson<bool?>(productsFreeFromTampering),
      'foodDefenseExitNotes': serializer.toJson<String?>(foodDefenseExitNotes),
      'investigatorNotes': serializer.toJson<String?>(investigatorNotes),
    };
  }

  SurvFoodDefenseData copyWith(
          {int? id,
          Value<RecordType?> recordType = const Value.absent(),
          Value<bool?> wasFoodDefenseConducted = const Value.absent(),
          Value<bool?> meatCheck = const Value.absent(),
          Value<bool?> eggCheck = const Value.absent(),
          Value<bool?> shellEggCheck = const Value.absent(),
          Value<bool?> poultryCheck = const Value.absent(),
          Value<bool?> nonAmenableCheck = const Value.absent(),
          Value<bool?> siluriformesFishCheck = const Value.absent(),
          Value<bool?> hasWrittenFoodDefensePlan = const Value.absent(),
          Value<bool?> hasEmergencyContactInfo = const Value.absent(),
          Value<bool?> hasOutsideSurveillanceSystem = const Value.absent(),
          Value<bool?> hasInsideSurveillanceSystem = const Value.absent(),
          Value<bool?> hasProceduresForAuthorizedPersons = const Value.absent(),
          Value<bool?> hasStoreProceduresForHazardousMaterials =
              const Value.absent(),
          Value<bool?> hasLogToIdentifyEmployeesAndVisitors =
              const Value.absent(),
          Value<bool?> hasShippingRecordAccessRestricted = const Value.absent(),
          Value<bool?> wasSecurityVulnerabilitiesDiscussed =
              const Value.absent(),
          Value<bool?> recordsMaintained = const Value.absent(),
          Value<bool?> hasProdedureForFoodAndFoodIngredients =
              const Value.absent(),
          Value<bool?> hasProcedureForIncomingShippingDocuments =
              const Value.absent(),
          Value<bool?> isFreeFromTampering = const Value.absent(),
          Value<bool?> wasDriverIdentificationVerified = const Value.absent(),
          Value<bool?> didDetentionOccur = const Value.absent(),
          Value<bool?> wasForm5420Provided = const Value.absent(),
          Value<bool?> wasMaintenenceSecurityDuringShip = const Value.absent(),
          Value<bool?> productsFreeFromTampering = const Value.absent(),
          Value<String?> foodDefenseExitNotes = const Value.absent(),
          Value<String?> investigatorNotes = const Value.absent()}) =>
      SurvFoodDefenseData(
        id: id ?? this.id,
        recordType: recordType.present ? recordType.value : this.recordType,
        wasFoodDefenseConducted: wasFoodDefenseConducted.present
            ? wasFoodDefenseConducted.value
            : this.wasFoodDefenseConducted,
        meatCheck: meatCheck.present ? meatCheck.value : this.meatCheck,
        eggCheck: eggCheck.present ? eggCheck.value : this.eggCheck,
        shellEggCheck:
            shellEggCheck.present ? shellEggCheck.value : this.shellEggCheck,
        poultryCheck:
            poultryCheck.present ? poultryCheck.value : this.poultryCheck,
        nonAmenableCheck: nonAmenableCheck.present
            ? nonAmenableCheck.value
            : this.nonAmenableCheck,
        siluriformesFishCheck: siluriformesFishCheck.present
            ? siluriformesFishCheck.value
            : this.siluriformesFishCheck,
        hasWrittenFoodDefensePlan: hasWrittenFoodDefensePlan.present
            ? hasWrittenFoodDefensePlan.value
            : this.hasWrittenFoodDefensePlan,
        hasEmergencyContactInfo: hasEmergencyContactInfo.present
            ? hasEmergencyContactInfo.value
            : this.hasEmergencyContactInfo,
        hasOutsideSurveillanceSystem: hasOutsideSurveillanceSystem.present
            ? hasOutsideSurveillanceSystem.value
            : this.hasOutsideSurveillanceSystem,
        hasInsideSurveillanceSystem: hasInsideSurveillanceSystem.present
            ? hasInsideSurveillanceSystem.value
            : this.hasInsideSurveillanceSystem,
        hasProceduresForAuthorizedPersons:
            hasProceduresForAuthorizedPersons.present
                ? hasProceduresForAuthorizedPersons.value
                : this.hasProceduresForAuthorizedPersons,
        hasStoreProceduresForHazardousMaterials:
            hasStoreProceduresForHazardousMaterials.present
                ? hasStoreProceduresForHazardousMaterials.value
                : this.hasStoreProceduresForHazardousMaterials,
        hasLogToIdentifyEmployeesAndVisitors:
            hasLogToIdentifyEmployeesAndVisitors.present
                ? hasLogToIdentifyEmployeesAndVisitors.value
                : this.hasLogToIdentifyEmployeesAndVisitors,
        hasShippingRecordAccessRestricted:
            hasShippingRecordAccessRestricted.present
                ? hasShippingRecordAccessRestricted.value
                : this.hasShippingRecordAccessRestricted,
        wasSecurityVulnerabilitiesDiscussed:
            wasSecurityVulnerabilitiesDiscussed.present
                ? wasSecurityVulnerabilitiesDiscussed.value
                : this.wasSecurityVulnerabilitiesDiscussed,
        recordsMaintained: recordsMaintained.present
            ? recordsMaintained.value
            : this.recordsMaintained,
        hasProdedureForFoodAndFoodIngredients:
            hasProdedureForFoodAndFoodIngredients.present
                ? hasProdedureForFoodAndFoodIngredients.value
                : this.hasProdedureForFoodAndFoodIngredients,
        hasProcedureForIncomingShippingDocuments:
            hasProcedureForIncomingShippingDocuments.present
                ? hasProcedureForIncomingShippingDocuments.value
                : this.hasProcedureForIncomingShippingDocuments,
        isFreeFromTampering: isFreeFromTampering.present
            ? isFreeFromTampering.value
            : this.isFreeFromTampering,
        wasDriverIdentificationVerified: wasDriverIdentificationVerified.present
            ? wasDriverIdentificationVerified.value
            : this.wasDriverIdentificationVerified,
        didDetentionOccur: didDetentionOccur.present
            ? didDetentionOccur.value
            : this.didDetentionOccur,
        wasForm5420Provided: wasForm5420Provided.present
            ? wasForm5420Provided.value
            : this.wasForm5420Provided,
        wasMaintenenceSecurityDuringShip:
            wasMaintenenceSecurityDuringShip.present
                ? wasMaintenenceSecurityDuringShip.value
                : this.wasMaintenenceSecurityDuringShip,
        productsFreeFromTampering: productsFreeFromTampering.present
            ? productsFreeFromTampering.value
            : this.productsFreeFromTampering,
        foodDefenseExitNotes: foodDefenseExitNotes.present
            ? foodDefenseExitNotes.value
            : this.foodDefenseExitNotes,
        investigatorNotes: investigatorNotes.present
            ? investigatorNotes.value
            : this.investigatorNotes,
      );
  @override
  String toString() {
    return (StringBuffer('SurvFoodDefenseData(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('wasFoodDefenseConducted: $wasFoodDefenseConducted, ')
          ..write('meatCheck: $meatCheck, ')
          ..write('eggCheck: $eggCheck, ')
          ..write('shellEggCheck: $shellEggCheck, ')
          ..write('poultryCheck: $poultryCheck, ')
          ..write('nonAmenableCheck: $nonAmenableCheck, ')
          ..write('siluriformesFishCheck: $siluriformesFishCheck, ')
          ..write('hasWrittenFoodDefensePlan: $hasWrittenFoodDefensePlan, ')
          ..write('hasEmergencyContactInfo: $hasEmergencyContactInfo, ')
          ..write(
              'hasOutsideSurveillanceSystem: $hasOutsideSurveillanceSystem, ')
          ..write('hasInsideSurveillanceSystem: $hasInsideSurveillanceSystem, ')
          ..write(
              'hasProceduresForAuthorizedPersons: $hasProceduresForAuthorizedPersons, ')
          ..write(
              'hasStoreProceduresForHazardousMaterials: $hasStoreProceduresForHazardousMaterials, ')
          ..write(
              'hasLogToIdentifyEmployeesAndVisitors: $hasLogToIdentifyEmployeesAndVisitors, ')
          ..write(
              'hasShippingRecordAccessRestricted: $hasShippingRecordAccessRestricted, ')
          ..write(
              'wasSecurityVulnerabilitiesDiscussed: $wasSecurityVulnerabilitiesDiscussed, ')
          ..write('recordsMaintained: $recordsMaintained, ')
          ..write(
              'hasProdedureForFoodAndFoodIngredients: $hasProdedureForFoodAndFoodIngredients, ')
          ..write(
              'hasProcedureForIncomingShippingDocuments: $hasProcedureForIncomingShippingDocuments, ')
          ..write('isFreeFromTampering: $isFreeFromTampering, ')
          ..write(
              'wasDriverIdentificationVerified: $wasDriverIdentificationVerified, ')
          ..write('didDetentionOccur: $didDetentionOccur, ')
          ..write('wasForm5420Provided: $wasForm5420Provided, ')
          ..write(
              'wasMaintenenceSecurityDuringShip: $wasMaintenenceSecurityDuringShip, ')
          ..write('productsFreeFromTampering: $productsFreeFromTampering, ')
          ..write('foodDefenseExitNotes: $foodDefenseExitNotes, ')
          ..write('investigatorNotes: $investigatorNotes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        recordType,
        wasFoodDefenseConducted,
        meatCheck,
        eggCheck,
        shellEggCheck,
        poultryCheck,
        nonAmenableCheck,
        siluriformesFishCheck,
        hasWrittenFoodDefensePlan,
        hasEmergencyContactInfo,
        hasOutsideSurveillanceSystem,
        hasInsideSurveillanceSystem,
        hasProceduresForAuthorizedPersons,
        hasStoreProceduresForHazardousMaterials,
        hasLogToIdentifyEmployeesAndVisitors,
        hasShippingRecordAccessRestricted,
        wasSecurityVulnerabilitiesDiscussed,
        recordsMaintained,
        hasProdedureForFoodAndFoodIngredients,
        hasProcedureForIncomingShippingDocuments,
        isFreeFromTampering,
        wasDriverIdentificationVerified,
        didDetentionOccur,
        wasForm5420Provided,
        wasMaintenenceSecurityDuringShip,
        productsFreeFromTampering,
        foodDefenseExitNotes,
        investigatorNotes
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SurvFoodDefenseData &&
          other.id == this.id &&
          other.recordType == this.recordType &&
          other.wasFoodDefenseConducted == this.wasFoodDefenseConducted &&
          other.meatCheck == this.meatCheck &&
          other.eggCheck == this.eggCheck &&
          other.shellEggCheck == this.shellEggCheck &&
          other.poultryCheck == this.poultryCheck &&
          other.nonAmenableCheck == this.nonAmenableCheck &&
          other.siluriformesFishCheck == this.siluriformesFishCheck &&
          other.hasWrittenFoodDefensePlan == this.hasWrittenFoodDefensePlan &&
          other.hasEmergencyContactInfo == this.hasEmergencyContactInfo &&
          other.hasOutsideSurveillanceSystem ==
              this.hasOutsideSurveillanceSystem &&
          other.hasInsideSurveillanceSystem ==
              this.hasInsideSurveillanceSystem &&
          other.hasProceduresForAuthorizedPersons ==
              this.hasProceduresForAuthorizedPersons &&
          other.hasStoreProceduresForHazardousMaterials ==
              this.hasStoreProceduresForHazardousMaterials &&
          other.hasLogToIdentifyEmployeesAndVisitors ==
              this.hasLogToIdentifyEmployeesAndVisitors &&
          other.hasShippingRecordAccessRestricted ==
              this.hasShippingRecordAccessRestricted &&
          other.wasSecurityVulnerabilitiesDiscussed ==
              this.wasSecurityVulnerabilitiesDiscussed &&
          other.recordsMaintained == this.recordsMaintained &&
          other.hasProdedureForFoodAndFoodIngredients ==
              this.hasProdedureForFoodAndFoodIngredients &&
          other.hasProcedureForIncomingShippingDocuments ==
              this.hasProcedureForIncomingShippingDocuments &&
          other.isFreeFromTampering == this.isFreeFromTampering &&
          other.wasDriverIdentificationVerified ==
              this.wasDriverIdentificationVerified &&
          other.didDetentionOccur == this.didDetentionOccur &&
          other.wasForm5420Provided == this.wasForm5420Provided &&
          other.wasMaintenenceSecurityDuringShip ==
              this.wasMaintenenceSecurityDuringShip &&
          other.productsFreeFromTampering == this.productsFreeFromTampering &&
          other.foodDefenseExitNotes == this.foodDefenseExitNotes &&
          other.investigatorNotes == this.investigatorNotes);
}

class SurvFoodDefenseCompanion extends UpdateCompanion<SurvFoodDefenseData> {
  final Value<int> id;
  final Value<RecordType?> recordType;
  final Value<bool?> wasFoodDefenseConducted;
  final Value<bool?> meatCheck;
  final Value<bool?> eggCheck;
  final Value<bool?> shellEggCheck;
  final Value<bool?> poultryCheck;
  final Value<bool?> nonAmenableCheck;
  final Value<bool?> siluriformesFishCheck;
  final Value<bool?> hasWrittenFoodDefensePlan;
  final Value<bool?> hasEmergencyContactInfo;
  final Value<bool?> hasOutsideSurveillanceSystem;
  final Value<bool?> hasInsideSurveillanceSystem;
  final Value<bool?> hasProceduresForAuthorizedPersons;
  final Value<bool?> hasStoreProceduresForHazardousMaterials;
  final Value<bool?> hasLogToIdentifyEmployeesAndVisitors;
  final Value<bool?> hasShippingRecordAccessRestricted;
  final Value<bool?> wasSecurityVulnerabilitiesDiscussed;
  final Value<bool?> recordsMaintained;
  final Value<bool?> hasProdedureForFoodAndFoodIngredients;
  final Value<bool?> hasProcedureForIncomingShippingDocuments;
  final Value<bool?> isFreeFromTampering;
  final Value<bool?> wasDriverIdentificationVerified;
  final Value<bool?> didDetentionOccur;
  final Value<bool?> wasForm5420Provided;
  final Value<bool?> wasMaintenenceSecurityDuringShip;
  final Value<bool?> productsFreeFromTampering;
  final Value<String?> foodDefenseExitNotes;
  final Value<String?> investigatorNotes;
  final Value<int> rowid;
  const SurvFoodDefenseCompanion({
    this.id = const Value.absent(),
    this.recordType = const Value.absent(),
    this.wasFoodDefenseConducted = const Value.absent(),
    this.meatCheck = const Value.absent(),
    this.eggCheck = const Value.absent(),
    this.shellEggCheck = const Value.absent(),
    this.poultryCheck = const Value.absent(),
    this.nonAmenableCheck = const Value.absent(),
    this.siluriformesFishCheck = const Value.absent(),
    this.hasWrittenFoodDefensePlan = const Value.absent(),
    this.hasEmergencyContactInfo = const Value.absent(),
    this.hasOutsideSurveillanceSystem = const Value.absent(),
    this.hasInsideSurveillanceSystem = const Value.absent(),
    this.hasProceduresForAuthorizedPersons = const Value.absent(),
    this.hasStoreProceduresForHazardousMaterials = const Value.absent(),
    this.hasLogToIdentifyEmployeesAndVisitors = const Value.absent(),
    this.hasShippingRecordAccessRestricted = const Value.absent(),
    this.wasSecurityVulnerabilitiesDiscussed = const Value.absent(),
    this.recordsMaintained = const Value.absent(),
    this.hasProdedureForFoodAndFoodIngredients = const Value.absent(),
    this.hasProcedureForIncomingShippingDocuments = const Value.absent(),
    this.isFreeFromTampering = const Value.absent(),
    this.wasDriverIdentificationVerified = const Value.absent(),
    this.didDetentionOccur = const Value.absent(),
    this.wasForm5420Provided = const Value.absent(),
    this.wasMaintenenceSecurityDuringShip = const Value.absent(),
    this.productsFreeFromTampering = const Value.absent(),
    this.foodDefenseExitNotes = const Value.absent(),
    this.investigatorNotes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SurvFoodDefenseCompanion.insert({
    required int id,
    this.recordType = const Value.absent(),
    this.wasFoodDefenseConducted = const Value.absent(),
    this.meatCheck = const Value.absent(),
    this.eggCheck = const Value.absent(),
    this.shellEggCheck = const Value.absent(),
    this.poultryCheck = const Value.absent(),
    this.nonAmenableCheck = const Value.absent(),
    this.siluriformesFishCheck = const Value.absent(),
    this.hasWrittenFoodDefensePlan = const Value.absent(),
    this.hasEmergencyContactInfo = const Value.absent(),
    this.hasOutsideSurveillanceSystem = const Value.absent(),
    this.hasInsideSurveillanceSystem = const Value.absent(),
    this.hasProceduresForAuthorizedPersons = const Value.absent(),
    this.hasStoreProceduresForHazardousMaterials = const Value.absent(),
    this.hasLogToIdentifyEmployeesAndVisitors = const Value.absent(),
    this.hasShippingRecordAccessRestricted = const Value.absent(),
    this.wasSecurityVulnerabilitiesDiscussed = const Value.absent(),
    this.recordsMaintained = const Value.absent(),
    this.hasProdedureForFoodAndFoodIngredients = const Value.absent(),
    this.hasProcedureForIncomingShippingDocuments = const Value.absent(),
    this.isFreeFromTampering = const Value.absent(),
    this.wasDriverIdentificationVerified = const Value.absent(),
    this.didDetentionOccur = const Value.absent(),
    this.wasForm5420Provided = const Value.absent(),
    this.wasMaintenenceSecurityDuringShip = const Value.absent(),
    this.productsFreeFromTampering = const Value.absent(),
    this.foodDefenseExitNotes = const Value.absent(),
    this.investigatorNotes = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<SurvFoodDefenseData> custom({
    Expression<int>? id,
    Expression<int>? recordType,
    Expression<bool>? wasFoodDefenseConducted,
    Expression<bool>? meatCheck,
    Expression<bool>? eggCheck,
    Expression<bool>? shellEggCheck,
    Expression<bool>? poultryCheck,
    Expression<bool>? nonAmenableCheck,
    Expression<bool>? siluriformesFishCheck,
    Expression<bool>? hasWrittenFoodDefensePlan,
    Expression<bool>? hasEmergencyContactInfo,
    Expression<bool>? hasOutsideSurveillanceSystem,
    Expression<bool>? hasInsideSurveillanceSystem,
    Expression<bool>? hasProceduresForAuthorizedPersons,
    Expression<bool>? hasStoreProceduresForHazardousMaterials,
    Expression<bool>? hasLogToIdentifyEmployeesAndVisitors,
    Expression<bool>? hasShippingRecordAccessRestricted,
    Expression<bool>? wasSecurityVulnerabilitiesDiscussed,
    Expression<bool>? recordsMaintained,
    Expression<bool>? hasProdedureForFoodAndFoodIngredients,
    Expression<bool>? hasProcedureForIncomingShippingDocuments,
    Expression<bool>? isFreeFromTampering,
    Expression<bool>? wasDriverIdentificationVerified,
    Expression<bool>? didDetentionOccur,
    Expression<bool>? wasForm5420Provided,
    Expression<bool>? wasMaintenenceSecurityDuringShip,
    Expression<bool>? productsFreeFromTampering,
    Expression<String>? foodDefenseExitNotes,
    Expression<String>? investigatorNotes,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordType != null) 'record_type': recordType,
      if (wasFoodDefenseConducted != null)
        'was_food_defense_conducted': wasFoodDefenseConducted,
      if (meatCheck != null) 'meat_check': meatCheck,
      if (eggCheck != null) 'egg_check': eggCheck,
      if (shellEggCheck != null) 'shell_egg_check': shellEggCheck,
      if (poultryCheck != null) 'poultry_check': poultryCheck,
      if (nonAmenableCheck != null) 'non_amenable_check': nonAmenableCheck,
      if (siluriformesFishCheck != null)
        'siluriformes_fish_check': siluriformesFishCheck,
      if (hasWrittenFoodDefensePlan != null)
        'has_written_food_defense_plan': hasWrittenFoodDefensePlan,
      if (hasEmergencyContactInfo != null)
        'has_emergency_contact_info': hasEmergencyContactInfo,
      if (hasOutsideSurveillanceSystem != null)
        'has_outside_surveillance_system': hasOutsideSurveillanceSystem,
      if (hasInsideSurveillanceSystem != null)
        'has_inside_surveillance_system': hasInsideSurveillanceSystem,
      if (hasProceduresForAuthorizedPersons != null)
        'has_procedures_for_authorized_persons':
            hasProceduresForAuthorizedPersons,
      if (hasStoreProceduresForHazardousMaterials != null)
        'has_store_procedures_for_hazardous_materials':
            hasStoreProceduresForHazardousMaterials,
      if (hasLogToIdentifyEmployeesAndVisitors != null)
        'has_log_to_identify_employees_and_visitors':
            hasLogToIdentifyEmployeesAndVisitors,
      if (hasShippingRecordAccessRestricted != null)
        'has_shipping_record_access_restricted':
            hasShippingRecordAccessRestricted,
      if (wasSecurityVulnerabilitiesDiscussed != null)
        'was_security_vulnerabilities_discussed':
            wasSecurityVulnerabilitiesDiscussed,
      if (recordsMaintained != null) 'records_maintained': recordsMaintained,
      if (hasProdedureForFoodAndFoodIngredients != null)
        'has_prodedure_for_food_and_food_ingredients':
            hasProdedureForFoodAndFoodIngredients,
      if (hasProcedureForIncomingShippingDocuments != null)
        'has_procedure_for_incoming_shipping_documents':
            hasProcedureForIncomingShippingDocuments,
      if (isFreeFromTampering != null)
        'is_free_from_tampering': isFreeFromTampering,
      if (wasDriverIdentificationVerified != null)
        'was_driver_identification_verified': wasDriverIdentificationVerified,
      if (didDetentionOccur != null) 'did_detention_occur': didDetentionOccur,
      if (wasForm5420Provided != null)
        'was_form5420_provided': wasForm5420Provided,
      if (wasMaintenenceSecurityDuringShip != null)
        'was_maintenence_security_during_ship':
            wasMaintenenceSecurityDuringShip,
      if (productsFreeFromTampering != null)
        'products_free_from_tampering': productsFreeFromTampering,
      if (foodDefenseExitNotes != null)
        'food_defense_exit_notes': foodDefenseExitNotes,
      if (investigatorNotes != null) 'investigator_notes': investigatorNotes,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SurvFoodDefenseCompanion copyWith(
      {Value<int>? id,
      Value<RecordType?>? recordType,
      Value<bool?>? wasFoodDefenseConducted,
      Value<bool?>? meatCheck,
      Value<bool?>? eggCheck,
      Value<bool?>? shellEggCheck,
      Value<bool?>? poultryCheck,
      Value<bool?>? nonAmenableCheck,
      Value<bool?>? siluriformesFishCheck,
      Value<bool?>? hasWrittenFoodDefensePlan,
      Value<bool?>? hasEmergencyContactInfo,
      Value<bool?>? hasOutsideSurveillanceSystem,
      Value<bool?>? hasInsideSurveillanceSystem,
      Value<bool?>? hasProceduresForAuthorizedPersons,
      Value<bool?>? hasStoreProceduresForHazardousMaterials,
      Value<bool?>? hasLogToIdentifyEmployeesAndVisitors,
      Value<bool?>? hasShippingRecordAccessRestricted,
      Value<bool?>? wasSecurityVulnerabilitiesDiscussed,
      Value<bool?>? recordsMaintained,
      Value<bool?>? hasProdedureForFoodAndFoodIngredients,
      Value<bool?>? hasProcedureForIncomingShippingDocuments,
      Value<bool?>? isFreeFromTampering,
      Value<bool?>? wasDriverIdentificationVerified,
      Value<bool?>? didDetentionOccur,
      Value<bool?>? wasForm5420Provided,
      Value<bool?>? wasMaintenenceSecurityDuringShip,
      Value<bool?>? productsFreeFromTampering,
      Value<String?>? foodDefenseExitNotes,
      Value<String?>? investigatorNotes,
      Value<int>? rowid}) {
    return SurvFoodDefenseCompanion(
      id: id ?? this.id,
      recordType: recordType ?? this.recordType,
      wasFoodDefenseConducted:
          wasFoodDefenseConducted ?? this.wasFoodDefenseConducted,
      meatCheck: meatCheck ?? this.meatCheck,
      eggCheck: eggCheck ?? this.eggCheck,
      shellEggCheck: shellEggCheck ?? this.shellEggCheck,
      poultryCheck: poultryCheck ?? this.poultryCheck,
      nonAmenableCheck: nonAmenableCheck ?? this.nonAmenableCheck,
      siluriformesFishCheck:
          siluriformesFishCheck ?? this.siluriformesFishCheck,
      hasWrittenFoodDefensePlan:
          hasWrittenFoodDefensePlan ?? this.hasWrittenFoodDefensePlan,
      hasEmergencyContactInfo:
          hasEmergencyContactInfo ?? this.hasEmergencyContactInfo,
      hasOutsideSurveillanceSystem:
          hasOutsideSurveillanceSystem ?? this.hasOutsideSurveillanceSystem,
      hasInsideSurveillanceSystem:
          hasInsideSurveillanceSystem ?? this.hasInsideSurveillanceSystem,
      hasProceduresForAuthorizedPersons: hasProceduresForAuthorizedPersons ??
          this.hasProceduresForAuthorizedPersons,
      hasStoreProceduresForHazardousMaterials:
          hasStoreProceduresForHazardousMaterials ??
              this.hasStoreProceduresForHazardousMaterials,
      hasLogToIdentifyEmployeesAndVisitors:
          hasLogToIdentifyEmployeesAndVisitors ??
              this.hasLogToIdentifyEmployeesAndVisitors,
      hasShippingRecordAccessRestricted: hasShippingRecordAccessRestricted ??
          this.hasShippingRecordAccessRestricted,
      wasSecurityVulnerabilitiesDiscussed:
          wasSecurityVulnerabilitiesDiscussed ??
              this.wasSecurityVulnerabilitiesDiscussed,
      recordsMaintained: recordsMaintained ?? this.recordsMaintained,
      hasProdedureForFoodAndFoodIngredients:
          hasProdedureForFoodAndFoodIngredients ??
              this.hasProdedureForFoodAndFoodIngredients,
      hasProcedureForIncomingShippingDocuments:
          hasProcedureForIncomingShippingDocuments ??
              this.hasProcedureForIncomingShippingDocuments,
      isFreeFromTampering: isFreeFromTampering ?? this.isFreeFromTampering,
      wasDriverIdentificationVerified: wasDriverIdentificationVerified ??
          this.wasDriverIdentificationVerified,
      didDetentionOccur: didDetentionOccur ?? this.didDetentionOccur,
      wasForm5420Provided: wasForm5420Provided ?? this.wasForm5420Provided,
      wasMaintenenceSecurityDuringShip: wasMaintenenceSecurityDuringShip ??
          this.wasMaintenenceSecurityDuringShip,
      productsFreeFromTampering:
          productsFreeFromTampering ?? this.productsFreeFromTampering,
      foodDefenseExitNotes: foodDefenseExitNotes ?? this.foodDefenseExitNotes,
      investigatorNotes: investigatorNotes ?? this.investigatorNotes,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordType.present) {
      final converter = $SurvFoodDefenseTable.$converterrecordTypen;

      map['record_type'] = Variable<int>(converter.toSql(recordType.value));
    }
    if (wasFoodDefenseConducted.present) {
      map['was_food_defense_conducted'] =
          Variable<bool>(wasFoodDefenseConducted.value);
    }
    if (meatCheck.present) {
      map['meat_check'] = Variable<bool>(meatCheck.value);
    }
    if (eggCheck.present) {
      map['egg_check'] = Variable<bool>(eggCheck.value);
    }
    if (shellEggCheck.present) {
      map['shell_egg_check'] = Variable<bool>(shellEggCheck.value);
    }
    if (poultryCheck.present) {
      map['poultry_check'] = Variable<bool>(poultryCheck.value);
    }
    if (nonAmenableCheck.present) {
      map['non_amenable_check'] = Variable<bool>(nonAmenableCheck.value);
    }
    if (siluriformesFishCheck.present) {
      map['siluriformes_fish_check'] =
          Variable<bool>(siluriformesFishCheck.value);
    }
    if (hasWrittenFoodDefensePlan.present) {
      map['has_written_food_defense_plan'] =
          Variable<bool>(hasWrittenFoodDefensePlan.value);
    }
    if (hasEmergencyContactInfo.present) {
      map['has_emergency_contact_info'] =
          Variable<bool>(hasEmergencyContactInfo.value);
    }
    if (hasOutsideSurveillanceSystem.present) {
      map['has_outside_surveillance_system'] =
          Variable<bool>(hasOutsideSurveillanceSystem.value);
    }
    if (hasInsideSurveillanceSystem.present) {
      map['has_inside_surveillance_system'] =
          Variable<bool>(hasInsideSurveillanceSystem.value);
    }
    if (hasProceduresForAuthorizedPersons.present) {
      map['has_procedures_for_authorized_persons'] =
          Variable<bool>(hasProceduresForAuthorizedPersons.value);
    }
    if (hasStoreProceduresForHazardousMaterials.present) {
      map['has_store_procedures_for_hazardous_materials'] =
          Variable<bool>(hasStoreProceduresForHazardousMaterials.value);
    }
    if (hasLogToIdentifyEmployeesAndVisitors.present) {
      map['has_log_to_identify_employees_and_visitors'] =
          Variable<bool>(hasLogToIdentifyEmployeesAndVisitors.value);
    }
    if (hasShippingRecordAccessRestricted.present) {
      map['has_shipping_record_access_restricted'] =
          Variable<bool>(hasShippingRecordAccessRestricted.value);
    }
    if (wasSecurityVulnerabilitiesDiscussed.present) {
      map['was_security_vulnerabilities_discussed'] =
          Variable<bool>(wasSecurityVulnerabilitiesDiscussed.value);
    }
    if (recordsMaintained.present) {
      map['records_maintained'] = Variable<bool>(recordsMaintained.value);
    }
    if (hasProdedureForFoodAndFoodIngredients.present) {
      map['has_prodedure_for_food_and_food_ingredients'] =
          Variable<bool>(hasProdedureForFoodAndFoodIngredients.value);
    }
    if (hasProcedureForIncomingShippingDocuments.present) {
      map['has_procedure_for_incoming_shipping_documents'] =
          Variable<bool>(hasProcedureForIncomingShippingDocuments.value);
    }
    if (isFreeFromTampering.present) {
      map['is_free_from_tampering'] = Variable<bool>(isFreeFromTampering.value);
    }
    if (wasDriverIdentificationVerified.present) {
      map['was_driver_identification_verified'] =
          Variable<bool>(wasDriverIdentificationVerified.value);
    }
    if (didDetentionOccur.present) {
      map['did_detention_occur'] = Variable<bool>(didDetentionOccur.value);
    }
    if (wasForm5420Provided.present) {
      map['was_form5420_provided'] = Variable<bool>(wasForm5420Provided.value);
    }
    if (wasMaintenenceSecurityDuringShip.present) {
      map['was_maintenence_security_during_ship'] =
          Variable<bool>(wasMaintenenceSecurityDuringShip.value);
    }
    if (productsFreeFromTampering.present) {
      map['products_free_from_tampering'] =
          Variable<bool>(productsFreeFromTampering.value);
    }
    if (foodDefenseExitNotes.present) {
      map['food_defense_exit_notes'] =
          Variable<String>(foodDefenseExitNotes.value);
    }
    if (investigatorNotes.present) {
      map['investigator_notes'] = Variable<String>(investigatorNotes.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SurvFoodDefenseCompanion(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('wasFoodDefenseConducted: $wasFoodDefenseConducted, ')
          ..write('meatCheck: $meatCheck, ')
          ..write('eggCheck: $eggCheck, ')
          ..write('shellEggCheck: $shellEggCheck, ')
          ..write('poultryCheck: $poultryCheck, ')
          ..write('nonAmenableCheck: $nonAmenableCheck, ')
          ..write('siluriformesFishCheck: $siluriformesFishCheck, ')
          ..write('hasWrittenFoodDefensePlan: $hasWrittenFoodDefensePlan, ')
          ..write('hasEmergencyContactInfo: $hasEmergencyContactInfo, ')
          ..write(
              'hasOutsideSurveillanceSystem: $hasOutsideSurveillanceSystem, ')
          ..write('hasInsideSurveillanceSystem: $hasInsideSurveillanceSystem, ')
          ..write(
              'hasProceduresForAuthorizedPersons: $hasProceduresForAuthorizedPersons, ')
          ..write(
              'hasStoreProceduresForHazardousMaterials: $hasStoreProceduresForHazardousMaterials, ')
          ..write(
              'hasLogToIdentifyEmployeesAndVisitors: $hasLogToIdentifyEmployeesAndVisitors, ')
          ..write(
              'hasShippingRecordAccessRestricted: $hasShippingRecordAccessRestricted, ')
          ..write(
              'wasSecurityVulnerabilitiesDiscussed: $wasSecurityVulnerabilitiesDiscussed, ')
          ..write('recordsMaintained: $recordsMaintained, ')
          ..write(
              'hasProdedureForFoodAndFoodIngredients: $hasProdedureForFoodAndFoodIngredients, ')
          ..write(
              'hasProcedureForIncomingShippingDocuments: $hasProcedureForIncomingShippingDocuments, ')
          ..write('isFreeFromTampering: $isFreeFromTampering, ')
          ..write(
              'wasDriverIdentificationVerified: $wasDriverIdentificationVerified, ')
          ..write('didDetentionOccur: $didDetentionOccur, ')
          ..write('wasForm5420Provided: $wasForm5420Provided, ')
          ..write(
              'wasMaintenenceSecurityDuringShip: $wasMaintenenceSecurityDuringShip, ')
          ..write('productsFreeFromTampering: $productsFreeFromTampering, ')
          ..write('foodDefenseExitNotes: $foodDefenseExitNotes, ')
          ..write('investigatorNotes: $investigatorNotes, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SurvFoodSafetyTable extends SurvFoodSafety
    with TableInfo<$SurvFoodSafetyTable, SurvFoodSafetyData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SurvFoodSafetyTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<RecordType?, int> recordType =
      GeneratedColumn<int>('record_type', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<RecordType?>(
              $SurvFoodSafetyTable.$converterrecordTypen);
  @override
  late final GeneratedColumn<bool> hasMeatProducts = GeneratedColumn<bool>(
      'has_meat_products', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("has_meat_products" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> sanitaryConditionsGood =
      GeneratedColumn<bool>('sanitary_conditions_good', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("sanitary_conditions_good" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> hasSiluriformesFishProducts =
      GeneratedColumn<bool>('has_siluriformes_fish_products', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("has_siluriformes_fish_products" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> hasPoultryProducts = GeneratedColumn<bool>(
      'has_poultry_products', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("has_poultry_products" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> hasEggProductsProducts =
      GeneratedColumn<bool>('has_egg_products_products', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("has_egg_products_products" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> hasShellEggProducts = GeneratedColumn<bool>(
      'has_shell_egg_products', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("has_shell_egg_products" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> recordsMaintained = GeneratedColumn<bool>(
      'records_maintained', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("records_maintained" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> productWholesome = GeneratedColumn<bool>(
      'product_wholesome', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("product_wholesome" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> hazardControlsAdequate =
      GeneratedColumn<bool>('hazard_controls_adequate', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("hazard_controls_adequate" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> nonHumanFoodProperlyDenatured =
      GeneratedColumn<bool>(
          'non_human_food_properly_denatured', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("non_human_food_properly_denatured" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> safetyAddtionalComments =
      GeneratedColumn<String>('safety_addtional_comments', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        recordType,
        hasMeatProducts,
        sanitaryConditionsGood,
        hasSiluriformesFishProducts,
        hasPoultryProducts,
        hasEggProductsProducts,
        hasShellEggProducts,
        recordsMaintained,
        productWholesome,
        hazardControlsAdequate,
        nonHumanFoodProperlyDenatured,
        safetyAddtionalComments
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'surv_food_safety';
  @override
  Set<GeneratedColumn> get $primaryKey => {id, recordType};
  @override
  SurvFoodSafetyData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SurvFoodSafetyData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      recordType: $SurvFoodSafetyTable.$converterrecordTypen.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}record_type'])),
      hasMeatProducts: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}has_meat_products']),
      sanitaryConditionsGood: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}sanitary_conditions_good']),
      hasSiluriformesFishProducts: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}has_siluriformes_fish_products']),
      hasPoultryProducts: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}has_poultry_products']),
      hasEggProductsProducts: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}has_egg_products_products']),
      hasShellEggProducts: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}has_shell_egg_products']),
      recordsMaintained: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}records_maintained']),
      productWholesome: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}product_wholesome']),
      hazardControlsAdequate: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}hazard_controls_adequate']),
      nonHumanFoodProperlyDenatured: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}non_human_food_properly_denatured']),
      safetyAddtionalComments: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}safety_addtional_comments']),
    );
  }

  @override
  $SurvFoodSafetyTable createAlias(String alias) {
    return $SurvFoodSafetyTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RecordType, int, int> $converterrecordType =
      const EnumIndexConverter<RecordType>(RecordType.values);
  static JsonTypeConverter2<RecordType?, int?, int?> $converterrecordTypen =
      JsonTypeConverter2.asNullable($converterrecordType);
}

class SurvFoodSafetyData extends DataClassBehavioral<SurvFoodSafetyData>
    implements Insertable<SurvFoodSafetyData> {
  final int id;
  final RecordType? recordType;
  final bool? hasMeatProducts;
  final bool? sanitaryConditionsGood;
  final bool? hasSiluriformesFishProducts;
  final bool? hasPoultryProducts;
  final bool? hasEggProductsProducts;
  final bool? hasShellEggProducts;
  final bool? recordsMaintained;
  final bool? productWholesome;
  final bool? hazardControlsAdequate;
  final bool? nonHumanFoodProperlyDenatured;
  final String? safetyAddtionalComments;
  const SurvFoodSafetyData(
      {required this.id,
      this.recordType,
      this.hasMeatProducts,
      this.sanitaryConditionsGood,
      this.hasSiluriformesFishProducts,
      this.hasPoultryProducts,
      this.hasEggProductsProducts,
      this.hasShellEggProducts,
      this.recordsMaintained,
      this.productWholesome,
      this.hazardControlsAdequate,
      this.nonHumanFoodProperlyDenatured,
      this.safetyAddtionalComments});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || recordType != null) {
      final converter = $SurvFoodSafetyTable.$converterrecordTypen;
      map['record_type'] = Variable<int>(converter.toSql(recordType));
    }
    if (!nullToAbsent || hasMeatProducts != null) {
      map['has_meat_products'] = Variable<bool>(hasMeatProducts);
    }
    if (!nullToAbsent || sanitaryConditionsGood != null) {
      map['sanitary_conditions_good'] = Variable<bool>(sanitaryConditionsGood);
    }
    if (!nullToAbsent || hasSiluriformesFishProducts != null) {
      map['has_siluriformes_fish_products'] =
          Variable<bool>(hasSiluriformesFishProducts);
    }
    if (!nullToAbsent || hasPoultryProducts != null) {
      map['has_poultry_products'] = Variable<bool>(hasPoultryProducts);
    }
    if (!nullToAbsent || hasEggProductsProducts != null) {
      map['has_egg_products_products'] = Variable<bool>(hasEggProductsProducts);
    }
    if (!nullToAbsent || hasShellEggProducts != null) {
      map['has_shell_egg_products'] = Variable<bool>(hasShellEggProducts);
    }
    if (!nullToAbsent || recordsMaintained != null) {
      map['records_maintained'] = Variable<bool>(recordsMaintained);
    }
    if (!nullToAbsent || productWholesome != null) {
      map['product_wholesome'] = Variable<bool>(productWholesome);
    }
    if (!nullToAbsent || hazardControlsAdequate != null) {
      map['hazard_controls_adequate'] = Variable<bool>(hazardControlsAdequate);
    }
    if (!nullToAbsent || nonHumanFoodProperlyDenatured != null) {
      map['non_human_food_properly_denatured'] =
          Variable<bool>(nonHumanFoodProperlyDenatured);
    }
    if (!nullToAbsent || safetyAddtionalComments != null) {
      map['safety_addtional_comments'] =
          Variable<String>(safetyAddtionalComments);
    }
    return map;
  }

  SurvFoodSafetyCompanion toCompanion(bool nullToAbsent) {
    return SurvFoodSafetyCompanion(
      id: Value(id),
      recordType: recordType == null && nullToAbsent
          ? const Value.absent()
          : Value(recordType),
      hasMeatProducts: hasMeatProducts == null && nullToAbsent
          ? const Value.absent()
          : Value(hasMeatProducts),
      sanitaryConditionsGood: sanitaryConditionsGood == null && nullToAbsent
          ? const Value.absent()
          : Value(sanitaryConditionsGood),
      hasSiluriformesFishProducts:
          hasSiluriformesFishProducts == null && nullToAbsent
              ? const Value.absent()
              : Value(hasSiluriformesFishProducts),
      hasPoultryProducts: hasPoultryProducts == null && nullToAbsent
          ? const Value.absent()
          : Value(hasPoultryProducts),
      hasEggProductsProducts: hasEggProductsProducts == null && nullToAbsent
          ? const Value.absent()
          : Value(hasEggProductsProducts),
      hasShellEggProducts: hasShellEggProducts == null && nullToAbsent
          ? const Value.absent()
          : Value(hasShellEggProducts),
      recordsMaintained: recordsMaintained == null && nullToAbsent
          ? const Value.absent()
          : Value(recordsMaintained),
      productWholesome: productWholesome == null && nullToAbsent
          ? const Value.absent()
          : Value(productWholesome),
      hazardControlsAdequate: hazardControlsAdequate == null && nullToAbsent
          ? const Value.absent()
          : Value(hazardControlsAdequate),
      nonHumanFoodProperlyDenatured:
          nonHumanFoodProperlyDenatured == null && nullToAbsent
              ? const Value.absent()
              : Value(nonHumanFoodProperlyDenatured),
      safetyAddtionalComments: safetyAddtionalComments == null && nullToAbsent
          ? const Value.absent()
          : Value(safetyAddtionalComments),
    );
  }

  factory SurvFoodSafetyData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SurvFoodSafetyData(
      id: serializer.fromJson<int>(json['id']),
      recordType: $SurvFoodSafetyTable.$converterrecordTypen
          .fromJson(serializer.fromJson<int?>(json['recordType'])),
      hasMeatProducts: serializer.fromJson<bool?>(json['hasMeatProducts']),
      sanitaryConditionsGood:
          serializer.fromJson<bool?>(json['sanitaryConditionsGood']),
      hasSiluriformesFishProducts:
          serializer.fromJson<bool?>(json['hasSiluriformesFishProducts']),
      hasPoultryProducts:
          serializer.fromJson<bool?>(json['hasPoultryProducts']),
      hasEggProductsProducts:
          serializer.fromJson<bool?>(json['hasEggProductsProducts']),
      hasShellEggProducts:
          serializer.fromJson<bool?>(json['hasShellEggProducts']),
      recordsMaintained: serializer.fromJson<bool?>(json['recordsMaintained']),
      productWholesome: serializer.fromJson<bool?>(json['productWholesome']),
      hazardControlsAdequate:
          serializer.fromJson<bool?>(json['hazardControlsAdequate']),
      nonHumanFoodProperlyDenatured:
          serializer.fromJson<bool?>(json['nonHumanFoodProperlyDenatured']),
      safetyAddtionalComments:
          serializer.fromJson<String?>(json['safetyAddtionalComments']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordType': serializer.toJson<int?>(
          $SurvFoodSafetyTable.$converterrecordTypen.toJson(recordType)),
      'hasMeatProducts': serializer.toJson<bool?>(hasMeatProducts),
      'sanitaryConditionsGood':
          serializer.toJson<bool?>(sanitaryConditionsGood),
      'hasSiluriformesFishProducts':
          serializer.toJson<bool?>(hasSiluriformesFishProducts),
      'hasPoultryProducts': serializer.toJson<bool?>(hasPoultryProducts),
      'hasEggProductsProducts':
          serializer.toJson<bool?>(hasEggProductsProducts),
      'hasShellEggProducts': serializer.toJson<bool?>(hasShellEggProducts),
      'recordsMaintained': serializer.toJson<bool?>(recordsMaintained),
      'productWholesome': serializer.toJson<bool?>(productWholesome),
      'hazardControlsAdequate':
          serializer.toJson<bool?>(hazardControlsAdequate),
      'nonHumanFoodProperlyDenatured':
          serializer.toJson<bool?>(nonHumanFoodProperlyDenatured),
      'safetyAddtionalComments':
          serializer.toJson<String?>(safetyAddtionalComments),
    };
  }

  SurvFoodSafetyData copyWith(
          {int? id,
          Value<RecordType?> recordType = const Value.absent(),
          Value<bool?> hasMeatProducts = const Value.absent(),
          Value<bool?> sanitaryConditionsGood = const Value.absent(),
          Value<bool?> hasSiluriformesFishProducts = const Value.absent(),
          Value<bool?> hasPoultryProducts = const Value.absent(),
          Value<bool?> hasEggProductsProducts = const Value.absent(),
          Value<bool?> hasShellEggProducts = const Value.absent(),
          Value<bool?> recordsMaintained = const Value.absent(),
          Value<bool?> productWholesome = const Value.absent(),
          Value<bool?> hazardControlsAdequate = const Value.absent(),
          Value<bool?> nonHumanFoodProperlyDenatured = const Value.absent(),
          Value<String?> safetyAddtionalComments = const Value.absent()}) =>
      SurvFoodSafetyData(
        id: id ?? this.id,
        recordType: recordType.present ? recordType.value : this.recordType,
        hasMeatProducts: hasMeatProducts.present
            ? hasMeatProducts.value
            : this.hasMeatProducts,
        sanitaryConditionsGood: sanitaryConditionsGood.present
            ? sanitaryConditionsGood.value
            : this.sanitaryConditionsGood,
        hasSiluriformesFishProducts: hasSiluriformesFishProducts.present
            ? hasSiluriformesFishProducts.value
            : this.hasSiluriformesFishProducts,
        hasPoultryProducts: hasPoultryProducts.present
            ? hasPoultryProducts.value
            : this.hasPoultryProducts,
        hasEggProductsProducts: hasEggProductsProducts.present
            ? hasEggProductsProducts.value
            : this.hasEggProductsProducts,
        hasShellEggProducts: hasShellEggProducts.present
            ? hasShellEggProducts.value
            : this.hasShellEggProducts,
        recordsMaintained: recordsMaintained.present
            ? recordsMaintained.value
            : this.recordsMaintained,
        productWholesome: productWholesome.present
            ? productWholesome.value
            : this.productWholesome,
        hazardControlsAdequate: hazardControlsAdequate.present
            ? hazardControlsAdequate.value
            : this.hazardControlsAdequate,
        nonHumanFoodProperlyDenatured: nonHumanFoodProperlyDenatured.present
            ? nonHumanFoodProperlyDenatured.value
            : this.nonHumanFoodProperlyDenatured,
        safetyAddtionalComments: safetyAddtionalComments.present
            ? safetyAddtionalComments.value
            : this.safetyAddtionalComments,
      );
  @override
  String toString() {
    return (StringBuffer('SurvFoodSafetyData(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('hasMeatProducts: $hasMeatProducts, ')
          ..write('sanitaryConditionsGood: $sanitaryConditionsGood, ')
          ..write('hasSiluriformesFishProducts: $hasSiluriformesFishProducts, ')
          ..write('hasPoultryProducts: $hasPoultryProducts, ')
          ..write('hasEggProductsProducts: $hasEggProductsProducts, ')
          ..write('hasShellEggProducts: $hasShellEggProducts, ')
          ..write('recordsMaintained: $recordsMaintained, ')
          ..write('productWholesome: $productWholesome, ')
          ..write('hazardControlsAdequate: $hazardControlsAdequate, ')
          ..write(
              'nonHumanFoodProperlyDenatured: $nonHumanFoodProperlyDenatured, ')
          ..write('safetyAddtionalComments: $safetyAddtionalComments')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      recordType,
      hasMeatProducts,
      sanitaryConditionsGood,
      hasSiluriformesFishProducts,
      hasPoultryProducts,
      hasEggProductsProducts,
      hasShellEggProducts,
      recordsMaintained,
      productWholesome,
      hazardControlsAdequate,
      nonHumanFoodProperlyDenatured,
      safetyAddtionalComments);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SurvFoodSafetyData &&
          other.id == this.id &&
          other.recordType == this.recordType &&
          other.hasMeatProducts == this.hasMeatProducts &&
          other.sanitaryConditionsGood == this.sanitaryConditionsGood &&
          other.hasSiluriformesFishProducts ==
              this.hasSiluriformesFishProducts &&
          other.hasPoultryProducts == this.hasPoultryProducts &&
          other.hasEggProductsProducts == this.hasEggProductsProducts &&
          other.hasShellEggProducts == this.hasShellEggProducts &&
          other.recordsMaintained == this.recordsMaintained &&
          other.productWholesome == this.productWholesome &&
          other.hazardControlsAdequate == this.hazardControlsAdequate &&
          other.nonHumanFoodProperlyDenatured ==
              this.nonHumanFoodProperlyDenatured &&
          other.safetyAddtionalComments == this.safetyAddtionalComments);
}

class SurvFoodSafetyCompanion extends UpdateCompanion<SurvFoodSafetyData> {
  final Value<int> id;
  final Value<RecordType?> recordType;
  final Value<bool?> hasMeatProducts;
  final Value<bool?> sanitaryConditionsGood;
  final Value<bool?> hasSiluriformesFishProducts;
  final Value<bool?> hasPoultryProducts;
  final Value<bool?> hasEggProductsProducts;
  final Value<bool?> hasShellEggProducts;
  final Value<bool?> recordsMaintained;
  final Value<bool?> productWholesome;
  final Value<bool?> hazardControlsAdequate;
  final Value<bool?> nonHumanFoodProperlyDenatured;
  final Value<String?> safetyAddtionalComments;
  final Value<int> rowid;
  const SurvFoodSafetyCompanion({
    this.id = const Value.absent(),
    this.recordType = const Value.absent(),
    this.hasMeatProducts = const Value.absent(),
    this.sanitaryConditionsGood = const Value.absent(),
    this.hasSiluriformesFishProducts = const Value.absent(),
    this.hasPoultryProducts = const Value.absent(),
    this.hasEggProductsProducts = const Value.absent(),
    this.hasShellEggProducts = const Value.absent(),
    this.recordsMaintained = const Value.absent(),
    this.productWholesome = const Value.absent(),
    this.hazardControlsAdequate = const Value.absent(),
    this.nonHumanFoodProperlyDenatured = const Value.absent(),
    this.safetyAddtionalComments = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SurvFoodSafetyCompanion.insert({
    required int id,
    this.recordType = const Value.absent(),
    this.hasMeatProducts = const Value.absent(),
    this.sanitaryConditionsGood = const Value.absent(),
    this.hasSiluriformesFishProducts = const Value.absent(),
    this.hasPoultryProducts = const Value.absent(),
    this.hasEggProductsProducts = const Value.absent(),
    this.hasShellEggProducts = const Value.absent(),
    this.recordsMaintained = const Value.absent(),
    this.productWholesome = const Value.absent(),
    this.hazardControlsAdequate = const Value.absent(),
    this.nonHumanFoodProperlyDenatured = const Value.absent(),
    this.safetyAddtionalComments = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<SurvFoodSafetyData> custom({
    Expression<int>? id,
    Expression<int>? recordType,
    Expression<bool>? hasMeatProducts,
    Expression<bool>? sanitaryConditionsGood,
    Expression<bool>? hasSiluriformesFishProducts,
    Expression<bool>? hasPoultryProducts,
    Expression<bool>? hasEggProductsProducts,
    Expression<bool>? hasShellEggProducts,
    Expression<bool>? recordsMaintained,
    Expression<bool>? productWholesome,
    Expression<bool>? hazardControlsAdequate,
    Expression<bool>? nonHumanFoodProperlyDenatured,
    Expression<String>? safetyAddtionalComments,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordType != null) 'record_type': recordType,
      if (hasMeatProducts != null) 'has_meat_products': hasMeatProducts,
      if (sanitaryConditionsGood != null)
        'sanitary_conditions_good': sanitaryConditionsGood,
      if (hasSiluriformesFishProducts != null)
        'has_siluriformes_fish_products': hasSiluriformesFishProducts,
      if (hasPoultryProducts != null)
        'has_poultry_products': hasPoultryProducts,
      if (hasEggProductsProducts != null)
        'has_egg_products_products': hasEggProductsProducts,
      if (hasShellEggProducts != null)
        'has_shell_egg_products': hasShellEggProducts,
      if (recordsMaintained != null) 'records_maintained': recordsMaintained,
      if (productWholesome != null) 'product_wholesome': productWholesome,
      if (hazardControlsAdequate != null)
        'hazard_controls_adequate': hazardControlsAdequate,
      if (nonHumanFoodProperlyDenatured != null)
        'non_human_food_properly_denatured': nonHumanFoodProperlyDenatured,
      if (safetyAddtionalComments != null)
        'safety_addtional_comments': safetyAddtionalComments,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SurvFoodSafetyCompanion copyWith(
      {Value<int>? id,
      Value<RecordType?>? recordType,
      Value<bool?>? hasMeatProducts,
      Value<bool?>? sanitaryConditionsGood,
      Value<bool?>? hasSiluriformesFishProducts,
      Value<bool?>? hasPoultryProducts,
      Value<bool?>? hasEggProductsProducts,
      Value<bool?>? hasShellEggProducts,
      Value<bool?>? recordsMaintained,
      Value<bool?>? productWholesome,
      Value<bool?>? hazardControlsAdequate,
      Value<bool?>? nonHumanFoodProperlyDenatured,
      Value<String?>? safetyAddtionalComments,
      Value<int>? rowid}) {
    return SurvFoodSafetyCompanion(
      id: id ?? this.id,
      recordType: recordType ?? this.recordType,
      hasMeatProducts: hasMeatProducts ?? this.hasMeatProducts,
      sanitaryConditionsGood:
          sanitaryConditionsGood ?? this.sanitaryConditionsGood,
      hasSiluriformesFishProducts:
          hasSiluriformesFishProducts ?? this.hasSiluriformesFishProducts,
      hasPoultryProducts: hasPoultryProducts ?? this.hasPoultryProducts,
      hasEggProductsProducts:
          hasEggProductsProducts ?? this.hasEggProductsProducts,
      hasShellEggProducts: hasShellEggProducts ?? this.hasShellEggProducts,
      recordsMaintained: recordsMaintained ?? this.recordsMaintained,
      productWholesome: productWholesome ?? this.productWholesome,
      hazardControlsAdequate:
          hazardControlsAdequate ?? this.hazardControlsAdequate,
      nonHumanFoodProperlyDenatured:
          nonHumanFoodProperlyDenatured ?? this.nonHumanFoodProperlyDenatured,
      safetyAddtionalComments:
          safetyAddtionalComments ?? this.safetyAddtionalComments,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordType.present) {
      final converter = $SurvFoodSafetyTable.$converterrecordTypen;

      map['record_type'] = Variable<int>(converter.toSql(recordType.value));
    }
    if (hasMeatProducts.present) {
      map['has_meat_products'] = Variable<bool>(hasMeatProducts.value);
    }
    if (sanitaryConditionsGood.present) {
      map['sanitary_conditions_good'] =
          Variable<bool>(sanitaryConditionsGood.value);
    }
    if (hasSiluriformesFishProducts.present) {
      map['has_siluriformes_fish_products'] =
          Variable<bool>(hasSiluriformesFishProducts.value);
    }
    if (hasPoultryProducts.present) {
      map['has_poultry_products'] = Variable<bool>(hasPoultryProducts.value);
    }
    if (hasEggProductsProducts.present) {
      map['has_egg_products_products'] =
          Variable<bool>(hasEggProductsProducts.value);
    }
    if (hasShellEggProducts.present) {
      map['has_shell_egg_products'] = Variable<bool>(hasShellEggProducts.value);
    }
    if (recordsMaintained.present) {
      map['records_maintained'] = Variable<bool>(recordsMaintained.value);
    }
    if (productWholesome.present) {
      map['product_wholesome'] = Variable<bool>(productWholesome.value);
    }
    if (hazardControlsAdequate.present) {
      map['hazard_controls_adequate'] =
          Variable<bool>(hazardControlsAdequate.value);
    }
    if (nonHumanFoodProperlyDenatured.present) {
      map['non_human_food_properly_denatured'] =
          Variable<bool>(nonHumanFoodProperlyDenatured.value);
    }
    if (safetyAddtionalComments.present) {
      map['safety_addtional_comments'] =
          Variable<String>(safetyAddtionalComments.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SurvFoodSafetyCompanion(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('hasMeatProducts: $hasMeatProducts, ')
          ..write('sanitaryConditionsGood: $sanitaryConditionsGood, ')
          ..write('hasSiluriformesFishProducts: $hasSiluriformesFishProducts, ')
          ..write('hasPoultryProducts: $hasPoultryProducts, ')
          ..write('hasEggProductsProducts: $hasEggProductsProducts, ')
          ..write('hasShellEggProducts: $hasShellEggProducts, ')
          ..write('recordsMaintained: $recordsMaintained, ')
          ..write('productWholesome: $productWholesome, ')
          ..write('hazardControlsAdequate: $hazardControlsAdequate, ')
          ..write(
              'nonHumanFoodProperlyDenatured: $nonHumanFoodProperlyDenatured, ')
          ..write('safetyAddtionalComments: $safetyAddtionalComments, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SurvImportedProductTable extends SurvImportedProduct
    with TableInfo<$SurvImportedProductTable, SurvImportedProductData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SurvImportedProductTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<RecordType?, int> recordType =
      GeneratedColumn<int>('record_type', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<RecordType?>(
              $SurvImportedProductTable.$converterrecordTypen);
  @override
  late final GeneratedColumn<bool> wasImportProductObserved =
      GeneratedColumn<bool>(
          'was_import_product_observed', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("was_import_product_observed" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> hasCheckForFederalImportInspection =
      GeneratedColumn<bool>(
          'has_check_for_federal_import_inspection', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("has_check_for_federal_import_inspection" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> wasCorrectDocumentsRequested =
      GeneratedColumn<bool>(
          'was_correct_documents_requested', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("was_correct_documents_requested" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> importedProductsMarks =
      GeneratedColumn<bool>('imported_products_marks', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("imported_products_marks" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> hasPhisUsedVerifyProducts =
      GeneratedColumn<bool>('has_phis_used_verify_products', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("has_phis_used_verify_products" IN (0, 1))'));
  @override
  late final GeneratedColumn<
      bool> wasOriginatedFromEligibleForeignCountries = GeneratedColumn<
          bool>(
      'was_originated_from_eligible_foreign_countries', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("was_originated_from_eligible_foreign_countries" IN (0, 1))'));
  @override
  late final GeneratedColumn<
      bool> wasOriginatedFromEligibleForeignEstablishments = GeneratedColumn<
          bool>(
      'was_originated_from_eligible_foreign_establishments', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("was_originated_from_eligible_foreign_establishments" IN (0, 1))'));
  @override
  late final GeneratedColumn<
      bool> wasProducedWhileForeignEstablishmentsEligible = GeneratedColumn<
          bool>(
      'was_produced_while_foreign_establishments_eligible', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("was_produced_while_foreign_establishments_eligible" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> wasInspectedAndPassedByFSIS =
      GeneratedColumn<bool>(
          'was_inspected_and_passed_by_f_s_i_s', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("was_inspected_and_passed_by_f_s_i_s" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> country = GeneratedColumn<String>(
      'country', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> importedProductsAdditionalComments =
      GeneratedColumn<String>(
          'imported_products_additional_comments', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        recordType,
        wasImportProductObserved,
        hasCheckForFederalImportInspection,
        wasCorrectDocumentsRequested,
        importedProductsMarks,
        hasPhisUsedVerifyProducts,
        wasOriginatedFromEligibleForeignCountries,
        wasOriginatedFromEligibleForeignEstablishments,
        wasProducedWhileForeignEstablishmentsEligible,
        wasInspectedAndPassedByFSIS,
        country,
        importedProductsAdditionalComments
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'surv_imported_product';
  @override
  Set<GeneratedColumn> get $primaryKey => {id, recordType};
  @override
  SurvImportedProductData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SurvImportedProductData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      recordType: $SurvImportedProductTable.$converterrecordTypen.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}record_type'])),
      wasImportProductObserved: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}was_import_product_observed']),
      hasCheckForFederalImportInspection: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}has_check_for_federal_import_inspection']),
      wasCorrectDocumentsRequested: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}was_correct_documents_requested']),
      importedProductsMarks: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}imported_products_marks']),
      hasPhisUsedVerifyProducts: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}has_phis_used_verify_products']),
      wasOriginatedFromEligibleForeignCountries: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data[
              '${effectivePrefix}was_originated_from_eligible_foreign_countries']),
      wasOriginatedFromEligibleForeignEstablishments:
          attachedDatabase.typeMapping.read(
              DriftSqlType.bool,
              data[
                  '${effectivePrefix}was_originated_from_eligible_foreign_establishments']),
      wasProducedWhileForeignEstablishmentsEligible:
          attachedDatabase.typeMapping.read(
              DriftSqlType.bool,
              data[
                  '${effectivePrefix}was_produced_while_foreign_establishments_eligible']),
      wasInspectedAndPassedByFSIS: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}was_inspected_and_passed_by_f_s_i_s']),
      country: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}country']),
      importedProductsAdditionalComments: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}imported_products_additional_comments']),
    );
  }

  @override
  $SurvImportedProductTable createAlias(String alias) {
    return $SurvImportedProductTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RecordType, int, int> $converterrecordType =
      const EnumIndexConverter<RecordType>(RecordType.values);
  static JsonTypeConverter2<RecordType?, int?, int?> $converterrecordTypen =
      JsonTypeConverter2.asNullable($converterrecordType);
}

class SurvImportedProductData
    extends DataClassBehavioral<SurvImportedProductData>
    implements Insertable<SurvImportedProductData> {
  final int id;
  final RecordType? recordType;
  final bool? wasImportProductObserved;
  final bool? hasCheckForFederalImportInspection;
  final bool? wasCorrectDocumentsRequested;
  final bool? importedProductsMarks;
  final bool? hasPhisUsedVerifyProducts;
  final bool? wasOriginatedFromEligibleForeignCountries;
  final bool? wasOriginatedFromEligibleForeignEstablishments;
  final bool? wasProducedWhileForeignEstablishmentsEligible;
  final bool? wasInspectedAndPassedByFSIS;
  final String? country;
  final String? importedProductsAdditionalComments;
  const SurvImportedProductData(
      {required this.id,
      this.recordType,
      this.wasImportProductObserved,
      this.hasCheckForFederalImportInspection,
      this.wasCorrectDocumentsRequested,
      this.importedProductsMarks,
      this.hasPhisUsedVerifyProducts,
      this.wasOriginatedFromEligibleForeignCountries,
      this.wasOriginatedFromEligibleForeignEstablishments,
      this.wasProducedWhileForeignEstablishmentsEligible,
      this.wasInspectedAndPassedByFSIS,
      this.country,
      this.importedProductsAdditionalComments});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || recordType != null) {
      final converter = $SurvImportedProductTable.$converterrecordTypen;
      map['record_type'] = Variable<int>(converter.toSql(recordType));
    }
    if (!nullToAbsent || wasImportProductObserved != null) {
      map['was_import_product_observed'] =
          Variable<bool>(wasImportProductObserved);
    }
    if (!nullToAbsent || hasCheckForFederalImportInspection != null) {
      map['has_check_for_federal_import_inspection'] =
          Variable<bool>(hasCheckForFederalImportInspection);
    }
    if (!nullToAbsent || wasCorrectDocumentsRequested != null) {
      map['was_correct_documents_requested'] =
          Variable<bool>(wasCorrectDocumentsRequested);
    }
    if (!nullToAbsent || importedProductsMarks != null) {
      map['imported_products_marks'] = Variable<bool>(importedProductsMarks);
    }
    if (!nullToAbsent || hasPhisUsedVerifyProducts != null) {
      map['has_phis_used_verify_products'] =
          Variable<bool>(hasPhisUsedVerifyProducts);
    }
    if (!nullToAbsent || wasOriginatedFromEligibleForeignCountries != null) {
      map['was_originated_from_eligible_foreign_countries'] =
          Variable<bool>(wasOriginatedFromEligibleForeignCountries);
    }
    if (!nullToAbsent ||
        wasOriginatedFromEligibleForeignEstablishments != null) {
      map['was_originated_from_eligible_foreign_establishments'] =
          Variable<bool>(wasOriginatedFromEligibleForeignEstablishments);
    }
    if (!nullToAbsent ||
        wasProducedWhileForeignEstablishmentsEligible != null) {
      map['was_produced_while_foreign_establishments_eligible'] =
          Variable<bool>(wasProducedWhileForeignEstablishmentsEligible);
    }
    if (!nullToAbsent || wasInspectedAndPassedByFSIS != null) {
      map['was_inspected_and_passed_by_f_s_i_s'] =
          Variable<bool>(wasInspectedAndPassedByFSIS);
    }
    if (!nullToAbsent || country != null) {
      map['country'] = Variable<String>(country);
    }
    if (!nullToAbsent || importedProductsAdditionalComments != null) {
      map['imported_products_additional_comments'] =
          Variable<String>(importedProductsAdditionalComments);
    }
    return map;
  }

  SurvImportedProductCompanion toCompanion(bool nullToAbsent) {
    return SurvImportedProductCompanion(
      id: Value(id),
      recordType: recordType == null && nullToAbsent
          ? const Value.absent()
          : Value(recordType),
      wasImportProductObserved: wasImportProductObserved == null && nullToAbsent
          ? const Value.absent()
          : Value(wasImportProductObserved),
      hasCheckForFederalImportInspection:
          hasCheckForFederalImportInspection == null && nullToAbsent
              ? const Value.absent()
              : Value(hasCheckForFederalImportInspection),
      wasCorrectDocumentsRequested:
          wasCorrectDocumentsRequested == null && nullToAbsent
              ? const Value.absent()
              : Value(wasCorrectDocumentsRequested),
      importedProductsMarks: importedProductsMarks == null && nullToAbsent
          ? const Value.absent()
          : Value(importedProductsMarks),
      hasPhisUsedVerifyProducts:
          hasPhisUsedVerifyProducts == null && nullToAbsent
              ? const Value.absent()
              : Value(hasPhisUsedVerifyProducts),
      wasOriginatedFromEligibleForeignCountries:
          wasOriginatedFromEligibleForeignCountries == null && nullToAbsent
              ? const Value.absent()
              : Value(wasOriginatedFromEligibleForeignCountries),
      wasOriginatedFromEligibleForeignEstablishments:
          wasOriginatedFromEligibleForeignEstablishments == null && nullToAbsent
              ? const Value.absent()
              : Value(wasOriginatedFromEligibleForeignEstablishments),
      wasProducedWhileForeignEstablishmentsEligible:
          wasProducedWhileForeignEstablishmentsEligible == null && nullToAbsent
              ? const Value.absent()
              : Value(wasProducedWhileForeignEstablishmentsEligible),
      wasInspectedAndPassedByFSIS:
          wasInspectedAndPassedByFSIS == null && nullToAbsent
              ? const Value.absent()
              : Value(wasInspectedAndPassedByFSIS),
      country: country == null && nullToAbsent
          ? const Value.absent()
          : Value(country),
      importedProductsAdditionalComments:
          importedProductsAdditionalComments == null && nullToAbsent
              ? const Value.absent()
              : Value(importedProductsAdditionalComments),
    );
  }

  factory SurvImportedProductData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SurvImportedProductData(
      id: serializer.fromJson<int>(json['id']),
      recordType: $SurvImportedProductTable.$converterrecordTypen
          .fromJson(serializer.fromJson<int?>(json['recordType'])),
      wasImportProductObserved:
          serializer.fromJson<bool?>(json['wasImportProductObserved']),
      hasCheckForFederalImportInspection: serializer
          .fromJson<bool?>(json['hasCheckForFederalImportInspection']),
      wasCorrectDocumentsRequested:
          serializer.fromJson<bool?>(json['wasCorrectDocumentsRequested']),
      importedProductsMarks:
          serializer.fromJson<bool?>(json['importedProductsMarks']),
      hasPhisUsedVerifyProducts:
          serializer.fromJson<bool?>(json['hasPhisUsedVerifyProducts']),
      wasOriginatedFromEligibleForeignCountries: serializer
          .fromJson<bool?>(json['wasOriginatedFromEligibleForeignCountries']),
      wasOriginatedFromEligibleForeignEstablishments:
          serializer.fromJson<bool?>(
              json['wasOriginatedFromEligibleForeignEstablishments']),
      wasProducedWhileForeignEstablishmentsEligible: serializer.fromJson<bool?>(
          json['wasProducedWhileForeignEstablishmentsEligible']),
      wasInspectedAndPassedByFSIS:
          serializer.fromJson<bool?>(json['wasInspectedAndPassedByFSIS']),
      country: serializer.fromJson<String?>(json['country']),
      importedProductsAdditionalComments: serializer
          .fromJson<String?>(json['importedProductsAdditionalComments']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordType': serializer.toJson<int?>(
          $SurvImportedProductTable.$converterrecordTypen.toJson(recordType)),
      'wasImportProductObserved':
          serializer.toJson<bool?>(wasImportProductObserved),
      'hasCheckForFederalImportInspection':
          serializer.toJson<bool?>(hasCheckForFederalImportInspection),
      'wasCorrectDocumentsRequested':
          serializer.toJson<bool?>(wasCorrectDocumentsRequested),
      'importedProductsMarks': serializer.toJson<bool?>(importedProductsMarks),
      'hasPhisUsedVerifyProducts':
          serializer.toJson<bool?>(hasPhisUsedVerifyProducts),
      'wasOriginatedFromEligibleForeignCountries':
          serializer.toJson<bool?>(wasOriginatedFromEligibleForeignCountries),
      'wasOriginatedFromEligibleForeignEstablishments': serializer
          .toJson<bool?>(wasOriginatedFromEligibleForeignEstablishments),
      'wasProducedWhileForeignEstablishmentsEligible': serializer
          .toJson<bool?>(wasProducedWhileForeignEstablishmentsEligible),
      'wasInspectedAndPassedByFSIS':
          serializer.toJson<bool?>(wasInspectedAndPassedByFSIS),
      'country': serializer.toJson<String?>(country),
      'importedProductsAdditionalComments':
          serializer.toJson<String?>(importedProductsAdditionalComments),
    };
  }

  SurvImportedProductData copyWith(
          {int? id,
          Value<RecordType?> recordType = const Value.absent(),
          Value<bool?> wasImportProductObserved = const Value.absent(),
          Value<bool?> hasCheckForFederalImportInspection =
              const Value.absent(),
          Value<bool?> wasCorrectDocumentsRequested = const Value.absent(),
          Value<bool?> importedProductsMarks = const Value.absent(),
          Value<bool?> hasPhisUsedVerifyProducts = const Value.absent(),
          Value<bool?> wasOriginatedFromEligibleForeignCountries =
              const Value.absent(),
          Value<bool?> wasOriginatedFromEligibleForeignEstablishments =
              const Value.absent(),
          Value<bool?> wasProducedWhileForeignEstablishmentsEligible =
              const Value.absent(),
          Value<bool?> wasInspectedAndPassedByFSIS = const Value.absent(),
          Value<String?> country = const Value.absent(),
          Value<String?> importedProductsAdditionalComments =
              const Value.absent()}) =>
      SurvImportedProductData(
        id: id ?? this.id,
        recordType: recordType.present ? recordType.value : this.recordType,
        wasImportProductObserved: wasImportProductObserved.present
            ? wasImportProductObserved.value
            : this.wasImportProductObserved,
        hasCheckForFederalImportInspection:
            hasCheckForFederalImportInspection.present
                ? hasCheckForFederalImportInspection.value
                : this.hasCheckForFederalImportInspection,
        wasCorrectDocumentsRequested: wasCorrectDocumentsRequested.present
            ? wasCorrectDocumentsRequested.value
            : this.wasCorrectDocumentsRequested,
        importedProductsMarks: importedProductsMarks.present
            ? importedProductsMarks.value
            : this.importedProductsMarks,
        hasPhisUsedVerifyProducts: hasPhisUsedVerifyProducts.present
            ? hasPhisUsedVerifyProducts.value
            : this.hasPhisUsedVerifyProducts,
        wasOriginatedFromEligibleForeignCountries:
            wasOriginatedFromEligibleForeignCountries.present
                ? wasOriginatedFromEligibleForeignCountries.value
                : this.wasOriginatedFromEligibleForeignCountries,
        wasOriginatedFromEligibleForeignEstablishments:
            wasOriginatedFromEligibleForeignEstablishments.present
                ? wasOriginatedFromEligibleForeignEstablishments.value
                : this.wasOriginatedFromEligibleForeignEstablishments,
        wasProducedWhileForeignEstablishmentsEligible:
            wasProducedWhileForeignEstablishmentsEligible.present
                ? wasProducedWhileForeignEstablishmentsEligible.value
                : this.wasProducedWhileForeignEstablishmentsEligible,
        wasInspectedAndPassedByFSIS: wasInspectedAndPassedByFSIS.present
            ? wasInspectedAndPassedByFSIS.value
            : this.wasInspectedAndPassedByFSIS,
        country: country.present ? country.value : this.country,
        importedProductsAdditionalComments:
            importedProductsAdditionalComments.present
                ? importedProductsAdditionalComments.value
                : this.importedProductsAdditionalComments,
      );
  @override
  String toString() {
    return (StringBuffer('SurvImportedProductData(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('wasImportProductObserved: $wasImportProductObserved, ')
          ..write(
              'hasCheckForFederalImportInspection: $hasCheckForFederalImportInspection, ')
          ..write(
              'wasCorrectDocumentsRequested: $wasCorrectDocumentsRequested, ')
          ..write('importedProductsMarks: $importedProductsMarks, ')
          ..write('hasPhisUsedVerifyProducts: $hasPhisUsedVerifyProducts, ')
          ..write(
              'wasOriginatedFromEligibleForeignCountries: $wasOriginatedFromEligibleForeignCountries, ')
          ..write(
              'wasOriginatedFromEligibleForeignEstablishments: $wasOriginatedFromEligibleForeignEstablishments, ')
          ..write(
              'wasProducedWhileForeignEstablishmentsEligible: $wasProducedWhileForeignEstablishmentsEligible, ')
          ..write('wasInspectedAndPassedByFSIS: $wasInspectedAndPassedByFSIS, ')
          ..write('country: $country, ')
          ..write(
              'importedProductsAdditionalComments: $importedProductsAdditionalComments')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      recordType,
      wasImportProductObserved,
      hasCheckForFederalImportInspection,
      wasCorrectDocumentsRequested,
      importedProductsMarks,
      hasPhisUsedVerifyProducts,
      wasOriginatedFromEligibleForeignCountries,
      wasOriginatedFromEligibleForeignEstablishments,
      wasProducedWhileForeignEstablishmentsEligible,
      wasInspectedAndPassedByFSIS,
      country,
      importedProductsAdditionalComments);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SurvImportedProductData &&
          other.id == this.id &&
          other.recordType == this.recordType &&
          other.wasImportProductObserved == this.wasImportProductObserved &&
          other.hasCheckForFederalImportInspection ==
              this.hasCheckForFederalImportInspection &&
          other.wasCorrectDocumentsRequested ==
              this.wasCorrectDocumentsRequested &&
          other.importedProductsMarks == this.importedProductsMarks &&
          other.hasPhisUsedVerifyProducts == this.hasPhisUsedVerifyProducts &&
          other.wasOriginatedFromEligibleForeignCountries ==
              this.wasOriginatedFromEligibleForeignCountries &&
          other.wasOriginatedFromEligibleForeignEstablishments ==
              this.wasOriginatedFromEligibleForeignEstablishments &&
          other.wasProducedWhileForeignEstablishmentsEligible ==
              this.wasProducedWhileForeignEstablishmentsEligible &&
          other.wasInspectedAndPassedByFSIS ==
              this.wasInspectedAndPassedByFSIS &&
          other.country == this.country &&
          other.importedProductsAdditionalComments ==
              this.importedProductsAdditionalComments);
}

class SurvImportedProductCompanion
    extends UpdateCompanion<SurvImportedProductData> {
  final Value<int> id;
  final Value<RecordType?> recordType;
  final Value<bool?> wasImportProductObserved;
  final Value<bool?> hasCheckForFederalImportInspection;
  final Value<bool?> wasCorrectDocumentsRequested;
  final Value<bool?> importedProductsMarks;
  final Value<bool?> hasPhisUsedVerifyProducts;
  final Value<bool?> wasOriginatedFromEligibleForeignCountries;
  final Value<bool?> wasOriginatedFromEligibleForeignEstablishments;
  final Value<bool?> wasProducedWhileForeignEstablishmentsEligible;
  final Value<bool?> wasInspectedAndPassedByFSIS;
  final Value<String?> country;
  final Value<String?> importedProductsAdditionalComments;
  final Value<int> rowid;
  const SurvImportedProductCompanion({
    this.id = const Value.absent(),
    this.recordType = const Value.absent(),
    this.wasImportProductObserved = const Value.absent(),
    this.hasCheckForFederalImportInspection = const Value.absent(),
    this.wasCorrectDocumentsRequested = const Value.absent(),
    this.importedProductsMarks = const Value.absent(),
    this.hasPhisUsedVerifyProducts = const Value.absent(),
    this.wasOriginatedFromEligibleForeignCountries = const Value.absent(),
    this.wasOriginatedFromEligibleForeignEstablishments = const Value.absent(),
    this.wasProducedWhileForeignEstablishmentsEligible = const Value.absent(),
    this.wasInspectedAndPassedByFSIS = const Value.absent(),
    this.country = const Value.absent(),
    this.importedProductsAdditionalComments = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SurvImportedProductCompanion.insert({
    required int id,
    this.recordType = const Value.absent(),
    this.wasImportProductObserved = const Value.absent(),
    this.hasCheckForFederalImportInspection = const Value.absent(),
    this.wasCorrectDocumentsRequested = const Value.absent(),
    this.importedProductsMarks = const Value.absent(),
    this.hasPhisUsedVerifyProducts = const Value.absent(),
    this.wasOriginatedFromEligibleForeignCountries = const Value.absent(),
    this.wasOriginatedFromEligibleForeignEstablishments = const Value.absent(),
    this.wasProducedWhileForeignEstablishmentsEligible = const Value.absent(),
    this.wasInspectedAndPassedByFSIS = const Value.absent(),
    this.country = const Value.absent(),
    this.importedProductsAdditionalComments = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<SurvImportedProductData> custom({
    Expression<int>? id,
    Expression<int>? recordType,
    Expression<bool>? wasImportProductObserved,
    Expression<bool>? hasCheckForFederalImportInspection,
    Expression<bool>? wasCorrectDocumentsRequested,
    Expression<bool>? importedProductsMarks,
    Expression<bool>? hasPhisUsedVerifyProducts,
    Expression<bool>? wasOriginatedFromEligibleForeignCountries,
    Expression<bool>? wasOriginatedFromEligibleForeignEstablishments,
    Expression<bool>? wasProducedWhileForeignEstablishmentsEligible,
    Expression<bool>? wasInspectedAndPassedByFSIS,
    Expression<String>? country,
    Expression<String>? importedProductsAdditionalComments,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordType != null) 'record_type': recordType,
      if (wasImportProductObserved != null)
        'was_import_product_observed': wasImportProductObserved,
      if (hasCheckForFederalImportInspection != null)
        'has_check_for_federal_import_inspection':
            hasCheckForFederalImportInspection,
      if (wasCorrectDocumentsRequested != null)
        'was_correct_documents_requested': wasCorrectDocumentsRequested,
      if (importedProductsMarks != null)
        'imported_products_marks': importedProductsMarks,
      if (hasPhisUsedVerifyProducts != null)
        'has_phis_used_verify_products': hasPhisUsedVerifyProducts,
      if (wasOriginatedFromEligibleForeignCountries != null)
        'was_originated_from_eligible_foreign_countries':
            wasOriginatedFromEligibleForeignCountries,
      if (wasOriginatedFromEligibleForeignEstablishments != null)
        'was_originated_from_eligible_foreign_establishments':
            wasOriginatedFromEligibleForeignEstablishments,
      if (wasProducedWhileForeignEstablishmentsEligible != null)
        'was_produced_while_foreign_establishments_eligible':
            wasProducedWhileForeignEstablishmentsEligible,
      if (wasInspectedAndPassedByFSIS != null)
        'was_inspected_and_passed_by_f_s_i_s': wasInspectedAndPassedByFSIS,
      if (country != null) 'country': country,
      if (importedProductsAdditionalComments != null)
        'imported_products_additional_comments':
            importedProductsAdditionalComments,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SurvImportedProductCompanion copyWith(
      {Value<int>? id,
      Value<RecordType?>? recordType,
      Value<bool?>? wasImportProductObserved,
      Value<bool?>? hasCheckForFederalImportInspection,
      Value<bool?>? wasCorrectDocumentsRequested,
      Value<bool?>? importedProductsMarks,
      Value<bool?>? hasPhisUsedVerifyProducts,
      Value<bool?>? wasOriginatedFromEligibleForeignCountries,
      Value<bool?>? wasOriginatedFromEligibleForeignEstablishments,
      Value<bool?>? wasProducedWhileForeignEstablishmentsEligible,
      Value<bool?>? wasInspectedAndPassedByFSIS,
      Value<String?>? country,
      Value<String?>? importedProductsAdditionalComments,
      Value<int>? rowid}) {
    return SurvImportedProductCompanion(
      id: id ?? this.id,
      recordType: recordType ?? this.recordType,
      wasImportProductObserved:
          wasImportProductObserved ?? this.wasImportProductObserved,
      hasCheckForFederalImportInspection: hasCheckForFederalImportInspection ??
          this.hasCheckForFederalImportInspection,
      wasCorrectDocumentsRequested:
          wasCorrectDocumentsRequested ?? this.wasCorrectDocumentsRequested,
      importedProductsMarks:
          importedProductsMarks ?? this.importedProductsMarks,
      hasPhisUsedVerifyProducts:
          hasPhisUsedVerifyProducts ?? this.hasPhisUsedVerifyProducts,
      wasOriginatedFromEligibleForeignCountries:
          wasOriginatedFromEligibleForeignCountries ??
              this.wasOriginatedFromEligibleForeignCountries,
      wasOriginatedFromEligibleForeignEstablishments:
          wasOriginatedFromEligibleForeignEstablishments ??
              this.wasOriginatedFromEligibleForeignEstablishments,
      wasProducedWhileForeignEstablishmentsEligible:
          wasProducedWhileForeignEstablishmentsEligible ??
              this.wasProducedWhileForeignEstablishmentsEligible,
      wasInspectedAndPassedByFSIS:
          wasInspectedAndPassedByFSIS ?? this.wasInspectedAndPassedByFSIS,
      country: country ?? this.country,
      importedProductsAdditionalComments: importedProductsAdditionalComments ??
          this.importedProductsAdditionalComments,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordType.present) {
      final converter = $SurvImportedProductTable.$converterrecordTypen;

      map['record_type'] = Variable<int>(converter.toSql(recordType.value));
    }
    if (wasImportProductObserved.present) {
      map['was_import_product_observed'] =
          Variable<bool>(wasImportProductObserved.value);
    }
    if (hasCheckForFederalImportInspection.present) {
      map['has_check_for_federal_import_inspection'] =
          Variable<bool>(hasCheckForFederalImportInspection.value);
    }
    if (wasCorrectDocumentsRequested.present) {
      map['was_correct_documents_requested'] =
          Variable<bool>(wasCorrectDocumentsRequested.value);
    }
    if (importedProductsMarks.present) {
      map['imported_products_marks'] =
          Variable<bool>(importedProductsMarks.value);
    }
    if (hasPhisUsedVerifyProducts.present) {
      map['has_phis_used_verify_products'] =
          Variable<bool>(hasPhisUsedVerifyProducts.value);
    }
    if (wasOriginatedFromEligibleForeignCountries.present) {
      map['was_originated_from_eligible_foreign_countries'] =
          Variable<bool>(wasOriginatedFromEligibleForeignCountries.value);
    }
    if (wasOriginatedFromEligibleForeignEstablishments.present) {
      map['was_originated_from_eligible_foreign_establishments'] =
          Variable<bool>(wasOriginatedFromEligibleForeignEstablishments.value);
    }
    if (wasProducedWhileForeignEstablishmentsEligible.present) {
      map['was_produced_while_foreign_establishments_eligible'] =
          Variable<bool>(wasProducedWhileForeignEstablishmentsEligible.value);
    }
    if (wasInspectedAndPassedByFSIS.present) {
      map['was_inspected_and_passed_by_f_s_i_s'] =
          Variable<bool>(wasInspectedAndPassedByFSIS.value);
    }
    if (country.present) {
      map['country'] = Variable<String>(country.value);
    }
    if (importedProductsAdditionalComments.present) {
      map['imported_products_additional_comments'] =
          Variable<String>(importedProductsAdditionalComments.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SurvImportedProductCompanion(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('wasImportProductObserved: $wasImportProductObserved, ')
          ..write(
              'hasCheckForFederalImportInspection: $hasCheckForFederalImportInspection, ')
          ..write(
              'wasCorrectDocumentsRequested: $wasCorrectDocumentsRequested, ')
          ..write('importedProductsMarks: $importedProductsMarks, ')
          ..write('hasPhisUsedVerifyProducts: $hasPhisUsedVerifyProducts, ')
          ..write(
              'wasOriginatedFromEligibleForeignCountries: $wasOriginatedFromEligibleForeignCountries, ')
          ..write(
              'wasOriginatedFromEligibleForeignEstablishments: $wasOriginatedFromEligibleForeignEstablishments, ')
          ..write(
              'wasProducedWhileForeignEstablishmentsEligible: $wasProducedWhileForeignEstablishmentsEligible, ')
          ..write('wasInspectedAndPassedByFSIS: $wasInspectedAndPassedByFSIS, ')
          ..write('country: $country, ')
          ..write(
              'importedProductsAdditionalComments: $importedProductsAdditionalComments, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SurvSamplingInfoTable extends SurvSamplingInfo
    with TableInfo<$SurvSamplingInfoTable, SurvSamplingInfoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SurvSamplingInfoTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<RecordType?, int> recordType =
      GeneratedColumn<int>('record_type', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<RecordType?>(
              $SurvSamplingInfoTable.$converterrecordTypen);
  @override
  late final GeneratedColumn<bool> samplingTaken = GeneratedColumn<bool>(
      'sampling_taken', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("sampling_taken" IN (0, 1))'));
  @override
  late final GeneratedColumnWithTypeConverter<MultiString?, String>
      typeOfSamplesTaken = GeneratedColumn<String>(
              'type_of_samples_taken', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<MultiString?>(
              $SurvSamplingInfoTable.$convertertypeOfSamplesTaken);
  @override
  late final GeneratedColumnWithTypeConverter<MultiString?, String>
      reasonNoSamplesTaken = GeneratedColumn<String>(
              'reason_no_samples_taken', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<MultiString?>(
              $SurvSamplingInfoTable.$converterreasonNoSamplesTaken);
  @override
  late final GeneratedColumnWithTypeConverter<MultiString?, String>
      sampleResult = GeneratedColumn<String>('sample_result', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<MultiString?>(
              $SurvSamplingInfoTable.$convertersampleResult);
  @override
  late final GeneratedColumn<String> numSpecialProjectsInvestigations =
      GeneratedColumn<String>(
          'num_special_projects_investigations', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> numMT0506 = GeneratedColumn<String>(
      'num_m_t0506', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> adequateGrinding = GeneratedColumn<bool>(
      'adequate_grinding', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("adequate_grinding" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        recordType,
        samplingTaken,
        typeOfSamplesTaken,
        reasonNoSamplesTaken,
        sampleResult,
        numSpecialProjectsInvestigations,
        numMT0506,
        adequateGrinding
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'surv_sampling_info';
  @override
  Set<GeneratedColumn> get $primaryKey => {id, recordType};
  @override
  SurvSamplingInfoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SurvSamplingInfoData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      recordType: $SurvSamplingInfoTable.$converterrecordTypen.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}record_type'])),
      samplingTaken: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}sampling_taken']),
      typeOfSamplesTaken: $SurvSamplingInfoTable.$convertertypeOfSamplesTaken
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}type_of_samples_taken'])),
      reasonNoSamplesTaken: $SurvSamplingInfoTable
          .$converterreasonNoSamplesTaken
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}reason_no_samples_taken'])),
      sampleResult: $SurvSamplingInfoTable.$convertersampleResult.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}sample_result'])),
      numSpecialProjectsInvestigations: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}num_special_projects_investigations']),
      numMT0506: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}num_m_t0506']),
      adequateGrinding: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}adequate_grinding']),
    );
  }

  @override
  $SurvSamplingInfoTable createAlias(String alias) {
    return $SurvSamplingInfoTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RecordType, int, int> $converterrecordType =
      const EnumIndexConverter<RecordType>(RecordType.values);
  static JsonTypeConverter2<RecordType?, int?, int?> $converterrecordTypen =
      JsonTypeConverter2.asNullable($converterrecordType);
  static TypeConverter<MultiString?, String?> $convertertypeOfSamplesTaken =
      const MultiStringConverter();
  static TypeConverter<MultiString?, String?> $converterreasonNoSamplesTaken =
      const MultiStringConverter();
  static TypeConverter<MultiString?, String?> $convertersampleResult =
      const MultiStringConverter();
}

class SurvSamplingInfoData extends DataClassBehavioral<SurvSamplingInfoData>
    implements Insertable<SurvSamplingInfoData> {
  final int id;
  final RecordType? recordType;
  final bool? samplingTaken;
  final MultiString? typeOfSamplesTaken;
  final MultiString? reasonNoSamplesTaken;
  final MultiString? sampleResult;
  final String? numSpecialProjectsInvestigations;
  final String? numMT0506;
  final bool? adequateGrinding;
  const SurvSamplingInfoData(
      {required this.id,
      this.recordType,
      this.samplingTaken,
      this.typeOfSamplesTaken,
      this.reasonNoSamplesTaken,
      this.sampleResult,
      this.numSpecialProjectsInvestigations,
      this.numMT0506,
      this.adequateGrinding});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || recordType != null) {
      final converter = $SurvSamplingInfoTable.$converterrecordTypen;
      map['record_type'] = Variable<int>(converter.toSql(recordType));
    }
    if (!nullToAbsent || samplingTaken != null) {
      map['sampling_taken'] = Variable<bool>(samplingTaken);
    }
    if (!nullToAbsent || typeOfSamplesTaken != null) {
      final converter = $SurvSamplingInfoTable.$convertertypeOfSamplesTaken;
      map['type_of_samples_taken'] =
          Variable<String>(converter.toSql(typeOfSamplesTaken));
    }
    if (!nullToAbsent || reasonNoSamplesTaken != null) {
      final converter = $SurvSamplingInfoTable.$converterreasonNoSamplesTaken;
      map['reason_no_samples_taken'] =
          Variable<String>(converter.toSql(reasonNoSamplesTaken));
    }
    if (!nullToAbsent || sampleResult != null) {
      final converter = $SurvSamplingInfoTable.$convertersampleResult;
      map['sample_result'] = Variable<String>(converter.toSql(sampleResult));
    }
    if (!nullToAbsent || numSpecialProjectsInvestigations != null) {
      map['num_special_projects_investigations'] =
          Variable<String>(numSpecialProjectsInvestigations);
    }
    if (!nullToAbsent || numMT0506 != null) {
      map['num_m_t0506'] = Variable<String>(numMT0506);
    }
    if (!nullToAbsent || adequateGrinding != null) {
      map['adequate_grinding'] = Variable<bool>(adequateGrinding);
    }
    return map;
  }

  SurvSamplingInfoCompanion toCompanion(bool nullToAbsent) {
    return SurvSamplingInfoCompanion(
      id: Value(id),
      recordType: recordType == null && nullToAbsent
          ? const Value.absent()
          : Value(recordType),
      samplingTaken: samplingTaken == null && nullToAbsent
          ? const Value.absent()
          : Value(samplingTaken),
      typeOfSamplesTaken: typeOfSamplesTaken == null && nullToAbsent
          ? const Value.absent()
          : Value(typeOfSamplesTaken),
      reasonNoSamplesTaken: reasonNoSamplesTaken == null && nullToAbsent
          ? const Value.absent()
          : Value(reasonNoSamplesTaken),
      sampleResult: sampleResult == null && nullToAbsent
          ? const Value.absent()
          : Value(sampleResult),
      numSpecialProjectsInvestigations:
          numSpecialProjectsInvestigations == null && nullToAbsent
              ? const Value.absent()
              : Value(numSpecialProjectsInvestigations),
      numMT0506: numMT0506 == null && nullToAbsent
          ? const Value.absent()
          : Value(numMT0506),
      adequateGrinding: adequateGrinding == null && nullToAbsent
          ? const Value.absent()
          : Value(adequateGrinding),
    );
  }

  factory SurvSamplingInfoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SurvSamplingInfoData(
      id: serializer.fromJson<int>(json['id']),
      recordType: $SurvSamplingInfoTable.$converterrecordTypen
          .fromJson(serializer.fromJson<int?>(json['recordType'])),
      samplingTaken: serializer.fromJson<bool?>(json['samplingTaken']),
      typeOfSamplesTaken:
          serializer.fromJson<MultiString?>(json['typeOfSamplesTaken']),
      reasonNoSamplesTaken:
          serializer.fromJson<MultiString?>(json['reasonNoSamplesTaken']),
      sampleResult: serializer.fromJson<MultiString?>(json['sampleResult']),
      numSpecialProjectsInvestigations: serializer
          .fromJson<String?>(json['numSpecialProjectsInvestigations']),
      numMT0506: serializer.fromJson<String?>(json['numMT0506']),
      adequateGrinding: serializer.fromJson<bool?>(json['adequateGrinding']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordType': serializer.toJson<int?>(
          $SurvSamplingInfoTable.$converterrecordTypen.toJson(recordType)),
      'samplingTaken': serializer.toJson<bool?>(samplingTaken),
      'typeOfSamplesTaken': serializer.toJson<MultiString?>(typeOfSamplesTaken),
      'reasonNoSamplesTaken':
          serializer.toJson<MultiString?>(reasonNoSamplesTaken),
      'sampleResult': serializer.toJson<MultiString?>(sampleResult),
      'numSpecialProjectsInvestigations':
          serializer.toJson<String?>(numSpecialProjectsInvestigations),
      'numMT0506': serializer.toJson<String?>(numMT0506),
      'adequateGrinding': serializer.toJson<bool?>(adequateGrinding),
    };
  }

  SurvSamplingInfoData copyWith(
          {int? id,
          Value<RecordType?> recordType = const Value.absent(),
          Value<bool?> samplingTaken = const Value.absent(),
          Value<MultiString?> typeOfSamplesTaken = const Value.absent(),
          Value<MultiString?> reasonNoSamplesTaken = const Value.absent(),
          Value<MultiString?> sampleResult = const Value.absent(),
          Value<String?> numSpecialProjectsInvestigations =
              const Value.absent(),
          Value<String?> numMT0506 = const Value.absent(),
          Value<bool?> adequateGrinding = const Value.absent()}) =>
      SurvSamplingInfoData(
        id: id ?? this.id,
        recordType: recordType.present ? recordType.value : this.recordType,
        samplingTaken:
            samplingTaken.present ? samplingTaken.value : this.samplingTaken,
        typeOfSamplesTaken: typeOfSamplesTaken.present
            ? typeOfSamplesTaken.value
            : this.typeOfSamplesTaken,
        reasonNoSamplesTaken: reasonNoSamplesTaken.present
            ? reasonNoSamplesTaken.value
            : this.reasonNoSamplesTaken,
        sampleResult:
            sampleResult.present ? sampleResult.value : this.sampleResult,
        numSpecialProjectsInvestigations:
            numSpecialProjectsInvestigations.present
                ? numSpecialProjectsInvestigations.value
                : this.numSpecialProjectsInvestigations,
        numMT0506: numMT0506.present ? numMT0506.value : this.numMT0506,
        adequateGrinding: adequateGrinding.present
            ? adequateGrinding.value
            : this.adequateGrinding,
      );
  @override
  String toString() {
    return (StringBuffer('SurvSamplingInfoData(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('samplingTaken: $samplingTaken, ')
          ..write('typeOfSamplesTaken: $typeOfSamplesTaken, ')
          ..write('reasonNoSamplesTaken: $reasonNoSamplesTaken, ')
          ..write('sampleResult: $sampleResult, ')
          ..write(
              'numSpecialProjectsInvestigations: $numSpecialProjectsInvestigations, ')
          ..write('numMT0506: $numMT0506, ')
          ..write('adequateGrinding: $adequateGrinding')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      recordType,
      samplingTaken,
      typeOfSamplesTaken,
      reasonNoSamplesTaken,
      sampleResult,
      numSpecialProjectsInvestigations,
      numMT0506,
      adequateGrinding);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SurvSamplingInfoData &&
          other.id == this.id &&
          other.recordType == this.recordType &&
          other.samplingTaken == this.samplingTaken &&
          other.typeOfSamplesTaken == this.typeOfSamplesTaken &&
          other.reasonNoSamplesTaken == this.reasonNoSamplesTaken &&
          other.sampleResult == this.sampleResult &&
          other.numSpecialProjectsInvestigations ==
              this.numSpecialProjectsInvestigations &&
          other.numMT0506 == this.numMT0506 &&
          other.adequateGrinding == this.adequateGrinding);
}

class SurvSamplingInfoCompanion extends UpdateCompanion<SurvSamplingInfoData> {
  final Value<int> id;
  final Value<RecordType?> recordType;
  final Value<bool?> samplingTaken;
  final Value<MultiString?> typeOfSamplesTaken;
  final Value<MultiString?> reasonNoSamplesTaken;
  final Value<MultiString?> sampleResult;
  final Value<String?> numSpecialProjectsInvestigations;
  final Value<String?> numMT0506;
  final Value<bool?> adequateGrinding;
  final Value<int> rowid;
  const SurvSamplingInfoCompanion({
    this.id = const Value.absent(),
    this.recordType = const Value.absent(),
    this.samplingTaken = const Value.absent(),
    this.typeOfSamplesTaken = const Value.absent(),
    this.reasonNoSamplesTaken = const Value.absent(),
    this.sampleResult = const Value.absent(),
    this.numSpecialProjectsInvestigations = const Value.absent(),
    this.numMT0506 = const Value.absent(),
    this.adequateGrinding = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SurvSamplingInfoCompanion.insert({
    required int id,
    this.recordType = const Value.absent(),
    this.samplingTaken = const Value.absent(),
    this.typeOfSamplesTaken = const Value.absent(),
    this.reasonNoSamplesTaken = const Value.absent(),
    this.sampleResult = const Value.absent(),
    this.numSpecialProjectsInvestigations = const Value.absent(),
    this.numMT0506 = const Value.absent(),
    this.adequateGrinding = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<SurvSamplingInfoData> custom({
    Expression<int>? id,
    Expression<int>? recordType,
    Expression<bool>? samplingTaken,
    Expression<String>? typeOfSamplesTaken,
    Expression<String>? reasonNoSamplesTaken,
    Expression<String>? sampleResult,
    Expression<String>? numSpecialProjectsInvestigations,
    Expression<String>? numMT0506,
    Expression<bool>? adequateGrinding,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordType != null) 'record_type': recordType,
      if (samplingTaken != null) 'sampling_taken': samplingTaken,
      if (typeOfSamplesTaken != null)
        'type_of_samples_taken': typeOfSamplesTaken,
      if (reasonNoSamplesTaken != null)
        'reason_no_samples_taken': reasonNoSamplesTaken,
      if (sampleResult != null) 'sample_result': sampleResult,
      if (numSpecialProjectsInvestigations != null)
        'num_special_projects_investigations': numSpecialProjectsInvestigations,
      if (numMT0506 != null) 'num_m_t0506': numMT0506,
      if (adequateGrinding != null) 'adequate_grinding': adequateGrinding,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SurvSamplingInfoCompanion copyWith(
      {Value<int>? id,
      Value<RecordType?>? recordType,
      Value<bool?>? samplingTaken,
      Value<MultiString?>? typeOfSamplesTaken,
      Value<MultiString?>? reasonNoSamplesTaken,
      Value<MultiString?>? sampleResult,
      Value<String?>? numSpecialProjectsInvestigations,
      Value<String?>? numMT0506,
      Value<bool?>? adequateGrinding,
      Value<int>? rowid}) {
    return SurvSamplingInfoCompanion(
      id: id ?? this.id,
      recordType: recordType ?? this.recordType,
      samplingTaken: samplingTaken ?? this.samplingTaken,
      typeOfSamplesTaken: typeOfSamplesTaken ?? this.typeOfSamplesTaken,
      reasonNoSamplesTaken: reasonNoSamplesTaken ?? this.reasonNoSamplesTaken,
      sampleResult: sampleResult ?? this.sampleResult,
      numSpecialProjectsInvestigations: numSpecialProjectsInvestigations ??
          this.numSpecialProjectsInvestigations,
      numMT0506: numMT0506 ?? this.numMT0506,
      adequateGrinding: adequateGrinding ?? this.adequateGrinding,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordType.present) {
      final converter = $SurvSamplingInfoTable.$converterrecordTypen;

      map['record_type'] = Variable<int>(converter.toSql(recordType.value));
    }
    if (samplingTaken.present) {
      map['sampling_taken'] = Variable<bool>(samplingTaken.value);
    }
    if (typeOfSamplesTaken.present) {
      final converter = $SurvSamplingInfoTable.$convertertypeOfSamplesTaken;

      map['type_of_samples_taken'] =
          Variable<String>(converter.toSql(typeOfSamplesTaken.value));
    }
    if (reasonNoSamplesTaken.present) {
      final converter = $SurvSamplingInfoTable.$converterreasonNoSamplesTaken;

      map['reason_no_samples_taken'] =
          Variable<String>(converter.toSql(reasonNoSamplesTaken.value));
    }
    if (sampleResult.present) {
      final converter = $SurvSamplingInfoTable.$convertersampleResult;

      map['sample_result'] =
          Variable<String>(converter.toSql(sampleResult.value));
    }
    if (numSpecialProjectsInvestigations.present) {
      map['num_special_projects_investigations'] =
          Variable<String>(numSpecialProjectsInvestigations.value);
    }
    if (numMT0506.present) {
      map['num_m_t0506'] = Variable<String>(numMT0506.value);
    }
    if (adequateGrinding.present) {
      map['adequate_grinding'] = Variable<bool>(adequateGrinding.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SurvSamplingInfoCompanion(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('samplingTaken: $samplingTaken, ')
          ..write('typeOfSamplesTaken: $typeOfSamplesTaken, ')
          ..write('reasonNoSamplesTaken: $reasonNoSamplesTaken, ')
          ..write('sampleResult: $sampleResult, ')
          ..write(
              'numSpecialProjectsInvestigations: $numSpecialProjectsInvestigations, ')
          ..write('numMT0506: $numMT0506, ')
          ..write('adequateGrinding: $adequateGrinding, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SurvOrderVerificationTable extends SurvOrderVerification
    with TableInfo<$SurvOrderVerificationTable, SurvOrderVerificationData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SurvOrderVerificationTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<RecordType?, int> recordType =
      GeneratedColumn<int>('record_type', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<RecordType?>(
              $SurvOrderVerificationTable.$converterrecordTypen);
  @override
  late final GeneratedColumn<bool> firmInCompliance = GeneratedColumn<bool>(
      'firm_in_compliance', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("firm_in_compliance" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> individualInCompliance =
      GeneratedColumn<bool>('individual_in_compliance', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("individual_in_compliance" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> additionalComments =
      GeneratedColumn<String>('additional_comments', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        recordType,
        firmInCompliance,
        individualInCompliance,
        additionalComments
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'surv_order_verification';
  @override
  Set<GeneratedColumn> get $primaryKey => {id, recordType};
  @override
  SurvOrderVerificationData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SurvOrderVerificationData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      recordType: $SurvOrderVerificationTable.$converterrecordTypen.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}record_type'])),
      firmInCompliance: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}firm_in_compliance']),
      individualInCompliance: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}individual_in_compliance']),
      additionalComments: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}additional_comments']),
    );
  }

  @override
  $SurvOrderVerificationTable createAlias(String alias) {
    return $SurvOrderVerificationTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RecordType, int, int> $converterrecordType =
      const EnumIndexConverter<RecordType>(RecordType.values);
  static JsonTypeConverter2<RecordType?, int?, int?> $converterrecordTypen =
      JsonTypeConverter2.asNullable($converterrecordType);
}

class SurvOrderVerificationData
    extends DataClassBehavioral<SurvOrderVerificationData>
    implements Insertable<SurvOrderVerificationData> {
  final int id;
  final RecordType? recordType;
  final bool? firmInCompliance;
  final bool? individualInCompliance;
  final String? additionalComments;
  const SurvOrderVerificationData(
      {required this.id,
      this.recordType,
      this.firmInCompliance,
      this.individualInCompliance,
      this.additionalComments});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || recordType != null) {
      final converter = $SurvOrderVerificationTable.$converterrecordTypen;
      map['record_type'] = Variable<int>(converter.toSql(recordType));
    }
    if (!nullToAbsent || firmInCompliance != null) {
      map['firm_in_compliance'] = Variable<bool>(firmInCompliance);
    }
    if (!nullToAbsent || individualInCompliance != null) {
      map['individual_in_compliance'] = Variable<bool>(individualInCompliance);
    }
    if (!nullToAbsent || additionalComments != null) {
      map['additional_comments'] = Variable<String>(additionalComments);
    }
    return map;
  }

  SurvOrderVerificationCompanion toCompanion(bool nullToAbsent) {
    return SurvOrderVerificationCompanion(
      id: Value(id),
      recordType: recordType == null && nullToAbsent
          ? const Value.absent()
          : Value(recordType),
      firmInCompliance: firmInCompliance == null && nullToAbsent
          ? const Value.absent()
          : Value(firmInCompliance),
      individualInCompliance: individualInCompliance == null && nullToAbsent
          ? const Value.absent()
          : Value(individualInCompliance),
      additionalComments: additionalComments == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalComments),
    );
  }

  factory SurvOrderVerificationData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SurvOrderVerificationData(
      id: serializer.fromJson<int>(json['id']),
      recordType: $SurvOrderVerificationTable.$converterrecordTypen
          .fromJson(serializer.fromJson<int?>(json['recordType'])),
      firmInCompliance: serializer.fromJson<bool?>(json['firmInCompliance']),
      individualInCompliance:
          serializer.fromJson<bool?>(json['individualInCompliance']),
      additionalComments:
          serializer.fromJson<String?>(json['additionalComments']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordType': serializer.toJson<int?>(
          $SurvOrderVerificationTable.$converterrecordTypen.toJson(recordType)),
      'firmInCompliance': serializer.toJson<bool?>(firmInCompliance),
      'individualInCompliance':
          serializer.toJson<bool?>(individualInCompliance),
      'additionalComments': serializer.toJson<String?>(additionalComments),
    };
  }

  SurvOrderVerificationData copyWith(
          {int? id,
          Value<RecordType?> recordType = const Value.absent(),
          Value<bool?> firmInCompliance = const Value.absent(),
          Value<bool?> individualInCompliance = const Value.absent(),
          Value<String?> additionalComments = const Value.absent()}) =>
      SurvOrderVerificationData(
        id: id ?? this.id,
        recordType: recordType.present ? recordType.value : this.recordType,
        firmInCompliance: firmInCompliance.present
            ? firmInCompliance.value
            : this.firmInCompliance,
        individualInCompliance: individualInCompliance.present
            ? individualInCompliance.value
            : this.individualInCompliance,
        additionalComments: additionalComments.present
            ? additionalComments.value
            : this.additionalComments,
      );
  @override
  String toString() {
    return (StringBuffer('SurvOrderVerificationData(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('firmInCompliance: $firmInCompliance, ')
          ..write('individualInCompliance: $individualInCompliance, ')
          ..write('additionalComments: $additionalComments')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, recordType, firmInCompliance,
      individualInCompliance, additionalComments);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SurvOrderVerificationData &&
          other.id == this.id &&
          other.recordType == this.recordType &&
          other.firmInCompliance == this.firmInCompliance &&
          other.individualInCompliance == this.individualInCompliance &&
          other.additionalComments == this.additionalComments);
}

class SurvOrderVerificationCompanion
    extends UpdateCompanion<SurvOrderVerificationData> {
  final Value<int> id;
  final Value<RecordType?> recordType;
  final Value<bool?> firmInCompliance;
  final Value<bool?> individualInCompliance;
  final Value<String?> additionalComments;
  final Value<int> rowid;
  const SurvOrderVerificationCompanion({
    this.id = const Value.absent(),
    this.recordType = const Value.absent(),
    this.firmInCompliance = const Value.absent(),
    this.individualInCompliance = const Value.absent(),
    this.additionalComments = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SurvOrderVerificationCompanion.insert({
    required int id,
    this.recordType = const Value.absent(),
    this.firmInCompliance = const Value.absent(),
    this.individualInCompliance = const Value.absent(),
    this.additionalComments = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<SurvOrderVerificationData> custom({
    Expression<int>? id,
    Expression<int>? recordType,
    Expression<bool>? firmInCompliance,
    Expression<bool>? individualInCompliance,
    Expression<String>? additionalComments,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordType != null) 'record_type': recordType,
      if (firmInCompliance != null) 'firm_in_compliance': firmInCompliance,
      if (individualInCompliance != null)
        'individual_in_compliance': individualInCompliance,
      if (additionalComments != null) 'additional_comments': additionalComments,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SurvOrderVerificationCompanion copyWith(
      {Value<int>? id,
      Value<RecordType?>? recordType,
      Value<bool?>? firmInCompliance,
      Value<bool?>? individualInCompliance,
      Value<String?>? additionalComments,
      Value<int>? rowid}) {
    return SurvOrderVerificationCompanion(
      id: id ?? this.id,
      recordType: recordType ?? this.recordType,
      firmInCompliance: firmInCompliance ?? this.firmInCompliance,
      individualInCompliance:
          individualInCompliance ?? this.individualInCompliance,
      additionalComments: additionalComments ?? this.additionalComments,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordType.present) {
      final converter = $SurvOrderVerificationTable.$converterrecordTypen;

      map['record_type'] = Variable<int>(converter.toSql(recordType.value));
    }
    if (firmInCompliance.present) {
      map['firm_in_compliance'] = Variable<bool>(firmInCompliance.value);
    }
    if (individualInCompliance.present) {
      map['individual_in_compliance'] =
          Variable<bool>(individualInCompliance.value);
    }
    if (additionalComments.present) {
      map['additional_comments'] = Variable<String>(additionalComments.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SurvOrderVerificationCompanion(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('firmInCompliance: $firmInCompliance, ')
          ..write('individualInCompliance: $individualInCompliance, ')
          ..write('additionalComments: $additionalComments, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SurvCustomExemptReviewTable extends SurvCustomExemptReview
    with TableInfo<$SurvCustomExemptReviewTable, SurvCustomExemptReviewData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SurvCustomExemptReviewTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<RecordType?, int> recordType =
      GeneratedColumn<int>('record_type', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<RecordType?>(
              $SurvCustomExemptReviewTable.$converterrecordTypen);
  @override
  late final GeneratedColumn<bool> wasCustomExemptReviewConducted =
      GeneratedColumn<bool>(
          'was_custom_exempt_review_conducted', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("was_custom_exempt_review_conducted" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> doesFacilityPerformCustomSlaughter =
      GeneratedColumn<bool>(
          'does_facility_perform_custom_slaughter', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("does_facility_perform_custom_slaughter" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> doesFacilityPerformCustomProcessing =
      GeneratedColumn<bool>(
          'does_facility_perform_custom_processing', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("does_facility_perform_custom_processing" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> doesFacilityEmail =
      GeneratedColumn<String>('does_facility_email', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> officialEstablishment =
      GeneratedColumn<bool>('official_establishment', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("official_establishment" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> copyGiven = GeneratedColumn<bool>(
      'copy_given', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("copy_given" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> humaneLivestockSlaughter =
      GeneratedColumn<bool>(
          'humane_livestock_slaughter', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("humane_livestock_slaughter" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> humaneLivestockSlaughterText =
      GeneratedColumn<String>(
          'humane_livestock_slaughter_text', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> recordkeepingAcceptable =
      GeneratedColumn<bool>('recordkeeping_acceptable', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("recordkeeping_acceptable" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> recordkeepingAcceptableText =
      GeneratedColumn<String>(
          'recordkeeping_acceptable_text', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> namePHVText = GeneratedColumn<String>(
      'name_p_h_v_text', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> nameIICText = GeneratedColumn<String>(
      'name_i_i_c_text', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> sanitaryOperationsAcceptable =
      GeneratedColumn<bool>('sanitary_operations_acceptable', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("sanitary_operations_acceptable" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> sanitaryOperationsAcceptableText =
      GeneratedColumn<String>(
          'sanitary_operations_acceptable_text', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> pestControlAcceptable =
      GeneratedColumn<bool>('pest_control_acceptable', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("pest_control_acceptable" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> pestControlAcceptableText =
      GeneratedColumn<String>('pest_control_acceptable_text', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> ineditbleMaterialAcceptable =
      GeneratedColumn<bool>('ineditble_material_acceptable', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("ineditble_material_acceptable" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> ineditbleMaterialAcceptableText =
      GeneratedColumn<String>(
          'ineditble_material_acceptable_text', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> labelingAcceptable = GeneratedColumn<bool>(
      'labeling_acceptable', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("labeling_acceptable" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> labelingAcceptableText =
      GeneratedColumn<String>('labeling_acceptable_text', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> pathogenAcceptable = GeneratedColumn<bool>(
      'pathogen_acceptable', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("pathogen_acceptable" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> pathogenAcceptableText =
      GeneratedColumn<String>('pathogen_acceptable_text', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> waterAcceptable = GeneratedColumn<bool>(
      'water_acceptable', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("water_acceptable" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> waterAcceptableText =
      GeneratedColumn<String>('water_acceptable_text', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> wasteAcceptable = GeneratedColumn<bool>(
      'waste_acceptable', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("waste_acceptable" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> wasteAcceptableText =
      GeneratedColumn<String>('waste_acceptable_text', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> misbrandedObservedLabel =
      GeneratedColumn<bool>('misbranded_observed_label', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("misbranded_observed_label" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> misbrandedObservedLabelText =
      GeneratedColumn<String>(
          'misbranded_observed_label_text', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> misbrandedLikelyLabel =
      GeneratedColumn<bool>('misbranded_likely_label', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("misbranded_likely_label" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> misbrandedLikelyLabelText =
      GeneratedColumn<String>('misbranded_likely_label_text', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> adminsitrativeConsentAgreement =
      GeneratedColumn<bool>(
          'adminsitrative_consent_agreement', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("adminsitrative_consent_agreement" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> adminsitrativeConsentAgreementText =
      GeneratedColumn<String>(
          'adminsitrative_consent_agreement_text', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> recommendForRemovalOfPrivileges =
      GeneratedColumn<bool>(
          'recommend_for_removal_of_privileges', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("recommend_for_removal_of_privileges" IN (0, 1))'));
  @override
  late final GeneratedColumn<DateTime> dateCopyGiven =
      GeneratedColumn<DateTime>('date_copy_given', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  late final GeneratedColumnWithTypeConverter<MultiString?, String> species =
      GeneratedColumn<String>('species', aliasedName, true,
              additionalChecks: GeneratedColumn.checkTextLength(
                  minTextLength: 0, maxTextLength: 20),
              type: DriftSqlType.string,
              requiredDuringInsert: false)
          .withConverter<MultiString?>(
              $SurvCustomExemptReviewTable.$converterspecies);
  @override
  late final GeneratedColumn<String> reviewInterval = GeneratedColumn<String>(
      'review_interval', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> otherInterval = GeneratedColumn<String>(
      'other_interval', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> otherSpecies = GeneratedColumn<String>(
      'other_species', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> additionalComments =
      GeneratedColumn<String>('additional_comments', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        recordType,
        wasCustomExemptReviewConducted,
        doesFacilityPerformCustomSlaughter,
        doesFacilityPerformCustomProcessing,
        doesFacilityEmail,
        officialEstablishment,
        copyGiven,
        humaneLivestockSlaughter,
        humaneLivestockSlaughterText,
        recordkeepingAcceptable,
        recordkeepingAcceptableText,
        namePHVText,
        nameIICText,
        sanitaryOperationsAcceptable,
        sanitaryOperationsAcceptableText,
        pestControlAcceptable,
        pestControlAcceptableText,
        ineditbleMaterialAcceptable,
        ineditbleMaterialAcceptableText,
        labelingAcceptable,
        labelingAcceptableText,
        pathogenAcceptable,
        pathogenAcceptableText,
        waterAcceptable,
        waterAcceptableText,
        wasteAcceptable,
        wasteAcceptableText,
        misbrandedObservedLabel,
        misbrandedObservedLabelText,
        misbrandedLikelyLabel,
        misbrandedLikelyLabelText,
        adminsitrativeConsentAgreement,
        adminsitrativeConsentAgreementText,
        recommendForRemovalOfPrivileges,
        dateCopyGiven,
        species,
        reviewInterval,
        otherInterval,
        otherSpecies,
        additionalComments
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'surv_custom_exempt_review';
  @override
  Set<GeneratedColumn> get $primaryKey => {id, recordType};
  @override
  SurvCustomExemptReviewData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SurvCustomExemptReviewData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      recordType: $SurvCustomExemptReviewTable.$converterrecordTypen.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}record_type'])),
      wasCustomExemptReviewConducted: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}was_custom_exempt_review_conducted']),
      doesFacilityPerformCustomSlaughter: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}does_facility_perform_custom_slaughter']),
      doesFacilityPerformCustomProcessing: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}does_facility_perform_custom_processing']),
      doesFacilityEmail: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}does_facility_email']),
      officialEstablishment: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}official_establishment']),
      copyGiven: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}copy_given']),
      humaneLivestockSlaughter: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}humane_livestock_slaughter']),
      humaneLivestockSlaughterText: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}humane_livestock_slaughter_text']),
      recordkeepingAcceptable: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}recordkeeping_acceptable']),
      recordkeepingAcceptableText: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}recordkeeping_acceptable_text']),
      namePHVText: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name_p_h_v_text']),
      nameIICText: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name_i_i_c_text']),
      sanitaryOperationsAcceptable: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}sanitary_operations_acceptable']),
      sanitaryOperationsAcceptableText: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}sanitary_operations_acceptable_text']),
      pestControlAcceptable: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}pest_control_acceptable']),
      pestControlAcceptableText: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}pest_control_acceptable_text']),
      ineditbleMaterialAcceptable: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}ineditble_material_acceptable']),
      ineditbleMaterialAcceptableText: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}ineditble_material_acceptable_text']),
      labelingAcceptable: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}labeling_acceptable']),
      labelingAcceptableText: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}labeling_acceptable_text']),
      pathogenAcceptable: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}pathogen_acceptable']),
      pathogenAcceptableText: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}pathogen_acceptable_text']),
      waterAcceptable: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}water_acceptable']),
      waterAcceptableText: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}water_acceptable_text']),
      wasteAcceptable: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}waste_acceptable']),
      wasteAcceptableText: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}waste_acceptable_text']),
      misbrandedObservedLabel: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}misbranded_observed_label']),
      misbrandedObservedLabelText: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}misbranded_observed_label_text']),
      misbrandedLikelyLabel: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}misbranded_likely_label']),
      misbrandedLikelyLabelText: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}misbranded_likely_label_text']),
      adminsitrativeConsentAgreement: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}adminsitrative_consent_agreement']),
      adminsitrativeConsentAgreementText: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}adminsitrative_consent_agreement_text']),
      recommendForRemovalOfPrivileges: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}recommend_for_removal_of_privileges']),
      dateCopyGiven: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}date_copy_given']),
      species: $SurvCustomExemptReviewTable.$converterspecies.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}species'])),
      reviewInterval: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}review_interval']),
      otherInterval: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}other_interval']),
      otherSpecies: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}other_species']),
      additionalComments: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}additional_comments']),
    );
  }

  @override
  $SurvCustomExemptReviewTable createAlias(String alias) {
    return $SurvCustomExemptReviewTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RecordType, int, int> $converterrecordType =
      const EnumIndexConverter<RecordType>(RecordType.values);
  static JsonTypeConverter2<RecordType?, int?, int?> $converterrecordTypen =
      JsonTypeConverter2.asNullable($converterrecordType);
  static TypeConverter<MultiString?, String?> $converterspecies =
      const MultiStringConverter();
}

class SurvCustomExemptReviewData
    extends DataClassBehavioral<SurvCustomExemptReviewData>
    implements Insertable<SurvCustomExemptReviewData> {
  final int id;
  final RecordType? recordType;
  final bool? wasCustomExemptReviewConducted;
  final bool? doesFacilityPerformCustomSlaughter;
  final bool? doesFacilityPerformCustomProcessing;
  final String? doesFacilityEmail;
  final bool? officialEstablishment;
  final bool? copyGiven;
  final bool? humaneLivestockSlaughter;
  final String? humaneLivestockSlaughterText;
  final bool? recordkeepingAcceptable;
  final String? recordkeepingAcceptableText;
  final String? namePHVText;
  final String? nameIICText;
  final bool? sanitaryOperationsAcceptable;
  final String? sanitaryOperationsAcceptableText;
  final bool? pestControlAcceptable;
  final String? pestControlAcceptableText;
  final bool? ineditbleMaterialAcceptable;
  final String? ineditbleMaterialAcceptableText;
  final bool? labelingAcceptable;
  final String? labelingAcceptableText;
  final bool? pathogenAcceptable;
  final String? pathogenAcceptableText;
  final bool? waterAcceptable;
  final String? waterAcceptableText;
  final bool? wasteAcceptable;
  final String? wasteAcceptableText;
  final bool? misbrandedObservedLabel;
  final String? misbrandedObservedLabelText;
  final bool? misbrandedLikelyLabel;
  final String? misbrandedLikelyLabelText;
  final bool? adminsitrativeConsentAgreement;
  final String? adminsitrativeConsentAgreementText;
  final bool? recommendForRemovalOfPrivileges;
  final DateTime? dateCopyGiven;
  final MultiString? species;
  final String? reviewInterval;
  final String? otherInterval;
  final String? otherSpecies;
  final String? additionalComments;
  const SurvCustomExemptReviewData(
      {required this.id,
      this.recordType,
      this.wasCustomExemptReviewConducted,
      this.doesFacilityPerformCustomSlaughter,
      this.doesFacilityPerformCustomProcessing,
      this.doesFacilityEmail,
      this.officialEstablishment,
      this.copyGiven,
      this.humaneLivestockSlaughter,
      this.humaneLivestockSlaughterText,
      this.recordkeepingAcceptable,
      this.recordkeepingAcceptableText,
      this.namePHVText,
      this.nameIICText,
      this.sanitaryOperationsAcceptable,
      this.sanitaryOperationsAcceptableText,
      this.pestControlAcceptable,
      this.pestControlAcceptableText,
      this.ineditbleMaterialAcceptable,
      this.ineditbleMaterialAcceptableText,
      this.labelingAcceptable,
      this.labelingAcceptableText,
      this.pathogenAcceptable,
      this.pathogenAcceptableText,
      this.waterAcceptable,
      this.waterAcceptableText,
      this.wasteAcceptable,
      this.wasteAcceptableText,
      this.misbrandedObservedLabel,
      this.misbrandedObservedLabelText,
      this.misbrandedLikelyLabel,
      this.misbrandedLikelyLabelText,
      this.adminsitrativeConsentAgreement,
      this.adminsitrativeConsentAgreementText,
      this.recommendForRemovalOfPrivileges,
      this.dateCopyGiven,
      this.species,
      this.reviewInterval,
      this.otherInterval,
      this.otherSpecies,
      this.additionalComments});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || recordType != null) {
      final converter = $SurvCustomExemptReviewTable.$converterrecordTypen;
      map['record_type'] = Variable<int>(converter.toSql(recordType));
    }
    if (!nullToAbsent || wasCustomExemptReviewConducted != null) {
      map['was_custom_exempt_review_conducted'] =
          Variable<bool>(wasCustomExemptReviewConducted);
    }
    if (!nullToAbsent || doesFacilityPerformCustomSlaughter != null) {
      map['does_facility_perform_custom_slaughter'] =
          Variable<bool>(doesFacilityPerformCustomSlaughter);
    }
    if (!nullToAbsent || doesFacilityPerformCustomProcessing != null) {
      map['does_facility_perform_custom_processing'] =
          Variable<bool>(doesFacilityPerformCustomProcessing);
    }
    if (!nullToAbsent || doesFacilityEmail != null) {
      map['does_facility_email'] = Variable<String>(doesFacilityEmail);
    }
    if (!nullToAbsent || officialEstablishment != null) {
      map['official_establishment'] = Variable<bool>(officialEstablishment);
    }
    if (!nullToAbsent || copyGiven != null) {
      map['copy_given'] = Variable<bool>(copyGiven);
    }
    if (!nullToAbsent || humaneLivestockSlaughter != null) {
      map['humane_livestock_slaughter'] =
          Variable<bool>(humaneLivestockSlaughter);
    }
    if (!nullToAbsent || humaneLivestockSlaughterText != null) {
      map['humane_livestock_slaughter_text'] =
          Variable<String>(humaneLivestockSlaughterText);
    }
    if (!nullToAbsent || recordkeepingAcceptable != null) {
      map['recordkeeping_acceptable'] = Variable<bool>(recordkeepingAcceptable);
    }
    if (!nullToAbsent || recordkeepingAcceptableText != null) {
      map['recordkeeping_acceptable_text'] =
          Variable<String>(recordkeepingAcceptableText);
    }
    if (!nullToAbsent || namePHVText != null) {
      map['name_p_h_v_text'] = Variable<String>(namePHVText);
    }
    if (!nullToAbsent || nameIICText != null) {
      map['name_i_i_c_text'] = Variable<String>(nameIICText);
    }
    if (!nullToAbsent || sanitaryOperationsAcceptable != null) {
      map['sanitary_operations_acceptable'] =
          Variable<bool>(sanitaryOperationsAcceptable);
    }
    if (!nullToAbsent || sanitaryOperationsAcceptableText != null) {
      map['sanitary_operations_acceptable_text'] =
          Variable<String>(sanitaryOperationsAcceptableText);
    }
    if (!nullToAbsent || pestControlAcceptable != null) {
      map['pest_control_acceptable'] = Variable<bool>(pestControlAcceptable);
    }
    if (!nullToAbsent || pestControlAcceptableText != null) {
      map['pest_control_acceptable_text'] =
          Variable<String>(pestControlAcceptableText);
    }
    if (!nullToAbsent || ineditbleMaterialAcceptable != null) {
      map['ineditble_material_acceptable'] =
          Variable<bool>(ineditbleMaterialAcceptable);
    }
    if (!nullToAbsent || ineditbleMaterialAcceptableText != null) {
      map['ineditble_material_acceptable_text'] =
          Variable<String>(ineditbleMaterialAcceptableText);
    }
    if (!nullToAbsent || labelingAcceptable != null) {
      map['labeling_acceptable'] = Variable<bool>(labelingAcceptable);
    }
    if (!nullToAbsent || labelingAcceptableText != null) {
      map['labeling_acceptable_text'] =
          Variable<String>(labelingAcceptableText);
    }
    if (!nullToAbsent || pathogenAcceptable != null) {
      map['pathogen_acceptable'] = Variable<bool>(pathogenAcceptable);
    }
    if (!nullToAbsent || pathogenAcceptableText != null) {
      map['pathogen_acceptable_text'] =
          Variable<String>(pathogenAcceptableText);
    }
    if (!nullToAbsent || waterAcceptable != null) {
      map['water_acceptable'] = Variable<bool>(waterAcceptable);
    }
    if (!nullToAbsent || waterAcceptableText != null) {
      map['water_acceptable_text'] = Variable<String>(waterAcceptableText);
    }
    if (!nullToAbsent || wasteAcceptable != null) {
      map['waste_acceptable'] = Variable<bool>(wasteAcceptable);
    }
    if (!nullToAbsent || wasteAcceptableText != null) {
      map['waste_acceptable_text'] = Variable<String>(wasteAcceptableText);
    }
    if (!nullToAbsent || misbrandedObservedLabel != null) {
      map['misbranded_observed_label'] =
          Variable<bool>(misbrandedObservedLabel);
    }
    if (!nullToAbsent || misbrandedObservedLabelText != null) {
      map['misbranded_observed_label_text'] =
          Variable<String>(misbrandedObservedLabelText);
    }
    if (!nullToAbsent || misbrandedLikelyLabel != null) {
      map['misbranded_likely_label'] = Variable<bool>(misbrandedLikelyLabel);
    }
    if (!nullToAbsent || misbrandedLikelyLabelText != null) {
      map['misbranded_likely_label_text'] =
          Variable<String>(misbrandedLikelyLabelText);
    }
    if (!nullToAbsent || adminsitrativeConsentAgreement != null) {
      map['adminsitrative_consent_agreement'] =
          Variable<bool>(adminsitrativeConsentAgreement);
    }
    if (!nullToAbsent || adminsitrativeConsentAgreementText != null) {
      map['adminsitrative_consent_agreement_text'] =
          Variable<String>(adminsitrativeConsentAgreementText);
    }
    if (!nullToAbsent || recommendForRemovalOfPrivileges != null) {
      map['recommend_for_removal_of_privileges'] =
          Variable<bool>(recommendForRemovalOfPrivileges);
    }
    if (!nullToAbsent || dateCopyGiven != null) {
      map['date_copy_given'] = Variable<DateTime>(dateCopyGiven);
    }
    if (!nullToAbsent || species != null) {
      final converter = $SurvCustomExemptReviewTable.$converterspecies;
      map['species'] = Variable<String>(converter.toSql(species));
    }
    if (!nullToAbsent || reviewInterval != null) {
      map['review_interval'] = Variable<String>(reviewInterval);
    }
    if (!nullToAbsent || otherInterval != null) {
      map['other_interval'] = Variable<String>(otherInterval);
    }
    if (!nullToAbsent || otherSpecies != null) {
      map['other_species'] = Variable<String>(otherSpecies);
    }
    if (!nullToAbsent || additionalComments != null) {
      map['additional_comments'] = Variable<String>(additionalComments);
    }
    return map;
  }

  SurvCustomExemptReviewCompanion toCompanion(bool nullToAbsent) {
    return SurvCustomExemptReviewCompanion(
      id: Value(id),
      recordType: recordType == null && nullToAbsent
          ? const Value.absent()
          : Value(recordType),
      wasCustomExemptReviewConducted:
          wasCustomExemptReviewConducted == null && nullToAbsent
              ? const Value.absent()
              : Value(wasCustomExemptReviewConducted),
      doesFacilityPerformCustomSlaughter:
          doesFacilityPerformCustomSlaughter == null && nullToAbsent
              ? const Value.absent()
              : Value(doesFacilityPerformCustomSlaughter),
      doesFacilityPerformCustomProcessing:
          doesFacilityPerformCustomProcessing == null && nullToAbsent
              ? const Value.absent()
              : Value(doesFacilityPerformCustomProcessing),
      doesFacilityEmail: doesFacilityEmail == null && nullToAbsent
          ? const Value.absent()
          : Value(doesFacilityEmail),
      officialEstablishment: officialEstablishment == null && nullToAbsent
          ? const Value.absent()
          : Value(officialEstablishment),
      copyGiven: copyGiven == null && nullToAbsent
          ? const Value.absent()
          : Value(copyGiven),
      humaneLivestockSlaughter: humaneLivestockSlaughter == null && nullToAbsent
          ? const Value.absent()
          : Value(humaneLivestockSlaughter),
      humaneLivestockSlaughterText:
          humaneLivestockSlaughterText == null && nullToAbsent
              ? const Value.absent()
              : Value(humaneLivestockSlaughterText),
      recordkeepingAcceptable: recordkeepingAcceptable == null && nullToAbsent
          ? const Value.absent()
          : Value(recordkeepingAcceptable),
      recordkeepingAcceptableText:
          recordkeepingAcceptableText == null && nullToAbsent
              ? const Value.absent()
              : Value(recordkeepingAcceptableText),
      namePHVText: namePHVText == null && nullToAbsent
          ? const Value.absent()
          : Value(namePHVText),
      nameIICText: nameIICText == null && nullToAbsent
          ? const Value.absent()
          : Value(nameIICText),
      sanitaryOperationsAcceptable:
          sanitaryOperationsAcceptable == null && nullToAbsent
              ? const Value.absent()
              : Value(sanitaryOperationsAcceptable),
      sanitaryOperationsAcceptableText:
          sanitaryOperationsAcceptableText == null && nullToAbsent
              ? const Value.absent()
              : Value(sanitaryOperationsAcceptableText),
      pestControlAcceptable: pestControlAcceptable == null && nullToAbsent
          ? const Value.absent()
          : Value(pestControlAcceptable),
      pestControlAcceptableText:
          pestControlAcceptableText == null && nullToAbsent
              ? const Value.absent()
              : Value(pestControlAcceptableText),
      ineditbleMaterialAcceptable:
          ineditbleMaterialAcceptable == null && nullToAbsent
              ? const Value.absent()
              : Value(ineditbleMaterialAcceptable),
      ineditbleMaterialAcceptableText:
          ineditbleMaterialAcceptableText == null && nullToAbsent
              ? const Value.absent()
              : Value(ineditbleMaterialAcceptableText),
      labelingAcceptable: labelingAcceptable == null && nullToAbsent
          ? const Value.absent()
          : Value(labelingAcceptable),
      labelingAcceptableText: labelingAcceptableText == null && nullToAbsent
          ? const Value.absent()
          : Value(labelingAcceptableText),
      pathogenAcceptable: pathogenAcceptable == null && nullToAbsent
          ? const Value.absent()
          : Value(pathogenAcceptable),
      pathogenAcceptableText: pathogenAcceptableText == null && nullToAbsent
          ? const Value.absent()
          : Value(pathogenAcceptableText),
      waterAcceptable: waterAcceptable == null && nullToAbsent
          ? const Value.absent()
          : Value(waterAcceptable),
      waterAcceptableText: waterAcceptableText == null && nullToAbsent
          ? const Value.absent()
          : Value(waterAcceptableText),
      wasteAcceptable: wasteAcceptable == null && nullToAbsent
          ? const Value.absent()
          : Value(wasteAcceptable),
      wasteAcceptableText: wasteAcceptableText == null && nullToAbsent
          ? const Value.absent()
          : Value(wasteAcceptableText),
      misbrandedObservedLabel: misbrandedObservedLabel == null && nullToAbsent
          ? const Value.absent()
          : Value(misbrandedObservedLabel),
      misbrandedObservedLabelText:
          misbrandedObservedLabelText == null && nullToAbsent
              ? const Value.absent()
              : Value(misbrandedObservedLabelText),
      misbrandedLikelyLabel: misbrandedLikelyLabel == null && nullToAbsent
          ? const Value.absent()
          : Value(misbrandedLikelyLabel),
      misbrandedLikelyLabelText:
          misbrandedLikelyLabelText == null && nullToAbsent
              ? const Value.absent()
              : Value(misbrandedLikelyLabelText),
      adminsitrativeConsentAgreement:
          adminsitrativeConsentAgreement == null && nullToAbsent
              ? const Value.absent()
              : Value(adminsitrativeConsentAgreement),
      adminsitrativeConsentAgreementText:
          adminsitrativeConsentAgreementText == null && nullToAbsent
              ? const Value.absent()
              : Value(adminsitrativeConsentAgreementText),
      recommendForRemovalOfPrivileges:
          recommendForRemovalOfPrivileges == null && nullToAbsent
              ? const Value.absent()
              : Value(recommendForRemovalOfPrivileges),
      dateCopyGiven: dateCopyGiven == null && nullToAbsent
          ? const Value.absent()
          : Value(dateCopyGiven),
      species: species == null && nullToAbsent
          ? const Value.absent()
          : Value(species),
      reviewInterval: reviewInterval == null && nullToAbsent
          ? const Value.absent()
          : Value(reviewInterval),
      otherInterval: otherInterval == null && nullToAbsent
          ? const Value.absent()
          : Value(otherInterval),
      otherSpecies: otherSpecies == null && nullToAbsent
          ? const Value.absent()
          : Value(otherSpecies),
      additionalComments: additionalComments == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalComments),
    );
  }

  factory SurvCustomExemptReviewData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SurvCustomExemptReviewData(
      id: serializer.fromJson<int>(json['id']),
      recordType: $SurvCustomExemptReviewTable.$converterrecordTypen
          .fromJson(serializer.fromJson<int?>(json['recordType'])),
      wasCustomExemptReviewConducted:
          serializer.fromJson<bool?>(json['wasCustomExemptReviewConducted']),
      doesFacilityPerformCustomSlaughter: serializer
          .fromJson<bool?>(json['doesFacilityPerformCustomSlaughter']),
      doesFacilityPerformCustomProcessing: serializer
          .fromJson<bool?>(json['doesFacilityPerformCustomProcessing']),
      doesFacilityEmail:
          serializer.fromJson<String?>(json['doesFacilityEmail']),
      officialEstablishment:
          serializer.fromJson<bool?>(json['officialEstablishment']),
      copyGiven: serializer.fromJson<bool?>(json['copyGiven']),
      humaneLivestockSlaughter:
          serializer.fromJson<bool?>(json['humaneLivestockSlaughter']),
      humaneLivestockSlaughterText:
          serializer.fromJson<String?>(json['humaneLivestockSlaughterText']),
      recordkeepingAcceptable:
          serializer.fromJson<bool?>(json['recordkeepingAcceptable']),
      recordkeepingAcceptableText:
          serializer.fromJson<String?>(json['recordkeepingAcceptableText']),
      namePHVText: serializer.fromJson<String?>(json['namePHVText']),
      nameIICText: serializer.fromJson<String?>(json['nameIICText']),
      sanitaryOperationsAcceptable:
          serializer.fromJson<bool?>(json['sanitaryOperationsAcceptable']),
      sanitaryOperationsAcceptableText: serializer
          .fromJson<String?>(json['sanitaryOperationsAcceptableText']),
      pestControlAcceptable:
          serializer.fromJson<bool?>(json['pestControlAcceptable']),
      pestControlAcceptableText:
          serializer.fromJson<String?>(json['pestControlAcceptableText']),
      ineditbleMaterialAcceptable:
          serializer.fromJson<bool?>(json['ineditbleMaterialAcceptable']),
      ineditbleMaterialAcceptableText:
          serializer.fromJson<String?>(json['ineditbleMaterialAcceptableText']),
      labelingAcceptable:
          serializer.fromJson<bool?>(json['labelingAcceptable']),
      labelingAcceptableText:
          serializer.fromJson<String?>(json['labelingAcceptableText']),
      pathogenAcceptable:
          serializer.fromJson<bool?>(json['pathogenAcceptable']),
      pathogenAcceptableText:
          serializer.fromJson<String?>(json['pathogenAcceptableText']),
      waterAcceptable: serializer.fromJson<bool?>(json['waterAcceptable']),
      waterAcceptableText:
          serializer.fromJson<String?>(json['waterAcceptableText']),
      wasteAcceptable: serializer.fromJson<bool?>(json['wasteAcceptable']),
      wasteAcceptableText:
          serializer.fromJson<String?>(json['wasteAcceptableText']),
      misbrandedObservedLabel:
          serializer.fromJson<bool?>(json['misbrandedObservedLabel']),
      misbrandedObservedLabelText:
          serializer.fromJson<String?>(json['misbrandedObservedLabelText']),
      misbrandedLikelyLabel:
          serializer.fromJson<bool?>(json['misbrandedLikelyLabel']),
      misbrandedLikelyLabelText:
          serializer.fromJson<String?>(json['misbrandedLikelyLabelText']),
      adminsitrativeConsentAgreement:
          serializer.fromJson<bool?>(json['adminsitrativeConsentAgreement']),
      adminsitrativeConsentAgreementText: serializer
          .fromJson<String?>(json['adminsitrativeConsentAgreementText']),
      recommendForRemovalOfPrivileges:
          serializer.fromJson<bool?>(json['recommendForRemovalOfPrivileges']),
      dateCopyGiven: serializer.fromJson<DateTime?>(json['dateCopyGiven']),
      species: serializer.fromJson<MultiString?>(json['species']),
      reviewInterval: serializer.fromJson<String?>(json['reviewInterval']),
      otherInterval: serializer.fromJson<String?>(json['otherInterval']),
      otherSpecies: serializer.fromJson<String?>(json['otherSpecies']),
      additionalComments:
          serializer.fromJson<String?>(json['additionalComments']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordType': serializer.toJson<int?>($SurvCustomExemptReviewTable
          .$converterrecordTypen
          .toJson(recordType)),
      'wasCustomExemptReviewConducted':
          serializer.toJson<bool?>(wasCustomExemptReviewConducted),
      'doesFacilityPerformCustomSlaughter':
          serializer.toJson<bool?>(doesFacilityPerformCustomSlaughter),
      'doesFacilityPerformCustomProcessing':
          serializer.toJson<bool?>(doesFacilityPerformCustomProcessing),
      'doesFacilityEmail': serializer.toJson<String?>(doesFacilityEmail),
      'officialEstablishment': serializer.toJson<bool?>(officialEstablishment),
      'copyGiven': serializer.toJson<bool?>(copyGiven),
      'humaneLivestockSlaughter':
          serializer.toJson<bool?>(humaneLivestockSlaughter),
      'humaneLivestockSlaughterText':
          serializer.toJson<String?>(humaneLivestockSlaughterText),
      'recordkeepingAcceptable':
          serializer.toJson<bool?>(recordkeepingAcceptable),
      'recordkeepingAcceptableText':
          serializer.toJson<String?>(recordkeepingAcceptableText),
      'namePHVText': serializer.toJson<String?>(namePHVText),
      'nameIICText': serializer.toJson<String?>(nameIICText),
      'sanitaryOperationsAcceptable':
          serializer.toJson<bool?>(sanitaryOperationsAcceptable),
      'sanitaryOperationsAcceptableText':
          serializer.toJson<String?>(sanitaryOperationsAcceptableText),
      'pestControlAcceptable': serializer.toJson<bool?>(pestControlAcceptable),
      'pestControlAcceptableText':
          serializer.toJson<String?>(pestControlAcceptableText),
      'ineditbleMaterialAcceptable':
          serializer.toJson<bool?>(ineditbleMaterialAcceptable),
      'ineditbleMaterialAcceptableText':
          serializer.toJson<String?>(ineditbleMaterialAcceptableText),
      'labelingAcceptable': serializer.toJson<bool?>(labelingAcceptable),
      'labelingAcceptableText':
          serializer.toJson<String?>(labelingAcceptableText),
      'pathogenAcceptable': serializer.toJson<bool?>(pathogenAcceptable),
      'pathogenAcceptableText':
          serializer.toJson<String?>(pathogenAcceptableText),
      'waterAcceptable': serializer.toJson<bool?>(waterAcceptable),
      'waterAcceptableText': serializer.toJson<String?>(waterAcceptableText),
      'wasteAcceptable': serializer.toJson<bool?>(wasteAcceptable),
      'wasteAcceptableText': serializer.toJson<String?>(wasteAcceptableText),
      'misbrandedObservedLabel':
          serializer.toJson<bool?>(misbrandedObservedLabel),
      'misbrandedObservedLabelText':
          serializer.toJson<String?>(misbrandedObservedLabelText),
      'misbrandedLikelyLabel': serializer.toJson<bool?>(misbrandedLikelyLabel),
      'misbrandedLikelyLabelText':
          serializer.toJson<String?>(misbrandedLikelyLabelText),
      'adminsitrativeConsentAgreement':
          serializer.toJson<bool?>(adminsitrativeConsentAgreement),
      'adminsitrativeConsentAgreementText':
          serializer.toJson<String?>(adminsitrativeConsentAgreementText),
      'recommendForRemovalOfPrivileges':
          serializer.toJson<bool?>(recommendForRemovalOfPrivileges),
      'dateCopyGiven': serializer.toJson<DateTime?>(dateCopyGiven),
      'species': serializer.toJson<MultiString?>(species),
      'reviewInterval': serializer.toJson<String?>(reviewInterval),
      'otherInterval': serializer.toJson<String?>(otherInterval),
      'otherSpecies': serializer.toJson<String?>(otherSpecies),
      'additionalComments': serializer.toJson<String?>(additionalComments),
    };
  }

  SurvCustomExemptReviewData copyWith(
          {int? id,
          Value<RecordType?> recordType = const Value.absent(),
          Value<bool?> wasCustomExemptReviewConducted = const Value.absent(),
          Value<bool?> doesFacilityPerformCustomSlaughter =
              const Value.absent(),
          Value<bool?> doesFacilityPerformCustomProcessing =
              const Value.absent(),
          Value<String?> doesFacilityEmail = const Value.absent(),
          Value<bool?> officialEstablishment = const Value.absent(),
          Value<bool?> copyGiven = const Value.absent(),
          Value<bool?> humaneLivestockSlaughter = const Value.absent(),
          Value<String?> humaneLivestockSlaughterText = const Value.absent(),
          Value<bool?> recordkeepingAcceptable = const Value.absent(),
          Value<String?> recordkeepingAcceptableText = const Value.absent(),
          Value<String?> namePHVText = const Value.absent(),
          Value<String?> nameIICText = const Value.absent(),
          Value<bool?> sanitaryOperationsAcceptable = const Value.absent(),
          Value<String?> sanitaryOperationsAcceptableText =
              const Value.absent(),
          Value<bool?> pestControlAcceptable = const Value.absent(),
          Value<String?> pestControlAcceptableText = const Value.absent(),
          Value<bool?> ineditbleMaterialAcceptable = const Value.absent(),
          Value<String?> ineditbleMaterialAcceptableText = const Value.absent(),
          Value<bool?> labelingAcceptable = const Value.absent(),
          Value<String?> labelingAcceptableText = const Value.absent(),
          Value<bool?> pathogenAcceptable = const Value.absent(),
          Value<String?> pathogenAcceptableText = const Value.absent(),
          Value<bool?> waterAcceptable = const Value.absent(),
          Value<String?> waterAcceptableText = const Value.absent(),
          Value<bool?> wasteAcceptable = const Value.absent(),
          Value<String?> wasteAcceptableText = const Value.absent(),
          Value<bool?> misbrandedObservedLabel = const Value.absent(),
          Value<String?> misbrandedObservedLabelText = const Value.absent(),
          Value<bool?> misbrandedLikelyLabel = const Value.absent(),
          Value<String?> misbrandedLikelyLabelText = const Value.absent(),
          Value<bool?> adminsitrativeConsentAgreement = const Value.absent(),
          Value<String?> adminsitrativeConsentAgreementText =
              const Value.absent(),
          Value<bool?> recommendForRemovalOfPrivileges = const Value.absent(),
          Value<DateTime?> dateCopyGiven = const Value.absent(),
          Value<MultiString?> species = const Value.absent(),
          Value<String?> reviewInterval = const Value.absent(),
          Value<String?> otherInterval = const Value.absent(),
          Value<String?> otherSpecies = const Value.absent(),
          Value<String?> additionalComments = const Value.absent()}) =>
      SurvCustomExemptReviewData(
        id: id ?? this.id,
        recordType: recordType.present ? recordType.value : this.recordType,
        wasCustomExemptReviewConducted: wasCustomExemptReviewConducted.present
            ? wasCustomExemptReviewConducted.value
            : this.wasCustomExemptReviewConducted,
        doesFacilityPerformCustomSlaughter:
            doesFacilityPerformCustomSlaughter.present
                ? doesFacilityPerformCustomSlaughter.value
                : this.doesFacilityPerformCustomSlaughter,
        doesFacilityPerformCustomProcessing:
            doesFacilityPerformCustomProcessing.present
                ? doesFacilityPerformCustomProcessing.value
                : this.doesFacilityPerformCustomProcessing,
        doesFacilityEmail: doesFacilityEmail.present
            ? doesFacilityEmail.value
            : this.doesFacilityEmail,
        officialEstablishment: officialEstablishment.present
            ? officialEstablishment.value
            : this.officialEstablishment,
        copyGiven: copyGiven.present ? copyGiven.value : this.copyGiven,
        humaneLivestockSlaughter: humaneLivestockSlaughter.present
            ? humaneLivestockSlaughter.value
            : this.humaneLivestockSlaughter,
        humaneLivestockSlaughterText: humaneLivestockSlaughterText.present
            ? humaneLivestockSlaughterText.value
            : this.humaneLivestockSlaughterText,
        recordkeepingAcceptable: recordkeepingAcceptable.present
            ? recordkeepingAcceptable.value
            : this.recordkeepingAcceptable,
        recordkeepingAcceptableText: recordkeepingAcceptableText.present
            ? recordkeepingAcceptableText.value
            : this.recordkeepingAcceptableText,
        namePHVText: namePHVText.present ? namePHVText.value : this.namePHVText,
        nameIICText: nameIICText.present ? nameIICText.value : this.nameIICText,
        sanitaryOperationsAcceptable: sanitaryOperationsAcceptable.present
            ? sanitaryOperationsAcceptable.value
            : this.sanitaryOperationsAcceptable,
        sanitaryOperationsAcceptableText:
            sanitaryOperationsAcceptableText.present
                ? sanitaryOperationsAcceptableText.value
                : this.sanitaryOperationsAcceptableText,
        pestControlAcceptable: pestControlAcceptable.present
            ? pestControlAcceptable.value
            : this.pestControlAcceptable,
        pestControlAcceptableText: pestControlAcceptableText.present
            ? pestControlAcceptableText.value
            : this.pestControlAcceptableText,
        ineditbleMaterialAcceptable: ineditbleMaterialAcceptable.present
            ? ineditbleMaterialAcceptable.value
            : this.ineditbleMaterialAcceptable,
        ineditbleMaterialAcceptableText: ineditbleMaterialAcceptableText.present
            ? ineditbleMaterialAcceptableText.value
            : this.ineditbleMaterialAcceptableText,
        labelingAcceptable: labelingAcceptable.present
            ? labelingAcceptable.value
            : this.labelingAcceptable,
        labelingAcceptableText: labelingAcceptableText.present
            ? labelingAcceptableText.value
            : this.labelingAcceptableText,
        pathogenAcceptable: pathogenAcceptable.present
            ? pathogenAcceptable.value
            : this.pathogenAcceptable,
        pathogenAcceptableText: pathogenAcceptableText.present
            ? pathogenAcceptableText.value
            : this.pathogenAcceptableText,
        waterAcceptable: waterAcceptable.present
            ? waterAcceptable.value
            : this.waterAcceptable,
        waterAcceptableText: waterAcceptableText.present
            ? waterAcceptableText.value
            : this.waterAcceptableText,
        wasteAcceptable: wasteAcceptable.present
            ? wasteAcceptable.value
            : this.wasteAcceptable,
        wasteAcceptableText: wasteAcceptableText.present
            ? wasteAcceptableText.value
            : this.wasteAcceptableText,
        misbrandedObservedLabel: misbrandedObservedLabel.present
            ? misbrandedObservedLabel.value
            : this.misbrandedObservedLabel,
        misbrandedObservedLabelText: misbrandedObservedLabelText.present
            ? misbrandedObservedLabelText.value
            : this.misbrandedObservedLabelText,
        misbrandedLikelyLabel: misbrandedLikelyLabel.present
            ? misbrandedLikelyLabel.value
            : this.misbrandedLikelyLabel,
        misbrandedLikelyLabelText: misbrandedLikelyLabelText.present
            ? misbrandedLikelyLabelText.value
            : this.misbrandedLikelyLabelText,
        adminsitrativeConsentAgreement: adminsitrativeConsentAgreement.present
            ? adminsitrativeConsentAgreement.value
            : this.adminsitrativeConsentAgreement,
        adminsitrativeConsentAgreementText:
            adminsitrativeConsentAgreementText.present
                ? adminsitrativeConsentAgreementText.value
                : this.adminsitrativeConsentAgreementText,
        recommendForRemovalOfPrivileges: recommendForRemovalOfPrivileges.present
            ? recommendForRemovalOfPrivileges.value
            : this.recommendForRemovalOfPrivileges,
        dateCopyGiven:
            dateCopyGiven.present ? dateCopyGiven.value : this.dateCopyGiven,
        species: species.present ? species.value : this.species,
        reviewInterval:
            reviewInterval.present ? reviewInterval.value : this.reviewInterval,
        otherInterval:
            otherInterval.present ? otherInterval.value : this.otherInterval,
        otherSpecies:
            otherSpecies.present ? otherSpecies.value : this.otherSpecies,
        additionalComments: additionalComments.present
            ? additionalComments.value
            : this.additionalComments,
      );
  @override
  String toString() {
    return (StringBuffer('SurvCustomExemptReviewData(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write(
              'wasCustomExemptReviewConducted: $wasCustomExemptReviewConducted, ')
          ..write(
              'doesFacilityPerformCustomSlaughter: $doesFacilityPerformCustomSlaughter, ')
          ..write(
              'doesFacilityPerformCustomProcessing: $doesFacilityPerformCustomProcessing, ')
          ..write('doesFacilityEmail: $doesFacilityEmail, ')
          ..write('officialEstablishment: $officialEstablishment, ')
          ..write('copyGiven: $copyGiven, ')
          ..write('humaneLivestockSlaughter: $humaneLivestockSlaughter, ')
          ..write(
              'humaneLivestockSlaughterText: $humaneLivestockSlaughterText, ')
          ..write('recordkeepingAcceptable: $recordkeepingAcceptable, ')
          ..write('recordkeepingAcceptableText: $recordkeepingAcceptableText, ')
          ..write('namePHVText: $namePHVText, ')
          ..write('nameIICText: $nameIICText, ')
          ..write(
              'sanitaryOperationsAcceptable: $sanitaryOperationsAcceptable, ')
          ..write(
              'sanitaryOperationsAcceptableText: $sanitaryOperationsAcceptableText, ')
          ..write('pestControlAcceptable: $pestControlAcceptable, ')
          ..write('pestControlAcceptableText: $pestControlAcceptableText, ')
          ..write('ineditbleMaterialAcceptable: $ineditbleMaterialAcceptable, ')
          ..write(
              'ineditbleMaterialAcceptableText: $ineditbleMaterialAcceptableText, ')
          ..write('labelingAcceptable: $labelingAcceptable, ')
          ..write('labelingAcceptableText: $labelingAcceptableText, ')
          ..write('pathogenAcceptable: $pathogenAcceptable, ')
          ..write('pathogenAcceptableText: $pathogenAcceptableText, ')
          ..write('waterAcceptable: $waterAcceptable, ')
          ..write('waterAcceptableText: $waterAcceptableText, ')
          ..write('wasteAcceptable: $wasteAcceptable, ')
          ..write('wasteAcceptableText: $wasteAcceptableText, ')
          ..write('misbrandedObservedLabel: $misbrandedObservedLabel, ')
          ..write('misbrandedObservedLabelText: $misbrandedObservedLabelText, ')
          ..write('misbrandedLikelyLabel: $misbrandedLikelyLabel, ')
          ..write('misbrandedLikelyLabelText: $misbrandedLikelyLabelText, ')
          ..write(
              'adminsitrativeConsentAgreement: $adminsitrativeConsentAgreement, ')
          ..write(
              'adminsitrativeConsentAgreementText: $adminsitrativeConsentAgreementText, ')
          ..write(
              'recommendForRemovalOfPrivileges: $recommendForRemovalOfPrivileges, ')
          ..write('dateCopyGiven: $dateCopyGiven, ')
          ..write('species: $species, ')
          ..write('reviewInterval: $reviewInterval, ')
          ..write('otherInterval: $otherInterval, ')
          ..write('otherSpecies: $otherSpecies, ')
          ..write('additionalComments: $additionalComments')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        recordType,
        wasCustomExemptReviewConducted,
        doesFacilityPerformCustomSlaughter,
        doesFacilityPerformCustomProcessing,
        doesFacilityEmail,
        officialEstablishment,
        copyGiven,
        humaneLivestockSlaughter,
        humaneLivestockSlaughterText,
        recordkeepingAcceptable,
        recordkeepingAcceptableText,
        namePHVText,
        nameIICText,
        sanitaryOperationsAcceptable,
        sanitaryOperationsAcceptableText,
        pestControlAcceptable,
        pestControlAcceptableText,
        ineditbleMaterialAcceptable,
        ineditbleMaterialAcceptableText,
        labelingAcceptable,
        labelingAcceptableText,
        pathogenAcceptable,
        pathogenAcceptableText,
        waterAcceptable,
        waterAcceptableText,
        wasteAcceptable,
        wasteAcceptableText,
        misbrandedObservedLabel,
        misbrandedObservedLabelText,
        misbrandedLikelyLabel,
        misbrandedLikelyLabelText,
        adminsitrativeConsentAgreement,
        adminsitrativeConsentAgreementText,
        recommendForRemovalOfPrivileges,
        dateCopyGiven,
        species,
        reviewInterval,
        otherInterval,
        otherSpecies,
        additionalComments
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SurvCustomExemptReviewData &&
          other.id == this.id &&
          other.recordType == this.recordType &&
          other.wasCustomExemptReviewConducted ==
              this.wasCustomExemptReviewConducted &&
          other.doesFacilityPerformCustomSlaughter ==
              this.doesFacilityPerformCustomSlaughter &&
          other.doesFacilityPerformCustomProcessing ==
              this.doesFacilityPerformCustomProcessing &&
          other.doesFacilityEmail == this.doesFacilityEmail &&
          other.officialEstablishment == this.officialEstablishment &&
          other.copyGiven == this.copyGiven &&
          other.humaneLivestockSlaughter == this.humaneLivestockSlaughter &&
          other.humaneLivestockSlaughterText ==
              this.humaneLivestockSlaughterText &&
          other.recordkeepingAcceptable == this.recordkeepingAcceptable &&
          other.recordkeepingAcceptableText ==
              this.recordkeepingAcceptableText &&
          other.namePHVText == this.namePHVText &&
          other.nameIICText == this.nameIICText &&
          other.sanitaryOperationsAcceptable ==
              this.sanitaryOperationsAcceptable &&
          other.sanitaryOperationsAcceptableText ==
              this.sanitaryOperationsAcceptableText &&
          other.pestControlAcceptable == this.pestControlAcceptable &&
          other.pestControlAcceptableText == this.pestControlAcceptableText &&
          other.ineditbleMaterialAcceptable ==
              this.ineditbleMaterialAcceptable &&
          other.ineditbleMaterialAcceptableText ==
              this.ineditbleMaterialAcceptableText &&
          other.labelingAcceptable == this.labelingAcceptable &&
          other.labelingAcceptableText == this.labelingAcceptableText &&
          other.pathogenAcceptable == this.pathogenAcceptable &&
          other.pathogenAcceptableText == this.pathogenAcceptableText &&
          other.waterAcceptable == this.waterAcceptable &&
          other.waterAcceptableText == this.waterAcceptableText &&
          other.wasteAcceptable == this.wasteAcceptable &&
          other.wasteAcceptableText == this.wasteAcceptableText &&
          other.misbrandedObservedLabel == this.misbrandedObservedLabel &&
          other.misbrandedObservedLabelText ==
              this.misbrandedObservedLabelText &&
          other.misbrandedLikelyLabel == this.misbrandedLikelyLabel &&
          other.misbrandedLikelyLabelText == this.misbrandedLikelyLabelText &&
          other.adminsitrativeConsentAgreement ==
              this.adminsitrativeConsentAgreement &&
          other.adminsitrativeConsentAgreementText ==
              this.adminsitrativeConsentAgreementText &&
          other.recommendForRemovalOfPrivileges ==
              this.recommendForRemovalOfPrivileges &&
          other.dateCopyGiven == this.dateCopyGiven &&
          other.species == this.species &&
          other.reviewInterval == this.reviewInterval &&
          other.otherInterval == this.otherInterval &&
          other.otherSpecies == this.otherSpecies &&
          other.additionalComments == this.additionalComments);
}

class SurvCustomExemptReviewCompanion
    extends UpdateCompanion<SurvCustomExemptReviewData> {
  final Value<int> id;
  final Value<RecordType?> recordType;
  final Value<bool?> wasCustomExemptReviewConducted;
  final Value<bool?> doesFacilityPerformCustomSlaughter;
  final Value<bool?> doesFacilityPerformCustomProcessing;
  final Value<String?> doesFacilityEmail;
  final Value<bool?> officialEstablishment;
  final Value<bool?> copyGiven;
  final Value<bool?> humaneLivestockSlaughter;
  final Value<String?> humaneLivestockSlaughterText;
  final Value<bool?> recordkeepingAcceptable;
  final Value<String?> recordkeepingAcceptableText;
  final Value<String?> namePHVText;
  final Value<String?> nameIICText;
  final Value<bool?> sanitaryOperationsAcceptable;
  final Value<String?> sanitaryOperationsAcceptableText;
  final Value<bool?> pestControlAcceptable;
  final Value<String?> pestControlAcceptableText;
  final Value<bool?> ineditbleMaterialAcceptable;
  final Value<String?> ineditbleMaterialAcceptableText;
  final Value<bool?> labelingAcceptable;
  final Value<String?> labelingAcceptableText;
  final Value<bool?> pathogenAcceptable;
  final Value<String?> pathogenAcceptableText;
  final Value<bool?> waterAcceptable;
  final Value<String?> waterAcceptableText;
  final Value<bool?> wasteAcceptable;
  final Value<String?> wasteAcceptableText;
  final Value<bool?> misbrandedObservedLabel;
  final Value<String?> misbrandedObservedLabelText;
  final Value<bool?> misbrandedLikelyLabel;
  final Value<String?> misbrandedLikelyLabelText;
  final Value<bool?> adminsitrativeConsentAgreement;
  final Value<String?> adminsitrativeConsentAgreementText;
  final Value<bool?> recommendForRemovalOfPrivileges;
  final Value<DateTime?> dateCopyGiven;
  final Value<MultiString?> species;
  final Value<String?> reviewInterval;
  final Value<String?> otherInterval;
  final Value<String?> otherSpecies;
  final Value<String?> additionalComments;
  final Value<int> rowid;
  const SurvCustomExemptReviewCompanion({
    this.id = const Value.absent(),
    this.recordType = const Value.absent(),
    this.wasCustomExemptReviewConducted = const Value.absent(),
    this.doesFacilityPerformCustomSlaughter = const Value.absent(),
    this.doesFacilityPerformCustomProcessing = const Value.absent(),
    this.doesFacilityEmail = const Value.absent(),
    this.officialEstablishment = const Value.absent(),
    this.copyGiven = const Value.absent(),
    this.humaneLivestockSlaughter = const Value.absent(),
    this.humaneLivestockSlaughterText = const Value.absent(),
    this.recordkeepingAcceptable = const Value.absent(),
    this.recordkeepingAcceptableText = const Value.absent(),
    this.namePHVText = const Value.absent(),
    this.nameIICText = const Value.absent(),
    this.sanitaryOperationsAcceptable = const Value.absent(),
    this.sanitaryOperationsAcceptableText = const Value.absent(),
    this.pestControlAcceptable = const Value.absent(),
    this.pestControlAcceptableText = const Value.absent(),
    this.ineditbleMaterialAcceptable = const Value.absent(),
    this.ineditbleMaterialAcceptableText = const Value.absent(),
    this.labelingAcceptable = const Value.absent(),
    this.labelingAcceptableText = const Value.absent(),
    this.pathogenAcceptable = const Value.absent(),
    this.pathogenAcceptableText = const Value.absent(),
    this.waterAcceptable = const Value.absent(),
    this.waterAcceptableText = const Value.absent(),
    this.wasteAcceptable = const Value.absent(),
    this.wasteAcceptableText = const Value.absent(),
    this.misbrandedObservedLabel = const Value.absent(),
    this.misbrandedObservedLabelText = const Value.absent(),
    this.misbrandedLikelyLabel = const Value.absent(),
    this.misbrandedLikelyLabelText = const Value.absent(),
    this.adminsitrativeConsentAgreement = const Value.absent(),
    this.adminsitrativeConsentAgreementText = const Value.absent(),
    this.recommendForRemovalOfPrivileges = const Value.absent(),
    this.dateCopyGiven = const Value.absent(),
    this.species = const Value.absent(),
    this.reviewInterval = const Value.absent(),
    this.otherInterval = const Value.absent(),
    this.otherSpecies = const Value.absent(),
    this.additionalComments = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SurvCustomExemptReviewCompanion.insert({
    required int id,
    this.recordType = const Value.absent(),
    this.wasCustomExemptReviewConducted = const Value.absent(),
    this.doesFacilityPerformCustomSlaughter = const Value.absent(),
    this.doesFacilityPerformCustomProcessing = const Value.absent(),
    this.doesFacilityEmail = const Value.absent(),
    this.officialEstablishment = const Value.absent(),
    this.copyGiven = const Value.absent(),
    this.humaneLivestockSlaughter = const Value.absent(),
    this.humaneLivestockSlaughterText = const Value.absent(),
    this.recordkeepingAcceptable = const Value.absent(),
    this.recordkeepingAcceptableText = const Value.absent(),
    this.namePHVText = const Value.absent(),
    this.nameIICText = const Value.absent(),
    this.sanitaryOperationsAcceptable = const Value.absent(),
    this.sanitaryOperationsAcceptableText = const Value.absent(),
    this.pestControlAcceptable = const Value.absent(),
    this.pestControlAcceptableText = const Value.absent(),
    this.ineditbleMaterialAcceptable = const Value.absent(),
    this.ineditbleMaterialAcceptableText = const Value.absent(),
    this.labelingAcceptable = const Value.absent(),
    this.labelingAcceptableText = const Value.absent(),
    this.pathogenAcceptable = const Value.absent(),
    this.pathogenAcceptableText = const Value.absent(),
    this.waterAcceptable = const Value.absent(),
    this.waterAcceptableText = const Value.absent(),
    this.wasteAcceptable = const Value.absent(),
    this.wasteAcceptableText = const Value.absent(),
    this.misbrandedObservedLabel = const Value.absent(),
    this.misbrandedObservedLabelText = const Value.absent(),
    this.misbrandedLikelyLabel = const Value.absent(),
    this.misbrandedLikelyLabelText = const Value.absent(),
    this.adminsitrativeConsentAgreement = const Value.absent(),
    this.adminsitrativeConsentAgreementText = const Value.absent(),
    this.recommendForRemovalOfPrivileges = const Value.absent(),
    this.dateCopyGiven = const Value.absent(),
    this.species = const Value.absent(),
    this.reviewInterval = const Value.absent(),
    this.otherInterval = const Value.absent(),
    this.otherSpecies = const Value.absent(),
    this.additionalComments = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<SurvCustomExemptReviewData> custom({
    Expression<int>? id,
    Expression<int>? recordType,
    Expression<bool>? wasCustomExemptReviewConducted,
    Expression<bool>? doesFacilityPerformCustomSlaughter,
    Expression<bool>? doesFacilityPerformCustomProcessing,
    Expression<String>? doesFacilityEmail,
    Expression<bool>? officialEstablishment,
    Expression<bool>? copyGiven,
    Expression<bool>? humaneLivestockSlaughter,
    Expression<String>? humaneLivestockSlaughterText,
    Expression<bool>? recordkeepingAcceptable,
    Expression<String>? recordkeepingAcceptableText,
    Expression<String>? namePHVText,
    Expression<String>? nameIICText,
    Expression<bool>? sanitaryOperationsAcceptable,
    Expression<String>? sanitaryOperationsAcceptableText,
    Expression<bool>? pestControlAcceptable,
    Expression<String>? pestControlAcceptableText,
    Expression<bool>? ineditbleMaterialAcceptable,
    Expression<String>? ineditbleMaterialAcceptableText,
    Expression<bool>? labelingAcceptable,
    Expression<String>? labelingAcceptableText,
    Expression<bool>? pathogenAcceptable,
    Expression<String>? pathogenAcceptableText,
    Expression<bool>? waterAcceptable,
    Expression<String>? waterAcceptableText,
    Expression<bool>? wasteAcceptable,
    Expression<String>? wasteAcceptableText,
    Expression<bool>? misbrandedObservedLabel,
    Expression<String>? misbrandedObservedLabelText,
    Expression<bool>? misbrandedLikelyLabel,
    Expression<String>? misbrandedLikelyLabelText,
    Expression<bool>? adminsitrativeConsentAgreement,
    Expression<String>? adminsitrativeConsentAgreementText,
    Expression<bool>? recommendForRemovalOfPrivileges,
    Expression<DateTime>? dateCopyGiven,
    Expression<String>? species,
    Expression<String>? reviewInterval,
    Expression<String>? otherInterval,
    Expression<String>? otherSpecies,
    Expression<String>? additionalComments,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordType != null) 'record_type': recordType,
      if (wasCustomExemptReviewConducted != null)
        'was_custom_exempt_review_conducted': wasCustomExemptReviewConducted,
      if (doesFacilityPerformCustomSlaughter != null)
        'does_facility_perform_custom_slaughter':
            doesFacilityPerformCustomSlaughter,
      if (doesFacilityPerformCustomProcessing != null)
        'does_facility_perform_custom_processing':
            doesFacilityPerformCustomProcessing,
      if (doesFacilityEmail != null) 'does_facility_email': doesFacilityEmail,
      if (officialEstablishment != null)
        'official_establishment': officialEstablishment,
      if (copyGiven != null) 'copy_given': copyGiven,
      if (humaneLivestockSlaughter != null)
        'humane_livestock_slaughter': humaneLivestockSlaughter,
      if (humaneLivestockSlaughterText != null)
        'humane_livestock_slaughter_text': humaneLivestockSlaughterText,
      if (recordkeepingAcceptable != null)
        'recordkeeping_acceptable': recordkeepingAcceptable,
      if (recordkeepingAcceptableText != null)
        'recordkeeping_acceptable_text': recordkeepingAcceptableText,
      if (namePHVText != null) 'name_p_h_v_text': namePHVText,
      if (nameIICText != null) 'name_i_i_c_text': nameIICText,
      if (sanitaryOperationsAcceptable != null)
        'sanitary_operations_acceptable': sanitaryOperationsAcceptable,
      if (sanitaryOperationsAcceptableText != null)
        'sanitary_operations_acceptable_text': sanitaryOperationsAcceptableText,
      if (pestControlAcceptable != null)
        'pest_control_acceptable': pestControlAcceptable,
      if (pestControlAcceptableText != null)
        'pest_control_acceptable_text': pestControlAcceptableText,
      if (ineditbleMaterialAcceptable != null)
        'ineditble_material_acceptable': ineditbleMaterialAcceptable,
      if (ineditbleMaterialAcceptableText != null)
        'ineditble_material_acceptable_text': ineditbleMaterialAcceptableText,
      if (labelingAcceptable != null) 'labeling_acceptable': labelingAcceptable,
      if (labelingAcceptableText != null)
        'labeling_acceptable_text': labelingAcceptableText,
      if (pathogenAcceptable != null) 'pathogen_acceptable': pathogenAcceptable,
      if (pathogenAcceptableText != null)
        'pathogen_acceptable_text': pathogenAcceptableText,
      if (waterAcceptable != null) 'water_acceptable': waterAcceptable,
      if (waterAcceptableText != null)
        'water_acceptable_text': waterAcceptableText,
      if (wasteAcceptable != null) 'waste_acceptable': wasteAcceptable,
      if (wasteAcceptableText != null)
        'waste_acceptable_text': wasteAcceptableText,
      if (misbrandedObservedLabel != null)
        'misbranded_observed_label': misbrandedObservedLabel,
      if (misbrandedObservedLabelText != null)
        'misbranded_observed_label_text': misbrandedObservedLabelText,
      if (misbrandedLikelyLabel != null)
        'misbranded_likely_label': misbrandedLikelyLabel,
      if (misbrandedLikelyLabelText != null)
        'misbranded_likely_label_text': misbrandedLikelyLabelText,
      if (adminsitrativeConsentAgreement != null)
        'adminsitrative_consent_agreement': adminsitrativeConsentAgreement,
      if (adminsitrativeConsentAgreementText != null)
        'adminsitrative_consent_agreement_text':
            adminsitrativeConsentAgreementText,
      if (recommendForRemovalOfPrivileges != null)
        'recommend_for_removal_of_privileges': recommendForRemovalOfPrivileges,
      if (dateCopyGiven != null) 'date_copy_given': dateCopyGiven,
      if (species != null) 'species': species,
      if (reviewInterval != null) 'review_interval': reviewInterval,
      if (otherInterval != null) 'other_interval': otherInterval,
      if (otherSpecies != null) 'other_species': otherSpecies,
      if (additionalComments != null) 'additional_comments': additionalComments,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SurvCustomExemptReviewCompanion copyWith(
      {Value<int>? id,
      Value<RecordType?>? recordType,
      Value<bool?>? wasCustomExemptReviewConducted,
      Value<bool?>? doesFacilityPerformCustomSlaughter,
      Value<bool?>? doesFacilityPerformCustomProcessing,
      Value<String?>? doesFacilityEmail,
      Value<bool?>? officialEstablishment,
      Value<bool?>? copyGiven,
      Value<bool?>? humaneLivestockSlaughter,
      Value<String?>? humaneLivestockSlaughterText,
      Value<bool?>? recordkeepingAcceptable,
      Value<String?>? recordkeepingAcceptableText,
      Value<String?>? namePHVText,
      Value<String?>? nameIICText,
      Value<bool?>? sanitaryOperationsAcceptable,
      Value<String?>? sanitaryOperationsAcceptableText,
      Value<bool?>? pestControlAcceptable,
      Value<String?>? pestControlAcceptableText,
      Value<bool?>? ineditbleMaterialAcceptable,
      Value<String?>? ineditbleMaterialAcceptableText,
      Value<bool?>? labelingAcceptable,
      Value<String?>? labelingAcceptableText,
      Value<bool?>? pathogenAcceptable,
      Value<String?>? pathogenAcceptableText,
      Value<bool?>? waterAcceptable,
      Value<String?>? waterAcceptableText,
      Value<bool?>? wasteAcceptable,
      Value<String?>? wasteAcceptableText,
      Value<bool?>? misbrandedObservedLabel,
      Value<String?>? misbrandedObservedLabelText,
      Value<bool?>? misbrandedLikelyLabel,
      Value<String?>? misbrandedLikelyLabelText,
      Value<bool?>? adminsitrativeConsentAgreement,
      Value<String?>? adminsitrativeConsentAgreementText,
      Value<bool?>? recommendForRemovalOfPrivileges,
      Value<DateTime?>? dateCopyGiven,
      Value<MultiString?>? species,
      Value<String?>? reviewInterval,
      Value<String?>? otherInterval,
      Value<String?>? otherSpecies,
      Value<String?>? additionalComments,
      Value<int>? rowid}) {
    return SurvCustomExemptReviewCompanion(
      id: id ?? this.id,
      recordType: recordType ?? this.recordType,
      wasCustomExemptReviewConducted:
          wasCustomExemptReviewConducted ?? this.wasCustomExemptReviewConducted,
      doesFacilityPerformCustomSlaughter: doesFacilityPerformCustomSlaughter ??
          this.doesFacilityPerformCustomSlaughter,
      doesFacilityPerformCustomProcessing:
          doesFacilityPerformCustomProcessing ??
              this.doesFacilityPerformCustomProcessing,
      doesFacilityEmail: doesFacilityEmail ?? this.doesFacilityEmail,
      officialEstablishment:
          officialEstablishment ?? this.officialEstablishment,
      copyGiven: copyGiven ?? this.copyGiven,
      humaneLivestockSlaughter:
          humaneLivestockSlaughter ?? this.humaneLivestockSlaughter,
      humaneLivestockSlaughterText:
          humaneLivestockSlaughterText ?? this.humaneLivestockSlaughterText,
      recordkeepingAcceptable:
          recordkeepingAcceptable ?? this.recordkeepingAcceptable,
      recordkeepingAcceptableText:
          recordkeepingAcceptableText ?? this.recordkeepingAcceptableText,
      namePHVText: namePHVText ?? this.namePHVText,
      nameIICText: nameIICText ?? this.nameIICText,
      sanitaryOperationsAcceptable:
          sanitaryOperationsAcceptable ?? this.sanitaryOperationsAcceptable,
      sanitaryOperationsAcceptableText: sanitaryOperationsAcceptableText ??
          this.sanitaryOperationsAcceptableText,
      pestControlAcceptable:
          pestControlAcceptable ?? this.pestControlAcceptable,
      pestControlAcceptableText:
          pestControlAcceptableText ?? this.pestControlAcceptableText,
      ineditbleMaterialAcceptable:
          ineditbleMaterialAcceptable ?? this.ineditbleMaterialAcceptable,
      ineditbleMaterialAcceptableText: ineditbleMaterialAcceptableText ??
          this.ineditbleMaterialAcceptableText,
      labelingAcceptable: labelingAcceptable ?? this.labelingAcceptable,
      labelingAcceptableText:
          labelingAcceptableText ?? this.labelingAcceptableText,
      pathogenAcceptable: pathogenAcceptable ?? this.pathogenAcceptable,
      pathogenAcceptableText:
          pathogenAcceptableText ?? this.pathogenAcceptableText,
      waterAcceptable: waterAcceptable ?? this.waterAcceptable,
      waterAcceptableText: waterAcceptableText ?? this.waterAcceptableText,
      wasteAcceptable: wasteAcceptable ?? this.wasteAcceptable,
      wasteAcceptableText: wasteAcceptableText ?? this.wasteAcceptableText,
      misbrandedObservedLabel:
          misbrandedObservedLabel ?? this.misbrandedObservedLabel,
      misbrandedObservedLabelText:
          misbrandedObservedLabelText ?? this.misbrandedObservedLabelText,
      misbrandedLikelyLabel:
          misbrandedLikelyLabel ?? this.misbrandedLikelyLabel,
      misbrandedLikelyLabelText:
          misbrandedLikelyLabelText ?? this.misbrandedLikelyLabelText,
      adminsitrativeConsentAgreement:
          adminsitrativeConsentAgreement ?? this.adminsitrativeConsentAgreement,
      adminsitrativeConsentAgreementText: adminsitrativeConsentAgreementText ??
          this.adminsitrativeConsentAgreementText,
      recommendForRemovalOfPrivileges: recommendForRemovalOfPrivileges ??
          this.recommendForRemovalOfPrivileges,
      dateCopyGiven: dateCopyGiven ?? this.dateCopyGiven,
      species: species ?? this.species,
      reviewInterval: reviewInterval ?? this.reviewInterval,
      otherInterval: otherInterval ?? this.otherInterval,
      otherSpecies: otherSpecies ?? this.otherSpecies,
      additionalComments: additionalComments ?? this.additionalComments,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordType.present) {
      final converter = $SurvCustomExemptReviewTable.$converterrecordTypen;

      map['record_type'] = Variable<int>(converter.toSql(recordType.value));
    }
    if (wasCustomExemptReviewConducted.present) {
      map['was_custom_exempt_review_conducted'] =
          Variable<bool>(wasCustomExemptReviewConducted.value);
    }
    if (doesFacilityPerformCustomSlaughter.present) {
      map['does_facility_perform_custom_slaughter'] =
          Variable<bool>(doesFacilityPerformCustomSlaughter.value);
    }
    if (doesFacilityPerformCustomProcessing.present) {
      map['does_facility_perform_custom_processing'] =
          Variable<bool>(doesFacilityPerformCustomProcessing.value);
    }
    if (doesFacilityEmail.present) {
      map['does_facility_email'] = Variable<String>(doesFacilityEmail.value);
    }
    if (officialEstablishment.present) {
      map['official_establishment'] =
          Variable<bool>(officialEstablishment.value);
    }
    if (copyGiven.present) {
      map['copy_given'] = Variable<bool>(copyGiven.value);
    }
    if (humaneLivestockSlaughter.present) {
      map['humane_livestock_slaughter'] =
          Variable<bool>(humaneLivestockSlaughter.value);
    }
    if (humaneLivestockSlaughterText.present) {
      map['humane_livestock_slaughter_text'] =
          Variable<String>(humaneLivestockSlaughterText.value);
    }
    if (recordkeepingAcceptable.present) {
      map['recordkeeping_acceptable'] =
          Variable<bool>(recordkeepingAcceptable.value);
    }
    if (recordkeepingAcceptableText.present) {
      map['recordkeeping_acceptable_text'] =
          Variable<String>(recordkeepingAcceptableText.value);
    }
    if (namePHVText.present) {
      map['name_p_h_v_text'] = Variable<String>(namePHVText.value);
    }
    if (nameIICText.present) {
      map['name_i_i_c_text'] = Variable<String>(nameIICText.value);
    }
    if (sanitaryOperationsAcceptable.present) {
      map['sanitary_operations_acceptable'] =
          Variable<bool>(sanitaryOperationsAcceptable.value);
    }
    if (sanitaryOperationsAcceptableText.present) {
      map['sanitary_operations_acceptable_text'] =
          Variable<String>(sanitaryOperationsAcceptableText.value);
    }
    if (pestControlAcceptable.present) {
      map['pest_control_acceptable'] =
          Variable<bool>(pestControlAcceptable.value);
    }
    if (pestControlAcceptableText.present) {
      map['pest_control_acceptable_text'] =
          Variable<String>(pestControlAcceptableText.value);
    }
    if (ineditbleMaterialAcceptable.present) {
      map['ineditble_material_acceptable'] =
          Variable<bool>(ineditbleMaterialAcceptable.value);
    }
    if (ineditbleMaterialAcceptableText.present) {
      map['ineditble_material_acceptable_text'] =
          Variable<String>(ineditbleMaterialAcceptableText.value);
    }
    if (labelingAcceptable.present) {
      map['labeling_acceptable'] = Variable<bool>(labelingAcceptable.value);
    }
    if (labelingAcceptableText.present) {
      map['labeling_acceptable_text'] =
          Variable<String>(labelingAcceptableText.value);
    }
    if (pathogenAcceptable.present) {
      map['pathogen_acceptable'] = Variable<bool>(pathogenAcceptable.value);
    }
    if (pathogenAcceptableText.present) {
      map['pathogen_acceptable_text'] =
          Variable<String>(pathogenAcceptableText.value);
    }
    if (waterAcceptable.present) {
      map['water_acceptable'] = Variable<bool>(waterAcceptable.value);
    }
    if (waterAcceptableText.present) {
      map['water_acceptable_text'] =
          Variable<String>(waterAcceptableText.value);
    }
    if (wasteAcceptable.present) {
      map['waste_acceptable'] = Variable<bool>(wasteAcceptable.value);
    }
    if (wasteAcceptableText.present) {
      map['waste_acceptable_text'] =
          Variable<String>(wasteAcceptableText.value);
    }
    if (misbrandedObservedLabel.present) {
      map['misbranded_observed_label'] =
          Variable<bool>(misbrandedObservedLabel.value);
    }
    if (misbrandedObservedLabelText.present) {
      map['misbranded_observed_label_text'] =
          Variable<String>(misbrandedObservedLabelText.value);
    }
    if (misbrandedLikelyLabel.present) {
      map['misbranded_likely_label'] =
          Variable<bool>(misbrandedLikelyLabel.value);
    }
    if (misbrandedLikelyLabelText.present) {
      map['misbranded_likely_label_text'] =
          Variable<String>(misbrandedLikelyLabelText.value);
    }
    if (adminsitrativeConsentAgreement.present) {
      map['adminsitrative_consent_agreement'] =
          Variable<bool>(adminsitrativeConsentAgreement.value);
    }
    if (adminsitrativeConsentAgreementText.present) {
      map['adminsitrative_consent_agreement_text'] =
          Variable<String>(adminsitrativeConsentAgreementText.value);
    }
    if (recommendForRemovalOfPrivileges.present) {
      map['recommend_for_removal_of_privileges'] =
          Variable<bool>(recommendForRemovalOfPrivileges.value);
    }
    if (dateCopyGiven.present) {
      map['date_copy_given'] = Variable<DateTime>(dateCopyGiven.value);
    }
    if (species.present) {
      final converter = $SurvCustomExemptReviewTable.$converterspecies;

      map['species'] = Variable<String>(converter.toSql(species.value));
    }
    if (reviewInterval.present) {
      map['review_interval'] = Variable<String>(reviewInterval.value);
    }
    if (otherInterval.present) {
      map['other_interval'] = Variable<String>(otherInterval.value);
    }
    if (otherSpecies.present) {
      map['other_species'] = Variable<String>(otherSpecies.value);
    }
    if (additionalComments.present) {
      map['additional_comments'] = Variable<String>(additionalComments.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SurvCustomExemptReviewCompanion(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write(
              'wasCustomExemptReviewConducted: $wasCustomExemptReviewConducted, ')
          ..write(
              'doesFacilityPerformCustomSlaughter: $doesFacilityPerformCustomSlaughter, ')
          ..write(
              'doesFacilityPerformCustomProcessing: $doesFacilityPerformCustomProcessing, ')
          ..write('doesFacilityEmail: $doesFacilityEmail, ')
          ..write('officialEstablishment: $officialEstablishment, ')
          ..write('copyGiven: $copyGiven, ')
          ..write('humaneLivestockSlaughter: $humaneLivestockSlaughter, ')
          ..write(
              'humaneLivestockSlaughterText: $humaneLivestockSlaughterText, ')
          ..write('recordkeepingAcceptable: $recordkeepingAcceptable, ')
          ..write('recordkeepingAcceptableText: $recordkeepingAcceptableText, ')
          ..write('namePHVText: $namePHVText, ')
          ..write('nameIICText: $nameIICText, ')
          ..write(
              'sanitaryOperationsAcceptable: $sanitaryOperationsAcceptable, ')
          ..write(
              'sanitaryOperationsAcceptableText: $sanitaryOperationsAcceptableText, ')
          ..write('pestControlAcceptable: $pestControlAcceptable, ')
          ..write('pestControlAcceptableText: $pestControlAcceptableText, ')
          ..write('ineditbleMaterialAcceptable: $ineditbleMaterialAcceptable, ')
          ..write(
              'ineditbleMaterialAcceptableText: $ineditbleMaterialAcceptableText, ')
          ..write('labelingAcceptable: $labelingAcceptable, ')
          ..write('labelingAcceptableText: $labelingAcceptableText, ')
          ..write('pathogenAcceptable: $pathogenAcceptable, ')
          ..write('pathogenAcceptableText: $pathogenAcceptableText, ')
          ..write('waterAcceptable: $waterAcceptable, ')
          ..write('waterAcceptableText: $waterAcceptableText, ')
          ..write('wasteAcceptable: $wasteAcceptable, ')
          ..write('wasteAcceptableText: $wasteAcceptableText, ')
          ..write('misbrandedObservedLabel: $misbrandedObservedLabel, ')
          ..write('misbrandedObservedLabelText: $misbrandedObservedLabelText, ')
          ..write('misbrandedLikelyLabel: $misbrandedLikelyLabel, ')
          ..write('misbrandedLikelyLabelText: $misbrandedLikelyLabelText, ')
          ..write(
              'adminsitrativeConsentAgreement: $adminsitrativeConsentAgreement, ')
          ..write(
              'adminsitrativeConsentAgreementText: $adminsitrativeConsentAgreementText, ')
          ..write(
              'recommendForRemovalOfPrivileges: $recommendForRemovalOfPrivileges, ')
          ..write('dateCopyGiven: $dateCopyGiven, ')
          ..write('species: $species, ')
          ..write('reviewInterval: $reviewInterval, ')
          ..write('otherInterval: $otherInterval, ')
          ..write('otherSpecies: $otherSpecies, ')
          ..write('additionalComments: $additionalComments, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SurvShellEggTable extends SurvShellEgg
    with TableInfo<$SurvShellEggTable, SurvShellEggData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SurvShellEggTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<RecordType?, int> recordType =
      GeneratedColumn<int>('record_type', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<RecordType?>($SurvShellEggTable.$converterrecordTypen);
  @override
  late final GeneratedColumn<bool> wereShellEggsObserved =
      GeneratedColumn<bool>('were_shell_eggs_observed', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("were_shell_eggs_observed" IN (0, 1))'));
  @override
  late final GeneratedColumnWithTypeConverter<MultiString?, String>
      shellEggTemperatureList = GeneratedColumn<String>(
              'shell_egg_temperature_list', aliasedName, true,
              additionalChecks: GeneratedColumn.checkTextLength(
                  minTextLength: 0, maxTextLength: 20),
              type: DriftSqlType.string,
              requiredDuringInsert: false)
          .withConverter<MultiString?>(
              $SurvShellEggTable.$convertershellEggTemperatureList);
  @override
  late final GeneratedColumn<bool> areShellEggPropertyMaintained =
      GeneratedColumn<bool>(
          'are_shell_egg_property_maintained', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("are_shell_egg_property_maintained" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> shellEggTemperature =
      GeneratedColumn<String>('shell_egg_temperature', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> comments = GeneratedColumn<String>(
      'comments', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        recordType,
        wereShellEggsObserved,
        shellEggTemperatureList,
        areShellEggPropertyMaintained,
        shellEggTemperature,
        comments
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'surv_shell_egg';
  @override
  Set<GeneratedColumn> get $primaryKey => {id, recordType};
  @override
  SurvShellEggData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SurvShellEggData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      recordType: $SurvShellEggTable.$converterrecordTypen.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}record_type'])),
      wereShellEggsObserved: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}were_shell_eggs_observed']),
      shellEggTemperatureList: $SurvShellEggTable
          .$convertershellEggTemperatureList
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}shell_egg_temperature_list'])),
      areShellEggPropertyMaintained: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}are_shell_egg_property_maintained']),
      shellEggTemperature: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}shell_egg_temperature']),
      comments: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}comments']),
    );
  }

  @override
  $SurvShellEggTable createAlias(String alias) {
    return $SurvShellEggTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RecordType, int, int> $converterrecordType =
      const EnumIndexConverter<RecordType>(RecordType.values);
  static JsonTypeConverter2<RecordType?, int?, int?> $converterrecordTypen =
      JsonTypeConverter2.asNullable($converterrecordType);
  static TypeConverter<MultiString?, String?>
      $convertershellEggTemperatureList = const MultiStringConverter();
}

class SurvShellEggData extends DataClassBehavioral<SurvShellEggData>
    implements Insertable<SurvShellEggData> {
  final int id;
  final RecordType? recordType;
  final bool? wereShellEggsObserved;
  final MultiString? shellEggTemperatureList;
  final bool? areShellEggPropertyMaintained;
  final String? shellEggTemperature;
  final String? comments;
  const SurvShellEggData(
      {required this.id,
      this.recordType,
      this.wereShellEggsObserved,
      this.shellEggTemperatureList,
      this.areShellEggPropertyMaintained,
      this.shellEggTemperature,
      this.comments});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || recordType != null) {
      final converter = $SurvShellEggTable.$converterrecordTypen;
      map['record_type'] = Variable<int>(converter.toSql(recordType));
    }
    if (!nullToAbsent || wereShellEggsObserved != null) {
      map['were_shell_eggs_observed'] = Variable<bool>(wereShellEggsObserved);
    }
    if (!nullToAbsent || shellEggTemperatureList != null) {
      final converter = $SurvShellEggTable.$convertershellEggTemperatureList;
      map['shell_egg_temperature_list'] =
          Variable<String>(converter.toSql(shellEggTemperatureList));
    }
    if (!nullToAbsent || areShellEggPropertyMaintained != null) {
      map['are_shell_egg_property_maintained'] =
          Variable<bool>(areShellEggPropertyMaintained);
    }
    if (!nullToAbsent || shellEggTemperature != null) {
      map['shell_egg_temperature'] = Variable<String>(shellEggTemperature);
    }
    if (!nullToAbsent || comments != null) {
      map['comments'] = Variable<String>(comments);
    }
    return map;
  }

  SurvShellEggCompanion toCompanion(bool nullToAbsent) {
    return SurvShellEggCompanion(
      id: Value(id),
      recordType: recordType == null && nullToAbsent
          ? const Value.absent()
          : Value(recordType),
      wereShellEggsObserved: wereShellEggsObserved == null && nullToAbsent
          ? const Value.absent()
          : Value(wereShellEggsObserved),
      shellEggTemperatureList: shellEggTemperatureList == null && nullToAbsent
          ? const Value.absent()
          : Value(shellEggTemperatureList),
      areShellEggPropertyMaintained:
          areShellEggPropertyMaintained == null && nullToAbsent
              ? const Value.absent()
              : Value(areShellEggPropertyMaintained),
      shellEggTemperature: shellEggTemperature == null && nullToAbsent
          ? const Value.absent()
          : Value(shellEggTemperature),
      comments: comments == null && nullToAbsent
          ? const Value.absent()
          : Value(comments),
    );
  }

  factory SurvShellEggData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SurvShellEggData(
      id: serializer.fromJson<int>(json['id']),
      recordType: $SurvShellEggTable.$converterrecordTypen
          .fromJson(serializer.fromJson<int?>(json['recordType'])),
      wereShellEggsObserved:
          serializer.fromJson<bool?>(json['wereShellEggsObserved']),
      shellEggTemperatureList:
          serializer.fromJson<MultiString?>(json['shellEggTemperatureList']),
      areShellEggPropertyMaintained:
          serializer.fromJson<bool?>(json['areShellEggPropertyMaintained']),
      shellEggTemperature:
          serializer.fromJson<String?>(json['shellEggTemperature']),
      comments: serializer.fromJson<String?>(json['comments']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordType': serializer.toJson<int?>(
          $SurvShellEggTable.$converterrecordTypen.toJson(recordType)),
      'wereShellEggsObserved': serializer.toJson<bool?>(wereShellEggsObserved),
      'shellEggTemperatureList':
          serializer.toJson<MultiString?>(shellEggTemperatureList),
      'areShellEggPropertyMaintained':
          serializer.toJson<bool?>(areShellEggPropertyMaintained),
      'shellEggTemperature': serializer.toJson<String?>(shellEggTemperature),
      'comments': serializer.toJson<String?>(comments),
    };
  }

  SurvShellEggData copyWith(
          {int? id,
          Value<RecordType?> recordType = const Value.absent(),
          Value<bool?> wereShellEggsObserved = const Value.absent(),
          Value<MultiString?> shellEggTemperatureList = const Value.absent(),
          Value<bool?> areShellEggPropertyMaintained = const Value.absent(),
          Value<String?> shellEggTemperature = const Value.absent(),
          Value<String?> comments = const Value.absent()}) =>
      SurvShellEggData(
        id: id ?? this.id,
        recordType: recordType.present ? recordType.value : this.recordType,
        wereShellEggsObserved: wereShellEggsObserved.present
            ? wereShellEggsObserved.value
            : this.wereShellEggsObserved,
        shellEggTemperatureList: shellEggTemperatureList.present
            ? shellEggTemperatureList.value
            : this.shellEggTemperatureList,
        areShellEggPropertyMaintained: areShellEggPropertyMaintained.present
            ? areShellEggPropertyMaintained.value
            : this.areShellEggPropertyMaintained,
        shellEggTemperature: shellEggTemperature.present
            ? shellEggTemperature.value
            : this.shellEggTemperature,
        comments: comments.present ? comments.value : this.comments,
      );
  @override
  String toString() {
    return (StringBuffer('SurvShellEggData(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('wereShellEggsObserved: $wereShellEggsObserved, ')
          ..write('shellEggTemperatureList: $shellEggTemperatureList, ')
          ..write(
              'areShellEggPropertyMaintained: $areShellEggPropertyMaintained, ')
          ..write('shellEggTemperature: $shellEggTemperature, ')
          ..write('comments: $comments')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      recordType,
      wereShellEggsObserved,
      shellEggTemperatureList,
      areShellEggPropertyMaintained,
      shellEggTemperature,
      comments);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SurvShellEggData &&
          other.id == this.id &&
          other.recordType == this.recordType &&
          other.wereShellEggsObserved == this.wereShellEggsObserved &&
          other.shellEggTemperatureList == this.shellEggTemperatureList &&
          other.areShellEggPropertyMaintained ==
              this.areShellEggPropertyMaintained &&
          other.shellEggTemperature == this.shellEggTemperature &&
          other.comments == this.comments);
}

class SurvShellEggCompanion extends UpdateCompanion<SurvShellEggData> {
  final Value<int> id;
  final Value<RecordType?> recordType;
  final Value<bool?> wereShellEggsObserved;
  final Value<MultiString?> shellEggTemperatureList;
  final Value<bool?> areShellEggPropertyMaintained;
  final Value<String?> shellEggTemperature;
  final Value<String?> comments;
  final Value<int> rowid;
  const SurvShellEggCompanion({
    this.id = const Value.absent(),
    this.recordType = const Value.absent(),
    this.wereShellEggsObserved = const Value.absent(),
    this.shellEggTemperatureList = const Value.absent(),
    this.areShellEggPropertyMaintained = const Value.absent(),
    this.shellEggTemperature = const Value.absent(),
    this.comments = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SurvShellEggCompanion.insert({
    required int id,
    this.recordType = const Value.absent(),
    this.wereShellEggsObserved = const Value.absent(),
    this.shellEggTemperatureList = const Value.absent(),
    this.areShellEggPropertyMaintained = const Value.absent(),
    this.shellEggTemperature = const Value.absent(),
    this.comments = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<SurvShellEggData> custom({
    Expression<int>? id,
    Expression<int>? recordType,
    Expression<bool>? wereShellEggsObserved,
    Expression<String>? shellEggTemperatureList,
    Expression<bool>? areShellEggPropertyMaintained,
    Expression<String>? shellEggTemperature,
    Expression<String>? comments,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordType != null) 'record_type': recordType,
      if (wereShellEggsObserved != null)
        'were_shell_eggs_observed': wereShellEggsObserved,
      if (shellEggTemperatureList != null)
        'shell_egg_temperature_list': shellEggTemperatureList,
      if (areShellEggPropertyMaintained != null)
        'are_shell_egg_property_maintained': areShellEggPropertyMaintained,
      if (shellEggTemperature != null)
        'shell_egg_temperature': shellEggTemperature,
      if (comments != null) 'comments': comments,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SurvShellEggCompanion copyWith(
      {Value<int>? id,
      Value<RecordType?>? recordType,
      Value<bool?>? wereShellEggsObserved,
      Value<MultiString?>? shellEggTemperatureList,
      Value<bool?>? areShellEggPropertyMaintained,
      Value<String?>? shellEggTemperature,
      Value<String?>? comments,
      Value<int>? rowid}) {
    return SurvShellEggCompanion(
      id: id ?? this.id,
      recordType: recordType ?? this.recordType,
      wereShellEggsObserved:
          wereShellEggsObserved ?? this.wereShellEggsObserved,
      shellEggTemperatureList:
          shellEggTemperatureList ?? this.shellEggTemperatureList,
      areShellEggPropertyMaintained:
          areShellEggPropertyMaintained ?? this.areShellEggPropertyMaintained,
      shellEggTemperature: shellEggTemperature ?? this.shellEggTemperature,
      comments: comments ?? this.comments,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordType.present) {
      final converter = $SurvShellEggTable.$converterrecordTypen;

      map['record_type'] = Variable<int>(converter.toSql(recordType.value));
    }
    if (wereShellEggsObserved.present) {
      map['were_shell_eggs_observed'] =
          Variable<bool>(wereShellEggsObserved.value);
    }
    if (shellEggTemperatureList.present) {
      final converter = $SurvShellEggTable.$convertershellEggTemperatureList;

      map['shell_egg_temperature_list'] =
          Variable<String>(converter.toSql(shellEggTemperatureList.value));
    }
    if (areShellEggPropertyMaintained.present) {
      map['are_shell_egg_property_maintained'] =
          Variable<bool>(areShellEggPropertyMaintained.value);
    }
    if (shellEggTemperature.present) {
      map['shell_egg_temperature'] =
          Variable<String>(shellEggTemperature.value);
    }
    if (comments.present) {
      map['comments'] = Variable<String>(comments.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SurvShellEggCompanion(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('wereShellEggsObserved: $wereShellEggsObserved, ')
          ..write('shellEggTemperatureList: $shellEggTemperatureList, ')
          ..write(
              'areShellEggPropertyMaintained: $areShellEggPropertyMaintained, ')
          ..write('shellEggTemperature: $shellEggTemperature, ')
          ..write('comments: $comments, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SurvNonFoodSafetyTable extends SurvNonFoodSafety
    with TableInfo<$SurvNonFoodSafetyTable, SurvNonFoodSafetyData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SurvNonFoodSafetyTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<RecordType?, int> recordType =
      GeneratedColumn<int>('record_type', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<RecordType?>(
              $SurvNonFoodSafetyTable.$converterrecordTypen);
  @override
  late final GeneratedColumn<bool> labelingVerified = GeneratedColumn<bool>(
      'labeling_verified', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("labeling_verified" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> productsNotMisbranded =
      GeneratedColumn<bool>('products_not_misbranded', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("products_not_misbranded" IN (0, 1))'));
  @override
  late final GeneratedColumn<bool> properlyIdentifyActs = GeneratedColumn<bool>(
      'properly_identify_acts', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("properly_identify_acts" IN (0, 1))'));
  @override
  late final GeneratedColumn<String> additionalComments =
      GeneratedColumn<String>('additional_comments', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        recordType,
        labelingVerified,
        productsNotMisbranded,
        properlyIdentifyActs,
        additionalComments
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'surv_non_food_safety';
  @override
  Set<GeneratedColumn> get $primaryKey => {id, recordType};
  @override
  SurvNonFoodSafetyData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SurvNonFoodSafetyData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      recordType: $SurvNonFoodSafetyTable.$converterrecordTypen.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}record_type'])),
      labelingVerified: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}labeling_verified']),
      productsNotMisbranded: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}products_not_misbranded']),
      properlyIdentifyActs: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}properly_identify_acts']),
      additionalComments: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}additional_comments']),
    );
  }

  @override
  $SurvNonFoodSafetyTable createAlias(String alias) {
    return $SurvNonFoodSafetyTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RecordType, int, int> $converterrecordType =
      const EnumIndexConverter<RecordType>(RecordType.values);
  static JsonTypeConverter2<RecordType?, int?, int?> $converterrecordTypen =
      JsonTypeConverter2.asNullable($converterrecordType);
}

class SurvNonFoodSafetyData extends DataClassBehavioral<SurvNonFoodSafetyData>
    implements Insertable<SurvNonFoodSafetyData> {
  final int id;
  final RecordType? recordType;
  final bool? labelingVerified;
  final bool? productsNotMisbranded;
  final bool? properlyIdentifyActs;
  final String? additionalComments;
  const SurvNonFoodSafetyData(
      {required this.id,
      this.recordType,
      this.labelingVerified,
      this.productsNotMisbranded,
      this.properlyIdentifyActs,
      this.additionalComments});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || recordType != null) {
      final converter = $SurvNonFoodSafetyTable.$converterrecordTypen;
      map['record_type'] = Variable<int>(converter.toSql(recordType));
    }
    if (!nullToAbsent || labelingVerified != null) {
      map['labeling_verified'] = Variable<bool>(labelingVerified);
    }
    if (!nullToAbsent || productsNotMisbranded != null) {
      map['products_not_misbranded'] = Variable<bool>(productsNotMisbranded);
    }
    if (!nullToAbsent || properlyIdentifyActs != null) {
      map['properly_identify_acts'] = Variable<bool>(properlyIdentifyActs);
    }
    if (!nullToAbsent || additionalComments != null) {
      map['additional_comments'] = Variable<String>(additionalComments);
    }
    return map;
  }

  SurvNonFoodSafetyCompanion toCompanion(bool nullToAbsent) {
    return SurvNonFoodSafetyCompanion(
      id: Value(id),
      recordType: recordType == null && nullToAbsent
          ? const Value.absent()
          : Value(recordType),
      labelingVerified: labelingVerified == null && nullToAbsent
          ? const Value.absent()
          : Value(labelingVerified),
      productsNotMisbranded: productsNotMisbranded == null && nullToAbsent
          ? const Value.absent()
          : Value(productsNotMisbranded),
      properlyIdentifyActs: properlyIdentifyActs == null && nullToAbsent
          ? const Value.absent()
          : Value(properlyIdentifyActs),
      additionalComments: additionalComments == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalComments),
    );
  }

  factory SurvNonFoodSafetyData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SurvNonFoodSafetyData(
      id: serializer.fromJson<int>(json['id']),
      recordType: $SurvNonFoodSafetyTable.$converterrecordTypen
          .fromJson(serializer.fromJson<int?>(json['recordType'])),
      labelingVerified: serializer.fromJson<bool?>(json['labelingVerified']),
      productsNotMisbranded:
          serializer.fromJson<bool?>(json['productsNotMisbranded']),
      properlyIdentifyActs:
          serializer.fromJson<bool?>(json['properlyIdentifyActs']),
      additionalComments:
          serializer.fromJson<String?>(json['additionalComments']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordType': serializer.toJson<int?>(
          $SurvNonFoodSafetyTable.$converterrecordTypen.toJson(recordType)),
      'labelingVerified': serializer.toJson<bool?>(labelingVerified),
      'productsNotMisbranded': serializer.toJson<bool?>(productsNotMisbranded),
      'properlyIdentifyActs': serializer.toJson<bool?>(properlyIdentifyActs),
      'additionalComments': serializer.toJson<String?>(additionalComments),
    };
  }

  SurvNonFoodSafetyData copyWith(
          {int? id,
          Value<RecordType?> recordType = const Value.absent(),
          Value<bool?> labelingVerified = const Value.absent(),
          Value<bool?> productsNotMisbranded = const Value.absent(),
          Value<bool?> properlyIdentifyActs = const Value.absent(),
          Value<String?> additionalComments = const Value.absent()}) =>
      SurvNonFoodSafetyData(
        id: id ?? this.id,
        recordType: recordType.present ? recordType.value : this.recordType,
        labelingVerified: labelingVerified.present
            ? labelingVerified.value
            : this.labelingVerified,
        productsNotMisbranded: productsNotMisbranded.present
            ? productsNotMisbranded.value
            : this.productsNotMisbranded,
        properlyIdentifyActs: properlyIdentifyActs.present
            ? properlyIdentifyActs.value
            : this.properlyIdentifyActs,
        additionalComments: additionalComments.present
            ? additionalComments.value
            : this.additionalComments,
      );
  @override
  String toString() {
    return (StringBuffer('SurvNonFoodSafetyData(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('labelingVerified: $labelingVerified, ')
          ..write('productsNotMisbranded: $productsNotMisbranded, ')
          ..write('properlyIdentifyActs: $properlyIdentifyActs, ')
          ..write('additionalComments: $additionalComments')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, recordType, labelingVerified,
      productsNotMisbranded, properlyIdentifyActs, additionalComments);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SurvNonFoodSafetyData &&
          other.id == this.id &&
          other.recordType == this.recordType &&
          other.labelingVerified == this.labelingVerified &&
          other.productsNotMisbranded == this.productsNotMisbranded &&
          other.properlyIdentifyActs == this.properlyIdentifyActs &&
          other.additionalComments == this.additionalComments);
}

class SurvNonFoodSafetyCompanion
    extends UpdateCompanion<SurvNonFoodSafetyData> {
  final Value<int> id;
  final Value<RecordType?> recordType;
  final Value<bool?> labelingVerified;
  final Value<bool?> productsNotMisbranded;
  final Value<bool?> properlyIdentifyActs;
  final Value<String?> additionalComments;
  final Value<int> rowid;
  const SurvNonFoodSafetyCompanion({
    this.id = const Value.absent(),
    this.recordType = const Value.absent(),
    this.labelingVerified = const Value.absent(),
    this.productsNotMisbranded = const Value.absent(),
    this.properlyIdentifyActs = const Value.absent(),
    this.additionalComments = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SurvNonFoodSafetyCompanion.insert({
    required int id,
    this.recordType = const Value.absent(),
    this.labelingVerified = const Value.absent(),
    this.productsNotMisbranded = const Value.absent(),
    this.properlyIdentifyActs = const Value.absent(),
    this.additionalComments = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<SurvNonFoodSafetyData> custom({
    Expression<int>? id,
    Expression<int>? recordType,
    Expression<bool>? labelingVerified,
    Expression<bool>? productsNotMisbranded,
    Expression<bool>? properlyIdentifyActs,
    Expression<String>? additionalComments,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordType != null) 'record_type': recordType,
      if (labelingVerified != null) 'labeling_verified': labelingVerified,
      if (productsNotMisbranded != null)
        'products_not_misbranded': productsNotMisbranded,
      if (properlyIdentifyActs != null)
        'properly_identify_acts': properlyIdentifyActs,
      if (additionalComments != null) 'additional_comments': additionalComments,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SurvNonFoodSafetyCompanion copyWith(
      {Value<int>? id,
      Value<RecordType?>? recordType,
      Value<bool?>? labelingVerified,
      Value<bool?>? productsNotMisbranded,
      Value<bool?>? properlyIdentifyActs,
      Value<String?>? additionalComments,
      Value<int>? rowid}) {
    return SurvNonFoodSafetyCompanion(
      id: id ?? this.id,
      recordType: recordType ?? this.recordType,
      labelingVerified: labelingVerified ?? this.labelingVerified,
      productsNotMisbranded:
          productsNotMisbranded ?? this.productsNotMisbranded,
      properlyIdentifyActs: properlyIdentifyActs ?? this.properlyIdentifyActs,
      additionalComments: additionalComments ?? this.additionalComments,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordType.present) {
      final converter = $SurvNonFoodSafetyTable.$converterrecordTypen;

      map['record_type'] = Variable<int>(converter.toSql(recordType.value));
    }
    if (labelingVerified.present) {
      map['labeling_verified'] = Variable<bool>(labelingVerified.value);
    }
    if (productsNotMisbranded.present) {
      map['products_not_misbranded'] =
          Variable<bool>(productsNotMisbranded.value);
    }
    if (properlyIdentifyActs.present) {
      map['properly_identify_acts'] =
          Variable<bool>(properlyIdentifyActs.value);
    }
    if (additionalComments.present) {
      map['additional_comments'] = Variable<String>(additionalComments.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SurvNonFoodSafetyCompanion(')
          ..write('id: $id, ')
          ..write('recordType: $recordType, ')
          ..write('labelingVerified: $labelingVerified, ')
          ..write('productsNotMisbranded: $productsNotMisbranded, ')
          ..write('properlyIdentifyActs: $properlyIdentifyActs, ')
          ..write('additionalComments: $additionalComments, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class FirmSnapshotViewData extends DataClass {
  final int? firmId;
  final String? name;
  final String? primaryBusinessType;
  final int? creatorId;
  final int? recordStatus;
  final DateTime? datePerformed;
  const FirmSnapshotViewData(
      {this.firmId,
      this.name,
      this.primaryBusinessType,
      this.creatorId,
      this.recordStatus,
      this.datePerformed});
  factory FirmSnapshotViewData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FirmSnapshotViewData(
      firmId: serializer.fromJson<int?>(json['firmId']),
      name: serializer.fromJson<String?>(json['name']),
      primaryBusinessType:
          serializer.fromJson<String?>(json['primaryBusinessType']),
      creatorId: serializer.fromJson<int?>(json['creatorId']),
      recordStatus: serializer.fromJson<int?>(json['recordStatus']),
      datePerformed: serializer.fromJson<DateTime?>(json['datePerformed']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'firmId': serializer.toJson<int?>(firmId),
      'name': serializer.toJson<String?>(name),
      'primaryBusinessType': serializer.toJson<String?>(primaryBusinessType),
      'creatorId': serializer.toJson<int?>(creatorId),
      'recordStatus': serializer.toJson<int?>(recordStatus),
      'datePerformed': serializer.toJson<DateTime?>(datePerformed),
    };
  }

  FirmSnapshotViewData copyWith(
          {Value<int?> firmId = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<String?> primaryBusinessType = const Value.absent(),
          Value<int?> creatorId = const Value.absent(),
          Value<int?> recordStatus = const Value.absent(),
          Value<DateTime?> datePerformed = const Value.absent()}) =>
      FirmSnapshotViewData(
        firmId: firmId.present ? firmId.value : this.firmId,
        name: name.present ? name.value : this.name,
        primaryBusinessType: primaryBusinessType.present
            ? primaryBusinessType.value
            : this.primaryBusinessType,
        creatorId: creatorId.present ? creatorId.value : this.creatorId,
        recordStatus:
            recordStatus.present ? recordStatus.value : this.recordStatus,
        datePerformed:
            datePerformed.present ? datePerformed.value : this.datePerformed,
      );
  @override
  String toString() {
    return (StringBuffer('FirmSnapshotViewData(')
          ..write('firmId: $firmId, ')
          ..write('name: $name, ')
          ..write('primaryBusinessType: $primaryBusinessType, ')
          ..write('creatorId: $creatorId, ')
          ..write('recordStatus: $recordStatus, ')
          ..write('datePerformed: $datePerformed')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(firmId, name, primaryBusinessType, creatorId,
      recordStatus, datePerformed);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FirmSnapshotViewData &&
          other.firmId == this.firmId &&
          other.name == this.name &&
          other.primaryBusinessType == this.primaryBusinessType &&
          other.creatorId == this.creatorId &&
          other.recordStatus == this.recordStatus &&
          other.datePerformed == this.datePerformed);
}

class $FirmSnapshotViewView
    extends ViewInfo<$FirmSnapshotViewView, FirmSnapshotViewData>
    implements HasResultSet {
  final String? _alias;
  @override
  final _$DomainDatabase attachedDatabase;
  $FirmSnapshotViewView(this.attachedDatabase, [this._alias]);
  $FirmTable get firm => attachedDatabase.firm.createAlias('t0');
  $SurvTable get surv => attachedDatabase.surv.createAlias('t1');
  $FirmGeneralInfoTable get firmGeneralInfo =>
      attachedDatabase.firmGeneralInfo.createAlias('t2');
  $SurvGeneralInfoTable get survGeneralInfo =>
      attachedDatabase.survGeneralInfo.createAlias('t3');
  @override
  List<GeneratedColumn> get $columns => [
        firmId,
        name,
        primaryBusinessType,
        creatorId,
        recordStatus,
        datePerformed
      ];
  @override
  String get aliasedName => _alias ?? entityName;
  @override
  String get entityName => 'firm_snapshot_view';
  @override
  Map<SqlDialect, String>? get createViewStatements => null;
  @override
  $FirmSnapshotViewView get asDslTable => this;
  @override
  FirmSnapshotViewData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FirmSnapshotViewData(
      firmId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}firm_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      primaryBusinessType: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}primary_business_type']),
      creatorId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}creator_id']),
      recordStatus: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}record_status']),
      datePerformed: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}date_performed']),
    );
  }

  late final GeneratedColumn<int> firmId = GeneratedColumn<int>(
      'firm_id', aliasedName, true,
      generatedAs: GeneratedAs(firm.id, false), type: DriftSqlType.int);
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      generatedAs: GeneratedAs(firmGeneralInfo.name, false),
      type: DriftSqlType.string);
  late final GeneratedColumn<String> primaryBusinessType =
      GeneratedColumn<String>('primary_business_type', aliasedName, true,
          generatedAs: GeneratedAs(firmGeneralInfo.primaryBusinessType, false),
          type: DriftSqlType.string);
  late final GeneratedColumn<int> creatorId = GeneratedColumn<int>(
      'creator_id', aliasedName, true,
      generatedAs: GeneratedAs(firm.creatorId, false), type: DriftSqlType.int);
  late final GeneratedColumn<int> recordStatus = GeneratedColumn<int>(
      'record_status', aliasedName, true,
      generatedAs: GeneratedAs(firm.recordStatus, false),
      type: DriftSqlType.int);
  late final GeneratedColumn<DateTime> datePerformed =
      GeneratedColumn<DateTime>('date_performed', aliasedName, true,
          generatedAs: GeneratedAs(survGeneralInfo.datePerformed, false),
          type: DriftSqlType.dateTime);
  @override
  $FirmSnapshotViewView createAlias(String alias) {
    return $FirmSnapshotViewView(attachedDatabase, alias);
  }

  @override
  Query? get query => (attachedDatabase.selectOnly(firm)..addColumns($columns))
          .join([innerJoin(firm, firm.id.equalsExp(firmGeneralInfo.id))]).join([
        innerJoin(surv, surv.id.equalsExp(survGeneralInfo.id))
      ]).join([innerJoin(surv, surv.firmId.equalsExp(firm.id))]);
  @override
  Set<String> get readTables =>
      const {'firm', 'surv', 'firm_general_info', 'surv_general_info'};
}

class RecentSurvsViewData extends DataClass {
  final int id;
  final DateTime? datePerformed;
  final int? firmId;
  final String? name;
  const RecentSurvsViewData(
      {required this.id, this.datePerformed, this.firmId, this.name});
  factory RecentSurvsViewData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecentSurvsViewData(
      id: serializer.fromJson<int>(json['id']),
      datePerformed: serializer.fromJson<DateTime?>(json['datePerformed']),
      firmId: serializer.fromJson<int?>(json['firmId']),
      name: serializer.fromJson<String?>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'datePerformed': serializer.toJson<DateTime?>(datePerformed),
      'firmId': serializer.toJson<int?>(firmId),
      'name': serializer.toJson<String?>(name),
    };
  }

  RecentSurvsViewData copyWith(
          {int? id,
          Value<DateTime?> datePerformed = const Value.absent(),
          Value<int?> firmId = const Value.absent(),
          Value<String?> name = const Value.absent()}) =>
      RecentSurvsViewData(
        id: id ?? this.id,
        datePerformed:
            datePerformed.present ? datePerformed.value : this.datePerformed,
        firmId: firmId.present ? firmId.value : this.firmId,
        name: name.present ? name.value : this.name,
      );
  @override
  String toString() {
    return (StringBuffer('RecentSurvsViewData(')
          ..write('id: $id, ')
          ..write('datePerformed: $datePerformed, ')
          ..write('firmId: $firmId, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, datePerformed, firmId, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecentSurvsViewData &&
          other.id == this.id &&
          other.datePerformed == this.datePerformed &&
          other.firmId == this.firmId &&
          other.name == this.name);
}

class $RecentSurvsViewView
    extends ViewInfo<$RecentSurvsViewView, RecentSurvsViewData>
    implements HasResultSet {
  final String? _alias;
  @override
  final _$DomainDatabase attachedDatabase;
  $RecentSurvsViewView(this.attachedDatabase, [this._alias]);
  $SurvTable get surv => attachedDatabase.surv.createAlias('t0');
  $FirmGeneralInfoTable get firmGeneralInfo =>
      attachedDatabase.firmGeneralInfo.createAlias('t1');
  $SurvGeneralInfoTable get survGeneralInfo =>
      attachedDatabase.survGeneralInfo.createAlias('t2');
  @override
  List<GeneratedColumn> get $columns => [id, datePerformed, firmId, name];
  @override
  String get aliasedName => _alias ?? entityName;
  @override
  String get entityName => 'recent_survs_view';
  @override
  Map<SqlDialect, String>? get createViewStatements => null;
  @override
  $RecentSurvsViewView get asDslTable => this;
  @override
  RecentSurvsViewData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecentSurvsViewData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      datePerformed: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}date_performed']),
      firmId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}firm_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
    );
  }

  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      generatedAs: GeneratedAs(surv.id, false), type: DriftSqlType.int);
  late final GeneratedColumn<DateTime> datePerformed =
      GeneratedColumn<DateTime>('date_performed', aliasedName, true,
          generatedAs: GeneratedAs(survGeneralInfo.datePerformed, false),
          type: DriftSqlType.dateTime);
  late final GeneratedColumn<int> firmId = GeneratedColumn<int>(
      'firm_id', aliasedName, true,
      generatedAs: GeneratedAs(surv.firmId, false), type: DriftSqlType.int);
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      generatedAs: GeneratedAs(firmGeneralInfo.name, false),
      type: DriftSqlType.string);
  @override
  $RecentSurvsViewView createAlias(String alias) {
    return $RecentSurvsViewView(attachedDatabase, alias);
  }

  @override
  Query? get query => (attachedDatabase.selectOnly(surv)..addColumns($columns))
      .join([innerJoin(surv, surv.firmId.equalsExp(firmGeneralInfo.id))]).join(
          [innerJoin(surv, surv.id.equalsExp(survGeneralInfo.id))]);
  @override
  Set<String> get readTables =>
      const {'surv', 'firm_general_info', 'surv_general_info'};
}

class SurvSnapshotViewData extends DataClass {
  final int id;
  final DateTime? datePerformed;
  final int? firmId;
  final String? name;
  final int? creatorId;
  final RecordStatus? recordStatus;
  const SurvSnapshotViewData(
      {required this.id,
      this.datePerformed,
      this.firmId,
      this.name,
      this.creatorId,
      this.recordStatus});
  factory SurvSnapshotViewData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SurvSnapshotViewData(
      id: serializer.fromJson<int>(json['id']),
      datePerformed: serializer.fromJson<DateTime?>(json['datePerformed']),
      firmId: serializer.fromJson<int?>(json['firmId']),
      name: serializer.fromJson<String?>(json['name']),
      creatorId: serializer.fromJson<int?>(json['creatorId']),
      recordStatus: $SurvTable.$converterrecordStatusn
          .fromJson(serializer.fromJson<int?>(json['recordStatus'])),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'datePerformed': serializer.toJson<DateTime?>(datePerformed),
      'firmId': serializer.toJson<int?>(firmId),
      'name': serializer.toJson<String?>(name),
      'creatorId': serializer.toJson<int?>(creatorId),
      'recordStatus': serializer.toJson<int?>(
          $SurvTable.$converterrecordStatusn.toJson(recordStatus)),
    };
  }

  SurvSnapshotViewData copyWith(
          {int? id,
          Value<DateTime?> datePerformed = const Value.absent(),
          Value<int?> firmId = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<int?> creatorId = const Value.absent(),
          Value<RecordStatus?> recordStatus = const Value.absent()}) =>
      SurvSnapshotViewData(
        id: id ?? this.id,
        datePerformed:
            datePerformed.present ? datePerformed.value : this.datePerformed,
        firmId: firmId.present ? firmId.value : this.firmId,
        name: name.present ? name.value : this.name,
        creatorId: creatorId.present ? creatorId.value : this.creatorId,
        recordStatus:
            recordStatus.present ? recordStatus.value : this.recordStatus,
      );
  @override
  String toString() {
    return (StringBuffer('SurvSnapshotViewData(')
          ..write('id: $id, ')
          ..write('datePerformed: $datePerformed, ')
          ..write('firmId: $firmId, ')
          ..write('name: $name, ')
          ..write('creatorId: $creatorId, ')
          ..write('recordStatus: $recordStatus')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, datePerformed, firmId, name, creatorId, recordStatus);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SurvSnapshotViewData &&
          other.id == this.id &&
          other.datePerformed == this.datePerformed &&
          other.firmId == this.firmId &&
          other.name == this.name &&
          other.creatorId == this.creatorId &&
          other.recordStatus == this.recordStatus);
}

class $SurvSnapshotViewView
    extends ViewInfo<$SurvSnapshotViewView, SurvSnapshotViewData>
    implements HasResultSet {
  final String? _alias;
  @override
  final _$DomainDatabase attachedDatabase;
  $SurvSnapshotViewView(this.attachedDatabase, [this._alias]);
  $SurvTable get surv => attachedDatabase.surv.createAlias('t0');
  $FirmGeneralInfoTable get firmGeneralInfo =>
      attachedDatabase.firmGeneralInfo.createAlias('t1');
  $SurvGeneralInfoTable get survGeneralInfo =>
      attachedDatabase.survGeneralInfo.createAlias('t2');
  @override
  List<GeneratedColumn> get $columns =>
      [id, datePerformed, firmId, name, creatorId, recordStatus];
  @override
  String get aliasedName => _alias ?? entityName;
  @override
  String get entityName => 'surv_snapshot_view';
  @override
  Map<SqlDialect, String>? get createViewStatements => null;
  @override
  $SurvSnapshotViewView get asDslTable => this;
  @override
  SurvSnapshotViewData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SurvSnapshotViewData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      datePerformed: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}date_performed']),
      firmId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}firm_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      creatorId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}creator_id']),
      recordStatus: $SurvTable.$converterrecordStatusn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}record_status'])),
    );
  }

  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      generatedAs: GeneratedAs(surv.id, false), type: DriftSqlType.int);
  late final GeneratedColumn<DateTime> datePerformed =
      GeneratedColumn<DateTime>('date_performed', aliasedName, true,
          generatedAs: GeneratedAs(survGeneralInfo.datePerformed, false),
          type: DriftSqlType.dateTime);
  late final GeneratedColumn<int> firmId = GeneratedColumn<int>(
      'firm_id', aliasedName, true,
      generatedAs: GeneratedAs(surv.firmId, false), type: DriftSqlType.int);
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      generatedAs: GeneratedAs(firmGeneralInfo.name, false),
      type: DriftSqlType.string);
  late final GeneratedColumn<int> creatorId = GeneratedColumn<int>(
      'creator_id', aliasedName, true,
      generatedAs: GeneratedAs(surv.creatorId, false), type: DriftSqlType.int);
  late final GeneratedColumnWithTypeConverter<RecordStatus?, int> recordStatus =
      GeneratedColumn<int>('record_status', aliasedName, true,
              generatedAs: GeneratedAs(surv.recordStatus, false),
              type: DriftSqlType.int)
          .withConverter<RecordStatus?>($SurvTable.$converterrecordStatusn);
  @override
  $SurvSnapshotViewView createAlias(String alias) {
    return $SurvSnapshotViewView(attachedDatabase, alias);
  }

  @override
  Query? get query => (attachedDatabase.selectOnly(surv)..addColumns($columns))
      .join([innerJoin(surv, surv.firmId.equalsExp(firmGeneralInfo.id))]).join(
          [innerJoin(surv, surv.id.equalsExp(survGeneralInfo.id))]);
  @override
  Set<String> get readTables =>
      const {'surv', 'firm_general_info', 'surv_general_info'};
}

abstract class _$DomainDatabase extends GeneratedDatabase {
  _$DomainDatabase(QueryExecutor e) : super(e);
  late final $ContactTable contact = $ContactTable(this);
  late final $FirmTable firm = $FirmTable(this);
  late final $FirmAdditionalInfoTable firmAdditionalInfo =
      $FirmAdditionalInfoTable(this);
  late final $FirmGeneralInfoTable firmGeneralInfo =
      $FirmGeneralInfoTable(this);
  late final $FirmManagingOfficialTable firmManagingOfficial =
      $FirmManagingOfficialTable(this);
  late final $FirmOrganizationStructTable firmOrganizationStruct =
      $FirmOrganizationStructTable(this);
  late final $FirmOwnerInfoTable firmOwnerInfo = $FirmOwnerInfoTable(this);
  late final $FirmProductInfoTable firmProductInfo =
      $FirmProductInfoTable(this);
  late final $LocalIdTable localId = $LocalIdTable(this);
  late final $PestControlTable pestControl = $PestControlTable(this);
  late final $PhysicalLocationRefTable physicalLocationRef =
      $PhysicalLocationRefTable(this);
  late final $PhysicalLocationTable physicalLocation =
      $PhysicalLocationTable(this);
  late final $SurvTable surv = $SurvTable(this);
  late final $SurvAdditionalInfoTable survAdditionalInfo =
      $SurvAdditionalInfoTable(this);
  late final $SurvGeneralInfoTable survGeneralInfo =
      $SurvGeneralInfoTable(this);
  late final $SurvFoodDefenseTable survFoodDefense =
      $SurvFoodDefenseTable(this);
  late final $SurvFoodSafetyTable survFoodSafety = $SurvFoodSafetyTable(this);
  late final $SurvImportedProductTable survImportedProduct =
      $SurvImportedProductTable(this);
  late final $SurvSamplingInfoTable survSamplingInfo =
      $SurvSamplingInfoTable(this);
  late final $SurvOrderVerificationTable survOrderVerification =
      $SurvOrderVerificationTable(this);
  late final $SurvCustomExemptReviewTable survCustomExemptReview =
      $SurvCustomExemptReviewTable(this);
  late final $SurvShellEggTable survShellEgg = $SurvShellEggTable(this);
  late final $SurvNonFoodSafetyTable survNonFoodSafety =
      $SurvNonFoodSafetyTable(this);
  late final $FirmSnapshotViewView firmSnapshotView =
      $FirmSnapshotViewView(this);
  late final $RecentSurvsViewView recentSurvsView = $RecentSurvsViewView(this);
  late final $SurvSnapshotViewView survSnapshotView =
      $SurvSnapshotViewView(this);
  late final Index firmName =
      Index('firm_name', 'CREATE INDEX firm_name ON firm_general_info (name)');
  late final Index physicalLocationAddress = Index('physical_location_address',
      'CREATE UNIQUE INDEX physical_location_address ON physical_location (address1, city, state_code, zip_code)');
  late final Index survFirmId =
      Index('surv_firm_id', 'CREATE INDEX surv_firm_id ON surv (firm_id)');
  late final FirmDao firmDao = FirmDao(this as DomainDatabase);
  late final SearchDao searchDao = SearchDao(this as DomainDatabase);
  late final LocationDao locationDao = LocationDao(this as DomainDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        contact,
        firm,
        firmAdditionalInfo,
        firmGeneralInfo,
        firmManagingOfficial,
        firmOrganizationStruct,
        firmOwnerInfo,
        firmProductInfo,
        localId,
        pestControl,
        physicalLocationRef,
        physicalLocation,
        surv,
        survAdditionalInfo,
        survGeneralInfo,
        survFoodDefense,
        survFoodSafety,
        survImportedProduct,
        survSamplingInfo,
        survOrderVerification,
        survCustomExemptReview,
        survShellEgg,
        survNonFoodSafety,
        firmSnapshotView,
        recentSurvsView,
        survSnapshotView,
        firmName,
        physicalLocationAddress,
        survFirmId
      ];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}
