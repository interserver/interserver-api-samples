//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'get_account_locales200_response_value.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetAccountLocales200ResponseValue {
  /// Returns a new [GetAccountLocales200ResponseValue] instance.
  GetAccountLocales200ResponseValue({

    this.name = const Optional.absent(),

    this.localName = const Optional.absent(),
  });

      /// English display name of the locale.
  @OptionalConverter()
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> name;



      /// Display name of the locale in its own language.
  @OptionalConverter()
  @JsonKey(
    
    name: r'local_name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> localName;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is GetAccountLocales200ResponseValue &&
      runtimeType == other.runtimeType &&
      equals(
        [
            name,
            localName,
        ],
        [
            other.name,
            other.localName,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        name,
        localName,
    ],);

  factory GetAccountLocales200ResponseValue.fromJson(Map<String, dynamic> json) => _$GetAccountLocales200ResponseValueFromJson(json);

  Map<String, dynamic> toJson() => _$GetAccountLocales200ResponseValueToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

