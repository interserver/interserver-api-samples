
# ServerBulkIpmiPowerResponse

Per-server IPMI power-status results for a bulk lookup.

## Properties

Name | Type
------------ | -------------
`results` | [Array&lt;ServerBulkIpmiPowerResponseResultsInner&gt;](ServerBulkIpmiPowerResponseResultsInner.md)

## Example

```typescript
import type { ServerBulkIpmiPowerResponse } from ''

// TODO: Update the object below with actual values
const example = {
  "results": null,
} satisfies ServerBulkIpmiPowerResponse

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as ServerBulkIpmiPowerResponse
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


