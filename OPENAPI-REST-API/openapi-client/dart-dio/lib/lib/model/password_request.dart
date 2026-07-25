//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'password_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PasswordRequest {
  /// Returns a new [PasswordRequest] instance.
  PasswordRequest({

    required  this.password,
  });

  @JsonKey(
    
    name: r'password',
    required: true,
    includeIfNull: false,
  )


  final String password;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is PasswordRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            password,
        ],
        [
            other.password,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        password,
    ],);

  factory PasswordRequest.fromJson(Map<String, dynamic> json) => _$PasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PasswordRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

