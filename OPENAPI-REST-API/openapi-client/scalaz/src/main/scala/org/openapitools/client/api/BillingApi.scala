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

import org.openapitools.client.api.AffiliateBannerRow
import org.openapitools.client.api.AffiliateTrafficRow
import org.openapitools.client.api.BillingAddCcRequest
import org.openapitools.client.api.BillingInvoiceDetail
import org.openapitools.client.api.BillingInvoiceList
import org.openapitools.client.api.BillingPaymentMethodRequest
import org.openapitools.client.api.BillingPrepayRequest
import org.openapitools.client.api.BillingVerifyCcRequest
import org.openapitools.client.api.GetAccountInfo401Response
import org.openapitools.client.api.GetAffiliateSignups200Response
import org.openapitools.client.api.InitiatePayment200Response
import org.openapitools.client.api.MonthlyCounts
import org.openapitools.client.api.PatchBillingCreditCardVerifyRequest
import org.openapitools.client.api.StatusMonthlyBreakdown
import org.openapitools.client.api.SuccessTextResponse
import org.openapitools.client.api.TextResponse

object BillingApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addBillingCreditCard(host: String, BillingAddCcRequest: BillingAddCcRequest): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/billing/creditcards"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(BillingAddCcRequest)
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def addBillingPrepay(host: String, BillingPrepayRequest: BillingPrepayRequest): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/billing/prepays"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(BillingPrepayRequest)
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def deleteBillingCreditCard(host: String, id: Integer): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/billing/creditcards/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def deleteBillingInvoice(host: String, id: Integer): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/billing/invoices/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def deleteBillingPrepay(host: String, id: Integer): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/billing/prepays/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def getAffiliateBanners(host: String): Task[List[AffiliateBannerRow]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AffiliateBannerRow]] = jsonOf[List[AffiliateBannerRow]]

    val path = "/affiliate/banners"

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
      resp          <- client.expect[List[AffiliateBannerRow]](req)

    } yield resp
  }

  def getAffiliateDownload(host: String, st: String, ex: String, year: Integer)(implicit stQuery: QueryParam[String], exQuery: QueryParam[String], yearQuery: QueryParam[Integer]): Task[Unit] = {
    val path = "/affiliate/download"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("st", Some(stQuery.toParamString(st))), ("ex", Some(exQuery.toParamString(ex))), ("year", Some(yearQuery.toParamString(year))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getAffiliateRichReport(host: String): Task[TextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TextResponse] = jsonOf[TextResponse]

    val path = "/affiliate/rich_report"

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

  def getAffiliateSalesGraph(host: String, days: Integer)(implicit daysQuery: QueryParam[Integer]): Task[StatusMonthlyBreakdown] = {
    implicit val returnTypeDecoder: EntityDecoder[StatusMonthlyBreakdown] = jsonOf[StatusMonthlyBreakdown]

    val path = "/affiliate/sales_graph"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("days", Some(daysQuery.toParamString(days))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[StatusMonthlyBreakdown](req)

    } yield resp
  }

  def getAffiliateSignups(host: String, st: String)(implicit stQuery: QueryParam[String]): Task[GetAffiliateSignups200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[GetAffiliateSignups200Response] = jsonOf[GetAffiliateSignups200Response]

    val path = "/affiliate/signups"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("st", Some(stQuery.toParamString(st))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GetAffiliateSignups200Response](req)

    } yield resp
  }

  def getAffiliateTrafficGraph(host: String, days: Integer)(implicit daysQuery: QueryParam[Integer]): Task[MonthlyCounts] = {
    implicit val returnTypeDecoder: EntityDecoder[MonthlyCounts] = jsonOf[MonthlyCounts]

    val path = "/affiliate/traffic_graph"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("days", Some(daysQuery.toParamString(days))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MonthlyCounts](req)

    } yield resp
  }

  def getAffiliateWebTraffic(host: String): Task[List[AffiliateTrafficRow]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AffiliateTrafficRow]] = jsonOf[List[AffiliateTrafficRow]]

    val path = "/affiliate/web_traffic"

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
      resp          <- client.expect[List[AffiliateTrafficRow]](req)

    } yield resp
  }

  def getBillingCart(host: String): Task[Any] = {
    implicit val returnTypeDecoder: EntityDecoder[Any] = jsonOf[Any]

    val path = "/billing/cart"

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
      resp          <- client.expect[Any](req)

    } yield resp
  }

  def getBillingCreditCardVerify(host: String, id: Integer): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/billing/creditcards/{id}/verify".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def getBillingInvoice(host: String, id: Integer): Task[BillingInvoiceDetail] = {
    implicit val returnTypeDecoder: EntityDecoder[BillingInvoiceDetail] = jsonOf[BillingInvoiceDetail]

    val path = "/billing/invoices/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[BillingInvoiceDetail](req)

    } yield resp
  }

  def getBillingInvoices(host: String): Task[BillingInvoiceList] = {
    implicit val returnTypeDecoder: EntityDecoder[BillingInvoiceList] = jsonOf[BillingInvoiceList]

    val path = "/billing/invoices"

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
      resp          <- client.expect[BillingInvoiceList](req)

    } yield resp
  }

  def getBillingPrePays(host: String): Task[Any] = {
    implicit val returnTypeDecoder: EntityDecoder[Any] = jsonOf[Any]

    val path = "/billing/prepays"

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
      resp          <- client.expect[Any](req)

    } yield resp
  }

  def initiatePayment(host: String, method: String, invoices: String): Task[InitiatePayment200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[InitiatePayment200Response] = jsonOf[InitiatePayment200Response]

    val path = "/billing/pay/{method}/{invoices}".replaceAll("\\{" + "method" + "\\}",escape(method.toString)).replaceAll("\\{" + "invoices" + "\\}",escape(invoices.toString))

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
      resp          <- client.expect[InitiatePayment200Response](req)

    } yield resp
  }

  def patchBillingCreditCardVerify(host: String, id: Integer, PatchBillingCreditCardVerifyRequest: PatchBillingCreditCardVerifyRequest): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/billing/creditcards/{id}/verify".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.PATCH
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(PatchBillingCreditCardVerifyRequest)
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def postBillingCreditCardVerify(host: String, id: Integer, BillingVerifyCcRequest: BillingVerifyCcRequest): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/billing/creditcards/{id}/verify".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(BillingVerifyCcRequest)
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def updateAffiliateDockSetup(host: String, affiliate_dock_title: String, affiliate_dock_description: String, referrer_coupon: String): Task[TextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TextResponse] = jsonOf[TextResponse]

    val path = "/affiliate/dock_setup"

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

  def updateAffiliatePaymentSetup(host: String, affiliate_paypal: String, affiliate_payment_method: String): Task[TextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TextResponse] = jsonOf[TextResponse]

    val path = "/affiliate/payment_setup"

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

  def updateBillingCreditCard(host: String, id: Integer): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/billing/creditcards/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def updateBillingPaymentMethod(host: String, BillingPaymentMethodRequest: BillingPaymentMethodRequest): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/billing/payment_method"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(BillingPaymentMethodRequest)
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

}

class HttpServiceBillingApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addBillingCreditCard(BillingAddCcRequest: BillingAddCcRequest): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/billing/creditcards"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(BillingAddCcRequest)
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def addBillingPrepay(BillingPrepayRequest: BillingPrepayRequest): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/billing/prepays"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(BillingPrepayRequest)
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def deleteBillingCreditCard(id: Integer): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/billing/creditcards/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def deleteBillingInvoice(id: Integer): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/billing/invoices/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def deleteBillingPrepay(id: Integer): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/billing/prepays/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def getAffiliateBanners(): Task[List[AffiliateBannerRow]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AffiliateBannerRow]] = jsonOf[List[AffiliateBannerRow]]

    val path = "/affiliate/banners"

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
      resp          <- client.expect[List[AffiliateBannerRow]](req)

    } yield resp
  }

  def getAffiliateDownload(st: String, ex: String, year: Integer)(implicit stQuery: QueryParam[String], exQuery: QueryParam[String], yearQuery: QueryParam[Integer]): Task[Unit] = {
    val path = "/affiliate/download"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("st", Some(stQuery.toParamString(st))), ("ex", Some(exQuery.toParamString(ex))), ("year", Some(yearQuery.toParamString(year))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getAffiliateRichReport(): Task[TextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TextResponse] = jsonOf[TextResponse]

    val path = "/affiliate/rich_report"

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

  def getAffiliateSalesGraph(days: Integer)(implicit daysQuery: QueryParam[Integer]): Task[StatusMonthlyBreakdown] = {
    implicit val returnTypeDecoder: EntityDecoder[StatusMonthlyBreakdown] = jsonOf[StatusMonthlyBreakdown]

    val path = "/affiliate/sales_graph"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("days", Some(daysQuery.toParamString(days))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[StatusMonthlyBreakdown](req)

    } yield resp
  }

  def getAffiliateSignups(st: String)(implicit stQuery: QueryParam[String]): Task[GetAffiliateSignups200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[GetAffiliateSignups200Response] = jsonOf[GetAffiliateSignups200Response]

    val path = "/affiliate/signups"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("st", Some(stQuery.toParamString(st))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GetAffiliateSignups200Response](req)

    } yield resp
  }

  def getAffiliateTrafficGraph(days: Integer)(implicit daysQuery: QueryParam[Integer]): Task[MonthlyCounts] = {
    implicit val returnTypeDecoder: EntityDecoder[MonthlyCounts] = jsonOf[MonthlyCounts]

    val path = "/affiliate/traffic_graph"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("days", Some(daysQuery.toParamString(days))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MonthlyCounts](req)

    } yield resp
  }

  def getAffiliateWebTraffic(): Task[List[AffiliateTrafficRow]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AffiliateTrafficRow]] = jsonOf[List[AffiliateTrafficRow]]

    val path = "/affiliate/web_traffic"

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
      resp          <- client.expect[List[AffiliateTrafficRow]](req)

    } yield resp
  }

  def getBillingCart(): Task[Any] = {
    implicit val returnTypeDecoder: EntityDecoder[Any] = jsonOf[Any]

    val path = "/billing/cart"

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
      resp          <- client.expect[Any](req)

    } yield resp
  }

  def getBillingCreditCardVerify(id: Integer): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/billing/creditcards/{id}/verify".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def getBillingInvoice(id: Integer): Task[BillingInvoiceDetail] = {
    implicit val returnTypeDecoder: EntityDecoder[BillingInvoiceDetail] = jsonOf[BillingInvoiceDetail]

    val path = "/billing/invoices/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[BillingInvoiceDetail](req)

    } yield resp
  }

  def getBillingInvoices(): Task[BillingInvoiceList] = {
    implicit val returnTypeDecoder: EntityDecoder[BillingInvoiceList] = jsonOf[BillingInvoiceList]

    val path = "/billing/invoices"

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
      resp          <- client.expect[BillingInvoiceList](req)

    } yield resp
  }

  def getBillingPrePays(): Task[Any] = {
    implicit val returnTypeDecoder: EntityDecoder[Any] = jsonOf[Any]

    val path = "/billing/prepays"

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
      resp          <- client.expect[Any](req)

    } yield resp
  }

  def initiatePayment(method: String, invoices: String): Task[InitiatePayment200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[InitiatePayment200Response] = jsonOf[InitiatePayment200Response]

    val path = "/billing/pay/{method}/{invoices}".replaceAll("\\{" + "method" + "\\}",escape(method.toString)).replaceAll("\\{" + "invoices" + "\\}",escape(invoices.toString))

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
      resp          <- client.expect[InitiatePayment200Response](req)

    } yield resp
  }

  def patchBillingCreditCardVerify(id: Integer, PatchBillingCreditCardVerifyRequest: PatchBillingCreditCardVerifyRequest): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/billing/creditcards/{id}/verify".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.PATCH
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(PatchBillingCreditCardVerifyRequest)
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def postBillingCreditCardVerify(id: Integer, BillingVerifyCcRequest: BillingVerifyCcRequest): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/billing/creditcards/{id}/verify".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(BillingVerifyCcRequest)
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

  def updateAffiliateDockSetup(affiliate_dock_title: String, affiliate_dock_description: String, referrer_coupon: String): Task[TextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TextResponse] = jsonOf[TextResponse]

    val path = "/affiliate/dock_setup"

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

  def updateAffiliatePaymentSetup(affiliate_paypal: String, affiliate_payment_method: String): Task[TextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TextResponse] = jsonOf[TextResponse]

    val path = "/affiliate/payment_setup"

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

  def updateBillingCreditCard(id: Integer): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/billing/creditcards/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def updateBillingPaymentMethod(BillingPaymentMethodRequest: BillingPaymentMethodRequest): Task[SuccessTextResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SuccessTextResponse] = jsonOf[SuccessTextResponse]

    val path = "/billing/payment_method"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(BillingPaymentMethodRequest)
      resp          <- client.expect[SuccessTextResponse](req)

    } yield resp
  }

}
