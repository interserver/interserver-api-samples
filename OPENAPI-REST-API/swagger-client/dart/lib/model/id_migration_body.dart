part of swagger.api;

class IdMigrationBody {
  /* URL of the customer's current hosting portal. */
  String custPortal = null;
/* Registered email address at the current host. */
  String regEmail = null;
/* Password for the current hosting account. */
  String password = null;
/* URL of the current control panel. */
  String ctrlPanel = null;
/* FTP username at the current host. */
  String ftpUsername = null;
/* FTP password at the current host. */
  String ftpPassword = null;
/* Information about site traffic during migration. */
  String siteBusyMig = null;
/* Special requirements for the migration. */
  String splReqMig = null;
/* Whether domain registration assistance is needed. */
  String domainReg = null;
/* Data migration timing preference. */
  String dataMig = null;
/* Domain registrar portal URL. */
  String domainRegPortal = null;
/* Email for the domain registrar account. */
  String domainRegEmail = null;
/* Password for the domain registrar account. */
  String domainRegPassword = null;

  IdMigrationBody();

  @override
  String toString() {
    return 'IdMigrationBody[custPortal=$custPortal, regEmail=$regEmail, password=$password, ctrlPanel=$ctrlPanel, ftpUsername=$ftpUsername, ftpPassword=$ftpPassword, siteBusyMig=$siteBusyMig, splReqMig=$splReqMig, domainReg=$domainReg, dataMig=$dataMig, domainRegPortal=$domainRegPortal, domainRegEmail=$domainRegEmail, domainRegPassword=$domainRegPassword, ]';
  }

  IdMigrationBody.fromJson(Map<String, dynamic> json) {
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

  static List<IdMigrationBody> listFromJson(List<dynamic> json) {
    return json == null ? new List<IdMigrationBody>() : json.map((value) => new IdMigrationBody.fromJson(value)).toList();
  }

  static Map<String, IdMigrationBody> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IdMigrationBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IdMigrationBody.fromJson(value));
    }
    return map;
  }
}
