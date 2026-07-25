part of swagger.api;

class ServerOrderIP {
  /* IP ID. */
  String id = null;
/* IP price. */
  int price = null;
/* IP image. */
  String img = null;
/* Short description of the IP. */
  String shortDesc = null;
/* Long description of the IP. */
  String longDesc = null;
/* Quantity of IPs. */
  String qty = null;
/* Monthly price. */
  int monthlyPrice = null;
/* Display of IP price. */
  String priceDisplay = null;
/* Display of monthly IP price. */
  String monthlyPriceDisplay = null;

  ServerOrderIP();

  @override
  String toString() {
    return 'ServerOrderIP[id=$id, price=$price, img=$img, shortDesc=$shortDesc, longDesc=$longDesc, qty=$qty, monthlyPrice=$monthlyPrice, priceDisplay=$priceDisplay, monthlyPriceDisplay=$monthlyPriceDisplay, ]';
  }

  ServerOrderIP.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    price = json['price'];
    img = json['img'];
    shortDesc = json['short_desc'];
    longDesc = json['long_desc'];
    qty = json['qty'];
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
      'qty': qty,
      'monthly_price': monthlyPrice,
      'price_display': priceDisplay,
      'monthly_price_display': monthlyPriceDisplay
     };
  }

  static List<ServerOrderIP> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerOrderIP>() : json.map((value) => new ServerOrderIP.fromJson(value)).toList();
  }

  static Map<String, ServerOrderIP> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerOrderIP>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerOrderIP.fromJson(value));
    }
    return map;
  }
}
