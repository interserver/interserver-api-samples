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

import org.openapitools.client.api.AddServer200Response
import org.openapitools.client.api.BuyItNowList
import org.openapitools.client.api.BuyItNowServerOrder200Response
import org.openapitools.client.api.ChargeInvoiceRows
import org.openapitools.client.api.GetAccountInfo401Response
import org.openapitools.client.api.PlaceBuyNowServerRequest
import org.openapitools.client.api.ReverseDnsEntries
import org.openapitools.client.api.Server
import org.openapitools.client.api.ServerBulkIpmiPowerResponse
import org.openapitools.client.api.ServerIpmiLiveInfo
import org.openapitools.client.api.ServerOrder
import org.openapitools.client.api.ServerOrderPostRequest
import org.openapitools.client.api.ServerRow
import org.openapitools.client.api.ServersBuyNowError
import org.openapitools.client.api.ServersBuyNowResponse
import org.openapitools.client.api.ServersCancel200Response
import org.openapitools.client.api.SuccessTextResponse
import org.openapitools.client.api.TextResponse

object ServersApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addServer(host: String, ServerOrderPostRequest: ServerOrderPostRequest): Task[AddServer200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[AddServer200Response] = jsonOf[AddServer200Response]

    val path = "/servers/order"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(ServerOrderPostRequest)
      resp          <- client.expect[AddServer200Response](req)

    } yield resp
  }

  def buyItNowServerOrder(host: String): Task[BuyItNowServerOrder200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[BuyItNowServerOrder200Response] = jsonOf[BuyItNowServerOrder200Response]

    val path = "/servers/order/buy_now_server"

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
      resp          <- client.expect[BuyItNowServerOrder200Response](req)

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

  def getNewServer(host: String): Task[ServerOrder] = {
    implicit val returnTypeDecoder: EntityDecoder[ServerOrder] = jsonOf[ServerOrder]

    val path = "/servers/order"

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
      resp          <- client.expect[ServerOrder](req)

    } yield resp
  }

  def getServerInfo(host: String, id: Integer): Task[Server] = {
    implicit val returnTypeDecoder: EntityDecoder[Server] = jsonOf[Server]

    val path = "/servers/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[Server](req)

    } yield resp
  }

  def getServerInvoices(host: String, id: Integer): Task[ChargeInvoiceRows] = {
    implicit val returnTypeDecoder: EntityDecoder[ChargeInvoiceRows] = jsonOf[ChargeInvoiceRows]

    val path = "/servers/{id}/invoices".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def getServerList(host: String): Task[List[ServerRow]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ServerRow]] = jsonOf[List[ServerRow]]

    val path = "/servers"

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
      resp          <- client.expect[List[ServerRow]](req)

    } yield resp
  }

  def getServerReverseDns(host: String, id: Integer): Task[ReverseDnsEntries] = {
    implicit val returnTypeDecoder: EntityDecoder[ReverseDnsEntries] = jsonOf[ReverseDnsEntries]

    val path = "/servers/{id}/reverse_dns".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def getServersWelcomeEmail(host: String, id: Integer): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/servers/{id}/welcome_email".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def placeBuyNowServer(host: String, PlaceBuyNowServerRequest: PlaceBuyNowServerRequest): Task[ServersBuyNowResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ServersBuyNowResponse] = jsonOf[ServersBuyNowResponse]

    val path = "/servers/order/buy_now_server"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(PlaceBuyNowServerRequest)
      resp          <- client.expect[ServersBuyNowResponse](req)

    } yield resp
  }

  def postServerReverseDns(host: String, id: Integer, ReverseDnsEntries: ReverseDnsEntries): Task[TextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TextResponse] = jsonOf[TextResponse]

    val path = "/servers/{id}/reverse_dns".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def serverBulkIpmiPowerGet(host: String, ids: String)(implicit idsQuery: QueryParam[String]): Task[ServerBulkIpmiPowerResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ServerBulkIpmiPowerResponse] = jsonOf[ServerBulkIpmiPowerResponse]

    val path = "/servers/bulk/ipmi_power"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("ids", Some(idsQuery.toParamString(ids))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ServerBulkIpmiPowerResponse](req)

    } yield resp
  }

  def serverIpmiLiveGet(host: String, id: Integer): Task[ServerIpmiLiveInfo] = {
    implicit val returnTypeDecoder: EntityDecoder[ServerIpmiLiveInfo] = jsonOf[ServerIpmiLiveInfo]

    val path = "/servers/{id}/ipmi_live".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[ServerIpmiLiveInfo](req)

    } yield resp
  }

  def serverIpmiLivePost(host: String, id: Integer, ip: String, asset: Integer): Task[ServerIpmiLiveInfo] = {
    implicit val returnTypeDecoder: EntityDecoder[ServerIpmiLiveInfo] = jsonOf[ServerIpmiLiveInfo]

    val path = "/servers/{id}/ipmi_live".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[ServerIpmiLiveInfo](req)

    } yield resp
  }

  def serverIpmiPowerGet(host: String, id: Integer): Task[TextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TextResponse] = jsonOf[TextResponse]

    val path = "/servers/{id}/ipmi_power".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[TextResponse](req)

    } yield resp
  }

  def serverIpmiPowerPost(host: String, id: Integer, action: String, asset: Integer): Task[TextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TextResponse] = jsonOf[TextResponse]

    val path = "/servers/{id}/ipmi_power".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[TextResponse](req)

    } yield resp
  }

  def serversCancel(host: String, id: Integer): Task[ServersCancel200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[ServersCancel200Response] = jsonOf[ServersCancel200Response]

    val path = "/servers/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[ServersCancel200Response](req)

    } yield resp
  }

  def updateServerInfo(host: String, id: String): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/servers/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

class HttpServiceServersApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addServer(ServerOrderPostRequest: ServerOrderPostRequest): Task[AddServer200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[AddServer200Response] = jsonOf[AddServer200Response]

    val path = "/servers/order"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(ServerOrderPostRequest)
      resp          <- client.expect[AddServer200Response](req)

    } yield resp
  }

  def buyItNowServerOrder(): Task[BuyItNowServerOrder200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[BuyItNowServerOrder200Response] = jsonOf[BuyItNowServerOrder200Response]

    val path = "/servers/order/buy_now_server"

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
      resp          <- client.expect[BuyItNowServerOrder200Response](req)

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

  def getNewServer(): Task[ServerOrder] = {
    implicit val returnTypeDecoder: EntityDecoder[ServerOrder] = jsonOf[ServerOrder]

    val path = "/servers/order"

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
      resp          <- client.expect[ServerOrder](req)

    } yield resp
  }

  def getServerInfo(id: Integer): Task[Server] = {
    implicit val returnTypeDecoder: EntityDecoder[Server] = jsonOf[Server]

    val path = "/servers/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[Server](req)

    } yield resp
  }

  def getServerInvoices(id: Integer): Task[ChargeInvoiceRows] = {
    implicit val returnTypeDecoder: EntityDecoder[ChargeInvoiceRows] = jsonOf[ChargeInvoiceRows]

    val path = "/servers/{id}/invoices".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def getServerList(): Task[List[ServerRow]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ServerRow]] = jsonOf[List[ServerRow]]

    val path = "/servers"

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
      resp          <- client.expect[List[ServerRow]](req)

    } yield resp
  }

  def getServerReverseDns(id: Integer): Task[ReverseDnsEntries] = {
    implicit val returnTypeDecoder: EntityDecoder[ReverseDnsEntries] = jsonOf[ReverseDnsEntries]

    val path = "/servers/{id}/reverse_dns".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def getServersWelcomeEmail(id: Integer): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/servers/{id}/welcome_email".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def placeBuyNowServer(PlaceBuyNowServerRequest: PlaceBuyNowServerRequest): Task[ServersBuyNowResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ServersBuyNowResponse] = jsonOf[ServersBuyNowResponse]

    val path = "/servers/order/buy_now_server"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(PlaceBuyNowServerRequest)
      resp          <- client.expect[ServersBuyNowResponse](req)

    } yield resp
  }

  def postServerReverseDns(id: Integer, ReverseDnsEntries: ReverseDnsEntries): Task[TextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TextResponse] = jsonOf[TextResponse]

    val path = "/servers/{id}/reverse_dns".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def serverBulkIpmiPowerGet(ids: String)(implicit idsQuery: QueryParam[String]): Task[ServerBulkIpmiPowerResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ServerBulkIpmiPowerResponse] = jsonOf[ServerBulkIpmiPowerResponse]

    val path = "/servers/bulk/ipmi_power"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("ids", Some(idsQuery.toParamString(ids))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ServerBulkIpmiPowerResponse](req)

    } yield resp
  }

  def serverIpmiLiveGet(id: Integer): Task[ServerIpmiLiveInfo] = {
    implicit val returnTypeDecoder: EntityDecoder[ServerIpmiLiveInfo] = jsonOf[ServerIpmiLiveInfo]

    val path = "/servers/{id}/ipmi_live".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[ServerIpmiLiveInfo](req)

    } yield resp
  }

  def serverIpmiLivePost(id: Integer, ip: String, asset: Integer): Task[ServerIpmiLiveInfo] = {
    implicit val returnTypeDecoder: EntityDecoder[ServerIpmiLiveInfo] = jsonOf[ServerIpmiLiveInfo]

    val path = "/servers/{id}/ipmi_live".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[ServerIpmiLiveInfo](req)

    } yield resp
  }

  def serverIpmiPowerGet(id: Integer): Task[TextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TextResponse] = jsonOf[TextResponse]

    val path = "/servers/{id}/ipmi_power".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[TextResponse](req)

    } yield resp
  }

  def serverIpmiPowerPost(id: Integer, action: String, asset: Integer): Task[TextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TextResponse] = jsonOf[TextResponse]

    val path = "/servers/{id}/ipmi_power".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[TextResponse](req)

    } yield resp
  }

  def serversCancel(id: Integer): Task[ServersCancel200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[ServersCancel200Response] = jsonOf[ServersCancel200Response]

    val path = "/servers/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[ServersCancel200Response](req)

    } yield resp
  }

  def updateServerInfo(id: String): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/servers/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
