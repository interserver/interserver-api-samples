
# LicenseOrderRequest

Request body to validate (putLicenses) or place (addLicense) a license order. Package ids come from getNewLicense.serviceTypes.

## Properties

Name | Type
------------ | -------------
`_package` | number
`ip` | string
`tos` | boolean
`frequency` | number
`coupon` | string
`comment` | string

## Example

```typescript
import type { LicenseOrderRequest } from ''

// TODO: Update the object below with actual values
const example = {
  "_package": null,
  "ip": null,
  "tos": null,
  "frequency": null,
  "coupon": null,
  "comment": null,
} satisfies LicenseOrderRequest

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as LicenseOrderRequest
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


