//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'domain_nameserver_get_response_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DomainNameserverGetResponseInner {
  /// Returns a new [DomainNameserverGetResponseInner] instance.
  DomainNameserverGetResponseInner({

    required  this.name,

    required  this.ipaddress,

    required  this.canDelete,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @JsonKey(
    
    name: r'ipaddress',
    required: true,
    includeIfNull: false,
  )


  final String ipaddress;



      /// Whether the registrar allows deletion of this nameserver entry.
  @JsonKey(
    
    name: r'can_delete',
    required: true,
    includeIfNull: false,
  unknownEnumValue: DomainNameserverGetResponseInnerCanDeleteEnum.unknownDefaultOpenApi,
  )


  final DomainNameserverGetResponseInnerCanDeleteEnum canDelete;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DomainNameserverGetResponseInner &&
      runtimeType == other.runtimeType &&
      equals(
        [
            name,
            ipaddress,
            canDelete,
        ],
        [
            other.name,
            other.ipaddress,
            other.canDelete,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        name,
        ipaddress,
        canDelete,
    ],);

  factory DomainNameserverGetResponseInner.fromJson(Map<String, dynamic> json) => _$DomainNameserverGetResponseInnerFromJson(json);

  Map<String, dynamic> toJson() => _$DomainNameserverGetResponseInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// Whether the registrar allows deletion of this nameserver entry.
enum DomainNameserverGetResponseInnerCanDeleteEnum {
    /// Whether the registrar allows deletion of this nameserver entry.
@JsonValue(r'0')
n0(r'0'),
    /// Whether the registrar allows deletion of this nameserver entry.
@JsonValue(r'1')
n1(r'1'),
    /// Whether the registrar allows deletion of this nameserver entry.
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const DomainNameserverGetResponseInnerCanDeleteEnum(this.value);

final String value;

@override
String toString() => value;
}


