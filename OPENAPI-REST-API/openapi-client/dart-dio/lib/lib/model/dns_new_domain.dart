//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'dns_new_domain.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DnsNewDomain {
  /// Returns a new [DnsNewDomain] instance.
  DnsNewDomain({

    required  this.domain,

    required  this.ip,
  });

      /// The domain name.
  @JsonKey(
    
    name: r'domain',
    required: true,
    includeIfNull: false,
  )


  final String domain;



      /// IP Address to point the domain to.
  @JsonKey(
    
    name: r'ip',
    required: true,
    includeIfNull: false,
  )


  final String ip;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DnsNewDomain &&
      runtimeType == other.runtimeType &&
      equals(
        [
            domain,
            ip,
        ],
        [
            other.domain,
            other.ip,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        domain,
        ip,
    ],);

  factory DnsNewDomain.fromJson(Map<String, dynamic> json) => _$DnsNewDomainFromJson(json);

  Map<String, dynamic> toJson() => _$DnsNewDomainToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

