part of swagger.api;

class ServerOrderCPU {
  /* CPU ID. */
  String id = null;
/* CPU price. */
  int price = null;
/* CPU image. */
  String img = null;
/* Short description of the CPU. */
  String shortDesc = null;
/* Long description of the CPU. */
  String longDesc = null;
/* Location of the CPU. */
  String location = null;
/* Front Side Bus information. */
  String fsb = null;
/* Manufacturer information. */
  String manu = null;
/* CPU type. */
  String type = null;
/* CPU speed. */
  String speed = null;
/* Cache information. */
  String cache = null;
/* Active status. */
  String active = null;
/* Number of cores. */
  String numCores = null;
/* Number of CPUs. */
  String numCpus = null;
/* CPU benchmark. */
  String benchmark = null;
/* Monthly price. */
  int monthlyPrice = null;
/* Maximum RAM supported. */
  String maxRam = null;
/* Minimum RAM required. */
  String minRam = null;
/* Maximum LFF (Large Form Factor) supported. */
  String maxLff = null;
/* Maximum SFF (Small Form Factor) supported. */
  String maxSff = null;
/* Maximum NVMe drives supported. */
  String maxNve = null;
/* Visibility status. */
  String visible = null;
/* Hard drive IDs. */
  String hdIds = null;
/* Display of CPU price. */
  String priceDisplay = null;
/* Display of monthly CPU price. */
  String monthlyPriceDisplay = null;

  ServerOrderCPU();

  @override
  String toString() {
    return 'ServerOrderCPU[id=$id, price=$price, img=$img, shortDesc=$shortDesc, longDesc=$longDesc, location=$location, fsb=$fsb, manu=$manu, type=$type, speed=$speed, cache=$cache, active=$active, numCores=$numCores, numCpus=$numCpus, benchmark=$benchmark, monthlyPrice=$monthlyPrice, maxRam=$maxRam, minRam=$minRam, maxLff=$maxLff, maxSff=$maxSff, maxNve=$maxNve, visible=$visible, hdIds=$hdIds, priceDisplay=$priceDisplay, monthlyPriceDisplay=$monthlyPriceDisplay, ]';
  }

  ServerOrderCPU.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    price = json['price'];
    img = json['img'];
    shortDesc = json['short_desc'];
    longDesc = json['long_desc'];
    location = json['location'];
    fsb = json['fsb'];
    manu = json['manu'];
    type = json['type'];
    speed = json['speed'];
    cache = json['cache'];
    active = json['active'];
    numCores = json['num_cores'];
    numCpus = json['num_cpus'];
    benchmark = json['benchmark'];
    monthlyPrice = json['monthly_price'];
    maxRam = json['max_ram'];
    minRam = json['min_ram'];
    maxLff = json['max_lff'];
    maxSff = json['max_sff'];
    maxNve = json['max_nve'];
    visible = json['visible'];
    hdIds = json['hd_ids'];
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
      'location': location,
      'fsb': fsb,
      'manu': manu,
      'type': type,
      'speed': speed,
      'cache': cache,
      'active': active,
      'num_cores': numCores,
      'num_cpus': numCpus,
      'benchmark': benchmark,
      'monthly_price': monthlyPrice,
      'max_ram': maxRam,
      'min_ram': minRam,
      'max_lff': maxLff,
      'max_sff': maxSff,
      'max_nve': maxNve,
      'visible': visible,
      'hd_ids': hdIds,
      'price_display': priceDisplay,
      'monthly_price_display': monthlyPriceDisplay
     };
  }

  static List<ServerOrderCPU> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerOrderCPU>() : json.map((value) => new ServerOrderCPU.fromJson(value)).toList();
  }

  static Map<String, ServerOrderCPU> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerOrderCPU>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerOrderCPU.fromJson(value));
    }
    return map;
  }
}
