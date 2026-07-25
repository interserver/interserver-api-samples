//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/dns_record_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'dns_record.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DnsRecord {
  /// Returns a new [DnsRecord] instance.
  DnsRecord({

    required  this.id,

    required  this.domainId,

    required  this.name,

    required  this.type,

    required  this.content,

    required  this.ttl,

    required  this.prio,

    required  this.disabled,

    required  this.ordername,

    required  this.auth,
  });

      /// The ID of the DNS Record.
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final String id;



      /// The ID of the Domain this is a record of.
  @JsonKey(
    
    name: r'domain_id',
    required: true,
    includeIfNull: false,
  )


  final String domainId;



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



      /// The content of the record, such as the IP address or hsotname.
  @JsonKey(
    
    name: r'content',
    required: true,
    includeIfNull: false,
  )


  final String content;



      /// Time To Live (seconds)
  @JsonKey(
    
    name: r'ttl',
    required: true,
    includeIfNull: false,
  )


  final String ttl;



      /// Priority
  @JsonKey(
    
    name: r'prio',
    required: true,
    includeIfNull: false,
  )


  final String prio;



  @JsonKey(
    
    name: r'disabled',
    required: true,
    includeIfNull: false,
  )


  final String disabled;



      /// Alternate name to use for sorting
  @JsonKey(
    
    name: r'ordername',
    required: true,
    includeIfNull: false,
  )


  final String ordername;



  @JsonKey(
    
    name: r'auth',
    required: true,
    includeIfNull: false,
  )


  final String auth;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DnsRecord &&
      runtimeType == other.runtimeType &&
      equals(
        [
            id,
            domainId,
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
            other.id,
            other.domainId,
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
        id,
        domainId,
        name,
        type,
        content,
        ttl,
        prio,
        disabled,
        ordername,
        auth,
    ],);

  factory DnsRecord.fromJson(Map<String, dynamic> json) => _$DnsRecordFromJson(json);

  Map<String, dynamic> toJson() => _$DnsRecordToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

