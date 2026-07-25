//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/server_order_field_label.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_order_field_labels.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerOrderFieldLabels {
  /// Returns a new [ServerOrderFieldLabels] instance.
  ServerOrderFieldLabels({

    this.bandwidth = const Optional.absent(),

    this.ips = const Optional.absent(),

    this.os = const Optional.absent(),

    this.cp = const Optional.absent(),

    this.raid = const Optional.absent(),

    this.memory = const Optional.absent(),

    this.hd = const Optional.absent(),
  });

      /// Bandwidth field label.
  @OptionalConverter()
  @JsonKey(
    
    name: r'bandwidth',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<ServerOrderFieldLabel?> bandwidth;



      /// IPs field label.
  @OptionalConverter()
  @JsonKey(
    
    name: r'ips',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<ServerOrderFieldLabel?> ips;



      /// Operating System field label.
  @OptionalConverter()
  @JsonKey(
    
    name: r'os',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<ServerOrderFieldLabel?> os;



      /// Control Panel field label.
  @OptionalConverter()
  @JsonKey(
    
    name: r'cp',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<ServerOrderFieldLabel?> cp;



      /// RAID field label.
  @OptionalConverter()
  @JsonKey(
    
    name: r'raid',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<ServerOrderFieldLabel?> raid;



      /// Memory field label.
  @OptionalConverter()
  @JsonKey(
    
    name: r'memory',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<ServerOrderFieldLabel?> memory;



      /// Hard Drives field label
  @OptionalConverter()
  @JsonKey(
    
    name: r'hd',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<ServerOrderFieldLabel?> hd;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerOrderFieldLabels &&
      runtimeType == other.runtimeType &&
      equals(
        [
            bandwidth,
            ips,
            os,
            cp,
            raid,
            memory,
            hd,
        ],
        [
            other.bandwidth,
            other.ips,
            other.os,
            other.cp,
            other.raid,
            other.memory,
            other.hd,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        bandwidth,
        ips,
        os,
        cp,
        raid,
        memory,
        hd,
    ],);

  factory ServerOrderFieldLabels.fromJson(Map<String, dynamic> json) => _$ServerOrderFieldLabelsFromJson(json);

  Map<String, dynamic> toJson() => _$ServerOrderFieldLabelsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

