# ViewTicketResponse

Ticket details

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **boolean** |  | [default to undefined]
**ticket** | [**TicketDetails**](TicketDetails.md) |  | [default to undefined]
**ticket_custom_fields** | [**TicketCustomFieldDetails**](TicketCustomFieldDetails.md) |  | [optional] [default to undefined]
**ticket_posts** | [**TicketPostDetails**](TicketPostDetails.md) |  | [optional] [default to undefined]

## Example

```typescript
import { ViewTicketResponse } from '@interserver/myadmin-client';

const instance: ViewTicketResponse = {
    success,
    ticket,
    ticket_custom_fields,
    ticket_posts,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
