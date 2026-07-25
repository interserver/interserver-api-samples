//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'ip_object.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class IpObject {
  /// Returns a new [IpObject] instance.
  IpObject({

    required  this.ip,
  });

      /// IP Address
  @JsonKey(
    
    name: r'ip',
    required: true,
    includeIfNull: false,
  )


  final String ip;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is IpObject &&
      runtimeType == other.runtimeType &&
      equals(
        [
            ip,
        ],
        [
            other.ip,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        ip,
    ],);

  factory IpObject.fromJson(Map<String, dynamic> json) => _$IpObjectFromJson(json);

  Map<String, dynamic> toJson() => _$IpObjectToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

