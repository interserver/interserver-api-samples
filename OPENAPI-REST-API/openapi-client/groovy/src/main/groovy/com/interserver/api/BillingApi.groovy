package com.interserver.api;

import com.interserver.ApiUtils
import com.interserver.model.AffiliateBannerRow
import com.interserver.model.AffiliateTrafficRow
import com.interserver.model.BillingAddCcRequest
import com.interserver.model.BillingInvoiceDetail
import com.interserver.model.BillingInvoiceList
import com.interserver.model.BillingPaymentMethodRequest
import com.interserver.model.BillingPrepayRequest
import com.interserver.model.BillingVerifyCcRequest
import com.interserver.model.GetAccountInfo401Response
import com.interserver.model.GetAffiliateSignups200Response
import com.interserver.model.InitiatePayment200Response
import com.interserver.model.MonthlyCounts
import com.interserver.model.PatchBillingCreditCardVerifyRequest
import com.interserver.model.StatusMonthlyBreakdown
import com.interserver.model.SuccessTextResponse
import com.interserver.model.TextResponse

class BillingApi {
    String basePath = "https://my.interserver.net/apiv2"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def addBillingCreditCard ( BillingAddCcRequest billingAddCcRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/billing/creditcards"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (billingAddCcRequest == null) {
            throw new RuntimeException("missing required params billingAddCcRequest")
        }



        contentType = 'application/json';
        bodyParams = billingAddCcRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    SuccessTextResponse.class )

    }

    def addBillingPrepay ( BillingPrepayRequest billingPrepayRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/billing/prepays"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (billingPrepayRequest == null) {
            throw new RuntimeException("missing required params billingPrepayRequest")
        }



        contentType = 'application/json';
        bodyParams = billingPrepayRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    SuccessTextResponse.class )

    }

    def deleteBillingCreditCard ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/billing/creditcards/${id}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "DELETE", "",
                    SuccessTextResponse.class )

    }

    def deleteBillingInvoice ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/billing/invoices/${id}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "DELETE", "",
                    SuccessTextResponse.class )

    }

    def deleteBillingPrepay ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/billing/prepays/${id}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "DELETE", "",
                    SuccessTextResponse.class )

    }

    def getAffiliateBanners ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/affiliate/banners"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    AffiliateBannerRow.class )

    }

    def getAffiliateDownload ( String st, String ex, Integer year, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/affiliate/download"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType


        if (st != null) {
            queryParams.put("st", st)
        }
        if (ex != null) {
            queryParams.put("ex", ex)
        }
        if (year != null) {
            queryParams.put("year", year)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    null )

    }

    def getAffiliateRichReport ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/affiliate/rich_report"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    TextResponse.class )

    }

    def getAffiliateSalesGraph ( Integer days, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/affiliate/sales_graph"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType


        if (days != null) {
            queryParams.put("days", days)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    StatusMonthlyBreakdown.class )

    }

    def getAffiliateSignups ( String st, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/affiliate/signups"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType


        if (st != null) {
            queryParams.put("st", st)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    GetAffiliateSignups200Response.class )

    }

    def getAffiliateTrafficGraph ( Integer days, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/affiliate/traffic_graph"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType


        if (days != null) {
            queryParams.put("days", days)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    MonthlyCounts.class )

    }

    def getAffiliateWebTraffic ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/affiliate/web_traffic"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    AffiliateTrafficRow.class )

    }

    def getBillingCart ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/billing/cart"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    Object.class )

    }

    def getBillingCreditCardVerify ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/billing/creditcards/${id}/verify"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    SuccessTextResponse.class )

    }

    def getBillingInvoice ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/billing/invoices/${id}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    BillingInvoiceDetail.class )

    }

    def getBillingInvoices ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/billing/invoices"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    BillingInvoiceList.class )

    }

    def getBillingPrePays ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/billing/prepays"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    Object.class )

    }

    def initiatePayment ( String method, String invoices, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/billing/pay/${method}/${invoices}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (method == null) {
            throw new RuntimeException("missing required params method")
        }
        // verify required params are set
        if (invoices == null) {
            throw new RuntimeException("missing required params invoices")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    InitiatePayment200Response.class )

    }

    def patchBillingCreditCardVerify ( PatchBillingCreditCardVerifyRequest patchBillingCreditCardVerifyRequest, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/billing/creditcards/${id}/verify"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (patchBillingCreditCardVerifyRequest == null) {
            throw new RuntimeException("missing required params patchBillingCreditCardVerifyRequest")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = patchBillingCreditCardVerifyRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "PATCH", "",
                    SuccessTextResponse.class )

    }

    def postBillingCreditCardVerify ( BillingVerifyCcRequest billingVerifyCcRequest, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/billing/creditcards/${id}/verify"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (billingVerifyCcRequest == null) {
            throw new RuntimeException("missing required params billingVerifyCcRequest")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = billingVerifyCcRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    SuccessTextResponse.class )

    }

    def updateAffiliateDockSetup ( String affiliateDockTitle, String affiliateDockDescription, String referrerCoupon, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/affiliate/dock_setup"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType





        contentType = 'multipart/form-data';
        bodyParams = [:]
        bodyParams.put("affiliate_dock_title", affiliateDockTitle)
        bodyParams.put("affiliate_dock_description", affiliateDockDescription)
        bodyParams.put("referrer_coupon", referrerCoupon)

        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    TextResponse.class )

    }

    def updateAffiliatePaymentSetup ( String affiliatePaypal, String affiliatePaymentMethod, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/affiliate/payment_setup"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType





        contentType = 'multipart/form-data';
        bodyParams = [:]
        bodyParams.put("affiliate_paypal", affiliatePaypal)
        bodyParams.put("affiliate_payment_method", affiliatePaymentMethod)

        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    TextResponse.class )

    }

    def updateBillingCreditCard ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/billing/creditcards/${id}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    SuccessTextResponse.class )

    }

    def updateBillingPaymentMethod ( BillingPaymentMethodRequest billingPaymentMethodRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/billing/payment_method"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (billingPaymentMethodRequest == null) {
            throw new RuntimeException("missing required params billingPaymentMethodRequest")
        }



        contentType = 'application/json';
        bodyParams = billingPaymentMethodRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    SuccessTextResponse.class )

    }

}
