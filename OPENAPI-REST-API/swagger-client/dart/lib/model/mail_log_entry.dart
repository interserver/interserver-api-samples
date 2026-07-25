part of swagger.api;

class MailLogEntry {
  /* Internal auto-increment database row ID. */
  int id = null;
/* The relay-assigned mail ID (18-19 hex characters).  Matches the `mailid` filter parameter and the `text` value returned by send endpoints. */
  String id = null;
/* SMTP envelope `MAIL FROM` address. */
  String from = null;
/* SMTP envelope `RCPT TO` address. */
  String to = null;
/* The `Subject` header value.  MIME-encoded subjects (UTF-8, ISO-8859, US-ASCII) are automatically decoded. */
  String subject = null;
/* The `Message-ID` header value.  Can be used with the `messageId` filter for subsequent lookups. */
  String messageId = null;
/* Human-readable creation timestamp in `YYYY-MM-DD HH:MM:SS` format. */
  String created = null;
/* Unix timestamp of message acceptance.  Corresponds to the `startDate` and `endDate` filter parameters. */
  int time = null;
/* The SMTP AUTH username used to submit the message (e.g. `mb5658`). */
  String user = null;
/* SMTP transaction type negotiated with the relay. */
  String transtype = null;
/* IP address of the client that submitted the message to the relay. */
  String origin = null;
/* Relay interface name that accepted the message. */
  String interface = null;
/* The sending zone assigned by the relay for outbound delivery. */
  String sendingZone = null;
/* Size of the message body in bytes. */
  int bodySize = null;
/* Sequence index of this recipient in a multi-recipient message. Starts at 1. */
  int seq = null;
/* Delivery status flag.  `1` = successfully delivered to destination MX. `0` = queued, deferred, or failed.  `null` = delivery not yet attempted. */
  int delivered = null;
/* The SMTP response code from the destination MX server (e.g. `250`). */
  int code = null;
/* The specific recipient address this delivery record is for. */
  String recipient = null;
/* The full SMTP response string received from the destination MX server. */
  String response = null;
/* The destination domain for this delivery attempt. */
  String domain = null;
/* Whether the queue entry is currently locked for delivery processing. */
  int locked = null;
/* Millisecond-precision timestamp of the last queue lock acquisition. */
  String lockTime = null;
/* The relay server node assigned to deliver this message. */
  String assigned = null;
/* ISO 8601 timestamp when the message was placed into the delivery queue. */
  String queued = null;
/* The MX hostname the relay connected to for delivery.  Corresponds to the `mx` filter parameter. */
  String mxHostname = null;

  MailLogEntry();

  @override
  String toString() {
    return 'MailLogEntry[id=$id, id=$id, from=$from, to=$to, subject=$subject, messageId=$messageId, created=$created, time=$time, user=$user, transtype=$transtype, origin=$origin, interface=$interface, sendingZone=$sendingZone, bodySize=$bodySize, seq=$seq, delivered=$delivered, code=$code, recipient=$recipient, response=$response, domain=$domain, locked=$locked, lockTime=$lockTime, assigned=$assigned, queued=$queued, mxHostname=$mxHostname, ]';
  }

  MailLogEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['_id'];
    id = json['id'];
    from = json['from'];
    to = json['to'];
    subject = json['subject'];
    messageId = json['messageId'];
    created = json['created'];
    time = json['time'];
    user = json['user'];
    transtype = json['transtype'];
    origin = json['origin'];
    interface = json['interface'];
    sendingZone = json['sendingZone'];
    bodySize = json['bodySize'];
    seq = json['seq'];
    delivered = json['delivered'];
    code = json['code'];
    recipient = json['recipient'];
    response = json['response'];
    domain = json['domain'];
    locked = json['locked'];
    lockTime = json['lockTime'];
    assigned = json['assigned'];
    queued = json['queued'];
    mxHostname = json['mxHostname'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'id': id,
      'from': from,
      'to': to,
      'subject': subject,
      'messageId': messageId,
      'created': created,
      'time': time,
      'user': user,
      'transtype': transtype,
      'origin': origin,
      'interface': interface,
      'sendingZone': sendingZone,
      'bodySize': bodySize,
      'seq': seq,
      'delivered': delivered,
      'code': code,
      'recipient': recipient,
      'response': response,
      'domain': domain,
      'locked': locked,
      'lockTime': lockTime,
      'assigned': assigned,
      'queued': queued,
      'mxHostname': mxHostname
     };
  }

  static List<MailLogEntry> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailLogEntry>() : json.map((value) => new MailLogEntry.fromJson(value)).toList();
  }

  static Map<String, MailLogEntry> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailLogEntry>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailLogEntry.fromJson(value));
    }
    return map;
  }
}
