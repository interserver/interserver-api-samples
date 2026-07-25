//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'update_ticket_response_schema.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateTicketResponseSchema {
  /// Returns a new [UpdateTicketResponseSchema] instance.
  UpdateTicketResponseSchema({

    this.success = const Optional.absent(),

    this.message = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'success',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> success;



  @OptionalConverter()
  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> message;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is UpdateTicketResponseSchema &&
      runtimeType == other.runtimeType &&
      equals(
        [
            success,
            message,
        ],
        [
            other.success,
            other.message,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        success,
        message,
    ],);

  factory UpdateTicketResponseSchema.fromJson(Map<String, dynamic> json) => _$UpdateTicketResponseSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateTicketResponseSchemaToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

