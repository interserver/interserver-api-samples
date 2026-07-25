//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'website_service_master.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WebsiteServiceMaster {
  /// Returns a new [WebsiteServiceMaster] instance.
  WebsiteServiceMaster({

    this.websiteId = const Optional.absent(),

    this.websiteName = const Optional.absent(),

    this.websiteIp = const Optional.absent(),

    this.websiteType = const Optional.absent(),

    this.websiteAvailable = const Optional.absent(),

    this.websiteHdsize = const Optional.absent(),

    this.websiteHdfree = const Optional.absent(),

    this.websiteLoad = const Optional.absent(),

    this.websiteLastUpdate = const Optional.absent(),

    this.websiteMaxSites = const Optional.absent(),

    this.websiteOrder = const Optional.absent(),

    this.websitePartitions = const Optional.absent(),

    this.websiteDns1 = const Optional.absent(),

    this.websiteDns2 = const Optional.absent(),
  });

      /// Website ID for the service master
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteId;



      /// Website name for the service master
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteName;



      /// IP address for the service master
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_ip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteIp;



      /// Website type for the service master
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteType;



      /// Availability status for the service master
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_available',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteAvailable;



      /// Hard drive size for the service master
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_hdsize',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteHdsize;



      /// Free hard drive space for the service master
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_hdfree',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteHdfree;



      /// Load for the service master
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_load',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteLoad;



      /// Last update date for the service master
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_last_update',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteLastUpdate;



      /// Maximum number of sites for the service master
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_max_sites',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteMaxSites;



      /// Order number for the service master
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_order',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteOrder;



      /// Partitions for the service master
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_partitions',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websitePartitions;



      /// DNS server 1 for the service master
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_dns1',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteDns1;



      /// DNS server 2 for the service master
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_dns2',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteDns2;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is WebsiteServiceMaster &&
      runtimeType == other.runtimeType &&
      equals(
        [
            websiteId,
            websiteName,
            websiteIp,
            websiteType,
            websiteAvailable,
            websiteHdsize,
            websiteHdfree,
            websiteLoad,
            websiteLastUpdate,
            websiteMaxSites,
            websiteOrder,
            websitePartitions,
            websiteDns1,
            websiteDns2,
        ],
        [
            other.websiteId,
            other.websiteName,
            other.websiteIp,
            other.websiteType,
            other.websiteAvailable,
            other.websiteHdsize,
            other.websiteHdfree,
            other.websiteLoad,
            other.websiteLastUpdate,
            other.websiteMaxSites,
            other.websiteOrder,
            other.websitePartitions,
            other.websiteDns1,
            other.websiteDns2,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        websiteId,
        websiteName,
        websiteIp,
        websiteType,
        websiteAvailable,
        websiteHdsize,
        websiteHdfree,
        websiteLoad,
        websiteLastUpdate,
        websiteMaxSites,
        websiteOrder,
        websitePartitions,
        websiteDns1,
        websiteDns2,
    ],);

  factory WebsiteServiceMaster.fromJson(Map<String, dynamic> json) => _$WebsiteServiceMasterFromJson(json);

  Map<String, dynamic> toJson() => _$WebsiteServiceMasterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

