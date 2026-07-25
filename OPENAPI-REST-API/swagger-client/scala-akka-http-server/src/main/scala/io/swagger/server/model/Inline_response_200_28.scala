package io.swagger.server.model


/**
 * @param text Confirmation message.
 * @param ticket The support ticket ID created for tracking the migration. Use this with `/tickets/{id}` to check migration progress.
 */
case class Inline_response_200_28 (
  text: Option[String],
  ticket: Option[Int]
)

