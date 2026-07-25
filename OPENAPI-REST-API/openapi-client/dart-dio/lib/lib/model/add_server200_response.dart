//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'add_server200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AddServer200Response {
  /// Returns a new [AddServer200Response] instance.
  AddServer200Response({

    this.text = const Optional.absent(),

    this.invoice = const Optional.absent(),

    this.order = const Optional.absent(),
  });

      /// Status message.
  @OptionalConverter()
  @JsonKey(
    
    name: r'text',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> text;



      /// Invoice ID for payment.
  @OptionalConverter()
  @JsonKey(
    
    name: r'invoice',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> invoice;



      /// Server order ID.
  @OptionalConverter()
  @JsonKey(
    
    name: r'order',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> order;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is AddServer200Response &&
      runtimeType == other.runtimeType &&
      equals(
        [
            text,
            invoice,
            order,
        ],
        [
            other.text,
            other.invoice,
            other.order,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        text,
        invoice,
        order,
    ],);

  factory AddServer200Response.fromJson(Map<String, dynamic> json) => _$AddServer200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddServer200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

