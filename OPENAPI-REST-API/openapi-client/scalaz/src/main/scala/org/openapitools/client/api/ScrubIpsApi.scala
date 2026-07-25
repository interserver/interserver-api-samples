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

import org.openapitools.client.api.CancelScrubIp200Response
import org.openapitools.client.api.ChargeInvoiceRows
import org.openapitools.client.api.CreateFilter
import org.openapitools.client.api.CreateFilter201Response
import org.openapitools.client.api.CreateFilter400Response
import org.openapitools.client.api.CreateFilter500Response
import org.openapitools.client.api.CreateFirewallRule
import org.openapitools.client.api.CreateGeoFirewallRule
import org.openapitools.client.api.CreateGeoRule400Response
import org.openapitools.client.api.CreateRule201Response
import org.openapitools.client.api.CreateRule400Response
import org.openapitools.client.api.CreateRule500Response
import org.openapitools.client.api.DeleteFilter200Response
import org.openapitools.client.api.DeleteFilter400Response
import org.openapitools.client.api.DeleteFilter500Response
import org.openapitools.client.api.DeleteFirewallRule
import org.openapitools.client.api.DeleteGeoFirewallRule
import org.openapitools.client.api.DisableScrub200Response
import org.openapitools.client.api.DisableScrub400Response
import org.openapitools.client.api.DisableScrub500Response
import org.openapitools.client.api.EnableScrub200Response
import org.openapitools.client.api.EnableScrub500Response
import org.openapitools.client.api.GetAccountInfo401Response
import org.openapitools.client.api.GetOrderDetail200Response
import org.openapitools.client.api.GetScrubIpDetails200Response
import org.openapitools.client.api.PlaceScrubOrder201Response
import org.openapitools.client.api.PutScrubIps200Response
import org.openapitools.client.api.ScrubIpFilterTypes
import org.openapitools.client.api.ScrubIpPlaceOrder
import org.openapitools.client.api.ScrubIpsDeleteRule200Response
import org.openapitools.client.api.ScrubIpsDeleteRule400Response
import org.openapitools.client.api.ScrubIpsDeleteRule500Response
import org.openapitools.client.api.ScrubIpsLogRowSchema
import org.openapitools.client.api.ScrubIpsRowSchema

object ScrubIpsApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def cancelScrubIp(host: String, id: Integer): Task[CancelScrubIp200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[CancelScrubIp200Response] = jsonOf[CancelScrubIp200Response]

    val path = "/scrub_ips/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[CancelScrubIp200Response](req)

    } yield resp
  }

  def createFilter(host: String, id: Integer, CreateFilter: CreateFilter): Task[CreateFilter201Response] = {
    implicit val returnTypeDecoder: EntityDecoder[CreateFilter201Response] = jsonOf[CreateFilter201Response]

    val path = "/scrub_ips/{id}/create_filter".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(CreateFilter)
      resp          <- client.expect[CreateFilter201Response](req)

    } yield resp
  }

  def createGeoRule(host: String, id: Integer, CreateGeoFirewallRule: CreateGeoFirewallRule): Task[CreateRule201Response] = {
    implicit val returnTypeDecoder: EntityDecoder[CreateRule201Response] = jsonOf[CreateRule201Response]

    val path = "/scrub_ips/{id}/create_geo_rule".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(CreateGeoFirewallRule)
      resp          <- client.expect[CreateRule201Response](req)

    } yield resp
  }

  def createRule(host: String, id: Integer, CreateFirewallRule: CreateFirewallRule): Task[CreateRule201Response] = {
    implicit val returnTypeDecoder: EntityDecoder[CreateRule201Response] = jsonOf[CreateRule201Response]

    val path = "/scrub_ips/{id}/create_rule".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(CreateFirewallRule)
      resp          <- client.expect[CreateRule201Response](req)

    } yield resp
  }

  def deleteFilter(host: String, id: Integer, CreateFilter: CreateFilter): Task[DeleteFilter200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[DeleteFilter200Response] = jsonOf[DeleteFilter200Response]

    val path = "/scrub_ips/{id}/delete_filter".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(CreateFilter)
      resp          <- client.expect[DeleteFilter200Response](req)

    } yield resp
  }

  def disableScrub(host: String, id: Integer): Task[DisableScrub200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[DisableScrub200Response] = jsonOf[DisableScrub200Response]

    val path = "/scrub_ips/{id}/disable".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[DisableScrub200Response](req)

    } yield resp
  }

  def enableScrub(host: String, id: Integer): Task[EnableScrub200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[EnableScrub200Response] = jsonOf[EnableScrub200Response]

    val path = "/scrub_ips/{id}/enable".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[EnableScrub200Response](req)

    } yield resp
  }

  def getOrderDetail(host: String): Task[GetOrderDetail200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[GetOrderDetail200Response] = jsonOf[GetOrderDetail200Response]

    val path = "/scrub_ips/order"

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
      resp          <- client.expect[GetOrderDetail200Response](req)

    } yield resp
  }

  def getScrubIpDetails(host: String, id: Integer): Task[GetScrubIpDetails200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[GetScrubIpDetails200Response] = jsonOf[GetScrubIpDetails200Response]

    val path = "/scrub_ips/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[GetScrubIpDetails200Response](req)

    } yield resp
  }

  def getScrubIpFilterTypes(host: String): Task[ScrubIpFilterTypes] = {
    implicit val returnTypeDecoder: EntityDecoder[ScrubIpFilterTypes] = jsonOf[ScrubIpFilterTypes]

    val path = "/scrub_ips/filter_types"

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
      resp          <- client.expect[ScrubIpFilterTypes](req)

    } yield resp
  }

  def getScrubIpInvoices(host: String, id: Integer): Task[ChargeInvoiceRows] = {
    implicit val returnTypeDecoder: EntityDecoder[ChargeInvoiceRows] = jsonOf[ChargeInvoiceRows]

    val path = "/scrub_ips/{id}/invoices".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def getScrubIpLogs(host: String, id: String): Task[List[ScrubIpsLogRowSchema]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ScrubIpsLogRowSchema]] = jsonOf[List[ScrubIpsLogRowSchema]]

    val path = "/scrub_ips/{id}/logs".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[List[ScrubIpsLogRowSchema]](req)

    } yield resp
  }

  def getScrubIpsList(host: String): Task[List[ScrubIpsRowSchema]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ScrubIpsRowSchema]] = jsonOf[List[ScrubIpsRowSchema]]

    val path = "/scrub_ips"

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
      resp          <- client.expect[List[ScrubIpsRowSchema]](req)

    } yield resp
  }

  def placeScrubOrder(host: String, ScrubIpPlaceOrder: ScrubIpPlaceOrder): Task[PlaceScrubOrder201Response] = {
    implicit val returnTypeDecoder: EntityDecoder[PlaceScrubOrder201Response] = jsonOf[PlaceScrubOrder201Response]

    val path = "/scrub_ips/order"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(ScrubIpPlaceOrder)
      resp          <- client.expect[PlaceScrubOrder201Response](req)

    } yield resp
  }

  def putScrubIps(host: String, ScrubIpPlaceOrder: ScrubIpPlaceOrder): Task[PutScrubIps200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[PutScrubIps200Response] = jsonOf[PutScrubIps200Response]

    val path = "/scrub_ips/order"

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(ScrubIpPlaceOrder)
      resp          <- client.expect[PutScrubIps200Response](req)

    } yield resp
  }

  def scrubIpsDeleteGeoRule(host: String, id: Integer, DeleteGeoFirewallRule: DeleteGeoFirewallRule): Task[ScrubIpsDeleteRule200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[ScrubIpsDeleteRule200Response] = jsonOf[ScrubIpsDeleteRule200Response]

    val path = "/scrub_ips/{id}/delete_geo_rule".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(DeleteGeoFirewallRule)
      resp          <- client.expect[ScrubIpsDeleteRule200Response](req)

    } yield resp
  }

  def scrubIpsDeleteRule(host: String, id: Integer, DeleteFirewallRule: DeleteFirewallRule): Task[ScrubIpsDeleteRule200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[ScrubIpsDeleteRule200Response] = jsonOf[ScrubIpsDeleteRule200Response]

    val path = "/scrub_ips/{id}/delete_rule".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(DeleteFirewallRule)
      resp          <- client.expect[ScrubIpsDeleteRule200Response](req)

    } yield resp
  }

}

class HttpServiceScrubIpsApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def cancelScrubIp(id: Integer): Task[CancelScrubIp200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[CancelScrubIp200Response] = jsonOf[CancelScrubIp200Response]

    val path = "/scrub_ips/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[CancelScrubIp200Response](req)

    } yield resp
  }

  def createFilter(id: Integer, CreateFilter: CreateFilter): Task[CreateFilter201Response] = {
    implicit val returnTypeDecoder: EntityDecoder[CreateFilter201Response] = jsonOf[CreateFilter201Response]

    val path = "/scrub_ips/{id}/create_filter".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(CreateFilter)
      resp          <- client.expect[CreateFilter201Response](req)

    } yield resp
  }

  def createGeoRule(id: Integer, CreateGeoFirewallRule: CreateGeoFirewallRule): Task[CreateRule201Response] = {
    implicit val returnTypeDecoder: EntityDecoder[CreateRule201Response] = jsonOf[CreateRule201Response]

    val path = "/scrub_ips/{id}/create_geo_rule".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(CreateGeoFirewallRule)
      resp          <- client.expect[CreateRule201Response](req)

    } yield resp
  }

  def createRule(id: Integer, CreateFirewallRule: CreateFirewallRule): Task[CreateRule201Response] = {
    implicit val returnTypeDecoder: EntityDecoder[CreateRule201Response] = jsonOf[CreateRule201Response]

    val path = "/scrub_ips/{id}/create_rule".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(CreateFirewallRule)
      resp          <- client.expect[CreateRule201Response](req)

    } yield resp
  }

  def deleteFilter(id: Integer, CreateFilter: CreateFilter): Task[DeleteFilter200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[DeleteFilter200Response] = jsonOf[DeleteFilter200Response]

    val path = "/scrub_ips/{id}/delete_filter".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(CreateFilter)
      resp          <- client.expect[DeleteFilter200Response](req)

    } yield resp
  }

  def disableScrub(id: Integer): Task[DisableScrub200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[DisableScrub200Response] = jsonOf[DisableScrub200Response]

    val path = "/scrub_ips/{id}/disable".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[DisableScrub200Response](req)

    } yield resp
  }

  def enableScrub(id: Integer): Task[EnableScrub200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[EnableScrub200Response] = jsonOf[EnableScrub200Response]

    val path = "/scrub_ips/{id}/enable".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[EnableScrub200Response](req)

    } yield resp
  }

  def getOrderDetail(): Task[GetOrderDetail200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[GetOrderDetail200Response] = jsonOf[GetOrderDetail200Response]

    val path = "/scrub_ips/order"

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
      resp          <- client.expect[GetOrderDetail200Response](req)

    } yield resp
  }

  def getScrubIpDetails(id: Integer): Task[GetScrubIpDetails200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[GetScrubIpDetails200Response] = jsonOf[GetScrubIpDetails200Response]

    val path = "/scrub_ips/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[GetScrubIpDetails200Response](req)

    } yield resp
  }

  def getScrubIpFilterTypes(): Task[ScrubIpFilterTypes] = {
    implicit val returnTypeDecoder: EntityDecoder[ScrubIpFilterTypes] = jsonOf[ScrubIpFilterTypes]

    val path = "/scrub_ips/filter_types"

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
      resp          <- client.expect[ScrubIpFilterTypes](req)

    } yield resp
  }

  def getScrubIpInvoices(id: Integer): Task[ChargeInvoiceRows] = {
    implicit val returnTypeDecoder: EntityDecoder[ChargeInvoiceRows] = jsonOf[ChargeInvoiceRows]

    val path = "/scrub_ips/{id}/invoices".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def getScrubIpLogs(id: String): Task[List[ScrubIpsLogRowSchema]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ScrubIpsLogRowSchema]] = jsonOf[List[ScrubIpsLogRowSchema]]

    val path = "/scrub_ips/{id}/logs".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[List[ScrubIpsLogRowSchema]](req)

    } yield resp
  }

  def getScrubIpsList(): Task[List[ScrubIpsRowSchema]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ScrubIpsRowSchema]] = jsonOf[List[ScrubIpsRowSchema]]

    val path = "/scrub_ips"

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
      resp          <- client.expect[List[ScrubIpsRowSchema]](req)

    } yield resp
  }

  def placeScrubOrder(ScrubIpPlaceOrder: ScrubIpPlaceOrder): Task[PlaceScrubOrder201Response] = {
    implicit val returnTypeDecoder: EntityDecoder[PlaceScrubOrder201Response] = jsonOf[PlaceScrubOrder201Response]

    val path = "/scrub_ips/order"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(ScrubIpPlaceOrder)
      resp          <- client.expect[PlaceScrubOrder201Response](req)

    } yield resp
  }

  def putScrubIps(ScrubIpPlaceOrder: ScrubIpPlaceOrder): Task[PutScrubIps200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[PutScrubIps200Response] = jsonOf[PutScrubIps200Response]

    val path = "/scrub_ips/order"

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(ScrubIpPlaceOrder)
      resp          <- client.expect[PutScrubIps200Response](req)

    } yield resp
  }

  def scrubIpsDeleteGeoRule(id: Integer, DeleteGeoFirewallRule: DeleteGeoFirewallRule): Task[ScrubIpsDeleteRule200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[ScrubIpsDeleteRule200Response] = jsonOf[ScrubIpsDeleteRule200Response]

    val path = "/scrub_ips/{id}/delete_geo_rule".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(DeleteGeoFirewallRule)
      resp          <- client.expect[ScrubIpsDeleteRule200Response](req)

    } yield resp
  }

  def scrubIpsDeleteRule(id: Integer, DeleteFirewallRule: DeleteFirewallRule): Task[ScrubIpsDeleteRule200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[ScrubIpsDeleteRule200Response] = jsonOf[ScrubIpsDeleteRule200Response]

    val path = "/scrub_ips/{id}/delete_rule".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(DeleteFirewallRule)
      resp          <- client.expect[ScrubIpsDeleteRule200Response](req)

    } yield resp
  }

}
