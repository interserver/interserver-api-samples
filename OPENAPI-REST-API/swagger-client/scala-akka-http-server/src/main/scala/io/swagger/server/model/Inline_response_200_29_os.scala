package io.swagger.server.model


/**
 * @param id  for example: ''5''
 * @param short_desc  for example: ''FreeBSD''
 * @param long_desc  for example: ''Latest FreeBSD 6.x OS<br><pre>CP(s): cPanel/DirectAdmin</pre>''
 * @param monthly_price  for example: ''0''
 */
case class Inline_response_200_29_os (
  id: Option[String],
  short_desc: Option[String],
  long_desc: Option[String],
  monthly_price: Option[String]
)

