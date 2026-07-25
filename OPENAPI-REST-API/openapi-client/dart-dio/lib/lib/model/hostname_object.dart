//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'hostname_object.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HostnameObject {
  /// Returns a new [HostnameObject] instance.
  HostnameObject({

    this.hostname = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'hostname',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> hostname;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is HostnameObject &&
      runtimeType == other.runtimeType &&
      equals(
        [
            hostname,
        ],
        [
            other.hostname,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        hostname,
    ],);

  factory HostnameObject.fromJson(Map<String, dynamic> json) => _$HostnameObjectFromJson(json);

  Map<String, dynamic> toJson() => _$HostnameObjectToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

