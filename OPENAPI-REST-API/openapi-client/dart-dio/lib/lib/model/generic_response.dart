//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'generic_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GenericResponse {
  /// Returns a new [GenericResponse] instance.
  GenericResponse({

    required  this.status,

    required  this.text,
  });

  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false,
  )


  final String status;



  @JsonKey(
    
    name: r'text',
    required: true,
    includeIfNull: false,
  )


  final String text;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is GenericResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            status,
            text,
        ],
        [
            other.status,
            other.text,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        status,
        text,
    ],);

  factory GenericResponse.fromJson(Map<String, dynamic> json) => _$GenericResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GenericResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

