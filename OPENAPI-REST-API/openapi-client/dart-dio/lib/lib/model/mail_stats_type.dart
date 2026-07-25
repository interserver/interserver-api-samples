//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/mail_stats_type_volume.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'mail_stats_type.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MailStatsType {
  /// Returns a new [MailStatsType] instance.
  MailStatsType({

    this.time = const Optional.present(const MailStatsTypeTimeEnum._('1h')),

    this.usage = const Optional.absent(),

    this.currency = const Optional.absent(),

    this.currencySymbol = const Optional.absent(),

    this.cost = const Optional.absent(),

    this.received = const Optional.absent(),

    this.sent = const Optional.absent(),

    this.volume = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    defaultValue: '1h',
    name: r'time',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  unknownEnumValue: Optional<MailStatsTypeTimeEnum?>.unknownDefaultOpenApi,
  )


  final Optional<MailStatsTypeTimeEnum?> time;



  @OptionalConverter()
  @JsonKey(
    
    name: r'usage',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> usage;



  @OptionalConverter()
  @JsonKey(
    
    name: r'currency',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> currency;



  @OptionalConverter()
  @JsonKey(
    
    name: r'currencySymbol',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> currencySymbol;



  @OptionalConverter()
  @JsonKey(
    
    name: r'cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<double?> cost;



  @OptionalConverter()
  @JsonKey(
    
    name: r'received',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> received;



  @OptionalConverter()
  @JsonKey(
    
    name: r'sent',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> sent;



  @OptionalConverter()
  @JsonKey(
    
    name: r'volume',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<MailStatsTypeVolume?> volume;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is MailStatsType &&
      runtimeType == other.runtimeType &&
      equals(
        [
            time,
            usage,
            currency,
            currencySymbol,
            cost,
            received,
            sent,
            volume,
        ],
        [
            other.time,
            other.usage,
            other.currency,
            other.currencySymbol,
            other.cost,
            other.received,
            other.sent,
            other.volume,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        time,
        usage,
        currency,
        currencySymbol,
        cost,
        received,
        sent,
        volume,
    ],);

  factory MailStatsType.fromJson(Map<String, dynamic> json) => _$MailStatsTypeFromJson(json);

  Map<String, dynamic> toJson() => _$MailStatsTypeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum MailStatsTypeTimeEnum {
@JsonValue(r'all')
all(r'all'),
@JsonValue(r'billing')
billing(r'billing'),
@JsonValue(r'month')
month(r'month'),
@JsonValue(r'7d')
n7d(r'7d'),
@JsonValue(r'24h')
n24h(r'24h'),
@JsonValue(r'today')
today(r'today'),
@JsonValue(r'1h')
n1h(r'1h'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const MailStatsTypeTimeEnum(this.value);

final String value;

@override
String toString() => value;
}


