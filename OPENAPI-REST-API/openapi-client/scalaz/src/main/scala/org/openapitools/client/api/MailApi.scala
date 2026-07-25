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
import org.openapitools.client.api.DeleteMailAlertRequest
import org.openapitools.client.api.DenyRuleNew
import org.openapitools.client.api.DenyRuleRecord
import org.openapitools.client.api.GenericResponse
import org.openapitools.client.api.GetAccountInfo401Response
import org.openapitools.client.api.MailAlertRequest
import org.openapitools.client.api.MailAlertUpdateRequest
import org.openapitools.client.api.MailAlertsResponse
import org.openapitools.client.api.MailBlocks
import org.openapitools.client.api.MailCancel200Response
import org.openapitools.client.api.MailDelistRequest
import org.openapitools.client.api.MailDelistResponse
import org.openapitools.client.api.MailDeliverabilityResponse
import org.openapitools.client.api.MailLog
import org.openapitools.client.api.MailOrder
import org.openapitools.client.api.MailOrderRequest
import org.openapitools.client.api.MailRow
import org.openapitools.client.api.MailSchema
import org.openapitools.client.api.MailStatsType
import org.openapitools.client.api.SendMail
import org.openapitools.client.api.SendMailAdv
import org.openapitools.client.api.ServiceOrderPostResponse
import org.openapitools.client.api.SuccessTextResponse
import org.openapitools.client.api.ViewMailLogStartDateParameter

object MailApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addMail(host: String, MailOrderRequest: MailOrderRequest): Task[ServiceOrderPostResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ServiceOrderPostResponse] = jsonOf[ServiceOrderPostResponse]

    val path = "/mail/order"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(MailOrderRequest)
      resp          <- client.expect[ServiceOrderPostResponse](req)

    } yield resp
  }

  def addRule(host: String, id: Integer, DenyRuleNew: DenyRuleNew): Task[GenericResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GenericResponse] = jsonOf[GenericResponse]

    val path = "/mail/{id}/rules".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(DenyRuleNew)
      resp          <- client.expect[GenericResponse](req)

    } yield resp
  }

  def createMailAlert(host: String, id: Integer, MailAlertRequest: MailAlertRequest): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/mail/{id}/alerts".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(MailAlertRequest)
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def deleteMailAlert(host: String, id: Integer, DeleteMailAlertRequest: DeleteMailAlertRequest): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/mail/{id}/alerts".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.DELETE
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(DeleteMailAlertRequest)
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def deleteRule(host: String, id: Integer, rule: String): Task[GenericResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GenericResponse] = jsonOf[GenericResponse]

    val path = "/mail/{id}/rules/{rule}".replaceAll("\\{" + "id" + "\\}",escape(id.toString)).replaceAll("\\{" + "rule" + "\\}",escape(rule.toString))

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
      resp          <- client.expect[GenericResponse](req)

    } yield resp
  }

  def delistBlock(host: String, id: Integer, email: String): Task[GenericResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GenericResponse] = jsonOf[GenericResponse]

    val path = "/mail/{id}/blocks/delete".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[GenericResponse](req)

    } yield resp
  }

  def getMailAlerts(host: String, id: Integer): Task[MailAlertsResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MailAlertsResponse] = jsonOf[MailAlertsResponse]

    val path = "/mail/{id}/alerts".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[MailAlertsResponse](req)

    } yield resp
  }

  def getMailBlocks(host: String, id: Integer): Task[MailBlocks] = {
    implicit val returnTypeDecoder: EntityDecoder[MailBlocks] = jsonOf[MailBlocks]

    val path = "/mail/{id}/blocks".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[MailBlocks](req)

    } yield resp
  }

  def getMailDelist(host: String, id: Integer): Task[MailDelistResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MailDelistResponse] = jsonOf[MailDelistResponse]

    val path = "/mail/{id}/delist".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[MailDelistResponse](req)

    } yield resp
  }

  def getMailDeliverability(host: String, id: Integer): Task[MailDeliverabilityResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MailDeliverabilityResponse] = jsonOf[MailDeliverabilityResponse]

    val path = "/mail/{id}/deliverability".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[MailDeliverabilityResponse](req)

    } yield resp
  }

  def getMailInfo(host: String, id: Integer): Task[MailSchema] = {
    implicit val returnTypeDecoder: EntityDecoder[MailSchema] = jsonOf[MailSchema]

    val path = "/mail/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[MailSchema](req)

    } yield resp
  }

  def getMailInvoices(host: String, id: Integer): Task[ChargeInvoiceRows] = {
    implicit val returnTypeDecoder: EntityDecoder[ChargeInvoiceRows] = jsonOf[ChargeInvoiceRows]

    val path = "/mail/{id}/invoices".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def getMailList(host: String): Task[List[MailRow]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[MailRow]] = jsonOf[List[MailRow]]

    val path = "/mail"

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
      resp          <- client.expect[List[MailRow]](req)

    } yield resp
  }

  def getMailWelcomeEmail(host: String, id: Integer): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/mail/{id}/welcome_email".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def getNewMail(host: String): Task[MailOrder] = {
    implicit val returnTypeDecoder: EntityDecoder[MailOrder] = jsonOf[MailOrder]

    val path = "/mail/order"

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
      resp          <- client.expect[MailOrder](req)

    } yield resp
  }

  def getRules(host: String, id: Integer): Task[List[DenyRuleRecord]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[DenyRuleRecord]] = jsonOf[List[DenyRuleRecord]]

    val path = "/mail/{id}/rules".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[List[DenyRuleRecord]](req)

    } yield resp
  }

  def getStats(host: String, id: Integer, time: String)(implicit timeQuery: QueryParam[String]): Task[MailStatsType] = {
    implicit val returnTypeDecoder: EntityDecoder[MailStatsType] = jsonOf[MailStatsType]

    val path = "/mail/{id}/stats".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("time", Some(timeQuery.toParamString(time))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MailStatsType](req)

    } yield resp
  }

  def mailCancel(host: String, id: Integer): Task[MailCancel200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[MailCancel200Response] = jsonOf[MailCancel200Response]

    val path = "/mail/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[MailCancel200Response](req)

    } yield resp
  }

  def postMailDelist(host: String, id: Integer, MailDelistRequest: MailDelistRequest): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/mail/{id}/delist".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(MailDelistRequest)
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def putMail(host: String, MailOrderRequest: MailOrderRequest): Task[Unit] = {
    val path = "/mail/order"

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(MailOrderRequest)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def resetMailPassword(host: String, id: Integer): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/mail/{id}/reset_password".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def sendAdvMail(host: String, id: Integer, SendMailAdv: SendMailAdv): Task[GenericResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GenericResponse] = jsonOf[GenericResponse]

    val path = "/mail/{id}/advsend".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(SendMailAdv)
      resp          <- client.expect[GenericResponse](req)

    } yield resp
  }

  def sendMail(host: String, id: Integer, SendMail: SendMail): Task[GenericResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GenericResponse] = jsonOf[GenericResponse]

    val path = "/mail/{id}/send".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(SendMail)
      resp          <- client.expect[GenericResponse](req)

    } yield resp
  }

  def updateMailAlert(host: String, id: Integer, MailAlertUpdateRequest: MailAlertUpdateRequest): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/mail/{id}/alerts".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(MailAlertUpdateRequest)
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def updateMailInfo(host: String, id: String): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/mail/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def updateRule(host: String, id: Integer, rule: String, DenyRuleNew: DenyRuleNew): Task[GenericResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GenericResponse] = jsonOf[GenericResponse]

    val path = "/mail/{id}/rules/{rule}".replaceAll("\\{" + "id" + "\\}",escape(id.toString)).replaceAll("\\{" + "rule" + "\\}",escape(rule.toString))

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(DenyRuleNew)
      resp          <- client.expect[GenericResponse](req)

    } yield resp
  }

  def viewMailLog(host: String, id: Integer, id2: Long, origin: String, mx: String, from: String, to: String, subject: String, mailid: String, messageId: String, replyto: String, headerfrom: String, delivered: Integer, skip: Integer = 0, limit: Integer = 100, startDate: ViewMailLogStartDateParameter, endDate: ViewMailLogStartDateParameter, sort: String = time, dir: String = desc, groupby: String = recipient)(implicit id2Query: QueryParam[Long], originQuery: QueryParam[String], mxQuery: QueryParam[String], fromQuery: QueryParam[String], toQuery: QueryParam[String], subjectQuery: QueryParam[String], mailidQuery: QueryParam[String], messageIdQuery: QueryParam[String], replytoQuery: QueryParam[String], headerfromQuery: QueryParam[String], deliveredQuery: QueryParam[Integer], skipQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], startDateQuery: QueryParam[ViewMailLogStartDateParameter], endDateQuery: QueryParam[ViewMailLogStartDateParameter], sortQuery: QueryParam[String], dirQuery: QueryParam[String], groupbyQuery: QueryParam[String]): Task[MailLog] = {
    implicit val returnTypeDecoder: EntityDecoder[MailLog] = jsonOf[MailLog]

    val path = "/mail/{id}/log".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("id2", Some(idQuery.toParamString(id))), ("origin", Some(originQuery.toParamString(origin))), ("mx", Some(mxQuery.toParamString(mx))), ("from", Some(fromQuery.toParamString(from))), ("to", Some(toQuery.toParamString(to))), ("subject", Some(subjectQuery.toParamString(subject))), ("mailid", Some(mailidQuery.toParamString(mailid))), ("messageId", Some(messageIdQuery.toParamString(messageId))), ("replyto", Some(replytoQuery.toParamString(replyto))), ("headerfrom", Some(headerfromQuery.toParamString(headerfrom))), ("delivered", Some(deliveredQuery.toParamString(delivered))), ("skip", Some(skipQuery.toParamString(skip))), ("limit", Some(limitQuery.toParamString(limit))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("sort", Some(sortQuery.toParamString(sort))), ("dir", Some(dirQuery.toParamString(dir))), ("groupby", Some(groupbyQuery.toParamString(groupby))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MailLog](req)

    } yield resp
  }

}

class HttpServiceMailApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addMail(MailOrderRequest: MailOrderRequest): Task[ServiceOrderPostResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ServiceOrderPostResponse] = jsonOf[ServiceOrderPostResponse]

    val path = "/mail/order"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(MailOrderRequest)
      resp          <- client.expect[ServiceOrderPostResponse](req)

    } yield resp
  }

  def addRule(id: Integer, DenyRuleNew: DenyRuleNew): Task[GenericResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GenericResponse] = jsonOf[GenericResponse]

    val path = "/mail/{id}/rules".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(DenyRuleNew)
      resp          <- client.expect[GenericResponse](req)

    } yield resp
  }

  def createMailAlert(id: Integer, MailAlertRequest: MailAlertRequest): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/mail/{id}/alerts".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(MailAlertRequest)
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def deleteMailAlert(id: Integer, DeleteMailAlertRequest: DeleteMailAlertRequest): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/mail/{id}/alerts".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.DELETE
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(DeleteMailAlertRequest)
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def deleteRule(id: Integer, rule: String): Task[GenericResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GenericResponse] = jsonOf[GenericResponse]

    val path = "/mail/{id}/rules/{rule}".replaceAll("\\{" + "id" + "\\}",escape(id.toString)).replaceAll("\\{" + "rule" + "\\}",escape(rule.toString))

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
      resp          <- client.expect[GenericResponse](req)

    } yield resp
  }

  def delistBlock(id: Integer, email: String): Task[GenericResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GenericResponse] = jsonOf[GenericResponse]

    val path = "/mail/{id}/blocks/delete".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[GenericResponse](req)

    } yield resp
  }

  def getMailAlerts(id: Integer): Task[MailAlertsResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MailAlertsResponse] = jsonOf[MailAlertsResponse]

    val path = "/mail/{id}/alerts".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[MailAlertsResponse](req)

    } yield resp
  }

  def getMailBlocks(id: Integer): Task[MailBlocks] = {
    implicit val returnTypeDecoder: EntityDecoder[MailBlocks] = jsonOf[MailBlocks]

    val path = "/mail/{id}/blocks".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[MailBlocks](req)

    } yield resp
  }

  def getMailDelist(id: Integer): Task[MailDelistResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MailDelistResponse] = jsonOf[MailDelistResponse]

    val path = "/mail/{id}/delist".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[MailDelistResponse](req)

    } yield resp
  }

  def getMailDeliverability(id: Integer): Task[MailDeliverabilityResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MailDeliverabilityResponse] = jsonOf[MailDeliverabilityResponse]

    val path = "/mail/{id}/deliverability".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[MailDeliverabilityResponse](req)

    } yield resp
  }

  def getMailInfo(id: Integer): Task[MailSchema] = {
    implicit val returnTypeDecoder: EntityDecoder[MailSchema] = jsonOf[MailSchema]

    val path = "/mail/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[MailSchema](req)

    } yield resp
  }

  def getMailInvoices(id: Integer): Task[ChargeInvoiceRows] = {
    implicit val returnTypeDecoder: EntityDecoder[ChargeInvoiceRows] = jsonOf[ChargeInvoiceRows]

    val path = "/mail/{id}/invoices".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def getMailList(): Task[List[MailRow]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[MailRow]] = jsonOf[List[MailRow]]

    val path = "/mail"

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
      resp          <- client.expect[List[MailRow]](req)

    } yield resp
  }

  def getMailWelcomeEmail(id: Integer): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/mail/{id}/welcome_email".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def getNewMail(): Task[MailOrder] = {
    implicit val returnTypeDecoder: EntityDecoder[MailOrder] = jsonOf[MailOrder]

    val path = "/mail/order"

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
      resp          <- client.expect[MailOrder](req)

    } yield resp
  }

  def getRules(id: Integer): Task[List[DenyRuleRecord]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[DenyRuleRecord]] = jsonOf[List[DenyRuleRecord]]

    val path = "/mail/{id}/rules".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[List[DenyRuleRecord]](req)

    } yield resp
  }

  def getStats(id: Integer, time: String)(implicit timeQuery: QueryParam[String]): Task[MailStatsType] = {
    implicit val returnTypeDecoder: EntityDecoder[MailStatsType] = jsonOf[MailStatsType]

    val path = "/mail/{id}/stats".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("time", Some(timeQuery.toParamString(time))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MailStatsType](req)

    } yield resp
  }

  def mailCancel(id: Integer): Task[MailCancel200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[MailCancel200Response] = jsonOf[MailCancel200Response]

    val path = "/mail/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[MailCancel200Response](req)

    } yield resp
  }

  def postMailDelist(id: Integer, MailDelistRequest: MailDelistRequest): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/mail/{id}/delist".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(MailDelistRequest)
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def putMail(MailOrderRequest: MailOrderRequest): Task[Unit] = {
    val path = "/mail/order"

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(MailOrderRequest)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def resetMailPassword(id: Integer): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/mail/{id}/reset_password".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def sendAdvMail(id: Integer, SendMailAdv: SendMailAdv): Task[GenericResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GenericResponse] = jsonOf[GenericResponse]

    val path = "/mail/{id}/advsend".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(SendMailAdv)
      resp          <- client.expect[GenericResponse](req)

    } yield resp
  }

  def sendMail(id: Integer, SendMail: SendMail): Task[GenericResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GenericResponse] = jsonOf[GenericResponse]

    val path = "/mail/{id}/send".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(SendMail)
      resp          <- client.expect[GenericResponse](req)

    } yield resp
  }

  def updateMailAlert(id: Integer, MailAlertUpdateRequest: MailAlertUpdateRequest): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/mail/{id}/alerts".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(MailAlertUpdateRequest)
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def updateMailInfo(id: String): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/mail/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def updateRule(id: Integer, rule: String, DenyRuleNew: DenyRuleNew): Task[GenericResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GenericResponse] = jsonOf[GenericResponse]

    val path = "/mail/{id}/rules/{rule}".replaceAll("\\{" + "id" + "\\}",escape(id.toString)).replaceAll("\\{" + "rule" + "\\}",escape(rule.toString))

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(DenyRuleNew)
      resp          <- client.expect[GenericResponse](req)

    } yield resp
  }

  def viewMailLog(id: Integer, id2: Long, origin: String, mx: String, from: String, to: String, subject: String, mailid: String, messageId: String, replyto: String, headerfrom: String, delivered: Integer, skip: Integer = 0, limit: Integer = 100, startDate: ViewMailLogStartDateParameter, endDate: ViewMailLogStartDateParameter, sort: String = time, dir: String = desc, groupby: String = recipient)(implicit id2Query: QueryParam[Long], originQuery: QueryParam[String], mxQuery: QueryParam[String], fromQuery: QueryParam[String], toQuery: QueryParam[String], subjectQuery: QueryParam[String], mailidQuery: QueryParam[String], messageIdQuery: QueryParam[String], replytoQuery: QueryParam[String], headerfromQuery: QueryParam[String], deliveredQuery: QueryParam[Integer], skipQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], startDateQuery: QueryParam[ViewMailLogStartDateParameter], endDateQuery: QueryParam[ViewMailLogStartDateParameter], sortQuery: QueryParam[String], dirQuery: QueryParam[String], groupbyQuery: QueryParam[String]): Task[MailLog] = {
    implicit val returnTypeDecoder: EntityDecoder[MailLog] = jsonOf[MailLog]

    val path = "/mail/{id}/log".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("id2", Some(idQuery.toParamString(id))), ("origin", Some(originQuery.toParamString(origin))), ("mx", Some(mxQuery.toParamString(mx))), ("from", Some(fromQuery.toParamString(from))), ("to", Some(toQuery.toParamString(to))), ("subject", Some(subjectQuery.toParamString(subject))), ("mailid", Some(mailidQuery.toParamString(mailid))), ("messageId", Some(messageIdQuery.toParamString(messageId))), ("replyto", Some(replytoQuery.toParamString(replyto))), ("headerfrom", Some(headerfromQuery.toParamString(headerfrom))), ("delivered", Some(deliveredQuery.toParamString(delivered))), ("skip", Some(skipQuery.toParamString(skip))), ("limit", Some(limitQuery.toParamString(limit))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("sort", Some(sortQuery.toParamString(sort))), ("dir", Some(dirQuery.toParamString(dir))), ("groupby", Some(groupbyQuery.toParamString(groupby))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MailLog](req)

    } yield resp
  }

}
