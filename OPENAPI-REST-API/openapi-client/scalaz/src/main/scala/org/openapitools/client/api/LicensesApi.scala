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

import org.openapitools.client.api.ChargeInvoiceRows
import org.openapitools.client.api.GetAccountInfo401Response
import org.openapitools.client.api.IpObject
import org.openapitools.client.api.License
import org.openapitools.client.api.LicenseOrderRequest
import org.openapitools.client.api.LicenseRow
import org.openapitools.client.api.LicensesCancel200Response
import org.openapitools.client.api.LicensesOrder
import org.openapitools.client.api.ServiceOrderPostResponse
import org.openapitools.client.api.SuccessTextResponse

object LicensesApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addLicense(host: String, LicenseOrderRequest: LicenseOrderRequest): Task[ServiceOrderPostResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ServiceOrderPostResponse] = jsonOf[ServiceOrderPostResponse]

    val path = "/licenses/order"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(LicenseOrderRequest)
      resp          <- client.expect[ServiceOrderPostResponse](req)

    } yield resp
  }

  def getLicenseInfo(host: String, id: Integer): Task[License] = {
    implicit val returnTypeDecoder: EntityDecoder[License] = jsonOf[License]

    val path = "/licenses/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[License](req)

    } yield resp
  }

  def getLicenseInvoices(host: String, id: Integer): Task[ChargeInvoiceRows] = {
    implicit val returnTypeDecoder: EntityDecoder[ChargeInvoiceRows] = jsonOf[ChargeInvoiceRows]

    val path = "/licenses/{id}/invoices".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[ChargeInvoiceRows](req)

    } yield resp
  }

  def getLicenseList(host: String): Task[List[LicenseRow]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[LicenseRow]] = jsonOf[List[LicenseRow]]

    val path = "/licenses"

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
      resp          <- client.expect[List[LicenseRow]](req)

    } yield resp
  }

  def getLicensesWelcomeEmail(host: String, id: Integer): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/licenses/{id}/welcome_email".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def getNewLicense(host: String): Task[LicensesOrder] = {
    implicit val returnTypeDecoder: EntityDecoder[LicensesOrder] = jsonOf[LicensesOrder]

    val path = "/licenses/order"

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
      resp          <- client.expect[LicensesOrder](req)

    } yield resp
  }

  def licensesCancel(host: String, id: Integer): Task[LicensesCancel200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[LicensesCancel200Response] = jsonOf[LicensesCancel200Response]

    val path = "/licenses/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.DELETE
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[LicensesCancel200Response](req)

    } yield resp
  }

  def postLicenseChangeIp(host: String, id: Integer, IpObject: IpObject): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/licenses/{id}/change_ip".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(IpObject)
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def putLicenses(host: String, LicenseOrderRequest: LicenseOrderRequest): Task[Unit] = {
    val path = "/licenses/order"

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(LicenseOrderRequest)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def updateLicenseInfo(host: String, id: String): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/licenses/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

}

class HttpServiceLicensesApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addLicense(LicenseOrderRequest: LicenseOrderRequest): Task[ServiceOrderPostResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ServiceOrderPostResponse] = jsonOf[ServiceOrderPostResponse]

    val path = "/licenses/order"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(LicenseOrderRequest)
      resp          <- client.expect[ServiceOrderPostResponse](req)

    } yield resp
  }

  def getLicenseInfo(id: Integer): Task[License] = {
    implicit val returnTypeDecoder: EntityDecoder[License] = jsonOf[License]

    val path = "/licenses/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[License](req)

    } yield resp
  }

  def getLicenseInvoices(id: Integer): Task[ChargeInvoiceRows] = {
    implicit val returnTypeDecoder: EntityDecoder[ChargeInvoiceRows] = jsonOf[ChargeInvoiceRows]

    val path = "/licenses/{id}/invoices".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[ChargeInvoiceRows](req)

    } yield resp
  }

  def getLicenseList(): Task[List[LicenseRow]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[LicenseRow]] = jsonOf[List[LicenseRow]]

    val path = "/licenses"

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
      resp          <- client.expect[List[LicenseRow]](req)

    } yield resp
  }

  def getLicensesWelcomeEmail(id: Integer): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/licenses/{id}/welcome_email".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def getNewLicense(): Task[LicensesOrder] = {
    implicit val returnTypeDecoder: EntityDecoder[LicensesOrder] = jsonOf[LicensesOrder]

    val path = "/licenses/order"

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
      resp          <- client.expect[LicensesOrder](req)

    } yield resp
  }

  def licensesCancel(id: Integer): Task[LicensesCancel200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[LicensesCancel200Response] = jsonOf[LicensesCancel200Response]

    val path = "/licenses/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.DELETE
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[LicensesCancel200Response](req)

    } yield resp
  }

  def postLicenseChangeIp(id: Integer, IpObject: IpObject): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/licenses/{id}/change_ip".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(IpObject)
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def putLicenses(LicenseOrderRequest: LicenseOrderRequest): Task[Unit] = {
    val path = "/licenses/order"

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(LicenseOrderRequest)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def updateLicenseInfo(id: String): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/licenses/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

}
