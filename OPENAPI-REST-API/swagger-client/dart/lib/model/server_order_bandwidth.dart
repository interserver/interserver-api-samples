part of swagger.api;

class ServerOrderBandwidth {
  /* Bandwidth ID. */
  String id = null;
/* Bandwidth price. */
  int price = null;
/* Bandwidth image. */
  String img = null;
/* Short description of the bandwidth. */
  String shortDesc = null;
/* Long description of the bandwidth. */
  String longDesc = null;
/* Bandwidth type. */
  String type = null;
/* Quantity of bandwidth. */
  String qty = null;
/* Active status. */
  String active = null;
/* Monthly price. */
  int monthlyPrice = null;
/* Display of bandwidth price. */
  String priceDisplay = null;
/* Display of monthly bandwidth price. */
  String monthlyPriceDisplay = null;

  ServerOrderBandwidth();

  @override
  String toString() {
    return 'ServerOrderBandwidth[id=$id, price=$price, img=$img, shortDesc=$shortDesc, longDesc=$longDesc, type=$type, qty=$qty, active=$active, monthlyPrice=$monthlyPrice, priceDisplay=$priceDisplay, monthlyPriceDisplay=$monthlyPriceDisplay, ]';
  }

  ServerOrderBandwidth.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    price = json['price'];
    img = json['img'];
    shortDesc = json['short_desc'];
    longDesc = json['long_desc'];
    type = json['type'];
    qty = json['qty'];
    active = json['active'];
    monthlyPrice = json['monthly_price'];
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
      'type': type,
      'qty': qty,
      'active': active,
      'monthly_price': monthlyPrice,
      'price_display': priceDisplay,
      'monthly_price_display': monthlyPriceDisplay
     };
  }

  static List<ServerOrderBandwidth> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerOrderBandwidth>() : json.map((value) => new ServerOrderBandwidth.fromJson(value)).toList();
  }

  static Map<String, ServerOrderBandwidth> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerOrderBandwidth>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerOrderBandwidth.fromJson(value));
    }
    return map;
  }
}
