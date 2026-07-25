//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class MailLogEntry {
  /// Returns a new [MailLogEntry] instance.
  MailLogEntry({
    required this.id,
    required this.id,
    required this.from,
    required this.to,
    required this.created,
    required this.time,
    required this.user,
    required this.transtype,
    required this.origin,
    required this.interface_,
    this.subject,
    this.messageId,
    this.sendingZone,
    this.bodySize,
    this.seq,
    this.delivered,
    this.code,
    this.recipient,
    this.response,
    this.domain,
    this.locked,
    this.lockTime,
    this.assigned,
    this.queued,
    this.mxHostname,
  });

  /// Internal auto-increment database row ID.
  int id;

  /// The relay-assigned mail ID (18-19 hex characters).  Matches the `mailid` filter parameter and the `text` value returned by send endpoints.
  String id;

  /// SMTP envelope `MAIL FROM` address.
  String from;

  /// SMTP envelope `RCPT TO` address.
  String to;

  /// Human-readable creation timestamp in `YYYY-MM-DD HH:MM:SS` format.
  String created;

  /// Unix timestamp of message acceptance.  Corresponds to the `startDate` and `endDate` filter parameters.
  int time;

  /// The SMTP AUTH username used to submit the message (e.g. `mb5658`).
  String user;

  /// SMTP transaction type negotiated with the relay.
  String transtype;

  /// IP address of the client that submitted the message to the relay.
  String origin;

  /// Relay interface name that accepted the message.
  String interface_;

  /// The `Subject` header value.  MIME-encoded subjects (UTF-8, ISO-8859, US-ASCII) are automatically decoded.
  String? subject;

  /// The `Message-ID` header value.  Can be used with the `messageId` filter for subsequent lookups.
  String? messageId;

  /// The sending zone assigned by the relay for outbound delivery.
  String? sendingZone;

  /// Size of the message body in bytes.
  int? bodySize;

  /// Sequence index of this recipient in a multi-recipient message. Starts at 1.
  int? seq;

  /// Delivery status flag.  `1` = successfully delivered to destination MX. `0` = queued, deferred, or failed.  `null` = delivery not yet attempted.
  int? delivered;

  /// The SMTP response code from the destination MX server (e.g. `250`).
  int? code;

  /// The specific recipient address this delivery record is for.
  String? recipient;

  /// The full SMTP response string received from the destination MX server.
  String? response;

  /// The destination domain for this delivery attempt.
  String? domain;

  /// Whether the queue entry is currently locked for delivery processing.
  int? locked;

  /// Millisecond-precision timestamp of the last queue lock acquisition.
  String? lockTime;

  /// The relay server node assigned to deliver this message.
  String? assigned;

  /// ISO 8601 timestamp when the message was placed into the delivery queue.
  String? queued;

  /// The MX hostname the relay connected to for delivery.  Corresponds to the `mx` filter parameter.
  String? mxHostname;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MailLogEntry &&
    other.id == id &&
    other.id == id &&
    other.from == from &&
    other.to == to &&
    other.created == created &&
    other.time == time &&
    other.user == user &&
    other.transtype == transtype &&
    other.origin == origin &&
    other.interface_ == interface_ &&
    other.subject == subject &&
    other.messageId == messageId &&
    other.sendingZone == sendingZone &&
    other.bodySize == bodySize &&
    other.seq == seq &&
    other.delivered == delivered &&
    other.code == code &&
    other.recipient == recipient &&
    other.response == response &&
    other.domain == domain &&
    other.locked == locked &&
    other.lockTime == lockTime &&
    other.assigned == assigned &&
    other.queued == queued &&
    other.mxHostname == mxHostname;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (id.hashCode) +
    (from.hashCode) +
    (to.hashCode) +
    (created.hashCode) +
    (time.hashCode) +
    (user.hashCode) +
    (transtype.hashCode) +
    (origin.hashCode) +
    (interface_.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (messageId == null ? 0 : messageId!.hashCode) +
    (sendingZone == null ? 0 : sendingZone!.hashCode) +
    (bodySize == null ? 0 : bodySize!.hashCode) +
    (seq == null ? 0 : seq!.hashCode) +
    (delivered == null ? 0 : delivered!.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (recipient == null ? 0 : recipient!.hashCode) +
    (response == null ? 0 : response!.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (locked == null ? 0 : locked!.hashCode) +
    (lockTime == null ? 0 : lockTime!.hashCode) +
    (assigned == null ? 0 : assigned!.hashCode) +
    (queued == null ? 0 : queued!.hashCode) +
    (mxHostname == null ? 0 : mxHostname!.hashCode);

  @override
  String toString() => 'MailLogEntry[id=$id, id=$id, from=$from, to=$to, created=$created, time=$time, user=$user, transtype=$transtype, origin=$origin, interface_=$interface_, subject=$subject, messageId=$messageId, sendingZone=$sendingZone, bodySize=$bodySize, seq=$seq, delivered=$delivered, code=$code, recipient=$recipient, response=$response, domain=$domain, locked=$locked, lockTime=$lockTime, assigned=$assigned, queued=$queued, mxHostname=$mxHostname]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_id'] = this.id;
      json[r'id'] = this.id;
      json[r'from'] = this.from;
      json[r'to'] = this.to;
      json[r'created'] = this.created;
      json[r'time'] = this.time;
      json[r'user'] = this.user;
      json[r'transtype'] = this.transtype;
      json[r'origin'] = this.origin;
      json[r'interface'] = this.interface_;
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.messageId != null) {
      json[r'messageId'] = this.messageId;
    } else {
      json[r'messageId'] = null;
    }
    if (this.sendingZone != null) {
      json[r'sendingZone'] = this.sendingZone;
    } else {
      json[r'sendingZone'] = null;
    }
    if (this.bodySize != null) {
      json[r'bodySize'] = this.bodySize;
    } else {
      json[r'bodySize'] = null;
    }
    if (this.seq != null) {
      json[r'seq'] = this.seq;
    } else {
      json[r'seq'] = null;
    }
    if (this.delivered != null) {
      json[r'delivered'] = this.delivered;
    } else {
      json[r'delivered'] = null;
    }
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.recipient != null) {
      json[r'recipient'] = this.recipient;
    } else {
      json[r'recipient'] = null;
    }
    if (this.response != null) {
      json[r'response'] = this.response;
    } else {
      json[r'response'] = null;
    }
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.locked != null) {
      json[r'locked'] = this.locked;
    } else {
      json[r'locked'] = null;
    }
    if (this.lockTime != null) {
      json[r'lockTime'] = this.lockTime;
    } else {
      json[r'lockTime'] = null;
    }
    if (this.assigned != null) {
      json[r'assigned'] = this.assigned;
    } else {
      json[r'assigned'] = null;
    }
    if (this.queued != null) {
      json[r'queued'] = this.queued;
    } else {
      json[r'queued'] = null;
    }
    if (this.mxHostname != null) {
      json[r'mxHostname'] = this.mxHostname;
    } else {
      json[r'mxHostname'] = null;
    }
    return json;
  }

  /// Returns a new [MailLogEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MailLogEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'_id'), 'Required key "MailLogEntry[_id]" is missing from JSON.');
        assert(json[r'_id'] != null, 'Required key "MailLogEntry[_id]" has a null value in JSON.');
        assert(json.containsKey(r'id'), 'Required key "MailLogEntry[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "MailLogEntry[id]" has a null value in JSON.');
        assert(json.containsKey(r'from'), 'Required key "MailLogEntry[from]" is missing from JSON.');
        assert(json[r'from'] != null, 'Required key "MailLogEntry[from]" has a null value in JSON.');
        assert(json.containsKey(r'to'), 'Required key "MailLogEntry[to]" is missing from JSON.');
        assert(json[r'to'] != null, 'Required key "MailLogEntry[to]" has a null value in JSON.');
        assert(json.containsKey(r'created'), 'Required key "MailLogEntry[created]" is missing from JSON.');
        assert(json[r'created'] != null, 'Required key "MailLogEntry[created]" has a null value in JSON.');
        assert(json.containsKey(r'time'), 'Required key "MailLogEntry[time]" is missing from JSON.');
        assert(json[r'time'] != null, 'Required key "MailLogEntry[time]" has a null value in JSON.');
        assert(json.containsKey(r'user'), 'Required key "MailLogEntry[user]" is missing from JSON.');
        assert(json[r'user'] != null, 'Required key "MailLogEntry[user]" has a null value in JSON.');
        assert(json.containsKey(r'transtype'), 'Required key "MailLogEntry[transtype]" is missing from JSON.');
        assert(json[r'transtype'] != null, 'Required key "MailLogEntry[transtype]" has a null value in JSON.');
        assert(json.containsKey(r'origin'), 'Required key "MailLogEntry[origin]" is missing from JSON.');
        assert(json[r'origin'] != null, 'Required key "MailLogEntry[origin]" has a null value in JSON.');
        assert(json.containsKey(r'interface'), 'Required key "MailLogEntry[interface]" is missing from JSON.');
        assert(json[r'interface'] != null, 'Required key "MailLogEntry[interface]" has a null value in JSON.');
        return true;
      }());

      return MailLogEntry(
        id: mapValueOfType<int>(json, r'_id')!,
        id: mapValueOfType<String>(json, r'id')!,
        from: mapValueOfType<String>(json, r'from')!,
        to: mapValueOfType<String>(json, r'to')!,
        created: mapValueOfType<String>(json, r'created')!,
        time: mapValueOfType<int>(json, r'time')!,
        user: mapValueOfType<String>(json, r'user')!,
        transtype: mapValueOfType<String>(json, r'transtype')!,
        origin: mapValueOfType<String>(json, r'origin')!,
        interface_: mapValueOfType<String>(json, r'interface')!,
        subject: mapValueOfType<String>(json, r'subject'),
        messageId: mapValueOfType<String>(json, r'messageId'),
        sendingZone: mapValueOfType<String>(json, r'sendingZone'),
        bodySize: mapValueOfType<int>(json, r'bodySize'),
        seq: mapValueOfType<int>(json, r'seq'),
        delivered: mapValueOfType<int>(json, r'delivered'),
        code: mapValueOfType<int>(json, r'code'),
        recipient: mapValueOfType<String>(json, r'recipient'),
        response: mapValueOfType<String>(json, r'response'),
        domain: mapValueOfType<String>(json, r'domain'),
        locked: mapValueOfType<int>(json, r'locked'),
        lockTime: mapValueOfType<String>(json, r'lockTime'),
        assigned: mapValueOfType<String>(json, r'assigned'),
        queued: mapValueOfType<String>(json, r'queued'),
        mxHostname: mapValueOfType<String>(json, r'mxHostname'),
      );
    }
    return null;
  }

  static List<MailLogEntry> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MailLogEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MailLogEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MailLogEntry> mapFromJson(dynamic json) {
    final map = <String, MailLogEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MailLogEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MailLogEntry-objects as value to a dart map
  static Map<String, List<MailLogEntry>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MailLogEntry>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MailLogEntry.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '_id',
    'id',
    'from',
    'to',
    'created',
    'time',
    'user',
    'transtype',
    'origin',
    'interface',
  };
}

