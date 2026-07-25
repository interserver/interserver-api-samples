//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/server_order_post_request_hd.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_order_post_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerOrderPostRequest {
  /// Returns a new [ServerOrderPostRequest] instance.
  ServerOrderPostRequest({

    required  this.cpu,

    required  this.hd,

    required  this.memory,

    required  this.bandwidth,

    required  this.ips,

    required  this.os,

    required  this.cp,

    required  this.raid,

    required  this.region,

    required  this.servername,

    required  this.rootpass,

    required  this.tos,

    this.comment = const Optional.present(''),
  });

      /// CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options.
  @JsonKey(
    
    name: r'cpu',
    required: true,
    includeIfNull: false,
  )


  final int cpu;



  @JsonKey(
    
    name: r'hd',
    required: true,
    includeIfNull: false,
  )


  final ServerOrderPostRequestHd hd;



      /// Memory configuration id from config_li.memory_li[cpu].
  @JsonKey(
    
    name: r'memory',
    required: true,
    includeIfNull: false,
  )


  final int memory;



      /// Bandwidth configuration id from config_li.bandwidth_li.
  @JsonKey(
    
    name: r'bandwidth',
    required: true,
    includeIfNull: false,
  )


  final int bandwidth;



      /// IP block configuration id from config_li.ips_li.
  @JsonKey(
    
    name: r'ips',
    required: true,
    includeIfNull: false,
  )


  final int ips;



      /// Operating System configuration id from config_li.os_li.
  @JsonKey(
    
    name: r'os',
    required: true,
    includeIfNull: false,
  )


  final int os;



      /// Control Panel configuration id from config_li.cp_li.
  @JsonKey(
    
    name: r'cp',
    required: true,
    includeIfNull: false,
  )


  final int cp;



      /// RAID configuration id from config_li.raid_li.
  @JsonKey(
    
    name: r'raid',
    required: true,
    includeIfNull: false,
  )


  final int raid;



      /// Region id from the regions list.
  @JsonKey(
    
    name: r'region',
    required: true,
    includeIfNull: false,
  )


  final int region;



      /// Server hostname. Must pass valid_hostname().
  @JsonKey(
    
    name: r'servername',
    required: true,
    includeIfNull: false,
  )


  final String servername;



      /// Root password for the server.
  @JsonKey(
    
    name: r'rootpass',
    required: true,
    includeIfNull: false,
  )


  final String rootpass;



      /// Terms-of-service acceptance. Must be true to place the order.
  @JsonKey(
    
    name: r'tos',
    required: true,
    includeIfNull: false,
  )


  final bool tos;



      /// Optional free-form order comment.
  @OptionalConverter()
  @JsonKey(
    defaultValue: '',
    name: r'comment',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> comment;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerOrderPostRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            cpu,
            hd,
            memory,
            bandwidth,
            ips,
            os,
            cp,
            raid,
            region,
            servername,
            rootpass,
            tos,
            comment,
        ],
        [
            other.cpu,
            other.hd,
            other.memory,
            other.bandwidth,
            other.ips,
            other.os,
            other.cp,
            other.raid,
            other.region,
            other.servername,
            other.rootpass,
            other.tos,
            other.comment,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        cpu,
        hd,
        memory,
        bandwidth,
        ips,
        os,
        cp,
        raid,
        region,
        servername,
        rootpass,
        tos,
        comment,
    ],);

  factory ServerOrderPostRequest.fromJson(Map<String, dynamic> json) => _$ServerOrderPostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ServerOrderPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

