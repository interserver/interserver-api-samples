//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'affiliate_banner_row.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AffiliateBannerRow {
  /// Returns a new [AffiliateBannerRow] instance.
  AffiliateBannerRow({

    this.image = const Optional.absent(),

    this.width = const Optional.absent(),

    this.height = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'image',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> image;



  @OptionalConverter()
  @JsonKey(
    
    name: r'width',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> width;



  @OptionalConverter()
  @JsonKey(
    
    name: r'height',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> height;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is AffiliateBannerRow &&
      runtimeType == other.runtimeType &&
      equals(
        [
            image,
            width,
            height,
        ],
        [
            other.image,
            other.width,
            other.height,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        image,
        width,
        height,
    ],);

  factory AffiliateBannerRow.fromJson(Map<String, dynamic> json) => _$AffiliateBannerRowFromJson(json);

  Map<String, dynamic> toJson() => _$AffiliateBannerRowToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

