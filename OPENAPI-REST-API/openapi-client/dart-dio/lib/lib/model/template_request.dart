//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'template_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TemplateRequest {
  /// Returns a new [TemplateRequest] instance.
  TemplateRequest({

    required  this.template,

    required  this.localPassword,

    this.password = const Optional.absent(),
  });

      /// OS Template Filename
  @JsonKey(
    
    name: r'template',
    required: true,
    includeIfNull: false,
  )


  final String template;



      /// Password for this account.
  @JsonKey(
    
    name: r'localPassword',
    required: true,
    includeIfNull: false,
  )


  final String localPassword;



      /// Password for Root / Administrator Account.
  @OptionalConverter()
  @JsonKey(
    
    name: r'password',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> password;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is TemplateRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            template,
            localPassword,
            password,
        ],
        [
            other.template,
            other.localPassword,
            other.password,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        template,
        localPassword,
        password,
    ],);

  factory TemplateRequest.fromJson(Map<String, dynamic> json) => _$TemplateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TemplateRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

