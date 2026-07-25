
# SslOrderRequest

Request body to validate (putSsl) or place (addSsl) an SSL certificate order. Contact fields default from the account if omitted. Package ids come from getNewSsl.serviceTypes.

## Properties

Name | Type
------------ | -------------
`ssl` | number
`hostname` | string
`approver_email` | string
`frequency` | number
`coupon` | string
`csr_type` | string
`csr` | string
`firstname` | string
`lastname` | string
`email` | string
`address` | string
`city` | string
`state` | string
`zip` | string
`country` | string
`phone` | string
`company` | string
`department` | string
`agency` | string
`business_category` | string

## Example

```typescript
import type { SslOrderRequest } from ''

// TODO: Update the object below with actual values
const example = {
  "ssl": null,
  "hostname": null,
  "approver_email": null,
  "frequency": null,
  "coupon": null,
  "csr_type": null,
  "csr": null,
  "firstname": null,
  "lastname": null,
  "email": null,
  "address": null,
  "city": null,
  "state": null,
  "zip": null,
  "country": null,
  "phone": null,
  "company": null,
  "department": null,
  "agency": null,
  "business_category": null,
} satisfies SslOrderRequest

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as SslOrderRequest
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


