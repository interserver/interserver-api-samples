package io.swagger.server.model


/**
 * @param id 
 * @param source_ip 
 * @param destination_ip 
 * @param protocol_id 
 * @param source_port 
 * @param destination_port 
 * @param xdp_action 
 * @param global_drop 
 */
case class Inline_response_200_13_filter_firewall_rules (
  id: Option[String],
  source_ip: Option[String],
  destination_ip: Option[String],
  protocol_id: Option[String],
  source_port: Option[String],
  destination_port: Option[String],
  xdp_action: Option[String],
  global_drop: Option[String]
)

