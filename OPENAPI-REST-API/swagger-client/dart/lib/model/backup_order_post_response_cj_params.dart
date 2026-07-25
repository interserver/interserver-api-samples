part of swagger.api;

class BackupOrderPostResponseCjParams {
  
  String containerTagId = null;

  String CID = null;

  String OID = null;

  String TYPE = null;

  String iTEM1 = null;

  String aMT1 = null;

  int qTY1 = null;

  String CURRENCY = null;

  BackupOrderPostResponseCjParams();

  @override
  String toString() {
    return 'BackupOrderPostResponseCjParams[containerTagId=$containerTagId, CID=$CID, OID=$OID, TYPE=$TYPE, iTEM1=$iTEM1, aMT1=$aMT1, qTY1=$qTY1, CURRENCY=$CURRENCY, ]';
  }

  BackupOrderPostResponseCjParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    containerTagId = json['containerTagId'];
    CID = json['CID'];
    OID = json['OID'];
    TYPE = json['TYPE'];
    iTEM1 = json['ITEM1'];
    aMT1 = json['AMT1'];
    qTY1 = json['QTY1'];
    CURRENCY = json['CURRENCY'];
  }

  Map<String, dynamic> toJson() {
    return {
      'containerTagId': containerTagId,
      'CID': CID,
      'OID': OID,
      'TYPE': TYPE,
      'ITEM1': iTEM1,
      'AMT1': aMT1,
      'QTY1': qTY1,
      'CURRENCY': CURRENCY
     };
  }

  static List<BackupOrderPostResponseCjParams> listFromJson(List<dynamic> json) {
    return json == null ? new List<BackupOrderPostResponseCjParams>() : json.map((value) => new BackupOrderPostResponseCjParams.fromJson(value)).toList();
  }

  static Map<String, BackupOrderPostResponseCjParams> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BackupOrderPostResponseCjParams>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BackupOrderPostResponseCjParams.fromJson(value));
    }
    return map;
  }
}
