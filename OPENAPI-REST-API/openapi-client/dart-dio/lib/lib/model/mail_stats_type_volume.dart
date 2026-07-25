//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/mail_stats_type_volume_from.dart';
import 'package:interserver_api/lib/model/mail_stats_type_volume_to.dart';
import 'package:interserver_api/lib/model/mail_stats_type_volume_ip.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'mail_stats_type_volume.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MailStatsTypeVolume {
  /// Returns a new [MailStatsTypeVolume] instance.
  MailStatsTypeVolume({

    this.to = const Optional.absent(),

    this.from = const Optional.absent(),

    this.ip = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'to',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<MailStatsTypeVolumeTo?> to;



  @OptionalConverter()
  @JsonKey(
    
    name: r'from',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<MailStatsTypeVolumeFrom?> from;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<MailStatsTypeVolumeIp?> ip;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is MailStatsTypeVolume &&
      runtimeType == other.runtimeType &&
      equals(
        [
            to,
            from,
            ip,
        ],
        [
            other.to,
            other.from,
            other.ip,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        to,
        from,
        ip,
    ],);

  factory MailStatsTypeVolume.fromJson(Map<String, dynamic> json) => _$MailStatsTypeVolumeFromJson(json);

  Map<String, dynamic> toJson() => _$MailStatsTypeVolumeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

