//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/server_order_bandwidth.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_order_bandwidth_li.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerOrderBandwidthLi {
  /// Returns a new [ServerOrderBandwidthLi] instance.
  ServerOrderBandwidthLi({

    this.n15 = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'15',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<ServerOrderBandwidth?> n15;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerOrderBandwidthLi &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n15,
        ],
        [
            other.n15,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n15,
    ],);

  factory ServerOrderBandwidthLi.fromJson(Map<String, dynamic> json) => _$ServerOrderBandwidthLiFromJson(json);

  Map<String, dynamic> toJson() => _$ServerOrderBandwidthLiToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

