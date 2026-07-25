//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'initiate_payment200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InitiatePayment200Response {
  /// Returns a new [InitiatePayment200Response] instance.
  InitiatePayment200Response({

    this.type = const Optional.absent(),

    this.redirect = const Optional.absent(),

    this.action = const Optional.absent(),

    this.method = const Optional.absent(),

    this.items = const Optional.absent(),

    this.text = const Optional.absent(),
  });

      /// The response type indicating how to handle the payment. Possible values: `redirect` (redirect user to a URL), `submit` (submit a form to a URL), `single` (immediate result).
  @OptionalConverter()
  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  unknownEnumValue: Optional<InitiatePayment200ResponseTypeEnum?>.unknownDefaultOpenApi,
  )


  final Optional<InitiatePayment200ResponseTypeEnum?> type;



      /// URL to redirect the user to for payment (when type is `redirect`).
  @OptionalConverter()
  @JsonKey(
    
    name: r'redirect',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> redirect;



      /// Form action URL (when type is `submit`).
  @OptionalConverter()
  @JsonKey(
    
    name: r'action',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> action;



      /// HTTP method for the form submission (when type is `submit`).
  @OptionalConverter()
  @JsonKey(
    
    name: r'method',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> method;



      /// Form field name-value pairs to submit (when type is `submit`).
  @OptionalConverter()
  @JsonKey(
    
    name: r'items',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<Object?> items;



      /// Status or result text.
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
      other is InitiatePayment200Response &&
      runtimeType == other.runtimeType &&
      equals(
        [
            type,
            redirect,
            action,
            method,
            items,
            text,
        ],
        [
            other.type,
            other.redirect,
            other.action,
            other.method,
            other.items,
            other.text,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        type,
        redirect,
        action,
        method,
        items,
        text,
    ],);

  factory InitiatePayment200Response.fromJson(Map<String, dynamic> json) => _$InitiatePayment200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InitiatePayment200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// The response type indicating how to handle the payment. Possible values: `redirect` (redirect user to a URL), `submit` (submit a form to a URL), `single` (immediate result).
enum InitiatePayment200ResponseTypeEnum {
    /// The response type indicating how to handle the payment. Possible values: `redirect` (redirect user to a URL), `submit` (submit a form to a URL), `single` (immediate result).
@JsonValue(r'redirect')
redirect(r'redirect'),
    /// The response type indicating how to handle the payment. Possible values: `redirect` (redirect user to a URL), `submit` (submit a form to a URL), `single` (immediate result).
@JsonValue(r'submit')
submit(r'submit'),
    /// The response type indicating how to handle the payment. Possible values: `redirect` (redirect user to a URL), `submit` (submit a form to a URL), `single` (immediate result).
@JsonValue(r'single')
single(r'single'),
    /// The response type indicating how to handle the payment. Possible values: `redirect` (redirect user to a URL), `submit` (submit a form to a URL), `single` (immediate result).
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const InitiatePayment200ResponseTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


