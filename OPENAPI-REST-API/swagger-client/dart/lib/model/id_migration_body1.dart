part of swagger.api;

class IdMigrationBody1 {
  
  String custPortal = null;

  String regEmail = null;

  String password = null;

  String ctrlPanel = null;

  String ftpUsername = null;

  String ftpPassword = null;

  String siteBusyMig = null;

  String splReqMig = null;

  String domainReg = null;

  String dataMig = null;

  String domainRegPortal = null;

  String domainRegEmail = null;

  String domainRegPassword = null;

  IdMigrationBody1();

  @override
  String toString() {
    return 'IdMigrationBody1[custPortal=$custPortal, regEmail=$regEmail, password=$password, ctrlPanel=$ctrlPanel, ftpUsername=$ftpUsername, ftpPassword=$ftpPassword, siteBusyMig=$siteBusyMig, splReqMig=$splReqMig, domainReg=$domainReg, dataMig=$dataMig, domainRegPortal=$domainRegPortal, domainRegEmail=$domainRegEmail, domainRegPassword=$domainRegPassword, ]';
  }

  IdMigrationBody1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    custPortal = json['custPortal'];
    regEmail = json['regEmail'];
    password = json['password'];
    ctrlPanel = json['ctrlPanel'];
    ftpUsername = json['ftpUsername'];
    ftpPassword = json['ftpPassword'];
    siteBusyMig = json['siteBusyMig'];
    splReqMig = json['splReqMig'];
    domainReg = json['domainReg'];
    dataMig = json['dataMig'];
    domainRegPortal = json['domainRegPortal'];
    domainRegEmail = json['domainRegEmail'];
    domainRegPassword = json['domainRegPassword'];
  }

  Map<String, dynamic> toJson() {
    return {
      'custPortal': custPortal,
      'regEmail': regEmail,
      'password': password,
      'ctrlPanel': ctrlPanel,
      'ftpUsername': ftpUsername,
      'ftpPassword': ftpPassword,
      'siteBusyMig': siteBusyMig,
      'splReqMig': splReqMig,
      'domainReg': domainReg,
      'dataMig': dataMig,
      'domainRegPortal': domainRegPortal,
      'domainRegEmail': domainRegEmail,
      'domainRegPassword': domainRegPassword
     };
  }

  static List<IdMigrationBody1> listFromJson(List<dynamic> json) {
    return json == null ? new List<IdMigrationBody1>() : json.map((value) => new IdMigrationBody1.fromJson(value)).toList();
  }

  static Map<String, IdMigrationBody1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IdMigrationBody1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IdMigrationBody1.fromJson(value));
    }
    return map;
  }
}
