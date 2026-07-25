package io.swagger.server.model

import java.math.BigDecimal

/**
 * @param package_id  for example: ''11552''
 * @param package_cost  for example: ''5''
 * @param currency  for example: ''USD''
 * @param currencySymbol  for example: ''$''
 */
case class Inline_response_200_19_packageCosts (
  package_id: Option[BigDecimal],
  package_cost: Option[BigDecimal],
  currency: Option[String],
  currencySymbol: Option[String]
)

