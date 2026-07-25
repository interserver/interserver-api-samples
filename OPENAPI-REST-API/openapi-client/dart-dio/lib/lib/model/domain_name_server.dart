//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'domain_name_server.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DomainNameServer {
  /// Returns a new [DomainNameServer] instance.
  DomainNameServer({

    this.sortorder = const Optional.absent(),

    this.name = const Optional.absent(),

    this.ipaddress = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'sortorder',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> sortorder;



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
    
    name: r'ipaddress',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipaddress;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DomainNameServer &&
      runtimeType == other.runtimeType &&
      equals(
        [
            sortorder,
            name,
            ipaddress,
        ],
        [
            other.sortorder,
            other.name,
            other.ipaddress,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        sortorder,
        name,
        ipaddress,
    ],);

  factory DomainNameServer.fromJson(Map<String, dynamic> json) => _$DomainNameServerFromJson(json);

  Map<String, dynamic> toJson() => _$DomainNameServerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

