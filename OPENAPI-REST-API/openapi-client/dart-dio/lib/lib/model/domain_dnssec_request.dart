//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'domain_dnssec_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DomainDnssecRequest {
  /// Returns a new [DomainDnssecRequest] instance.
  DomainDnssecRequest({

    this.algorithm = const Optional.absent(),

    this.digestType = const Optional.absent(),

    this.digest = const Optional.absent(),

    this.keyTag = const Optional.absent(),
  });

      /// List of DNSSEC algorithm IDs for each record.
  @OptionalConverter()
  @JsonKey(
    
    name: r'algorithm',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<int>?> algorithm;



      /// List of digest type IDs for each record.
  @OptionalConverter()
  @JsonKey(
    
    name: r'digest_type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<int>?> digestType;



      /// List of hex digests for each record.
  @OptionalConverter()
  @JsonKey(
    
    name: r'digest',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> digest;



      /// List of key tag values corresponding to each record.
  @OptionalConverter()
  @JsonKey(
    
    name: r'key_tag',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<int>?> keyTag;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DomainDnssecRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            algorithm,
            digestType,
            digest,
            keyTag,
        ],
        [
            other.algorithm,
            other.digestType,
            other.digest,
            other.keyTag,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        algorithm,
        digestType,
        digest,
        keyTag,
    ],);

  factory DomainDnssecRequest.fromJson(Map<String, dynamic> json) => _$DomainDnssecRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DomainDnssecRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

