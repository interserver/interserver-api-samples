
# ServerOrderPostRequest

Request body to place a custom dedicated server order. All ids come from getNewServer\'s config_li / regions.

## Properties

Name | Type
------------ | -------------
`cpu` | number
`hd` | [ServerOrderPostRequestHd](ServerOrderPostRequestHd.md)
`memory` | number
`bandwidth` | number
`ips` | number
`os` | number
`cp` | number
`raid` | number
`region` | number
`servername` | string
`rootpass` | string
`tos` | boolean
`comment` | string

## Example

```typescript
import type { ServerOrderPostRequest } from ''

// TODO: Update the object below with actual values
const example = {
  "cpu": null,
  "hd": null,
  "memory": null,
  "bandwidth": null,
  "ips": null,
  "os": null,
  "cp": null,
  "raid": null,
  "region": null,
  "servername": null,
  "rootpass": null,
  "tos": null,
  "comment": null,
} satisfies ServerOrderPostRequest

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as ServerOrderPostRequest
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


