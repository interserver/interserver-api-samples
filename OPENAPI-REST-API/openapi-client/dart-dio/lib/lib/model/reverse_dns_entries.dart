//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'reverse_dns_entries.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ReverseDnsEntries {
  /// Returns a new [ReverseDnsEntries] instance.
  ReverseDnsEntries({

    this.ips = const Optional.absent(),
  });

      /// The IPs you have access to and their current reverse dns mapping.
  @OptionalConverter()
  @JsonKey(
    
    name: r'ips',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<Map<String, Object>?> ips;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ReverseDnsEntries &&
      runtimeType == other.runtimeType &&
      equals(
        [
            ips,
        ],
        [
            other.ips,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        ips,
    ],);

  factory ReverseDnsEntries.fromJson(Map<String, dynamic> json) => _$ReverseDnsEntriesFromJson(json);

  Map<String, dynamic> toJson() => _$ReverseDnsEntriesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

