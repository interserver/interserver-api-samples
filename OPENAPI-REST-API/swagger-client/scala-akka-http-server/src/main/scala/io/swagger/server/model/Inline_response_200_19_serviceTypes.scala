package io.swagger.server.model


/**
 * @param services_id  for example: ''11552''
 * @param services_name  for example: ''Current IP + Scrub''
 * @param services_cost  for example: ''5''
 * @param services_field1 
 * @param services_field2 
 * @param services_module  for example: ''scrub_ips''
 */
case class Inline_response_200_19_serviceTypes (
  services_id: Option[Int],
  services_name: Option[String],
  services_cost: Option[Int],
  services_field1: Option[String],
  services_field2: Option[String],
  services_module: Option[String]
)

