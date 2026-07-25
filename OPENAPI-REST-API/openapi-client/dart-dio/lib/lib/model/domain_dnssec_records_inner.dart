//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'domain_dnssec_records_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DomainDnssecRecordsInner {
  /// Returns a new [DomainDnssecRecordsInner] instance.
  DomainDnssecRecordsInner({

    this.algorithm = const Optional.absent(),

    this.digestType = const Optional.absent(),

    this.digest = const Optional.absent(),

    this.keyTag = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'algorithm',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> algorithm;



  @OptionalConverter()
  @JsonKey(
    
    name: r'digest_type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> digestType;



  @OptionalConverter()
  @JsonKey(
    
    name: r'digest',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> digest;



  @OptionalConverter()
  @JsonKey(
    
    name: r'key_tag',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> keyTag;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DomainDnssecRecordsInner &&
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

  factory DomainDnssecRecordsInner.fromJson(Map<String, dynamic> json) => _$DomainDnssecRecordsInnerFromJson(json);

  Map<String, dynamic> toJson() => _$DomainDnssecRecordsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

