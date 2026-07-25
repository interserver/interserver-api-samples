package io.swagger.server.model

import java.math.BigDecimal

/**
 * @param continue 
 * @param errors 
 * @param serviceType 
 * @param serviceCost 
 * @param originalCost 
 * @param repeatServiceCost 
 */
case class Inline_response_200_20 (
  continue: Option[Boolean],
  errors: Option[List[String]],
  serviceType: Option[Int],
  serviceCost: Option[BigDecimal],
  originalCost: Option[BigDecimal],
  repeatServiceCost: Option[BigDecimal]
)

