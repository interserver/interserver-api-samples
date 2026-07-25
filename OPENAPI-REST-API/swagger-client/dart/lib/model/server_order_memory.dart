part of swagger.api;

class ServerOrderMemory {
  /* Memory ID. */
  String id = null;
/* Memory price. */
  String price = null;
/* Memory image. */
  String img = null;
/* Short description of the memory. */
  String shortDesc = null;
/* Long description of the memory. */
  String longDesc = null;
/* Manufacturer information. */
  String manu = null;
/* Memory size. */
  String size = null;
/* Memory type. */
  String type = null;
/* Hidden status. */
  String hidden = null;
/* Monthly price. */
  int monthlyPrice = null;
/* Drive type. */
  String driveType = null;
/* Display of monthly memory price. */
  String monthlyPriceDisplay = null;

  ServerOrderMemory();

  @override
  String toString() {
    return 'ServerOrderMemory[id=$id, price=$price, img=$img, shortDesc=$shortDesc, longDesc=$longDesc, manu=$manu, size=$size, type=$type, hidden=$hidden, monthlyPrice=$monthlyPrice, driveType=$driveType, monthlyPriceDisplay=$monthlyPriceDisplay, ]';
  }

  ServerOrderMemory.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    price = json['price'];
    img = json['img'];
    shortDesc = json['short_desc'];
    longDesc = json['long_desc'];
    manu = json['manu'];
    size = json['size'];
    type = json['type'];
    hidden = json['hidden'];
    monthlyPrice = json['monthly_price'];
    driveType = json['drive_type'];
    monthlyPriceDisplay = json['monthly_price_display'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'price': price,
      'img': img,
      'short_desc': shortDesc,
      'long_desc': longDesc,
      'manu': manu,
      'size': size,
      'type': type,
      'hidden': hidden,
      'monthly_price': monthlyPrice,
      'drive_type': driveType,
      'monthly_price_display': monthlyPriceDisplay
     };
  }

  static List<ServerOrderMemory> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerOrderMemory>() : json.map((value) => new ServerOrderMemory.fromJson(value)).toList();
  }

  static Map<String, ServerOrderMemory> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerOrderMemory>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerOrderMemory.fromJson(value));
    }
    return map;
  }
}
