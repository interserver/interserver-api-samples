package io.swagger.server.model


/**
 * Request body to validate (putQs) or place (addQs) a QuickServer order. Server and OS template come from getNewQs.
 *
 * @param server QuickServer plan/server id from getNewQs.
 * @param password Root password for the QuickServer.
 * @param os OS template file name from getNewQs (falls back to a default if unrecognized).
 * @param tos Terms-of-service acceptance. Must be true to place the order.
 * @param comment Free-form note saved on the service row.
 */
case class QsOrderRequest (
  server: Int,
  password: String,
  os: Option[String],
  tos: Boolean,
  comment: Option[String]
)

