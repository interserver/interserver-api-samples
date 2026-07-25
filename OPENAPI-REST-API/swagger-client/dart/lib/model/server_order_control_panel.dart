part of swagger.api;

class ServerOrderControlPanel {
  /* Control Panel ID. */
  String id = null;
/* Control Panel price. */
  int price = null;
/* Control Panel image. */
  String img = null;
/* Short description of the control panel. */
  String shortDesc = null;
/* Long description of the control panel. */
  String longDesc = null;
/* OS types compatible with the control panel. */
  String osType = null;
/* Monthly price. */
  int monthlyPrice = null;
/* List of types. */
  List<String> types = [];
/* Display of control panel price. */
  String priceDisplay = null;
/* Display of monthly control panel price. */
  String monthlyPriceDisplay = null;

  ServerOrderControlPanel();

  @override
  String toString() {
    return 'ServerOrderControlPanel[id=$id, price=$price, img=$img, shortDesc=$shortDesc, longDesc=$longDesc, osType=$osType, monthlyPrice=$monthlyPrice, types=$types, priceDisplay=$priceDisplay, monthlyPriceDisplay=$monthlyPriceDisplay, ]';
  }

  ServerOrderControlPanel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    price = json['price'];
    img = json['img'];
    shortDesc = json['short_desc'];
    longDesc = json['long_desc'];
    osType = json['os_type'];
    monthlyPrice = json['monthly_price'];
    types = (json['types'] as List).map((item) => item as String).toList();
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
      'os_type': osType,
      'monthly_price': monthlyPrice,
      'types': types,
      'price_display': priceDisplay,
      'monthly_price_display': monthlyPriceDisplay
     };
  }

  static List<ServerOrderControlPanel> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerOrderControlPanel>() : json.map((value) => new ServerOrderControlPanel.fromJson(value)).toList();
  }

  static Map<String, ServerOrderControlPanel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerOrderControlPanel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerOrderControlPanel.fromJson(value));
    }
    return map;
  }
}
