package io.swagger.server.model


/**
 * @param id  for example: ''10''
 * @param short_desc  for example: ''1GBPS Unmetered''
 * @param long_desc 
 * @param monthly_price  for example: ''0''
 */
case class Inline_response_200_29_bandwidth (
  id: Option[String],
  short_desc: Option[String],
  long_desc: Option[String],
  monthly_price: Option[String]
)

