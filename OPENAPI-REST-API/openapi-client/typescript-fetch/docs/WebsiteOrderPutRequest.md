
# WebsiteOrderPutRequest

request to validate a webhosting order

## Properties

Name | Type
------------ | -------------
`hostname` | string
`packageId` | number
`rootpass` | string
`period` | number
`coupon` | string
`serviceOfferId` | number
`script` | number
`comment` | string
`registerDomain` | boolean

## Example

```typescript
import type { WebsiteOrderPutRequest } from ''

// TODO: Update the object below with actual values
const example = {
  "hostname": null,
  "packageId": null,
  "rootpass": null,
  "period": null,
  "coupon": null,
  "serviceOfferId": null,
  "script": null,
  "comment": null,
  "registerDomain": null,
} satisfies WebsiteOrderPutRequest

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as WebsiteOrderPutRequest
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


