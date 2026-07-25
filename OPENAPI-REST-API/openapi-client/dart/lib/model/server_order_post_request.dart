//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ServerOrderPostRequest {
  /// Returns a new [ServerOrderPostRequest] instance.
  ServerOrderPostRequest({
    required this.cpu,
    required this.hd,
    required this.memory,
    required this.bandwidth,
    required this.ips,
    required this.os,
    required this.cp,
    required this.raid,
    required this.region,
    required this.servername,
    required this.rootpass,
    required this.tos,
    this.comment = '',
  });

  /// CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options.
  int cpu;

  ServerOrderPostRequestHd hd;

  /// Memory configuration id from config_li.memory_li[cpu].
  int memory;

  /// Bandwidth configuration id from config_li.bandwidth_li.
  int bandwidth;

  /// IP block configuration id from config_li.ips_li.
  int ips;

  /// Operating System configuration id from config_li.os_li.
  int os;

  /// Control Panel configuration id from config_li.cp_li.
  int cp;

  /// RAID configuration id from config_li.raid_li.
  int raid;

  /// Region id from the regions list.
  int region;

  /// Server hostname. Must pass valid_hostname().
  String servername;

  /// Root password for the server.
  String rootpass;

  /// Terms-of-service acceptance. Must be true to place the order.
  bool tos;

  /// Optional free-form order comment.
  String comment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerOrderPostRequest &&
    other.cpu == cpu &&
    other.hd == hd &&
    other.memory == memory &&
    other.bandwidth == bandwidth &&
    other.ips == ips &&
    other.os == os &&
    other.cp == cp &&
    other.raid == raid &&
    other.region == region &&
    other.servername == servername &&
    other.rootpass == rootpass &&
    other.tos == tos &&
    other.comment == comment;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cpu.hashCode) +
    (hd.hashCode) +
    (memory.hashCode) +
    (bandwidth.hashCode) +
    (ips.hashCode) +
    (os.hashCode) +
    (cp.hashCode) +
    (raid.hashCode) +
    (region.hashCode) +
    (servername.hashCode) +
    (rootpass.hashCode) +
    (tos.hashCode) +
    (comment.hashCode);

  @override
  String toString() => 'ServerOrderPostRequest[cpu=$cpu, hd=$hd, memory=$memory, bandwidth=$bandwidth, ips=$ips, os=$os, cp=$cp, raid=$raid, region=$region, servername=$servername, rootpass=$rootpass, tos=$tos, comment=$comment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'cpu'] = this.cpu;
      json[r'hd'] = this.hd;
      json[r'memory'] = this.memory;
      json[r'bandwidth'] = this.bandwidth;
      json[r'ips'] = this.ips;
      json[r'os'] = this.os;
      json[r'cp'] = this.cp;
      json[r'raid'] = this.raid;
      json[r'region'] = this.region;
      json[r'servername'] = this.servername;
      json[r'rootpass'] = this.rootpass;
      json[r'tos'] = this.tos;
      json[r'comment'] = this.comment;
    return json;
  }

  /// Returns a new [ServerOrderPostRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerOrderPostRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'cpu'), 'Required key "ServerOrderPostRequest[cpu]" is missing from JSON.');
        assert(json[r'cpu'] != null, 'Required key "ServerOrderPostRequest[cpu]" has a null value in JSON.');
        assert(json.containsKey(r'hd'), 'Required key "ServerOrderPostRequest[hd]" is missing from JSON.');
        assert(json[r'hd'] != null, 'Required key "ServerOrderPostRequest[hd]" has a null value in JSON.');
        assert(json.containsKey(r'memory'), 'Required key "ServerOrderPostRequest[memory]" is missing from JSON.');
        assert(json[r'memory'] != null, 'Required key "ServerOrderPostRequest[memory]" has a null value in JSON.');
        assert(json.containsKey(r'bandwidth'), 'Required key "ServerOrderPostRequest[bandwidth]" is missing from JSON.');
        assert(json[r'bandwidth'] != null, 'Required key "ServerOrderPostRequest[bandwidth]" has a null value in JSON.');
        assert(json.containsKey(r'ips'), 'Required key "ServerOrderPostRequest[ips]" is missing from JSON.');
        assert(json[r'ips'] != null, 'Required key "ServerOrderPostRequest[ips]" has a null value in JSON.');
        assert(json.containsKey(r'os'), 'Required key "ServerOrderPostRequest[os]" is missing from JSON.');
        assert(json[r'os'] != null, 'Required key "ServerOrderPostRequest[os]" has a null value in JSON.');
        assert(json.containsKey(r'cp'), 'Required key "ServerOrderPostRequest[cp]" is missing from JSON.');
        assert(json[r'cp'] != null, 'Required key "ServerOrderPostRequest[cp]" has a null value in JSON.');
        assert(json.containsKey(r'raid'), 'Required key "ServerOrderPostRequest[raid]" is missing from JSON.');
        assert(json[r'raid'] != null, 'Required key "ServerOrderPostRequest[raid]" has a null value in JSON.');
        assert(json.containsKey(r'region'), 'Required key "ServerOrderPostRequest[region]" is missing from JSON.');
        assert(json[r'region'] != null, 'Required key "ServerOrderPostRequest[region]" has a null value in JSON.');
        assert(json.containsKey(r'servername'), 'Required key "ServerOrderPostRequest[servername]" is missing from JSON.');
        assert(json[r'servername'] != null, 'Required key "ServerOrderPostRequest[servername]" has a null value in JSON.');
        assert(json.containsKey(r'rootpass'), 'Required key "ServerOrderPostRequest[rootpass]" is missing from JSON.');
        assert(json[r'rootpass'] != null, 'Required key "ServerOrderPostRequest[rootpass]" has a null value in JSON.');
        assert(json.containsKey(r'tos'), 'Required key "ServerOrderPostRequest[tos]" is missing from JSON.');
        assert(json[r'tos'] != null, 'Required key "ServerOrderPostRequest[tos]" has a null value in JSON.');
        return true;
      }());

      return ServerOrderPostRequest(
        cpu: mapValueOfType<int>(json, r'cpu')!,
        hd: ServerOrderPostRequestHd.fromJson(json[r'hd'])!,
        memory: mapValueOfType<int>(json, r'memory')!,
        bandwidth: mapValueOfType<int>(json, r'bandwidth')!,
        ips: mapValueOfType<int>(json, r'ips')!,
        os: mapValueOfType<int>(json, r'os')!,
        cp: mapValueOfType<int>(json, r'cp')!,
        raid: mapValueOfType<int>(json, r'raid')!,
        region: mapValueOfType<int>(json, r'region')!,
        servername: mapValueOfType<String>(json, r'servername')!,
        rootpass: mapValueOfType<String>(json, r'rootpass')!,
        tos: mapValueOfType<bool>(json, r'tos')!,
        comment: mapValueOfType<String>(json, r'comment') ?? '',
      );
    }
    return null;
  }

  static List<ServerOrderPostRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerOrderPostRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerOrderPostRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerOrderPostRequest> mapFromJson(dynamic json) {
    final map = <String, ServerOrderPostRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerOrderPostRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerOrderPostRequest-objects as value to a dart map
  static Map<String, List<ServerOrderPostRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerOrderPostRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerOrderPostRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'cpu',
    'hd',
    'memory',
    'bandwidth',
    'ips',
    'os',
    'cp',
    'raid',
    'region',
    'servername',
    'rootpass',
    'tos',
  };
}

