part of swagger.api;

class AccountInfoDataEmailSettings {
  
  String adminCcBadResponse = null;

  String adminMassCommunicationsTpl = null;

  AccountInfoDataEmailSettings();

  @override
  String toString() {
    return 'AccountInfoDataEmailSettings[adminCcBadResponse=$adminCcBadResponse, adminMassCommunicationsTpl=$adminMassCommunicationsTpl, ]';
  }

  AccountInfoDataEmailSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    adminCcBadResponse = json['admin/cc_bad_response'];
    adminMassCommunicationsTpl = json['admin/mass_communications.tpl'];
  }

  Map<String, dynamic> toJson() {
    return {
      'admin/cc_bad_response': adminCcBadResponse,
      'admin/mass_communications.tpl': adminMassCommunicationsTpl
     };
  }

  static List<AccountInfoDataEmailSettings> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountInfoDataEmailSettings>() : json.map((value) => new AccountInfoDataEmailSettings.fromJson(value)).toList();
  }

  static Map<String, AccountInfoDataEmailSettings> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountInfoDataEmailSettings>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountInfoDataEmailSettings.fromJson(value));
    }
    return map;
  }
}
