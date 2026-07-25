//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_switchport.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerSwitchport {
  /// Returns a new [ServerSwitchport] instance.
  ServerSwitchport({

    required  this.switchportId,

    required  this.switchId,

    required  this.switch_,

    required  this.port,

    required  this.blade,

    required  this.justport,

    required  this.graphId,

    required  this.assetId,

    this.vlans = const Optional.absent(),

    this.vlans6 = const Optional.absent(),
  });

      /// Unique identifier for the switchport.
  @JsonKey(
    
    name: r'switchport_id',
    required: true,
    includeIfNull: false,
  )


  final int switchportId;



      /// Unique identifier for the switch associated with the switchport.
  @JsonKey(
    
    name: r'switch_id',
    required: true,
    includeIfNull: false,
  )


  final String switchId;



      /// Name of the switch associated with the switchport.
  @JsonKey(
    
    name: r'switch',
    required: true,
    includeIfNull: false,
  )


  final String switch_;



      /// Port name on the switch.
  @JsonKey(
    
    name: r'port',
    required: true,
    includeIfNull: false,
  )


  final String port;



      /// Blade name associated with the port.
  @JsonKey(
    
    name: r'blade',
    required: true,
    includeIfNull: false,
  )


  final String blade;



      /// Port identifier.
  @JsonKey(
    
    name: r'justport',
    required: true,
    includeIfNull: false,
  )


  final String justport;



      /// Identifier for the graph associated with the switchport.
  @JsonKey(
    
    name: r'graph_id',
    required: true,
    includeIfNull: false,
  )


  final String graphId;



      /// Unique identifier of the asset associated with the switchport.
  @JsonKey(
    
    name: r'asset_id',
    required: true,
    includeIfNull: false,
  )


  final int assetId;



      /// List of VLANs associated with the switchport.
  @OptionalConverter()
  @JsonKey(
    
    name: r'vlans',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> vlans;



      /// List of IPv6 VLANs associated with the switchport.
  @OptionalConverter()
  @JsonKey(
    
    name: r'vlans6',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> vlans6;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerSwitchport &&
      runtimeType == other.runtimeType &&
      equals(
        [
            switchportId,
            switchId,
            switch_,
            port,
            blade,
            justport,
            graphId,
            assetId,
            vlans,
            vlans6,
        ],
        [
            other.switchportId,
            other.switchId,
            other.switch_,
            other.port,
            other.blade,
            other.justport,
            other.graphId,
            other.assetId,
            other.vlans,
            other.vlans6,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        switchportId,
        switchId,
        switch_,
        port,
        blade,
        justport,
        graphId,
        assetId,
        vlans,
        vlans6,
    ],);

  factory ServerSwitchport.fromJson(Map<String, dynamic> json) => _$ServerSwitchportFromJson(json);

  Map<String, dynamic> toJson() => _$ServerSwitchportToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

