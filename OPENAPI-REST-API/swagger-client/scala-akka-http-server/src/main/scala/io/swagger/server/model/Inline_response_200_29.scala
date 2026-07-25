package io.swagger.server.model


/**
 * @param bandwidth 
 * @param ips 
 * @param os 
 * @param cp 
 * @param raid 
 */
case class Inline_response_200_29 (
  bandwidth: Option[List[inline_response_200_29_bandwidth]],
  ips: Option[List[inline_response_200_29_ips]],
  os: Option[List[inline_response_200_29_os]],
  cp: Option[List[inline_response_200_29_cp]],
  raid: Option[List[inline_response_200_29_raid]]
)

