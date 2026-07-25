package com.interserver.api;

import com.interserver.ApiUtils
import com.interserver.model.ChargeInvoiceRows
import com.interserver.model.DeleteMailAlertRequest
import com.interserver.model.DenyRuleNew
import com.interserver.model.DenyRuleRecord
import com.interserver.model.GenericResponse
import com.interserver.model.GetAccountInfo401Response
import com.interserver.model.MailAlertRequest
import com.interserver.model.MailAlertUpdateRequest
import com.interserver.model.MailAlertsResponse
import com.interserver.model.MailBlocks
import com.interserver.model.MailCancel200Response
import com.interserver.model.MailDelistRequest
import com.interserver.model.MailDelistResponse
import com.interserver.model.MailDeliverabilityResponse
import com.interserver.model.MailLog
import com.interserver.model.MailOrder
import com.interserver.model.MailOrderRequest
import com.interserver.model.MailRow
import com.interserver.model.MailSchema
import com.interserver.model.MailStatsType
import com.interserver.model.SendMail
import com.interserver.model.SendMailAdv
import com.interserver.model.ServiceOrderPostResponse
import com.interserver.model.SuccessTextResponse
import com.interserver.model.ViewMailLogStartDateParameter

class MailApi {
    String basePath = "https://my.interserver.net/apiv2"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def addMail ( MailOrderRequest mailOrderRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail/order"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (mailOrderRequest == null) {
            throw new RuntimeException("missing required params mailOrderRequest")
        }



        contentType = 'application/json';
        bodyParams = mailOrderRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    ServiceOrderPostResponse.class )

    }

    def addRule ( DenyRuleNew denyRuleNew, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail/${id}/rules"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (denyRuleNew == null) {
            throw new RuntimeException("missing required params denyRuleNew")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = denyRuleNew


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    GenericResponse.class )

    }

    def createMailAlert ( MailAlertRequest mailAlertRequest, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail/${id}/alerts"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (mailAlertRequest == null) {
            throw new RuntimeException("missing required params mailAlertRequest")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = mailAlertRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    SuccessTextResponse.class )

    }

    def deleteMailAlert ( DeleteMailAlertRequest deleteMailAlertRequest, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail/${id}/alerts"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (deleteMailAlertRequest == null) {
            throw new RuntimeException("missing required params deleteMailAlertRequest")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = deleteMailAlertRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "DELETE", "",
                    SuccessTextResponse.class )

    }

    def deleteRule ( Integer id, String rule, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail/${id}/rules/${rule}"

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
        // verify required params are set
        if (rule == null) {
            throw new RuntimeException("missing required params rule")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "DELETE", "",
                    GenericResponse.class )

    }

    def delistBlock ( Integer id, String email, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail/${id}/blocks/delete"

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




        contentType = 'multipart/form-data';
        bodyParams = email

        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    GenericResponse.class )

    }

    def getMailAlerts ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail/${id}/alerts"

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
                    MailAlertsResponse.class )

    }

    def getMailBlocks ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail/${id}/blocks"

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
                    MailBlocks.class )

    }

    def getMailDelist ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail/${id}/delist"

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
                    MailDelistResponse.class )

    }

    def getMailDeliverability ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail/${id}/deliverability"

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
                    MailDeliverabilityResponse.class )

    }

    def getMailInfo ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail/${id}"

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
                    MailSchema.class )

    }

    def getMailInvoices ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail/${id}/invoices"

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
                    ChargeInvoiceRows.class )

    }

    def getMailList ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    MailRow.class )

    }

    def getMailWelcomeEmail ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail/${id}/welcome_email"

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

    def getNewMail ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail/order"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    MailOrder.class )

    }

    def getRules ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail/${id}/rules"

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
                    "GET", "array",
                    DenyRuleRecord.class )

    }

    def getStats ( Integer id, String time, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail/${id}/stats"

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

        if (time != null) {
            queryParams.put("time", time)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    MailStatsType.class )

    }

    def mailCancel ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail/${id}"

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
                    MailCancel200Response.class )

    }

    def postMailDelist ( MailDelistRequest mailDelistRequest, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail/${id}/delist"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (mailDelistRequest == null) {
            throw new RuntimeException("missing required params mailDelistRequest")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = mailDelistRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    SuccessTextResponse.class )

    }

    def putMail ( MailOrderRequest mailOrderRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail/order"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (mailOrderRequest == null) {
            throw new RuntimeException("missing required params mailOrderRequest")
        }



        contentType = 'application/json';
        bodyParams = mailOrderRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "PUT", "",
                    null )

    }

    def resetMailPassword ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail/${id}/reset_password"

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

    def sendAdvMail ( SendMailAdv sendMailAdv, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail/${id}/advsend"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (sendMailAdv == null) {
            throw new RuntimeException("missing required params sendMailAdv")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = sendMailAdv


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    GenericResponse.class )

    }

    def sendMail ( SendMail sendMail, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail/${id}/send"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (sendMail == null) {
            throw new RuntimeException("missing required params sendMail")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = sendMail


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    GenericResponse.class )

    }

    def updateMailAlert ( MailAlertUpdateRequest mailAlertUpdateRequest, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail/${id}/alerts"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (mailAlertUpdateRequest == null) {
            throw new RuntimeException("missing required params mailAlertUpdateRequest")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = mailAlertUpdateRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "PUT", "",
                    SuccessTextResponse.class )

    }

    def updateMailInfo ( String id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail/${id}"

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

    def updateRule ( DenyRuleNew denyRuleNew, Integer id, String rule, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail/${id}/rules/${rule}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (denyRuleNew == null) {
            throw new RuntimeException("missing required params denyRuleNew")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }
        // verify required params are set
        if (rule == null) {
            throw new RuntimeException("missing required params rule")
        }



        contentType = 'application/json';
        bodyParams = denyRuleNew


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "PUT", "",
                    GenericResponse.class )

    }

    def viewMailLog ( Integer id, Long id2, String origin, String mx, String from, String to, String subject, String mailid, String messageId, String replyto, String headerfrom, Integer delivered, Integer skip, Integer limit, ViewMailLogStartDateParameter startDate, ViewMailLogStartDateParameter endDate, String sort, String dir, String groupby, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mail/${id}/log"

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

        if (id2 != null) {
            queryParams.put("id", id2)
        }
        if (origin != null) {
            queryParams.put("origin", origin)
        }
        if (mx != null) {
            queryParams.put("mx", mx)
        }
        if (from != null) {
            queryParams.put("from", from)
        }
        if (to != null) {
            queryParams.put("to", to)
        }
        if (subject != null) {
            queryParams.put("subject", subject)
        }
        if (mailid != null) {
            queryParams.put("mailid", mailid)
        }
        if (messageId != null) {
            queryParams.put("messageId", messageId)
        }
        if (replyto != null) {
            queryParams.put("replyto", replyto)
        }
        if (headerfrom != null) {
            queryParams.put("headerfrom", headerfrom)
        }
        if (delivered != null) {
            queryParams.put("delivered", delivered)
        }
        if (skip != null) {
            queryParams.put("skip", skip)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (sort != null) {
            queryParams.put("sort", sort)
        }
        if (dir != null) {
            queryParams.put("dir", dir)
        }
        if (groupby != null) {
            queryParams.put("groupby", groupby)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    MailLog.class )

    }

}
