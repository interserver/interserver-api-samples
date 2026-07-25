//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/account_info_max_mind_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'account_info_data_cc.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AccountInfoDataCc {
  /// Returns a new [AccountInfoDataCc] instance.
  AccountInfoDataCc({

    this.cc = const Optional.absent(),

    this.ccExp = const Optional.absent(),

    this.name = const Optional.absent(),

    this.address = const Optional.absent(),

    this.city = const Optional.absent(),

    this.state = const Optional.absent(),

    this.zip = const Optional.absent(),

    this.country = const Optional.absent(),

    this.maxmindRiskscore = const Optional.absent(),

    this.maxmind = const Optional.absent(),

    this.verified = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'cc',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> cc;



  @OptionalConverter()
  @JsonKey(
    
    name: r'cc_exp',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ccExp;



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
    
    name: r'address',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> address;



  @OptionalConverter()
  @JsonKey(
    
    name: r'city',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> city;



  @OptionalConverter()
  @JsonKey(
    
    name: r'state',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> state;



  @OptionalConverter()
  @JsonKey(
    
    name: r'zip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> zip;



  @OptionalConverter()
  @JsonKey(
    
    name: r'country',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> country;



  @OptionalConverter()
  @JsonKey(
    
    name: r'maxmind_riskscore',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> maxmindRiskscore;



  @OptionalConverter()
  @JsonKey(
    
    name: r'maxmind',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<AccountInfoMaxMindResponse?> maxmind;



  @OptionalConverter()
  @JsonKey(
    
    name: r'verified',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> verified;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is AccountInfoDataCc &&
      runtimeType == other.runtimeType &&
      equals(
        [
            cc,
            ccExp,
            name,
            address,
            city,
            state,
            zip,
            country,
            maxmindRiskscore,
            maxmind,
            verified,
        ],
        [
            other.cc,
            other.ccExp,
            other.name,
            other.address,
            other.city,
            other.state,
            other.zip,
            other.country,
            other.maxmindRiskscore,
            other.maxmind,
            other.verified,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        cc,
        ccExp,
        name,
        address,
        city,
        state,
        zip,
        country,
        maxmindRiskscore,
        maxmind,
        verified,
    ],);

  factory AccountInfoDataCc.fromJson(Map<String, dynamic> json) => _$AccountInfoDataCcFromJson(json);

  Map<String, dynamic> toJson() => _$AccountInfoDataCcToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

