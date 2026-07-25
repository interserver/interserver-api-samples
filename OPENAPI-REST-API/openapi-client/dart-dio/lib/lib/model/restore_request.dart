//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'restore_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RestoreRequest {
  /// Returns a new [RestoreRequest] instance.
  RestoreRequest({

    this.backup = const Optional.absent(),

    this.password = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'backup',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> backup;



  @OptionalConverter()
  @JsonKey(
    
    name: r'password',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> password;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is RestoreRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            backup,
            password,
        ],
        [
            other.backup,
            other.password,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        backup,
        password,
    ],);

  factory RestoreRequest.fromJson(Map<String, dynamic> json) => _$RestoreRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RestoreRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

