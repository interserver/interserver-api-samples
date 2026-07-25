//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_location1.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerLocation1 {
  /// Returns a new [ServerLocation1] instance.
  ServerLocation1({

    required  this.locationId,

    required  this.locationName,

    required  this.locationLat,

    required  this.locationLong,

    this.locationDescription = const Optional.absent(),

    this.locationIpmiGroup = const Optional.absent(),
  });

  @JsonKey(
    
    name: r'location_id',
    required: true,
    includeIfNull: false,
  )


  final int locationId;



  @JsonKey(
    
    name: r'location_name',
    required: true,
    includeIfNull: false,
  )


  final String locationName;



  @JsonKey(
    
    name: r'location_lat',
    required: true,
    includeIfNull: false,
  )


  final String locationLat;



  @JsonKey(
    
    name: r'location_long',
    required: true,
    includeIfNull: false,
  )


  final String locationLong;



  @OptionalConverter()
  @JsonKey(
    
    name: r'location_description',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> locationDescription;



  @OptionalConverter()
  @JsonKey(
    
    name: r'location_ipmi_group',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> locationIpmiGroup;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerLocation1 &&
      runtimeType == other.runtimeType &&
      equals(
        [
            locationId,
            locationName,
            locationLat,
            locationLong,
            locationDescription,
            locationIpmiGroup,
        ],
        [
            other.locationId,
            other.locationName,
            other.locationLat,
            other.locationLong,
            other.locationDescription,
            other.locationIpmiGroup,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        locationId,
        locationName,
        locationLat,
        locationLong,
        locationDescription,
        locationIpmiGroup,
    ],);

  factory ServerLocation1.fromJson(Map<String, dynamic> json) => _$ServerLocation1FromJson(json);

  Map<String, dynamic> toJson() => _$ServerLocation1ToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

