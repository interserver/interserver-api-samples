package io.swagger.server.model


/**
 * @param login Whether the user was logged in to an existing account.
 * @param signup Whether a new account was created.
 * @param linked Whether the OAuth provider was linked to an existing account.
 * @param account_id The account ID associated with the OAuth login.
 * @param error_code Error code if additional verification is needed (e.g. `2fa_required`).
 */
case class Inline_response_200_7 (
  login: Option[Boolean],
  signup: Option[Boolean],
  linked: Option[Boolean],
  account_id: Option[Int],
  error_code: Option[String]
)

