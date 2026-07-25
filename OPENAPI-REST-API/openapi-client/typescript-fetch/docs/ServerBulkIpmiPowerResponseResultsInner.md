
# ServerBulkIpmiPowerResponseResultsInner


## Properties

Name | Type
------------ | -------------
`id` | number
`asset` | number
`text` | string
`error` | string

## Example

```typescript
import type { ServerBulkIpmiPowerResponseResultsInner } from ''

// TODO: Update the object below with actual values
const example = {
  "id": 2313,
  "asset": 5432,
  "text": Chassis Power is on,
  "error": Service is not active,
} satisfies ServerBulkIpmiPowerResponseResultsInner

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as ServerBulkIpmiPowerResponseResultsInner
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


