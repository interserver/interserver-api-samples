//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_service_addons.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsServiceAddons {
  /// Returns a new [VpsServiceAddons] instance.
  VpsServiceAddons({

    this.hasCpanel = const Optional.absent(),

    this.hasDirectadmin = const Optional.absent(),

    this.hasFantastico = const Optional.absent(),

    this.hasSoftaculous = const Optional.absent(),

    this.hasHdspace = const Optional.absent(),

    this.dedicatedIp = const Optional.absent(),

    this.extraIps = const Optional.absent(),

    this.extraIps6 = const Optional.absent(),

    this.unpaidIps = const Optional.absent(),

    this.ips = const Optional.absent(),

    this.ips6 = const Optional.absent(),

    this.cpanelId = const Optional.absent(),

    this.cost = const Optional.absent(),

    this.ids = const Optional.absent(),

    this.rdata = const Optional.absent(),
  });

      /// Whether a cPanel license is active on this VPS.
  @OptionalConverter()
  @JsonKey(
    
    name: r'has_cpanel',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> hasCpanel;



      /// Whether a DirectAdmin license is active on this VPS.
  @OptionalConverter()
  @JsonKey(
    
    name: r'has_directadmin',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> hasDirectadmin;



      /// Whether a Fantastico license is active on this VPS.
  @OptionalConverter()
  @JsonKey(
    
    name: r'has_fantastico',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> hasFantastico;



      /// Whether a Softaculous license is active on this VPS.
  @OptionalConverter()
  @JsonKey(
    
    name: r'has_softaculous',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> hasSoftaculous;



      /// Whether extra disk space has been added to this VPS.
  @OptionalConverter()
  @JsonKey(
    
    name: r'has_hdspace',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> hasHdspace;



      /// Whether a dedicated IP address is assigned to this VPS.
  @OptionalConverter()
  @JsonKey(
    
    name: r'dedicated_ip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> dedicatedIp;



      /// List of additional IPv4 addresses assigned to this VPS.
  @OptionalConverter()
  @JsonKey(
    
    name: r'extra_ips',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> extraIps;



      /// List of additional IPv6 addresses assigned to this VPS.
  @OptionalConverter()
  @JsonKey(
    
    name: r'extra_ips6',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> extraIps6;



      /// List of IP addresses that have unpaid charges.
  @OptionalConverter()
  @JsonKey(
    
    name: r'unpaid_ips',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> unpaidIps;



      /// All IPv4 addresses assigned to this VPS.
  @OptionalConverter()
  @JsonKey(
    
    name: r'ips',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> ips;



      /// All IPv6 addresses assigned to this VPS.
  @OptionalConverter()
  @JsonKey(
    
    name: r'ips6',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> ips6;



      /// The add-on service ID for the cPanel license.
  @OptionalConverter()
  @JsonKey(
    
    name: r'cpanel_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> cpanelId;



      /// Total monthly add-on cost in cents.
  @OptionalConverter()
  @JsonKey(
    
    name: r'cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> cost;



      /// List of add-on service IDs active on this VPS.
  @OptionalConverter()
  @JsonKey(
    
    name: r'ids',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> ids;



      /// Raw add-on data entries.
  @OptionalConverter()
  @JsonKey(
    
    name: r'rdata',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> rdata;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsServiceAddons &&
      runtimeType == other.runtimeType &&
      equals(
        [
            hasCpanel,
            hasDirectadmin,
            hasFantastico,
            hasSoftaculous,
            hasHdspace,
            dedicatedIp,
            extraIps,
            extraIps6,
            unpaidIps,
            ips,
            ips6,
            cpanelId,
            cost,
            ids,
            rdata,
        ],
        [
            other.hasCpanel,
            other.hasDirectadmin,
            other.hasFantastico,
            other.hasSoftaculous,
            other.hasHdspace,
            other.dedicatedIp,
            other.extraIps,
            other.extraIps6,
            other.unpaidIps,
            other.ips,
            other.ips6,
            other.cpanelId,
            other.cost,
            other.ids,
            other.rdata,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        hasCpanel,
        hasDirectadmin,
        hasFantastico,
        hasSoftaculous,
        hasHdspace,
        dedicatedIp,
        extraIps,
        extraIps6,
        unpaidIps,
        ips,
        ips6,
        cpanelId,
        cost,
        ids,
        rdata,
    ],);

  factory VpsServiceAddons.fromJson(Map<String, dynamic> json) => _$VpsServiceAddonsFromJson(json);

  Map<String, dynamic> toJson() => _$VpsServiceAddonsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

