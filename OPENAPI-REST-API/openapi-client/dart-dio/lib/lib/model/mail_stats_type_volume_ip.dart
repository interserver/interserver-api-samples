//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'mail_stats_type_volume_ip.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MailStatsTypeVolumeIp {
  /// Returns a new [MailStatsTypeVolumeIp] instance.
  MailStatsTypeVolumeIp({

    this.n1period1Period1Period1 = const Optional.absent(),

    this.n2period2Period2Period2 = const Optional.absent(),

    this.n3period3Period3Period3 = const Optional.absent(),

    this.n4period4Period4Period4 = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'1.1.1.1',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> n1period1Period1Period1;



  @OptionalConverter()
  @JsonKey(
    
    name: r'2.2.2.2',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> n2period2Period2Period2;



  @OptionalConverter()
  @JsonKey(
    
    name: r'3.3.3.3',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> n3period3Period3Period3;



  @OptionalConverter()
  @JsonKey(
    
    name: r'4.4.4.4',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> n4period4Period4Period4;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is MailStatsTypeVolumeIp &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n1period1Period1Period1,
            n2period2Period2Period2,
            n3period3Period3Period3,
            n4period4Period4Period4,
        ],
        [
            other.n1period1Period1Period1,
            other.n2period2Period2Period2,
            other.n3period3Period3Period3,
            other.n4period4Period4Period4,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n1period1Period1Period1,
        n2period2Period2Period2,
        n3period3Period3Period3,
        n4period4Period4Period4,
    ],);

  factory MailStatsTypeVolumeIp.fromJson(Map<String, dynamic> json) => _$MailStatsTypeVolumeIpFromJson(json);

  Map<String, dynamic> toJson() => _$MailStatsTypeVolumeIpToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

