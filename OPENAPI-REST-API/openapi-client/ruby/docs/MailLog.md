# InterServerClient::MailLog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** | Total number of log entries that match the supplied filters, regardless of &#x60;skip&#x60; and &#x60;limit&#x60;.  Reflects the &#x60;groupby&#x60; mode. |  |
| **skip** | **Integer** | The &#x60;skip&#x60; value used for this page (echoed from the request). |  |
| **limit** | **Integer** | The &#x60;limit&#x60; value used for this page (echoed from the request). |  |
| **emails** | [**Array&lt;MailLogEntry&gt;**](MailLogEntry.md) |  |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::MailLog.new(
  total: 10234,
  skip: 0,
  limit: 100,
  emails: [{&quot;_id&quot;:103172,&quot;id&quot;:&quot;17c7eda538e0005d03&quot;,&quot;from&quot;:&quot;person@mysite.com&quot;,&quot;to&quot;:&quot;client@isp.com&quot;,&quot;subject&quot;:&quot;sell 0.005 shares&quot;,&quot;messageId&quot;:&quot;&lt;vmiLEebsuCbSpUxD7oN3REpaN4VbN6BrdCAbNKIrdAo@relay0.mailbaby.net&gt;&quot;,&quot;created&quot;:&quot;2021-10-14 08:50:10&quot;,&quot;time&quot;:1634215809,&quot;user&quot;:&quot;mb5658&quot;,&quot;transtype&quot;:&quot;ESMTPSA&quot;,&quot;origin&quot;:&quot;199.231.189.154&quot;,&quot;interface&quot;:&quot;feeder&quot;,&quot;sendingZone&quot;:&quot;interserver&quot;,&quot;bodySize&quot;:63,&quot;seq&quot;:1,&quot;delivered&quot;:1,&quot;code&quot;:250,&quot;recipient&quot;:&quot;client@isp.com&quot;,&quot;domain&quot;:&quot;interserver.net&quot;,&quot;locked&quot;:1,&quot;lockTime&quot;:&quot;1634215818533&quot;,&quot;assigned&quot;:&quot;relay1&quot;,&quot;queued&quot;:&quot;2021-10-14T12:50:15.487Z&quot;,&quot;mxHostname&quot;:&quot;mx.j.is.cc&quot;,&quot;response&quot;:&quot;250 2.0.0 Ok queued as C91D83E128C&quot;}]
)
```

