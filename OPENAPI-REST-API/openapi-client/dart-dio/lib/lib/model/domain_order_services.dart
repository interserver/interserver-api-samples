//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/domain_order_services10001.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'domain_order_services.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DomainOrderServices {
  /// Returns a new [DomainOrderServices] instance.
  DomainOrderServices({

    this.domainOrderServices10001 = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'DomainOrderServices10001',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<DomainOrderServices10001?> domainOrderServices10001;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DomainOrderServices &&
      runtimeType == other.runtimeType &&
      equals(
        [
            domainOrderServices10001,
        ],
        [
            other.domainOrderServices10001,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        domainOrderServices10001,
    ],);

  factory DomainOrderServices.fromJson(Map<String, dynamic> json) => _$DomainOrderServicesFromJson(json);

  Map<String, dynamic> toJson() => _$DomainOrderServicesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

