//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/dns_record_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'dns_update_record.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DnsUpdateRecord {
  /// Returns a new [DnsUpdateRecord] instance.
  DnsUpdateRecord({

    this.name = const Optional.absent(),

    this.type = const Optional.absent(),

    this.content = const Optional.absent(),

    this.ttl = const Optional.absent(),

    this.prio = const Optional.absent(),

    this.disabled = const Optional.absent(),

    this.ordername = const Optional.absent(),

    this.auth = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> name;



  @OptionalConverter()
  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  unknownEnumValue: Optional<DnsRecordType?>.unknownDefaultOpenApi,
  )


  final Optional<DnsRecordType?> type;



  @OptionalConverter()
  @JsonKey(
    
    name: r'content',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> content;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ttl',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ttl;



  @OptionalConverter()
  @JsonKey(
    
    name: r'prio',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> prio;



  @OptionalConverter()
  @JsonKey(
    
    name: r'disabled',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> disabled;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ordername',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ordername;



  @OptionalConverter()
  @JsonKey(
    
    name: r'auth',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> auth;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DnsUpdateRecord &&
      runtimeType == other.runtimeType &&
      equals(
        [
            name,
            type,
            content,
            ttl,
            prio,
            disabled,
            ordername,
            auth,
        ],
        [
            other.name,
            other.type,
            other.content,
            other.ttl,
            other.prio,
            other.disabled,
            other.ordername,
            other.auth,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        name,
        type,
        content,
        ttl,
        prio,
        disabled,
        ordername,
        auth,
    ],);

  factory DnsUpdateRecord.fromJson(Map<String, dynamic> json) => _$DnsUpdateRecordFromJson(json);

  Map<String, dynamic> toJson() => _$DnsUpdateRecordToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

