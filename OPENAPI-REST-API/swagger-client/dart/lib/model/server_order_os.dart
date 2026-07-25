part of swagger.api;

class ServerOrderOS {
  /* Operating System ID. */
  String id = null;
/* Operating System price. */
  int price = null;
/* Operating System image. */
  String img = null;
/* Short description of the OS. */
  String shortDesc = null;
/* Long description of the OS. */
  String longDesc = null;
/* Monthly price. */
  int monthlyPrice = null;
/* Active status. */
  String active = null;
/* Display of OS price. */
  String priceDisplay = null;
/* Display of monthly OS price. */
  String monthlyPriceDisplay = null;

  ServerOrderOS();

  @override
  String toString() {
    return 'ServerOrderOS[id=$id, price=$price, img=$img, shortDesc=$shortDesc, longDesc=$longDesc, monthlyPrice=$monthlyPrice, active=$active, priceDisplay=$priceDisplay, monthlyPriceDisplay=$monthlyPriceDisplay, ]';
  }

  ServerOrderOS.fromJson(Map<String, dynamic> json) {
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

  static List<ServerOrderOS> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerOrderOS>() : json.map((value) => new ServerOrderOS.fromJson(value)).toList();
  }

  static Map<String, ServerOrderOS> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerOrderOS>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerOrderOS.fromJson(value));
    }
    return map;
  }
}
