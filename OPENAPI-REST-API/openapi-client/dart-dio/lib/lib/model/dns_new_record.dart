//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/dns_record_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'dns_new_record.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DnsNewRecord {
  /// Returns a new [DnsNewRecord] instance.
  DnsNewRecord({

    required  this.name,

    required  this.type,

    required  this.content,

    this.ttl = const Optional.present(86400),

    this.prio = const Optional.present(0),
  });

      /// Name part of record
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false,
  unknownEnumValue: DnsRecordType.unknownDefaultOpenApi,
  )


  final DnsRecordType type;



      /// Content of record
  @JsonKey(
    
    name: r'content',
    required: true,
    includeIfNull: false,
  )


  final String content;



      /// Time-to-live
  @OptionalConverter()
  @JsonKey(
    defaultValue: 86400,
    name: r'ttl',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> ttl;



      /// Priority
  @OptionalConverter()
  @JsonKey(
    defaultValue: 0,
    name: r'prio',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> prio;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DnsNewRecord &&
      runtimeType == other.runtimeType &&
      equals(
        [
            name,
            type,
            content,
            ttl,
            prio,
        ],
        [
            other.name,
            other.type,
            other.content,
            other.ttl,
            other.prio,
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
    ],);

  factory DnsNewRecord.fromJson(Map<String, dynamic> json) => _$DnsNewRecordFromJson(json);

  Map<String, dynamic> toJson() => _$DnsNewRecordToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

