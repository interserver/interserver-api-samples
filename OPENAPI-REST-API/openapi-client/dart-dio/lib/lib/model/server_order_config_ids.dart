//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_order_config_ids.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerOrderConfigIds {
  /// Returns a new [ServerOrderConfigIds] instance.
  ServerOrderConfigIds({

    this.memory = const Optional.absent(),

    this.bandwidth = const Optional.absent(),

    this.ips = const Optional.absent(),

    this.os = const Optional.absent(),

    this.cp = const Optional.absent(),

    this.raid = const Optional.absent(),

    this.hd = const Optional.absent(),
  });

      /// Memory configuration ID for the server order.
  @OptionalConverter()
  @JsonKey(
    
    name: r'memory',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> memory;



      /// Bandwidth configuration ID for the server order.
  @OptionalConverter()
  @JsonKey(
    
    name: r'bandwidth',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> bandwidth;



      /// IPs configuration ID for the server order.
  @OptionalConverter()
  @JsonKey(
    
    name: r'ips',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ips;



      /// Operating System configuration ID for the server order.
  @OptionalConverter()
  @JsonKey(
    
    name: r'os',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> os;



      /// Control Panel configuration ID for the server order.
  @OptionalConverter()
  @JsonKey(
    
    name: r'cp',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> cp;



      /// RAID configuration ID for the server order.
  @OptionalConverter()
  @JsonKey(
    
    name: r'raid',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> raid;



      /// Hard Drives configuration ID for the server order.
  @OptionalConverter()
  @JsonKey(
    
    name: r'hd',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> hd;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerOrderConfigIds &&
      runtimeType == other.runtimeType &&
      equals(
        [
            memory,
            bandwidth,
            ips,
            os,
            cp,
            raid,
            hd,
        ],
        [
            other.memory,
            other.bandwidth,
            other.ips,
            other.os,
            other.cp,
            other.raid,
            other.hd,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        memory,
        bandwidth,
        ips,
        os,
        cp,
        raid,
        hd,
    ],);

  factory ServerOrderConfigIds.fromJson(Map<String, dynamic> json) => _$ServerOrderConfigIdsFromJson(json);

  Map<String, dynamic> toJson() => _$ServerOrderConfigIdsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

