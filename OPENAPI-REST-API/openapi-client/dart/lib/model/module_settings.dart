//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ModuleSettings {
  /// Returns a new [ModuleSettings] instance.
  ModuleSettings({
    required this.SERVICE_ID_OFFSET,
    required this.USE_REPEAT_INVOICE,
    required this.USE_PACKAGES,
    required this.BILLING_DAYS_OFFSET,
    required this.IMGNAME,
    required this.REPEAT_BILLING_METHOD,
    required this.DELETE_PENDING_DAYS,
    required this.SUSPEND_DAYS,
    required this.SUSPEND_WARNING_DAYS,
    required this.TITLE,
    required this.MENUNAME,
    required this.EMAIL_FROM,
    required this.TBLNAME,
    required this.TABLE,
    required this.TITLE_FIELD,
    required this.PREFIX,
    this.TITLE_FIELD2,
    this.TITLE_FIELD3,
  });

  int SERVICE_ID_OFFSET;

  bool USE_REPEAT_INVOICE;

  bool USE_PACKAGES;

  int BILLING_DAYS_OFFSET;

  String IMGNAME;

  int REPEAT_BILLING_METHOD;

  int DELETE_PENDING_DAYS;

  int SUSPEND_DAYS;

  int SUSPEND_WARNING_DAYS;

  String TITLE;

  String MENUNAME;

  String EMAIL_FROM;

  String TBLNAME;

  String TABLE;

  String TITLE_FIELD;

  String PREFIX;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? TITLE_FIELD2;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? TITLE_FIELD3;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModuleSettings &&
    other.SERVICE_ID_OFFSET == SERVICE_ID_OFFSET &&
    other.USE_REPEAT_INVOICE == USE_REPEAT_INVOICE &&
    other.USE_PACKAGES == USE_PACKAGES &&
    other.BILLING_DAYS_OFFSET == BILLING_DAYS_OFFSET &&
    other.IMGNAME == IMGNAME &&
    other.REPEAT_BILLING_METHOD == REPEAT_BILLING_METHOD &&
    other.DELETE_PENDING_DAYS == DELETE_PENDING_DAYS &&
    other.SUSPEND_DAYS == SUSPEND_DAYS &&
    other.SUSPEND_WARNING_DAYS == SUSPEND_WARNING_DAYS &&
    other.TITLE == TITLE &&
    other.MENUNAME == MENUNAME &&
    other.EMAIL_FROM == EMAIL_FROM &&
    other.TBLNAME == TBLNAME &&
    other.TABLE == TABLE &&
    other.TITLE_FIELD == TITLE_FIELD &&
    other.PREFIX == PREFIX &&
    other.TITLE_FIELD2 == TITLE_FIELD2 &&
    other.TITLE_FIELD3 == TITLE_FIELD3;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (SERVICE_ID_OFFSET.hashCode) +
    (USE_REPEAT_INVOICE.hashCode) +
    (USE_PACKAGES.hashCode) +
    (BILLING_DAYS_OFFSET.hashCode) +
    (IMGNAME.hashCode) +
    (REPEAT_BILLING_METHOD.hashCode) +
    (DELETE_PENDING_DAYS.hashCode) +
    (SUSPEND_DAYS.hashCode) +
    (SUSPEND_WARNING_DAYS.hashCode) +
    (TITLE.hashCode) +
    (MENUNAME.hashCode) +
    (EMAIL_FROM.hashCode) +
    (TBLNAME.hashCode) +
    (TABLE.hashCode) +
    (TITLE_FIELD.hashCode) +
    (PREFIX.hashCode) +
    (TITLE_FIELD2 == null ? 0 : TITLE_FIELD2!.hashCode) +
    (TITLE_FIELD3 == null ? 0 : TITLE_FIELD3!.hashCode);

  @override
  String toString() => 'ModuleSettings[SERVICE_ID_OFFSET=$SERVICE_ID_OFFSET, USE_REPEAT_INVOICE=$USE_REPEAT_INVOICE, USE_PACKAGES=$USE_PACKAGES, BILLING_DAYS_OFFSET=$BILLING_DAYS_OFFSET, IMGNAME=$IMGNAME, REPEAT_BILLING_METHOD=$REPEAT_BILLING_METHOD, DELETE_PENDING_DAYS=$DELETE_PENDING_DAYS, SUSPEND_DAYS=$SUSPEND_DAYS, SUSPEND_WARNING_DAYS=$SUSPEND_WARNING_DAYS, TITLE=$TITLE, MENUNAME=$MENUNAME, EMAIL_FROM=$EMAIL_FROM, TBLNAME=$TBLNAME, TABLE=$TABLE, TITLE_FIELD=$TITLE_FIELD, PREFIX=$PREFIX, TITLE_FIELD2=$TITLE_FIELD2, TITLE_FIELD3=$TITLE_FIELD3]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'SERVICE_ID_OFFSET'] = this.SERVICE_ID_OFFSET;
      json[r'USE_REPEAT_INVOICE'] = this.USE_REPEAT_INVOICE;
      json[r'USE_PACKAGES'] = this.USE_PACKAGES;
      json[r'BILLING_DAYS_OFFSET'] = this.BILLING_DAYS_OFFSET;
      json[r'IMGNAME'] = this.IMGNAME;
      json[r'REPEAT_BILLING_METHOD'] = this.REPEAT_BILLING_METHOD;
      json[r'DELETE_PENDING_DAYS'] = this.DELETE_PENDING_DAYS;
      json[r'SUSPEND_DAYS'] = this.SUSPEND_DAYS;
      json[r'SUSPEND_WARNING_DAYS'] = this.SUSPEND_WARNING_DAYS;
      json[r'TITLE'] = this.TITLE;
      json[r'MENUNAME'] = this.MENUNAME;
      json[r'EMAIL_FROM'] = this.EMAIL_FROM;
      json[r'TBLNAME'] = this.TBLNAME;
      json[r'TABLE'] = this.TABLE;
      json[r'TITLE_FIELD'] = this.TITLE_FIELD;
      json[r'PREFIX'] = this.PREFIX;
    if (this.TITLE_FIELD2 != null) {
      json[r'TITLE_FIELD2'] = this.TITLE_FIELD2;
    } else {
      json[r'TITLE_FIELD2'] = null;
    }
    if (this.TITLE_FIELD3 != null) {
      json[r'TITLE_FIELD3'] = this.TITLE_FIELD3;
    } else {
      json[r'TITLE_FIELD3'] = null;
    }
    return json;
  }

  /// Returns a new [ModuleSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModuleSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'SERVICE_ID_OFFSET'), 'Required key "ModuleSettings[SERVICE_ID_OFFSET]" is missing from JSON.');
        assert(json[r'SERVICE_ID_OFFSET'] != null, 'Required key "ModuleSettings[SERVICE_ID_OFFSET]" has a null value in JSON.');
        assert(json.containsKey(r'USE_REPEAT_INVOICE'), 'Required key "ModuleSettings[USE_REPEAT_INVOICE]" is missing from JSON.');
        assert(json[r'USE_REPEAT_INVOICE'] != null, 'Required key "ModuleSettings[USE_REPEAT_INVOICE]" has a null value in JSON.');
        assert(json.containsKey(r'USE_PACKAGES'), 'Required key "ModuleSettings[USE_PACKAGES]" is missing from JSON.');
        assert(json[r'USE_PACKAGES'] != null, 'Required key "ModuleSettings[USE_PACKAGES]" has a null value in JSON.');
        assert(json.containsKey(r'BILLING_DAYS_OFFSET'), 'Required key "ModuleSettings[BILLING_DAYS_OFFSET]" is missing from JSON.');
        assert(json[r'BILLING_DAYS_OFFSET'] != null, 'Required key "ModuleSettings[BILLING_DAYS_OFFSET]" has a null value in JSON.');
        assert(json.containsKey(r'IMGNAME'), 'Required key "ModuleSettings[IMGNAME]" is missing from JSON.');
        assert(json[r'IMGNAME'] != null, 'Required key "ModuleSettings[IMGNAME]" has a null value in JSON.');
        assert(json.containsKey(r'REPEAT_BILLING_METHOD'), 'Required key "ModuleSettings[REPEAT_BILLING_METHOD]" is missing from JSON.');
        assert(json[r'REPEAT_BILLING_METHOD'] != null, 'Required key "ModuleSettings[REPEAT_BILLING_METHOD]" has a null value in JSON.');
        assert(json.containsKey(r'DELETE_PENDING_DAYS'), 'Required key "ModuleSettings[DELETE_PENDING_DAYS]" is missing from JSON.');
        assert(json[r'DELETE_PENDING_DAYS'] != null, 'Required key "ModuleSettings[DELETE_PENDING_DAYS]" has a null value in JSON.');
        assert(json.containsKey(r'SUSPEND_DAYS'), 'Required key "ModuleSettings[SUSPEND_DAYS]" is missing from JSON.');
        assert(json[r'SUSPEND_DAYS'] != null, 'Required key "ModuleSettings[SUSPEND_DAYS]" has a null value in JSON.');
        assert(json.containsKey(r'SUSPEND_WARNING_DAYS'), 'Required key "ModuleSettings[SUSPEND_WARNING_DAYS]" is missing from JSON.');
        assert(json[r'SUSPEND_WARNING_DAYS'] != null, 'Required key "ModuleSettings[SUSPEND_WARNING_DAYS]" has a null value in JSON.');
        assert(json.containsKey(r'TITLE'), 'Required key "ModuleSettings[TITLE]" is missing from JSON.');
        assert(json[r'TITLE'] != null, 'Required key "ModuleSettings[TITLE]" has a null value in JSON.');
        assert(json.containsKey(r'MENUNAME'), 'Required key "ModuleSettings[MENUNAME]" is missing from JSON.');
        assert(json[r'MENUNAME'] != null, 'Required key "ModuleSettings[MENUNAME]" has a null value in JSON.');
        assert(json.containsKey(r'EMAIL_FROM'), 'Required key "ModuleSettings[EMAIL_FROM]" is missing from JSON.');
        assert(json[r'EMAIL_FROM'] != null, 'Required key "ModuleSettings[EMAIL_FROM]" has a null value in JSON.');
        assert(json.containsKey(r'TBLNAME'), 'Required key "ModuleSettings[TBLNAME]" is missing from JSON.');
        assert(json[r'TBLNAME'] != null, 'Required key "ModuleSettings[TBLNAME]" has a null value in JSON.');
        assert(json.containsKey(r'TABLE'), 'Required key "ModuleSettings[TABLE]" is missing from JSON.');
        assert(json[r'TABLE'] != null, 'Required key "ModuleSettings[TABLE]" has a null value in JSON.');
        assert(json.containsKey(r'TITLE_FIELD'), 'Required key "ModuleSettings[TITLE_FIELD]" is missing from JSON.');
        assert(json[r'TITLE_FIELD'] != null, 'Required key "ModuleSettings[TITLE_FIELD]" has a null value in JSON.');
        assert(json.containsKey(r'PREFIX'), 'Required key "ModuleSettings[PREFIX]" is missing from JSON.');
        assert(json[r'PREFIX'] != null, 'Required key "ModuleSettings[PREFIX]" has a null value in JSON.');
        return true;
      }());

      return ModuleSettings(
        SERVICE_ID_OFFSET: mapValueOfType<int>(json, r'SERVICE_ID_OFFSET')!,
        USE_REPEAT_INVOICE: mapValueOfType<bool>(json, r'USE_REPEAT_INVOICE')!,
        USE_PACKAGES: mapValueOfType<bool>(json, r'USE_PACKAGES')!,
        BILLING_DAYS_OFFSET: mapValueOfType<int>(json, r'BILLING_DAYS_OFFSET')!,
        IMGNAME: mapValueOfType<String>(json, r'IMGNAME')!,
        REPEAT_BILLING_METHOD: mapValueOfType<int>(json, r'REPEAT_BILLING_METHOD')!,
        DELETE_PENDING_DAYS: mapValueOfType<int>(json, r'DELETE_PENDING_DAYS')!,
        SUSPEND_DAYS: mapValueOfType<int>(json, r'SUSPEND_DAYS')!,
        SUSPEND_WARNING_DAYS: mapValueOfType<int>(json, r'SUSPEND_WARNING_DAYS')!,
        TITLE: mapValueOfType<String>(json, r'TITLE')!,
        MENUNAME: mapValueOfType<String>(json, r'MENUNAME')!,
        EMAIL_FROM: mapValueOfType<String>(json, r'EMAIL_FROM')!,
        TBLNAME: mapValueOfType<String>(json, r'TBLNAME')!,
        TABLE: mapValueOfType<String>(json, r'TABLE')!,
        TITLE_FIELD: mapValueOfType<String>(json, r'TITLE_FIELD')!,
        PREFIX: mapValueOfType<String>(json, r'PREFIX')!,
        TITLE_FIELD2: mapValueOfType<String>(json, r'TITLE_FIELD2'),
        TITLE_FIELD3: mapValueOfType<String>(json, r'TITLE_FIELD3'),
      );
    }
    return null;
  }

  static List<ModuleSettings> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModuleSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModuleSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModuleSettings> mapFromJson(dynamic json) {
    final map = <String, ModuleSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModuleSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModuleSettings-objects as value to a dart map
  static Map<String, List<ModuleSettings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModuleSettings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModuleSettings.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'SERVICE_ID_OFFSET',
    'USE_REPEAT_INVOICE',
    'USE_PACKAGES',
    'BILLING_DAYS_OFFSET',
    'IMGNAME',
    'REPEAT_BILLING_METHOD',
    'DELETE_PENDING_DAYS',
    'SUSPEND_DAYS',
    'SUSPEND_WARNING_DAYS',
    'TITLE',
    'MENUNAME',
    'EMAIL_FROM',
    'TBLNAME',
    'TABLE',
    'TITLE_FIELD',
    'PREFIX',
  };
}

