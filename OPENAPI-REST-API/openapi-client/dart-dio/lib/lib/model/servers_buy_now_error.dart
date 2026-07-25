//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'servers_buy_now_error.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServersBuyNowError {
  /// Returns a new [ServersBuyNowError] instance.
  ServersBuyNowError({

    this.success = const Optional.absent(),

    this.text = const Optional.absent(),

    this.errors = const Optional.absent(),
  });

      /// Always false for error responses.
  @OptionalConverter()
  @JsonKey(
    
    name: r'success',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> success;



      /// Human-readable error summary.
  @OptionalConverter()
  @JsonKey(
    
    name: r'text',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> text;



      /// List of specific validation error messages.
  @OptionalConverter()
  @JsonKey(
    
    name: r'errors',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> errors;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServersBuyNowError &&
      runtimeType == other.runtimeType &&
      equals(
        [
            success,
            text,
            errors,
        ],
        [
            other.success,
            other.text,
            other.errors,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        success,
        text,
        errors,
    ],);

  factory ServersBuyNowError.fromJson(Map<String, dynamic> json) => _$ServersBuyNowErrorFromJson(json);

  Map<String, dynamic> toJson() => _$ServersBuyNowErrorToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

