
# DomainOrderRequest

Request body for the domain order flow: putDomains (returns required fields), patchDomains (validates fields), addDomain (places the order). The TLD is resolved from hostname. Per-TLD registrant/contact fields returned by putDomains may be supplied as additional properties on patchDomains/addDomain.

## Properties

Name | Type
------------ | -------------
`hostname` | string
`type` | string
`coupon` | string
`whois_privacy` | string

## Example

```typescript
import type { DomainOrderRequest } from ''

// TODO: Update the object below with actual values
const example = {
  "hostname": null,
  "type": null,
  "coupon": null,
  "whois_privacy": null,
} satisfies DomainOrderRequest

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as DomainOrderRequest
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


