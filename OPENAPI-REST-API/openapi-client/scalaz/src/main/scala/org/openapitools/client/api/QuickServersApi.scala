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
import org.openapitools.client.api.DownloadQsBackup200Response
import org.openapitools.client.api.DownloadQsBackupRequest
import org.openapitools.client.api.GetAccountInfo401Response
import org.openapitools.client.api.QsOrderRequest
import org.openapitools.client.api.QueueResponse
import org.openapitools.client.api.Quickserver
import org.openapitools.client.api.QuickserverOrder
import org.openapitools.client.api.QuickserverRow
import org.openapitools.client.api.QuickserversCancel200Response
import org.openapitools.client.api.RestoreRequest
import org.openapitools.client.api.ReverseDnsEntries
import org.openapitools.client.api.ServiceOrderPostResponse
import org.openapitools.client.api.SuccessTextResponse
import org.openapitools.client.api.TextResponse
import org.openapitools.client.api.VpsBackupRows
import org.openapitools.client.api.VpsTemplatesList

object QuickServersApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addQs(host: String, QsOrderRequest: QsOrderRequest): Task[ServiceOrderPostResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ServiceOrderPostResponse] = jsonOf[ServiceOrderPostResponse]

    val path = "/qs/order"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(QsOrderRequest)
      resp          <- client.expect[ServiceOrderPostResponse](req)

    } yield resp
  }

  def deleteQsBackup(host: String, id: Integer, file: String, all: String)(implicit allQuery: QueryParam[String], fileQuery: QueryParam[String]): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/qs/{id}/backups".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.DELETE
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("all", Some(allQuery.toParamString(all))), ("file", Some(fileQuery.toParamString(file))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def doQsBlockSmtp(host: String, id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/block_smtp".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def doQsDisableCd(host: String, id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/disable_cd".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def doQsDisableQuota(host: String, id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/disable_quota".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def doQsEjectCd(host: String, id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/eject_cd".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def doQsEnableQuota(host: String, id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/enable_quota".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def doQsRestart(host: String, id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/restart".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def doQsStart(host: String, id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/start".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def doQsStop(host: String, id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/stop".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def downloadQsBackup(host: String, id: Integer, DownloadQsBackupRequest: DownloadQsBackupRequest, all: String)(implicit allQuery: QueryParam[String]): Task[DownloadQsBackup200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[DownloadQsBackup200Response] = jsonOf[DownloadQsBackup200Response]

    val path = "/qs/{id}/backups".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.PATCH
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("all", Some(allQuery.toParamString(all))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(DownloadQsBackupRequest)
      resp          <- client.expect[DownloadQsBackup200Response](req)

    } yield resp
  }

  def getNewQs(host: String): Task[QuickserverOrder] = {
    implicit val returnTypeDecoder: EntityDecoder[QuickserverOrder] = jsonOf[QuickserverOrder]

    val path = "/qs/order"

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
      resp          <- client.expect[QuickserverOrder](req)

    } yield resp
  }

  def getQsBackup(host: String, id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/backup".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def getQsBackups(host: String, id: Integer, all: String)(implicit allQuery: QueryParam[String]): Task[VpsBackupRows] = {
    implicit val returnTypeDecoder: EntityDecoder[VpsBackupRows] = jsonOf[VpsBackupRows]

    val path = "/qs/{id}/backups".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("all", Some(allQuery.toParamString(all))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[VpsBackupRows](req)

    } yield resp
  }

  def getQsChangeHostname(host: String, id: Integer): Task[Unit] = {
    val path = "/qs/{id}/change_hostname".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getQsChangeRootPassword(host: String, id: Integer): Task[Unit] = {
    val path = "/qs/{id}/change_root_password".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getQsChangeTimezone(host: String, id: Integer): Task[List[String]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[String]] = jsonOf[List[String]]

    val path = "/qs/{id}/change_timezone".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def getQsChangeWebuzoPassword(host: String, id: Integer): Task[Unit] = {
    val path = "/qs/{id}/change_webuzo_password".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getQsInfo(host: String, id: Integer): Task[Quickserver] = {
    implicit val returnTypeDecoder: EntityDecoder[Quickserver] = jsonOf[Quickserver]

    val path = "/qs/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[Quickserver](req)

    } yield resp
  }

  def getQsInsertCd(host: String, id: Integer): Task[Unit] = {
    val path = "/qs/{id}/insert_cd".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getQsInvoices(host: String, id: Integer): Task[ChargeInvoiceRows] = {
    implicit val returnTypeDecoder: EntityDecoder[ChargeInvoiceRows] = jsonOf[ChargeInvoiceRows]

    val path = "/qs/{id}/invoices".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def getQsList(host: String): Task[List[QuickserverRow]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[QuickserverRow]] = jsonOf[List[QuickserverRow]]

    val path = "/qs"

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
      resp          <- client.expect[List[QuickserverRow]](req)

    } yield resp
  }

  def getQsReinstallOs(host: String, id: Integer): Task[VpsTemplatesList] = {
    implicit val returnTypeDecoder: EntityDecoder[VpsTemplatesList] = jsonOf[VpsTemplatesList]

    val path = "/qs/{id}/reinstall_os".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[VpsTemplatesList](req)

    } yield resp
  }

  def getQsResetPassword(host: String, id: Integer): Task[Unit] = {
    val path = "/qs/{id}/reset_password".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getQsReverseDns(host: String, id: Integer): Task[ReverseDnsEntries] = {
    implicit val returnTypeDecoder: EntityDecoder[ReverseDnsEntries] = jsonOf[ReverseDnsEntries]

    val path = "/qs/{id}/reverse_dns".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def getQsSetupVnc(host: String, id: Integer): Task[Unit] = {
    val path = "/qs/{id}/setup_vnc".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getQsTrafficUsage(host: String, id: Integer): Task[Unit] = {
    val path = "/qs/{id}/traffic_usage".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getQsViewDesktop(host: String, id: Integer): Task[Unit] = {
    val path = "/qs/{id}/view_desktop".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getQsWelcomeEmail(host: String, id: String): Task[TextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TextResponse] = jsonOf[TextResponse]

    val path = "/qs/{id}/welcome_email".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def postQsChangeHostname(host: String, id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/change_hostname".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def postQsChangeRootPassword(host: String, id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/change_root_password".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def postQsChangeTimezone(host: String, id: Integer, timezone: String): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/change_timezone".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def postQsChangeWebuzoPassword(host: String, id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/change_webuzo_password".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def postQsInsertCd(host: String, id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/insert_cd".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def postQsReinstallOs(host: String, id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/reinstall_os".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def postQsResetPassword(host: String, id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/reset_password".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def postQsReverseDns(host: String, id: Integer, ReverseDnsEntries: ReverseDnsEntries): Task[TextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TextResponse] = jsonOf[TextResponse]

    val path = "/qs/{id}/reverse_dns".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def postQsSetupVnc(host: String, id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/setup_vnc".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def postQsTrafficUsage(host: String, id: Integer): Task[Unit] = {
    val path = "/qs/{id}/traffic_usage".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def postQsViewDesktop(host: String, id: Integer): Task[Unit] = {
    val path = "/qs/{id}/view_desktop".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def postQuickServerRestore(host: String, id: Integer, RestoreRequest: RestoreRequest): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/restore".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(RestoreRequest)
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def putQs(host: String, QsOrderRequest: QsOrderRequest): Task[Unit] = {
    val path = "/qs/order"

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(QsOrderRequest)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def quickserversCancel(host: String, id: Integer): Task[QuickserversCancel200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[QuickserversCancel200Response] = jsonOf[QuickserversCancel200Response]

    val path = "/qs/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QuickserversCancel200Response](req)

    } yield resp
  }

  def updateQsInfo(host: String, id: String): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/qs/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

class HttpServiceQuickServersApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addQs(QsOrderRequest: QsOrderRequest): Task[ServiceOrderPostResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ServiceOrderPostResponse] = jsonOf[ServiceOrderPostResponse]

    val path = "/qs/order"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(QsOrderRequest)
      resp          <- client.expect[ServiceOrderPostResponse](req)

    } yield resp
  }

  def deleteQsBackup(id: Integer, file: String, all: String)(implicit allQuery: QueryParam[String], fileQuery: QueryParam[String]): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/qs/{id}/backups".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.DELETE
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("all", Some(allQuery.toParamString(all))), ("file", Some(fileQuery.toParamString(file))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def doQsBlockSmtp(id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/block_smtp".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def doQsDisableCd(id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/disable_cd".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def doQsDisableQuota(id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/disable_quota".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def doQsEjectCd(id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/eject_cd".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def doQsEnableQuota(id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/enable_quota".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def doQsRestart(id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/restart".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def doQsStart(id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/start".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def doQsStop(id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/stop".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def downloadQsBackup(id: Integer, DownloadQsBackupRequest: DownloadQsBackupRequest, all: String)(implicit allQuery: QueryParam[String]): Task[DownloadQsBackup200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[DownloadQsBackup200Response] = jsonOf[DownloadQsBackup200Response]

    val path = "/qs/{id}/backups".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.PATCH
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("all", Some(allQuery.toParamString(all))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(DownloadQsBackupRequest)
      resp          <- client.expect[DownloadQsBackup200Response](req)

    } yield resp
  }

  def getNewQs(): Task[QuickserverOrder] = {
    implicit val returnTypeDecoder: EntityDecoder[QuickserverOrder] = jsonOf[QuickserverOrder]

    val path = "/qs/order"

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
      resp          <- client.expect[QuickserverOrder](req)

    } yield resp
  }

  def getQsBackup(id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/backup".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def getQsBackups(id: Integer, all: String)(implicit allQuery: QueryParam[String]): Task[VpsBackupRows] = {
    implicit val returnTypeDecoder: EntityDecoder[VpsBackupRows] = jsonOf[VpsBackupRows]

    val path = "/qs/{id}/backups".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("all", Some(allQuery.toParamString(all))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[VpsBackupRows](req)

    } yield resp
  }

  def getQsChangeHostname(id: Integer): Task[Unit] = {
    val path = "/qs/{id}/change_hostname".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getQsChangeRootPassword(id: Integer): Task[Unit] = {
    val path = "/qs/{id}/change_root_password".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getQsChangeTimezone(id: Integer): Task[List[String]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[String]] = jsonOf[List[String]]

    val path = "/qs/{id}/change_timezone".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def getQsChangeWebuzoPassword(id: Integer): Task[Unit] = {
    val path = "/qs/{id}/change_webuzo_password".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getQsInfo(id: Integer): Task[Quickserver] = {
    implicit val returnTypeDecoder: EntityDecoder[Quickserver] = jsonOf[Quickserver]

    val path = "/qs/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[Quickserver](req)

    } yield resp
  }

  def getQsInsertCd(id: Integer): Task[Unit] = {
    val path = "/qs/{id}/insert_cd".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getQsInvoices(id: Integer): Task[ChargeInvoiceRows] = {
    implicit val returnTypeDecoder: EntityDecoder[ChargeInvoiceRows] = jsonOf[ChargeInvoiceRows]

    val path = "/qs/{id}/invoices".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def getQsList(): Task[List[QuickserverRow]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[QuickserverRow]] = jsonOf[List[QuickserverRow]]

    val path = "/qs"

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
      resp          <- client.expect[List[QuickserverRow]](req)

    } yield resp
  }

  def getQsReinstallOs(id: Integer): Task[VpsTemplatesList] = {
    implicit val returnTypeDecoder: EntityDecoder[VpsTemplatesList] = jsonOf[VpsTemplatesList]

    val path = "/qs/{id}/reinstall_os".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[VpsTemplatesList](req)

    } yield resp
  }

  def getQsResetPassword(id: Integer): Task[Unit] = {
    val path = "/qs/{id}/reset_password".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getQsReverseDns(id: Integer): Task[ReverseDnsEntries] = {
    implicit val returnTypeDecoder: EntityDecoder[ReverseDnsEntries] = jsonOf[ReverseDnsEntries]

    val path = "/qs/{id}/reverse_dns".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def getQsSetupVnc(id: Integer): Task[Unit] = {
    val path = "/qs/{id}/setup_vnc".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getQsTrafficUsage(id: Integer): Task[Unit] = {
    val path = "/qs/{id}/traffic_usage".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getQsViewDesktop(id: Integer): Task[Unit] = {
    val path = "/qs/{id}/view_desktop".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getQsWelcomeEmail(id: String): Task[TextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TextResponse] = jsonOf[TextResponse]

    val path = "/qs/{id}/welcome_email".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def postQsChangeHostname(id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/change_hostname".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def postQsChangeRootPassword(id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/change_root_password".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def postQsChangeTimezone(id: Integer, timezone: String): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/change_timezone".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def postQsChangeWebuzoPassword(id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/change_webuzo_password".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def postQsInsertCd(id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/insert_cd".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def postQsReinstallOs(id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/reinstall_os".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def postQsResetPassword(id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/reset_password".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def postQsReverseDns(id: Integer, ReverseDnsEntries: ReverseDnsEntries): Task[TextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TextResponse] = jsonOf[TextResponse]

    val path = "/qs/{id}/reverse_dns".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def postQsSetupVnc(id: Integer): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/setup_vnc".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def postQsTrafficUsage(id: Integer): Task[Unit] = {
    val path = "/qs/{id}/traffic_usage".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def postQsViewDesktop(id: Integer): Task[Unit] = {
    val path = "/qs/{id}/view_desktop".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def postQuickServerRestore(id: Integer, RestoreRequest: RestoreRequest): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/qs/{id}/restore".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(RestoreRequest)
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def putQs(QsOrderRequest: QsOrderRequest): Task[Unit] = {
    val path = "/qs/order"

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(QsOrderRequest)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def quickserversCancel(id: Integer): Task[QuickserversCancel200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[QuickserversCancel200Response] = jsonOf[QuickserversCancel200Response]

    val path = "/qs/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[QuickserversCancel200Response](req)

    } yield resp
  }

  def updateQsInfo(id: String): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/qs/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
