//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class SendMailAdv {
  /// Returns a new [SendMailAdv] instance.
  SendMailAdv({
    required this.subject,
    required this.body,
    required this.from,
    this.to = const [],
    this.replyto = const [],
    this.cc = const [],
    this.bcc = const [],
    this.attachments = const [],
    this.id,
  });

  /// The subject or title of the email
  String subject;

  /// The main email contents.
  String body;

  EmailAddressName from;

  /// A list of destionation email addresses to send this to
  List<EmailAddressName> to;

  /// (optional) A list of email addresses that specify where replies to the email should be sent instead of the _from_ address.
  List<EmailAddressName> replyto;

  /// (optional) A list of email addresses to carbon copy this message to.  They are listed on the email and anyone getting the email can see this full list of Contacts who received the email as well.
  List<EmailAddressName> cc;

  /// (optional) list of email addresses that should receive copies of the email.  They are hidden on the email and anyone gettitng the email would not see the other people getting the email in this list.
  List<EmailAddressName> bcc;

  /// (optional) File attachments to include in the email.  The file contents must be base64 encoded!
  List<MailAttachment> attachments;

  /// (optional)  ID of the Mail order within our system to use as the Mail Account.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendMailAdv &&
    other.subject == subject &&
    other.body == body &&
    other.from == from &&
    _deepEquality.equals(other.to, to) &&
    _deepEquality.equals(other.replyto, replyto) &&
    _deepEquality.equals(other.cc, cc) &&
    _deepEquality.equals(other.bcc, bcc) &&
    _deepEquality.equals(other.attachments, attachments) &&
    other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (subject.hashCode) +
    (body.hashCode) +
    (from.hashCode) +
    (to.hashCode) +
    (replyto.hashCode) +
    (cc.hashCode) +
    (bcc.hashCode) +
    (attachments.hashCode) +
    (id == null ? 0 : id!.hashCode);

  @override
  String toString() => 'SendMailAdv[subject=$subject, body=$body, from=$from, to=$to, replyto=$replyto, cc=$cc, bcc=$bcc, attachments=$attachments, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'subject'] = this.subject;
      json[r'body'] = this.body;
      json[r'from'] = this.from;
      json[r'to'] = this.to;
      json[r'replyto'] = this.replyto;
      json[r'cc'] = this.cc;
      json[r'bcc'] = this.bcc;
      json[r'attachments'] = this.attachments;
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    return json;
  }

  /// Returns a new [SendMailAdv] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendMailAdv? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'subject'), 'Required key "SendMailAdv[subject]" is missing from JSON.');
        assert(json[r'subject'] != null, 'Required key "SendMailAdv[subject]" has a null value in JSON.');
        assert(json.containsKey(r'body'), 'Required key "SendMailAdv[body]" is missing from JSON.');
        assert(json[r'body'] != null, 'Required key "SendMailAdv[body]" has a null value in JSON.');
        assert(json.containsKey(r'from'), 'Required key "SendMailAdv[from]" is missing from JSON.');
        assert(json[r'from'] != null, 'Required key "SendMailAdv[from]" has a null value in JSON.');
        assert(json.containsKey(r'to'), 'Required key "SendMailAdv[to]" is missing from JSON.');
        assert(json[r'to'] != null, 'Required key "SendMailAdv[to]" has a null value in JSON.');
        return true;
      }());

      return SendMailAdv(
        subject: mapValueOfType<String>(json, r'subject')!,
        body: mapValueOfType<String>(json, r'body')!,
        from: EmailAddressName.fromJson(json[r'from'])!,
        to: EmailAddressName.listFromJson(json[r'to']),
        replyto: EmailAddressName.listFromJson(json[r'replyto']),
        cc: EmailAddressName.listFromJson(json[r'cc']),
        bcc: EmailAddressName.listFromJson(json[r'bcc']),
        attachments: MailAttachment.listFromJson(json[r'attachments']),
        id: mapValueOfType<int>(json, r'id'),
      );
    }
    return null;
  }

  static List<SendMailAdv> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendMailAdv>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendMailAdv.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendMailAdv> mapFromJson(dynamic json) {
    final map = <String, SendMailAdv>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendMailAdv.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendMailAdv-objects as value to a dart map
  static Map<String, List<SendMailAdv>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendMailAdv>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendMailAdv.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'subject',
    'body',
    'from',
    'to',
  };
}

