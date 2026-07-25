//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'domain_nameserver_put_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DomainNameserverPutRequest {
  /// Returns a new [DomainNameserverPutRequest] instance.
  DomainNameserverPutRequest({

    required  this.nameserver,
  });

  @JsonKey(
    
    name: r'nameserver',
    required: true,
    includeIfNull: false,
  )


  final List<String> nameserver;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DomainNameserverPutRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            nameserver,
        ],
        [
            other.nameserver,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        nameserver,
    ],);

  factory DomainNameserverPutRequest.fromJson(Map<String, dynamic> json) => _$DomainNameserverPutRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DomainNameserverPutRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

