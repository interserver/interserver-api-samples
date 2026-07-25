package io.swagger.server.model


/**
 * @param rules 
 * @param filters 
 * @param scrub_enabled 
 */
case class Inline_response_200_13_filter_firewall (
  rules: Option[List[inline_response_200_13_filter_firewall_rules]],
  filters: Option[List[inline_response_200_13_filter_firewall_filters]],
  scrub_enabled: Option[Int]
)

