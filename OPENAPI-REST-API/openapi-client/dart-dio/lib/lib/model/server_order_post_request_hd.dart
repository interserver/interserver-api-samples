//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_order_post_request_hd.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerOrderPostRequestHd {
  /// Returns a new [ServerOrderPostRequestHd] instance.
  ServerOrderPostRequestHd({
  });


    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerOrderPostRequestHd &&
      runtimeType == other.runtimeType &&
      equals(
        [
        ],
        [
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
    ],);

  factory ServerOrderPostRequestHd.fromJson(Map<String, dynamic> json) => _$ServerOrderPostRequestHdFromJson(json);

  Map<String, dynamic> toJson() => _$ServerOrderPostRequestHdToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

