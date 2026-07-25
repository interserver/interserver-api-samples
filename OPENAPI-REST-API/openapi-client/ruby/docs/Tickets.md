# InterServerClient::Tickets

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ima** | **String** |  |  |
| **custid** | **String** |  |  |
| **view** | **String** |  |  |
| **current_page** | **Integer** |  |  |
| **limit** | **Integer** |  |  |
| **sortcol** | **Integer** |  |  |
| **sortdir** | **Integer** |  |  |
| **rows_offset** | **Integer** |  |  |
| **tickets** | [**Array&lt;TicketsRow&gt;**](TicketsRow.md) |  |  |
| **pages** | **Integer** |  |  |
| **rows_total** | **Integer** |  |  |
| **inbox_count** | **Integer** |  |  |
| **count_array** | [**TicketsCountArray**](TicketsCountArray.md) |  |  |
| **view_text** | **String** |  |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::Tickets.new(
  ima: null,
  custid: null,
  view: null,
  current_page: null,
  limit: null,
  sortcol: null,
  sortdir: null,
  rows_offset: null,
  tickets: null,
  pages: null,
  rows_total: null,
  inbox_count: null,
  count_array: null,
  view_text: null
)
```

