//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'email_address_name.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EmailAddressName {
  /// Returns a new [EmailAddressName] instance.
  EmailAddressName({

    required  this.email,

    this.name = const Optional.absent(),
  });

      /// The email address.
  @JsonKey(
    
    name: r'email',
    required: true,
    includeIfNull: false,
  )


  final String email;



      /// Name to use for the sending contact.
  @OptionalConverter()
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> name;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is EmailAddressName &&
      runtimeType == other.runtimeType &&
      equals(
        [
            email,
            name,
        ],
        [
            other.email,
            other.name,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        email,
        name,
    ],);

  factory EmailAddressName.fromJson(Map<String, dynamic> json) => _$EmailAddressNameFromJson(json);

  Map<String, dynamic> toJson() => _$EmailAddressNameToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

