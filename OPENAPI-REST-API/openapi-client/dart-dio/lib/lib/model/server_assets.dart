//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_assets.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerAssets {
  /// Returns a new [ServerAssets] instance.
  ServerAssets({

    this.title = const Optional.absent(),

    this.size = const Optional.absent(),

    this.type = const Optional.absent(),

    this.header = const Optional.absent(),

    this.rows = const Optional.absent(),
  });

      /// The title of the assets.
  @OptionalConverter()
  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> title;



      /// The size of the assets.
  @OptionalConverter()
  @JsonKey(
    
    name: r'size',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> size;



      /// The type of the assets.
  @OptionalConverter()
  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> type;



      /// The header of the assets table.
  @OptionalConverter()
  @JsonKey(
    
    name: r'header',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> header;



      /// The rows of the assets table.
  @OptionalConverter()
  @JsonKey(
    
    name: r'rows',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<List<String>>?> rows;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerAssets &&
      runtimeType == other.runtimeType &&
      equals(
        [
            title,
            size,
            type,
            header,
            rows,
        ],
        [
            other.title,
            other.size,
            other.type,
            other.header,
            other.rows,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        title,
        size,
        type,
        header,
        rows,
    ],);

  factory ServerAssets.fromJson(Map<String, dynamic> json) => _$ServerAssetsFromJson(json);

  Map<String, dynamic> toJson() => _$ServerAssetsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

