# Tickets

A listing of support tickets.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ima** | **string** |  | [default to undefined]
**custid** | **string** |  | [default to undefined]
**view** | **string** |  | [default to undefined]
**currentPage** | **number** |  | [default to undefined]
**limit** | **number** |  | [default to undefined]
**sortcol** | **number** |  | [default to undefined]
**sortdir** | **number** |  | [default to undefined]
**rowsOffset** | **number** |  | [default to undefined]
**tickets** | [**Array&lt;TicketsRow&gt;**](TicketsRow.md) |  | [default to undefined]
**pages** | **number** |  | [default to undefined]
**rowsTotal** | **number** |  | [default to undefined]
**inboxCount** | **number** |  | [default to undefined]
**countArray** | [**TicketsCountArray**](TicketsCountArray.md) |  | [default to undefined]
**viewText** | **string** |  | [default to undefined]

## Example

```typescript
import { Tickets } from '@interserver/myadmin-client';

const instance: Tickets = {
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
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
