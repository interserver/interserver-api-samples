part of swagger.api;

class AccountSshKey {
  
  String sshKey = null;

  AccountSshKey();

  @override
  String toString() {
    return 'AccountSshKey[sshKey=$sshKey, ]';
  }

  AccountSshKey.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    sshKey = json['ssh_key'];
  }

  Map<String, dynamic> toJson() {
    return {
      'ssh_key': sshKey
     };
  }

  static List<AccountSshKey> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountSshKey>() : json.map((value) => new AccountSshKey.fromJson(value)).toList();
  }

  static Map<String, AccountSshKey> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountSshKey>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountSshKey.fromJson(value));
    }
    return map;
  }
}
