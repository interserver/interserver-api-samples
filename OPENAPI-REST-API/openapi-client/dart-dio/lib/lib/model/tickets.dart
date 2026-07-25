//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/tickets_row.dart';
import 'package:interserver_api/lib/model/tickets_count_array.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'tickets.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Tickets {
  /// Returns a new [Tickets] instance.
  Tickets({

    required  this.ima,

    required  this.custid,

    required  this.view,

    required  this.currentPage,

    required  this.limit,

    required  this.sortcol,

    required  this.sortdir,

    required  this.rowsOffset,

    required  this.tickets,

    required  this.pages,

    required  this.rowsTotal,

    required  this.inboxCount,

    required  this.countArray,

    required  this.viewText,
  });

  @JsonKey(
    
    name: r'ima',
    required: true,
    includeIfNull: false,
  )


  final String ima;



  @JsonKey(
    
    name: r'custid',
    required: true,
    includeIfNull: false,
  )


  final String custid;



  @JsonKey(
    
    name: r'view',
    required: true,
    includeIfNull: false,
  )


  final String view;



  @JsonKey(
    
    name: r'currentPage',
    required: true,
    includeIfNull: false,
  )


  final int currentPage;



  @JsonKey(
    
    name: r'limit',
    required: true,
    includeIfNull: false,
  )


  final int limit;



  @JsonKey(
    
    name: r'sortcol',
    required: true,
    includeIfNull: false,
  )


  final int sortcol;



  @JsonKey(
    
    name: r'sortdir',
    required: true,
    includeIfNull: false,
  )


  final int sortdir;



  @JsonKey(
    
    name: r'rowsOffset',
    required: true,
    includeIfNull: false,
  )


  final int rowsOffset;



  @JsonKey(
    
    name: r'tickets',
    required: true,
    includeIfNull: false,
  )


  final List<TicketsRow> tickets;



  @JsonKey(
    
    name: r'pages',
    required: true,
    includeIfNull: false,
  )


  final int pages;



  @JsonKey(
    
    name: r'rowsTotal',
    required: true,
    includeIfNull: false,
  )


  final int rowsTotal;



  @JsonKey(
    
    name: r'inboxCount',
    required: true,
    includeIfNull: false,
  )


  final int inboxCount;



  @JsonKey(
    
    name: r'countArray',
    required: true,
    includeIfNull: false,
  )


  final TicketsCountArray countArray;



  @JsonKey(
    
    name: r'viewText',
    required: true,
    includeIfNull: false,
  )


  final String viewText;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is Tickets &&
      runtimeType == other.runtimeType &&
      equals(
        [
            ima,
            custid,
            view,
            currentPage,
            limit,
            sortcol,
            sortdir,
            rowsOffset,
            tickets,
            pages,
            rowsTotal,
            inboxCount,
            countArray,
            viewText,
        ],
        [
            other.ima,
            other.custid,
            other.view,
            other.currentPage,
            other.limit,
            other.sortcol,
            other.sortdir,
            other.rowsOffset,
            other.tickets,
            other.pages,
            other.rowsTotal,
            other.inboxCount,
            other.countArray,
            other.viewText,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        ima,
        custid,
        view,
        currentPage,
        limit,
        sortcol,
        sortdir,
        rowsOffset,
        tickets,
        pages,
        rowsTotal,
        inboxCount,
        countArray,
        viewText,
    ],);

  factory Tickets.fromJson(Map<String, dynamic> json) => _$TicketsFromJson(json);

  Map<String, dynamic> toJson() => _$TicketsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

