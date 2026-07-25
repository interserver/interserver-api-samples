//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'domain_nameserver_post_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DomainNameserverPostRequest {
  /// Returns a new [DomainNameserverPostRequest] instance.
  DomainNameserverPostRequest({

    required  this.name,

    required  this.ipAddress,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @JsonKey(
    
    name: r'ipAddress',
    required: true,
    includeIfNull: false,
  )


  final String ipAddress;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DomainNameserverPostRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            name,
            ipAddress,
        ],
        [
            other.name,
            other.ipAddress,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        name,
        ipAddress,
    ],);

  factory DomainNameserverPostRequest.fromJson(Map<String, dynamic> json) => _$DomainNameserverPostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DomainNameserverPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

