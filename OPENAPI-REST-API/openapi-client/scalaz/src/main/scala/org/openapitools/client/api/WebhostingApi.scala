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
import org.openapitools.client.api.GetWebsiteBuyIp200Response
import org.openapitools.client.api.PostWebsiteBuyIp200Response
import org.openapitools.client.api.PostWebsiteBuyIpRequest
import org.openapitools.client.api.PostWebsiteMigration200Response
import org.openapitools.client.api.PostWebsiteMigrationRequest
import org.openapitools.client.api.PostWebsiteMigrationRequest1
import org.openapitools.client.api.ReverseDnsEntries
import org.openapitools.client.api.ServiceOrderPostResponse
import org.openapitools.client.api.SuccessTextResponse
import org.openapitools.client.api.TextResponse
import org.openapitools.client.api.WebhostingCancel200Response
import org.openapitools.client.api.Website
import org.openapitools.client.api.WebsiteBackups
import org.openapitools.client.api.WebsiteLoginResponse
import org.openapitools.client.api.WebsiteOrderPostRequest
import org.openapitools.client.api.WebsiteOrderPutRequest
import org.openapitools.client.api.WebsiteRow
import org.openapitools.client.api.WebsitesOrder

object WebhostingApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addWebsite(host: String, WebsiteOrderPostRequest: WebsiteOrderPostRequest): Task[ServiceOrderPostResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ServiceOrderPostResponse] = jsonOf[ServiceOrderPostResponse]

    val path = "/websites/order"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(WebsiteOrderPostRequest)
      resp          <- client.expect[ServiceOrderPostResponse](req)

    } yield resp
  }

  def getNewWebsite(host: String): Task[WebsitesOrder] = {
    implicit val returnTypeDecoder: EntityDecoder[WebsitesOrder] = jsonOf[WebsitesOrder]

    val path = "/websites/order"

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
      resp          <- client.expect[WebsitesOrder](req)

    } yield resp
  }

  def getWebsiteBuyIp(host: String, id: Integer): Task[GetWebsiteBuyIp200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[GetWebsiteBuyIp200Response] = jsonOf[GetWebsiteBuyIp200Response]

    val path = "/websites/{id}/buy_ip".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[GetWebsiteBuyIp200Response](req)

    } yield resp
  }

  def getWebsiteInfo(host: String, id: Integer): Task[Website] = {
    implicit val returnTypeDecoder: EntityDecoder[Website] = jsonOf[Website]

    val path = "/websites/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[Website](req)

    } yield resp
  }

  def getWebsiteInvoices(host: String, id: Integer): Task[ChargeInvoiceRows] = {
    implicit val returnTypeDecoder: EntityDecoder[ChargeInvoiceRows] = jsonOf[ChargeInvoiceRows]

    val path = "/websites/{id}/invoices".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def getWebsiteList(host: String): Task[List[WebsiteRow]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[WebsiteRow]] = jsonOf[List[WebsiteRow]]

    val path = "/websites"

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
      resp          <- client.expect[List[WebsiteRow]](req)

    } yield resp
  }

  def getWebsitesBackups(host: String, id: Integer): Task[WebsiteBackups] = {
    implicit val returnTypeDecoder: EntityDecoder[WebsiteBackups] = jsonOf[WebsiteBackups]

    val path = "/websites/{id}/backups".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[WebsiteBackups](req)

    } yield resp
  }

  def getWebsitesLogin(host: String, id: Integer): Task[WebsiteLoginResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[WebsiteLoginResponse] = jsonOf[WebsiteLoginResponse]

    val path = "/websites/{id}/login".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[WebsiteLoginResponse](req)

    } yield resp
  }

  def getWebsitesWelcomeEmail(host: String, id: Integer): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/websites/{id}/welcome_email".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def gettWebsiteReverseDns(host: String, id: Integer): Task[ReverseDnsEntries] = {
    implicit val returnTypeDecoder: EntityDecoder[ReverseDnsEntries] = jsonOf[ReverseDnsEntries]

    val path = "/websites/{id}/reverse_dns".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[ReverseDnsEntries](req)

    } yield resp
  }

  def postWebsiteBuyIp(host: String, id: Integer, PostWebsiteBuyIpRequest: PostWebsiteBuyIpRequest): Task[PostWebsiteBuyIp200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[PostWebsiteBuyIp200Response] = jsonOf[PostWebsiteBuyIp200Response]

    val path = "/websites/{id}/buy_ip".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(PostWebsiteBuyIpRequest)
      resp          <- client.expect[PostWebsiteBuyIp200Response](req)

    } yield resp
  }

  def postWebsiteMigration(host: String, id: Integer, PostWebsiteMigrationRequest: PostWebsiteMigrationRequest): Task[PostWebsiteMigration200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[PostWebsiteMigration200Response] = jsonOf[PostWebsiteMigration200Response]

    val path = "/websites/{id}/migration".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(PostWebsiteMigrationRequest)
      resp          <- client.expect[PostWebsiteMigration200Response](req)

    } yield resp
  }

  def postWebsitesReverseDns(host: String, id: Integer, ReverseDnsEntries: ReverseDnsEntries): Task[TextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TextResponse] = jsonOf[TextResponse]

    val path = "/websites/{id}/reverse_dns".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(ReverseDnsEntries)
      resp          <- client.expect[TextResponse](req)

    } yield resp
  }

  def putWebsites(host: String, WebsiteOrderPutRequest: WebsiteOrderPutRequest): Task[Unit] = {
    val path = "/websites/order"

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(WebsiteOrderPutRequest)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def updateWebsiteInfo(host: String, id: String): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/websites/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def webhostingCancel(host: String, id: String): Task[WebhostingCancel200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[WebhostingCancel200Response] = jsonOf[WebhostingCancel200Response]

    val path = "/websites/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[WebhostingCancel200Response](req)

    } yield resp
  }

}

class HttpServiceWebhostingApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addWebsite(WebsiteOrderPostRequest: WebsiteOrderPostRequest): Task[ServiceOrderPostResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ServiceOrderPostResponse] = jsonOf[ServiceOrderPostResponse]

    val path = "/websites/order"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(WebsiteOrderPostRequest)
      resp          <- client.expect[ServiceOrderPostResponse](req)

    } yield resp
  }

  def getNewWebsite(): Task[WebsitesOrder] = {
    implicit val returnTypeDecoder: EntityDecoder[WebsitesOrder] = jsonOf[WebsitesOrder]

    val path = "/websites/order"

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
      resp          <- client.expect[WebsitesOrder](req)

    } yield resp
  }

  def getWebsiteBuyIp(id: Integer): Task[GetWebsiteBuyIp200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[GetWebsiteBuyIp200Response] = jsonOf[GetWebsiteBuyIp200Response]

    val path = "/websites/{id}/buy_ip".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[GetWebsiteBuyIp200Response](req)

    } yield resp
  }

  def getWebsiteInfo(id: Integer): Task[Website] = {
    implicit val returnTypeDecoder: EntityDecoder[Website] = jsonOf[Website]

    val path = "/websites/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[Website](req)

    } yield resp
  }

  def getWebsiteInvoices(id: Integer): Task[ChargeInvoiceRows] = {
    implicit val returnTypeDecoder: EntityDecoder[ChargeInvoiceRows] = jsonOf[ChargeInvoiceRows]

    val path = "/websites/{id}/invoices".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def getWebsiteList(): Task[List[WebsiteRow]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[WebsiteRow]] = jsonOf[List[WebsiteRow]]

    val path = "/websites"

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
      resp          <- client.expect[List[WebsiteRow]](req)

    } yield resp
  }

  def getWebsitesBackups(id: Integer): Task[WebsiteBackups] = {
    implicit val returnTypeDecoder: EntityDecoder[WebsiteBackups] = jsonOf[WebsiteBackups]

    val path = "/websites/{id}/backups".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[WebsiteBackups](req)

    } yield resp
  }

  def getWebsitesLogin(id: Integer): Task[WebsiteLoginResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[WebsiteLoginResponse] = jsonOf[WebsiteLoginResponse]

    val path = "/websites/{id}/login".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[WebsiteLoginResponse](req)

    } yield resp
  }

  def getWebsitesWelcomeEmail(id: Integer): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/websites/{id}/welcome_email".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def gettWebsiteReverseDns(id: Integer): Task[ReverseDnsEntries] = {
    implicit val returnTypeDecoder: EntityDecoder[ReverseDnsEntries] = jsonOf[ReverseDnsEntries]

    val path = "/websites/{id}/reverse_dns".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[ReverseDnsEntries](req)

    } yield resp
  }

  def postWebsiteBuyIp(id: Integer, PostWebsiteBuyIpRequest: PostWebsiteBuyIpRequest): Task[PostWebsiteBuyIp200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[PostWebsiteBuyIp200Response] = jsonOf[PostWebsiteBuyIp200Response]

    val path = "/websites/{id}/buy_ip".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(PostWebsiteBuyIpRequest)
      resp          <- client.expect[PostWebsiteBuyIp200Response](req)

    } yield resp
  }

  def postWebsiteMigration(id: Integer, PostWebsiteMigrationRequest: PostWebsiteMigrationRequest): Task[PostWebsiteMigration200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[PostWebsiteMigration200Response] = jsonOf[PostWebsiteMigration200Response]

    val path = "/websites/{id}/migration".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(PostWebsiteMigrationRequest)
      resp          <- client.expect[PostWebsiteMigration200Response](req)

    } yield resp
  }

  def postWebsitesReverseDns(id: Integer, ReverseDnsEntries: ReverseDnsEntries): Task[TextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TextResponse] = jsonOf[TextResponse]

    val path = "/websites/{id}/reverse_dns".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(ReverseDnsEntries)
      resp          <- client.expect[TextResponse](req)

    } yield resp
  }

  def putWebsites(WebsiteOrderPutRequest: WebsiteOrderPutRequest): Task[Unit] = {
    val path = "/websites/order"

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(WebsiteOrderPutRequest)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def updateWebsiteInfo(id: String): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/websites/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def webhostingCancel(id: String): Task[WebhostingCancel200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[WebhostingCancel200Response] = jsonOf[WebhostingCancel200Response]

    val path = "/websites/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[WebhostingCancel200Response](req)

    } yield resp
  }

}
