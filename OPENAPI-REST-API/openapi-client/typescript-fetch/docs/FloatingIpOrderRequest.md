
# FloatingIpOrderRequest

Request body to validate (putFloating_ips) or place (addFloatingIp) a floating IP order. Service type ids come from getNewFloatingIp.serviceTypes.

## Properties

Name | Type
------------ | -------------
`serviceType` | number
`coupon` | string
`comment` | string

## Example

```typescript
import type { FloatingIpOrderRequest } from ''

// TODO: Update the object below with actual values
const example = {
  "serviceType": null,
  "coupon": null,
  "comment": null,
} satisfies FloatingIpOrderRequest

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as FloatingIpOrderRequest
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


