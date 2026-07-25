package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import java.io.File
import java.net.URLEncoder
import java.util.UUID

import org.http4s._
import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.http4s.client._
import org.http4s.client.blaze.PooledHttp1Client
import org.http4s.headers._

import org.joda.time.DateTime

import scalaz.concurrent.Task

import HelperCodecs._

import org.openapitools.client.api.BuyItNowList
import org.openapitools.client.api.CaptchaResponse
import org.openapitools.client.api.GetAccountInfo401Response
import org.openapitools.client.api.GetAccountLocales200ResponseValue
import org.openapitools.client.api.GetOauthRedirect200Response
import org.openapitools.client.api.LoginErrorResponse
import org.openapitools.client.api.LoginInfo
import org.openapitools.client.api.LoginSubmissionExample
import org.openapitools.client.api.LoginSubmissionExampleGRecaptchaResponse
import org.openapitools.client.api.LoginSuccessResponse
import org.openapitools.client.api.PatchOauthTwoFactor200Response
import org.openapitools.client.api.PatchOauthTwoFactorRequest
import org.openapitools.client.api.PostOauthCallback200Response
import org.openapitools.client.api.PostOauthCallbackRequest
import org.openapitools.client.api.ServicesInfo

object PublicApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def getAccountCurrencies(host: String): Task[List[String]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[String]] = jsonOf[List[String]]

    val path = "/account/currencies"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[String]](req)

    } yield resp
  }

  def getAccountLocales(host: String): Task[Map[String, GetAccountLocales200ResponseValue]] = {
    implicit val returnTypeDecoder: EntityDecoder[Map[String, GetAccountLocales200ResponseValue]] = jsonOf[Map[String, GetAccountLocales200ResponseValue]]

    val path = "/account/locales"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Map[String, GetAccountLocales200ResponseValue]](req)

    } yield resp
  }

  def getCaptcha(host: String): Task[CaptchaResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CaptchaResponse] = jsonOf[CaptchaResponse]

    val path = "/captcha"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CaptchaResponse](req)

    } yield resp
  }

  def getCountries(host: String, fetch_by: String)(implicit fetch_byQuery: QueryParam[String]): Task[Any] = {
    implicit val returnTypeDecoder: EntityDecoder[Any] = jsonOf[Any]

    val path = "/account/countries"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("fetch_by", Some(fetch_byQuery.toParamString(fetch_by))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Any](req)

    } yield resp
  }

  def getInfo(host: String): Task[ServicesInfo] = {
    implicit val returnTypeDecoder: EntityDecoder[ServicesInfo] = jsonOf[ServicesInfo]

    val path = "/info"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ServicesInfo](req)

    } yield resp
  }

  def getLoginInfo(host: String): Task[LoginInfo] = {
    implicit val returnTypeDecoder: EntityDecoder[LoginInfo] = jsonOf[LoginInfo]

    val path = "/login"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[LoginInfo](req)

    } yield resp
  }

  def getMPServers(host: String): Task[BuyItNowList] = {
    implicit val returnTypeDecoder: EntityDecoder[BuyItNowList] = jsonOf[BuyItNowList]

    val path = "/buy_now_servers_list"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[BuyItNowList](req)

    } yield resp
  }

  def getOauthRedirect(host: String, provider: String)(implicit providerQuery: QueryParam[String]): Task[GetOauthRedirect200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[GetOauthRedirect200Response] = jsonOf[GetOauthRedirect200Response]

    val path = "/oauth"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("provider", Some(providerQuery.toParamString(provider))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GetOauthRedirect200Response](req)

    } yield resp
  }

  def getTimezones(host: String): Task[List[String]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[String]] = jsonOf[List[String]]

    val path = "/account/timezones"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[String]](req)

    } yield resp
  }

  def patchOauthTwoFactor(host: String, PatchOauthTwoFactorRequest: PatchOauthTwoFactorRequest): Task[PatchOauthTwoFactor200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[PatchOauthTwoFactor200Response] = jsonOf[PatchOauthTwoFactor200Response]

    val path = "/oauth"

    val httpMethod = Method.PATCH
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(PatchOauthTwoFactorRequest)
      resp          <- client.expect[PatchOauthTwoFactor200Response](req)

    } yield resp
  }

  def pingServer(host: String): Task[String] = {
    implicit val returnTypeDecoder: EntityDecoder[String] = jsonOf[String]

    val path = "/ping"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[String](req)

    } yield resp
  }

  def postOauthCallback(host: String, provider: String, PostOauthCallbackRequest: PostOauthCallbackRequest)(implicit providerQuery: QueryParam[String]): Task[PostOauthCallback200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[PostOauthCallback200Response] = jsonOf[PostOauthCallback200Response]

    val path = "/oauth"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("provider", Some(providerQuery.toParamString(provider))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(PostOauthCallbackRequest)
      resp          <- client.expect[PostOauthCallback200Response](req)

    } yield resp
  }

  def submitLogin(host: String, login: String, passwd: String, remember: String, g_recaptcha_response: LoginSubmissionExampleGRecaptchaResponse, tfa: String): Task[LoginSuccessResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[LoginSuccessResponse] = jsonOf[LoginSuccessResponse]

    val path = "/login"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[LoginSuccessResponse](req)

    } yield resp
  }

  def submitSignup(host: String, LoginSubmissionExample: LoginSubmissionExample): Task[Unit] = {
    val path = "/signup"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(LoginSubmissionExample)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

}

class HttpServicePublicApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def getAccountCurrencies(): Task[List[String]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[String]] = jsonOf[List[String]]

    val path = "/account/currencies"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[String]](req)

    } yield resp
  }

  def getAccountLocales(): Task[Map[String, GetAccountLocales200ResponseValue]] = {
    implicit val returnTypeDecoder: EntityDecoder[Map[String, GetAccountLocales200ResponseValue]] = jsonOf[Map[String, GetAccountLocales200ResponseValue]]

    val path = "/account/locales"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Map[String, GetAccountLocales200ResponseValue]](req)

    } yield resp
  }

  def getCaptcha(): Task[CaptchaResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CaptchaResponse] = jsonOf[CaptchaResponse]

    val path = "/captcha"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CaptchaResponse](req)

    } yield resp
  }

  def getCountries(fetch_by: String)(implicit fetch_byQuery: QueryParam[String]): Task[Any] = {
    implicit val returnTypeDecoder: EntityDecoder[Any] = jsonOf[Any]

    val path = "/account/countries"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("fetch_by", Some(fetch_byQuery.toParamString(fetch_by))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Any](req)

    } yield resp
  }

  def getInfo(): Task[ServicesInfo] = {
    implicit val returnTypeDecoder: EntityDecoder[ServicesInfo] = jsonOf[ServicesInfo]

    val path = "/info"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ServicesInfo](req)

    } yield resp
  }

  def getLoginInfo(): Task[LoginInfo] = {
    implicit val returnTypeDecoder: EntityDecoder[LoginInfo] = jsonOf[LoginInfo]

    val path = "/login"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[LoginInfo](req)

    } yield resp
  }

  def getMPServers(): Task[BuyItNowList] = {
    implicit val returnTypeDecoder: EntityDecoder[BuyItNowList] = jsonOf[BuyItNowList]

    val path = "/buy_now_servers_list"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[BuyItNowList](req)

    } yield resp
  }

  def getOauthRedirect(provider: String)(implicit providerQuery: QueryParam[String]): Task[GetOauthRedirect200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[GetOauthRedirect200Response] = jsonOf[GetOauthRedirect200Response]

    val path = "/oauth"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("provider", Some(providerQuery.toParamString(provider))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GetOauthRedirect200Response](req)

    } yield resp
  }

  def getTimezones(): Task[List[String]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[String]] = jsonOf[List[String]]

    val path = "/account/timezones"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[String]](req)

    } yield resp
  }

  def patchOauthTwoFactor(PatchOauthTwoFactorRequest: PatchOauthTwoFactorRequest): Task[PatchOauthTwoFactor200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[PatchOauthTwoFactor200Response] = jsonOf[PatchOauthTwoFactor200Response]

    val path = "/oauth"

    val httpMethod = Method.PATCH
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(PatchOauthTwoFactorRequest)
      resp          <- client.expect[PatchOauthTwoFactor200Response](req)

    } yield resp
  }

  def pingServer(): Task[String] = {
    implicit val returnTypeDecoder: EntityDecoder[String] = jsonOf[String]

    val path = "/ping"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[String](req)

    } yield resp
  }

  def postOauthCallback(provider: String, PostOauthCallbackRequest: PostOauthCallbackRequest)(implicit providerQuery: QueryParam[String]): Task[PostOauthCallback200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[PostOauthCallback200Response] = jsonOf[PostOauthCallback200Response]

    val path = "/oauth"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("provider", Some(providerQuery.toParamString(provider))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(PostOauthCallbackRequest)
      resp          <- client.expect[PostOauthCallback200Response](req)

    } yield resp
  }

  def submitLogin(login: String, passwd: String, remember: String, g_recaptcha_response: LoginSubmissionExampleGRecaptchaResponse, tfa: String): Task[LoginSuccessResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[LoginSuccessResponse] = jsonOf[LoginSuccessResponse]

    val path = "/login"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[LoginSuccessResponse](req)

    } yield resp
  }

  def submitSignup(LoginSubmissionExample: LoginSubmissionExample): Task[Unit] = {
    val path = "/signup"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(LoginSubmissionExample)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

}
