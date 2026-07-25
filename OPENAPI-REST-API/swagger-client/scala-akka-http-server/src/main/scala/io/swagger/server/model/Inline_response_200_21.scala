package io.swagger.server.model


/**
 * @param text Status message. for example: ''Order Completed''
 * @param invoice Invoice ID for payment.
 * @param order Server order ID.
 */
case class Inline_response_200_21 (
  text: Option[String],
  invoice: Option[Int],
  order: Option[Int]
)

