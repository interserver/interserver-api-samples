package io.swagger.server.model


/**
 * @param `type` The response type indicating how to handle the payment. Possible values: `redirect` (redirect user to a URL), `submit` (submit a form to a URL), `single` (immediate result).
 * @param redirect URL to redirect the user to for payment (when type is `redirect`).
 * @param action Form action URL (when type is `submit`).
 * @param method HTTP method for the form submission (when type is `submit`).
 * @param items Form field name-value pairs to submit (when type is `submit`).
 * @param text Status or result text.
 */
case class Inline_response_200_10 (
  `type`: Option[String],
  redirect: Option[String],
  action: Option[String],
  method: Option[String],
  items: Option[Object],
  text: Option[String]
)

