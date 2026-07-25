//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/domain_dnssec_records_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'domain_dnssec_records.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DomainDnssecRecords {
  /// Returns a new [DomainDnssecRecords] instance.
  DomainDnssecRecords({
  });


    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DomainDnssecRecords &&
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

  factory DomainDnssecRecords.fromJson(Map<String, dynamic> json) => _$DomainDnssecRecordsFromJson(json);

  Map<String, dynamic> toJson() => _$DomainDnssecRecordsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

