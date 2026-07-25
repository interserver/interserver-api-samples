
# QsOrderRequest

Request body to validate (putQs) or place (addQs) a QuickServer order. Server and OS template come from getNewQs.

## Properties

Name | Type
------------ | -------------
`server` | number
`password` | string
`tos` | boolean
`os` | string
`comment` | string

## Example

```typescript
import type { QsOrderRequest } from ''

// TODO: Update the object below with actual values
const example = {
  "server": null,
  "password": null,
  "tos": null,
  "os": null,
  "comment": null,
} satisfies QsOrderRequest

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as QsOrderRequest
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


