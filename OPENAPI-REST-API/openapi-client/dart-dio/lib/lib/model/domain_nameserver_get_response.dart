//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/domain_nameserver_get_response_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'domain_nameserver_get_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DomainNameserverGetResponse {
  /// Returns a new [DomainNameserverGetResponse] instance.
  DomainNameserverGetResponse({
  });


    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DomainNameserverGetResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
        ],
        [
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
    ],);

  factory DomainNameserverGetResponse.fromJson(Map<String, dynamic> json) => _$DomainNameserverGetResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DomainNameserverGetResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

