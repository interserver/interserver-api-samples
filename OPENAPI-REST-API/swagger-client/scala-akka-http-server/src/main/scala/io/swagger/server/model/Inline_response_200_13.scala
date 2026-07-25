package io.swagger.server.model


/**
 * @param serviceInfo 
 * @param client_links 
 * @param billingDetails 
 * @param custCurrency 
 * @param custCurrencySymbol 
 * @param `package` 
 * @param extraInfoTables 
 * @param filter_firewall 
 */
case class Inline_response_200_13 (
  serviceInfo: Option[inline_response_200_13_serviceInfo],
  client_links: Option[List[inline_response_200_13_client_links]],
  billingDetails: Option[inline_response_200_13_billingDetails],
  custCurrency: Option[String],
  custCurrencySymbol: Option[String],
  `package`: Option[String],
  extraInfoTables: Option[inline_response_200_13_extraInfoTables],
  filter_firewall: Option[inline_response_200_13_filter_firewall]
)

