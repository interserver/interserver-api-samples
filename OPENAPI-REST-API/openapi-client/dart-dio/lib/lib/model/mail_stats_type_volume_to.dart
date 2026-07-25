//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'mail_stats_type_volume_to.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MailStatsTypeVolumeTo {
  /// Returns a new [MailStatsTypeVolumeTo] instance.
  MailStatsTypeVolumeTo({

    this.clientAtDomainPeriodCom = const Optional.absent(),

    this.userAtSitePeriodNet = const Optional.absent(),

    this.salesAtCompanyPeriodCom = const Optional.absent(),

    this.clientAtAnothersitePeriodCom = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'client@domain.com',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> clientAtDomainPeriodCom;



  @OptionalConverter()
  @JsonKey(
    
    name: r'user@site.net',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> userAtSitePeriodNet;



  @OptionalConverter()
  @JsonKey(
    
    name: r'sales@company.com',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> salesAtCompanyPeriodCom;



  @OptionalConverter()
  @JsonKey(
    
    name: r'client@anothersite.com',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> clientAtAnothersitePeriodCom;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is MailStatsTypeVolumeTo &&
      runtimeType == other.runtimeType &&
      equals(
        [
            clientAtDomainPeriodCom,
            userAtSitePeriodNet,
            salesAtCompanyPeriodCom,
            clientAtAnothersitePeriodCom,
        ],
        [
            other.clientAtDomainPeriodCom,
            other.userAtSitePeriodNet,
            other.salesAtCompanyPeriodCom,
            other.clientAtAnothersitePeriodCom,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        clientAtDomainPeriodCom,
        userAtSitePeriodNet,
        salesAtCompanyPeriodCom,
        clientAtAnothersitePeriodCom,
    ],);

  factory MailStatsTypeVolumeTo.fromJson(Map<String, dynamic> json) => _$MailStatsTypeVolumeToFromJson(json);

  Map<String, dynamic> toJson() => _$MailStatsTypeVolumeToToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

