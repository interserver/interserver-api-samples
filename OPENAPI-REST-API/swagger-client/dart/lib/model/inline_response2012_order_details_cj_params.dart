part of swagger.api;

class InlineResponse2012OrderDetailsCjParams {
  
  int containerTagId = null;

  int CID = null;

  String OID = null;

  int TYPE = null;

  String iTEM1 = null;

  int aMT1 = null;

  int qTY1 = null;

  String CURRENCY = null;

  InlineResponse2012OrderDetailsCjParams();

  @override
  String toString() {
    return 'InlineResponse2012OrderDetailsCjParams[containerTagId=$containerTagId, CID=$CID, OID=$OID, TYPE=$TYPE, iTEM1=$iTEM1, aMT1=$aMT1, qTY1=$qTY1, CURRENCY=$CURRENCY, ]';
  }

  InlineResponse2012OrderDetailsCjParams.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse2012OrderDetailsCjParams> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2012OrderDetailsCjParams>() : json.map((value) => new InlineResponse2012OrderDetailsCjParams.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2012OrderDetailsCjParams> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2012OrderDetailsCjParams>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse2012OrderDetailsCjParams.fromJson(value));
    }
    return map;
  }
}
