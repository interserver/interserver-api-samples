//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'close_ticket_response_schema.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CloseTicketResponseSchema {
  /// Returns a new [CloseTicketResponseSchema] instance.
  CloseTicketResponseSchema({

    this.success = const Optional.absent(),

    this.text = const Optional.absent(),
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
    
    name: r'text',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> text;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is CloseTicketResponseSchema &&
      runtimeType == other.runtimeType &&
      equals(
        [
            success,
            text,
        ],
        [
            other.success,
            other.text,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        success,
        text,
    ],);

  factory CloseTicketResponseSchema.fromJson(Map<String, dynamic> json) => _$CloseTicketResponseSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$CloseTicketResponseSchemaToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

