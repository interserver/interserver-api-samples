//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'ticket_new.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TicketNew {
  /// Returns a new [TicketNew] instance.
  TicketNew({

    required  this.subject,

    required  this.body,

    this.serviceId = const Optional.absent(),

    this.serviceModule = const Optional.absent(),
  });

  @JsonKey(
    
    name: r'subject',
    required: true,
    includeIfNull: false,
  )


  final String subject;



  @JsonKey(
    
    name: r'body',
    required: true,
    includeIfNull: false,
  )


  final String body;



  @OptionalConverter()
  @JsonKey(
    
    name: r'service_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> serviceId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'service_module',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serviceModule;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is TicketNew &&
      runtimeType == other.runtimeType &&
      equals(
        [
            subject,
            body,
            serviceId,
            serviceModule,
        ],
        [
            other.subject,
            other.body,
            other.serviceId,
            other.serviceModule,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        subject,
        body,
        serviceId,
        serviceModule,
    ],);

  factory TicketNew.fromJson(Map<String, dynamic> json) => _$TicketNewFromJson(json);

  Map<String, dynamic> toJson() => _$TicketNewToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

