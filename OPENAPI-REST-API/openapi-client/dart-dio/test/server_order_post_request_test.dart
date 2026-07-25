import 'package:test/test.dart';
import 'package:interserver_api/interserver_api.dart';

// tests for ServerOrderPostRequest
void main() {
  final ServerOrderPostRequest? instance = /* ServerOrderPostRequest(...) */ null;
  // TODO add properties to the entity

  group(ServerOrderPostRequest, () {
    // CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options.
    // int cpu
    test('to test the property `cpu`', () async {
      // TODO
    });

    // ServerOrderPostRequestHd hd
    test('to test the property `hd`', () async {
      // TODO
    });

    // Memory configuration id from config_li.memory_li[cpu].
    // int memory
    test('to test the property `memory`', () async {
      // TODO
    });

    // Bandwidth configuration id from config_li.bandwidth_li.
    // int bandwidth
    test('to test the property `bandwidth`', () async {
      // TODO
    });

    // IP block configuration id from config_li.ips_li.
    // int ips
    test('to test the property `ips`', () async {
      // TODO
    });

    // Operating System configuration id from config_li.os_li.
    // int os
    test('to test the property `os`', () async {
      // TODO
    });

    // Control Panel configuration id from config_li.cp_li.
    // int cp
    test('to test the property `cp`', () async {
      // TODO
    });

    // RAID configuration id from config_li.raid_li.
    // int raid
    test('to test the property `raid`', () async {
      // TODO
    });

    // Region id from the regions list.
    // int region
    test('to test the property `region`', () async {
      // TODO
    });

    // Server hostname. Must pass valid_hostname().
    // String servername
    test('to test the property `servername`', () async {
      // TODO
    });

    // Root password for the server.
    // String rootpass
    test('to test the property `rootpass`', () async {
      // TODO
    });

    // Terms-of-service acceptance. Must be true to place the order.
    // bool tos
    test('to test the property `tos`', () async {
      // TODO
    });

    // Optional free-form order comment.
    // Optional<String?> comment (default value: '')
    test('to test the property `comment`', () async {
      // TODO
    });

  });
}
