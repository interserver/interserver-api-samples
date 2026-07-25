package io.swagger.server.model

import java.math.BigDecimal

/**
 * @param service_id  for example: ''12345''
 * @param service_module  for example: ''vps''
 * @param service_hostname  for example: ''server.gtest.com''
 */
case class Inline_response_200_19_ips (
  service_id: Option[BigDecimal],
  service_module: Option[String],
  service_hostname: Option[String]
)

