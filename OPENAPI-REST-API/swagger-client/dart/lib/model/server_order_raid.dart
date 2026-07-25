part of swagger.api;

class ServerOrderRAID {
  /* RAID ID. */
  String id = null;
/* RAID price. */
  int price = null;
/* RAID image. */
  String img = null;
/* Short description of the RAID. */
  String shortDesc = null;
/* Long description of the RAID. */
  String longDesc = null;
/* Monthly price. */
  int monthlyPrice = null;
/* Active status. */
  String active = null;
/* Display of RAID price. */
  String priceDisplay = null;
/* Display of monthly RAID price. */
  String monthlyPriceDisplay = null;

  ServerOrderRAID();

  @override
  String toString() {
    return 'ServerOrderRAID[id=$id, price=$price, img=$img, shortDesc=$shortDesc, longDesc=$longDesc, monthlyPrice=$monthlyPrice, active=$active, priceDisplay=$priceDisplay, monthlyPriceDisplay=$monthlyPriceDisplay, ]';
  }

  ServerOrderRAID.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    price = json['price'];
    img = json['img'];
    shortDesc = json['short_desc'];
    longDesc = json['long_desc'];
    monthlyPrice = json['monthly_price'];
    active = json['active'];
    priceDisplay = json['price_display'];
    monthlyPriceDisplay = json['monthly_price_display'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'price': price,
      'img': img,
      'short_desc': shortDesc,
      'long_desc': longDesc,
      'monthly_price': monthlyPrice,
      'active': active,
      'price_display': priceDisplay,
      'monthly_price_display': monthlyPriceDisplay
     };
  }

  static List<ServerOrderRAID> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerOrderRAID>() : json.map((value) => new ServerOrderRAID.fromJson(value)).toList();
  }

  static Map<String, ServerOrderRAID> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerOrderRAID>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerOrderRAID.fromJson(value));
    }
    return map;
  }
}
