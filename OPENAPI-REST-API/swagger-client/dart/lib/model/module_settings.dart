part of swagger.api;

class ModuleSettings {
  
  int SERVICE_ID_OFFSET = null;

  bool USE_REPEAT_INVOICE = null;

  bool USE_PACKAGES = null;

  int BILLING_DAYS_OFFSET = null;

  String IMGNAME = null;

  int REPEAT_BILLING_METHOD = null;

  int DELETE_PENDING_DAYS = null;

  int SUSPEND_DAYS = null;

  int SUSPEND_WARNING_DAYS = null;

  String TITLE = null;

  String MENUNAME = null;

  String EMAIL_FROM = null;

  String TBLNAME = null;

  String TABLE = null;

  String TITLE_FIELD = null;

  String tITLEFIELD2 = null;

  String tITLEFIELD3 = null;

  String PREFIX = null;

  ModuleSettings();

  @override
  String toString() {
    return 'ModuleSettings[SERVICE_ID_OFFSET=$SERVICE_ID_OFFSET, USE_REPEAT_INVOICE=$USE_REPEAT_INVOICE, USE_PACKAGES=$USE_PACKAGES, BILLING_DAYS_OFFSET=$BILLING_DAYS_OFFSET, IMGNAME=$IMGNAME, REPEAT_BILLING_METHOD=$REPEAT_BILLING_METHOD, DELETE_PENDING_DAYS=$DELETE_PENDING_DAYS, SUSPEND_DAYS=$SUSPEND_DAYS, SUSPEND_WARNING_DAYS=$SUSPEND_WARNING_DAYS, TITLE=$TITLE, MENUNAME=$MENUNAME, EMAIL_FROM=$EMAIL_FROM, TBLNAME=$TBLNAME, TABLE=$TABLE, TITLE_FIELD=$TITLE_FIELD, tITLEFIELD2=$tITLEFIELD2, tITLEFIELD3=$tITLEFIELD3, PREFIX=$PREFIX, ]';
  }

  ModuleSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    SERVICE_ID_OFFSET = json['SERVICE_ID_OFFSET'];
    USE_REPEAT_INVOICE = json['USE_REPEAT_INVOICE'];
    USE_PACKAGES = json['USE_PACKAGES'];
    BILLING_DAYS_OFFSET = json['BILLING_DAYS_OFFSET'];
    IMGNAME = json['IMGNAME'];
    REPEAT_BILLING_METHOD = json['REPEAT_BILLING_METHOD'];
    DELETE_PENDING_DAYS = json['DELETE_PENDING_DAYS'];
    SUSPEND_DAYS = json['SUSPEND_DAYS'];
    SUSPEND_WARNING_DAYS = json['SUSPEND_WARNING_DAYS'];
    TITLE = json['TITLE'];
    MENUNAME = json['MENUNAME'];
    EMAIL_FROM = json['EMAIL_FROM'];
    TBLNAME = json['TBLNAME'];
    TABLE = json['TABLE'];
    TITLE_FIELD = json['TITLE_FIELD'];
    tITLEFIELD2 = json['TITLE_FIELD2'];
    tITLEFIELD3 = json['TITLE_FIELD3'];
    PREFIX = json['PREFIX'];
  }

  Map<String, dynamic> toJson() {
    return {
      'SERVICE_ID_OFFSET': SERVICE_ID_OFFSET,
      'USE_REPEAT_INVOICE': USE_REPEAT_INVOICE,
      'USE_PACKAGES': USE_PACKAGES,
      'BILLING_DAYS_OFFSET': BILLING_DAYS_OFFSET,
      'IMGNAME': IMGNAME,
      'REPEAT_BILLING_METHOD': REPEAT_BILLING_METHOD,
      'DELETE_PENDING_DAYS': DELETE_PENDING_DAYS,
      'SUSPEND_DAYS': SUSPEND_DAYS,
      'SUSPEND_WARNING_DAYS': SUSPEND_WARNING_DAYS,
      'TITLE': TITLE,
      'MENUNAME': MENUNAME,
      'EMAIL_FROM': EMAIL_FROM,
      'TBLNAME': TBLNAME,
      'TABLE': TABLE,
      'TITLE_FIELD': TITLE_FIELD,
      'TITLE_FIELD2': tITLEFIELD2,
      'TITLE_FIELD3': tITLEFIELD3,
      'PREFIX': PREFIX
     };
  }

  static List<ModuleSettings> listFromJson(List<dynamic> json) {
    return json == null ? new List<ModuleSettings>() : json.map((value) => new ModuleSettings.fromJson(value)).toList();
  }

  static Map<String, ModuleSettings> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ModuleSettings>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ModuleSettings.fromJson(value));
    }
    return map;
  }
}
