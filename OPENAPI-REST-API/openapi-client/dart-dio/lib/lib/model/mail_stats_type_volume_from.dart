//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'mail_stats_type_volume_from.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MailStatsTypeVolumeFrom {
  /// Returns a new [MailStatsTypeVolumeFrom] instance.
  MailStatsTypeVolumeFrom({

    this.billingAtSomedomainPeriodCom = const Optional.absent(),

    this.salesAtSomedomainPeriodCom = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'billing@somedomain.com',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> billingAtSomedomainPeriodCom;



  @OptionalConverter()
  @JsonKey(
    
    name: r'sales@somedomain.com',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> salesAtSomedomainPeriodCom;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is MailStatsTypeVolumeFrom &&
      runtimeType == other.runtimeType &&
      equals(
        [
            billingAtSomedomainPeriodCom,
            salesAtSomedomainPeriodCom,
        ],
        [
            other.billingAtSomedomainPeriodCom,
            other.salesAtSomedomainPeriodCom,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        billingAtSomedomainPeriodCom,
        salesAtSomedomainPeriodCom,
    ],);

  factory MailStatsTypeVolumeFrom.fromJson(Map<String, dynamic> json) => _$MailStatsTypeVolumeFromFromJson(json);

  Map<String, dynamic> toJson() => _$MailStatsTypeVolumeFromToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

