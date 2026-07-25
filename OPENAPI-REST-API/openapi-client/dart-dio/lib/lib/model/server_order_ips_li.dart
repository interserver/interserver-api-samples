//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/server_order_ip.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_order_ips_li.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerOrderIpsLi {
  /// Returns a new [ServerOrderIpsLi] instance.
  ServerOrderIpsLi({

    this.n9 = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'9',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<ServerOrderIP?> n9;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerOrderIpsLi &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n9,
        ],
        [
            other.n9,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n9,
    ],);

  factory ServerOrderIpsLi.fromJson(Map<String, dynamic> json) => _$ServerOrderIpsLiFromJson(json);

  Map<String, dynamic> toJson() => _$ServerOrderIpsLiToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

