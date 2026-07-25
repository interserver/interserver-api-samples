//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'get_account_info401_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetAccountInfo401Response {
  /// Returns a new [GetAccountInfo401Response] instance.
  GetAccountInfo401Response({

    required  this.code,

    required  this.message,
  });

  @JsonKey(
    
    name: r'code',
    required: true,
    includeIfNull: false,
  )


  final int code;



  @JsonKey(
    
    name: r'message',
    required: true,
    includeIfNull: false,
  )


  final String message;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is GetAccountInfo401Response &&
      runtimeType == other.runtimeType &&
      equals(
        [
            code,
            message,
        ],
        [
            other.code,
            other.message,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        code,
        message,
    ],);

  factory GetAccountInfo401Response.fromJson(Map<String, dynamic> json) => _$GetAccountInfo401ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAccountInfo401ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

