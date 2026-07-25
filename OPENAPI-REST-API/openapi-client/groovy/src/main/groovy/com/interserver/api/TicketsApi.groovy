package com.interserver.api;

import com.interserver.ApiUtils
import java.math.BigDecimal
import com.interserver.model.CloseTicketResponseSchema
import com.interserver.model.GetAccountInfo401Response
import com.interserver.model.ReplyTicketRequest
import com.interserver.model.ReplyTicketResponseSchema
import com.interserver.model.TicketNew
import com.interserver.model.TicketNewResponse
import com.interserver.model.Tickets
import com.interserver.model.UpdateTicket
import com.interserver.model.UpdateTicketResponseSchema
import com.interserver.model.ViewTicketResponse

class TicketsApi {
    String basePath = "https://my.interserver.net/apiv2"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def addNewTicket ( TicketNew ticketNew, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/tickets/new"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (ticketNew == null) {
            throw new RuntimeException("missing required params ticketNew")
        }



        contentType = 'application/json';
        bodyParams = ticketNew


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    TicketNewResponse.class )

    }

    def closeTicket ( String id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/tickets/${id}/close"

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
                    CloseTicketResponseSchema.class )

    }

    def deleteTicketInfo ( BigDecimal id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/tickets/${id}"

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
                    ViewTicketResponse.class )

    }

    def getNewTicket ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/tickets/new"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    null )

    }

    def getTicketInfo ( BigDecimal id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/tickets/${id}"

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
                    ViewTicketResponse.class )

    }

    def getTicketsList ( Integer page, String period, String view, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/tickets"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType


        if (page != null) {
            queryParams.put("page", page)
        }
        if (period != null) {
            queryParams.put("period", period)
        }
        if (view != null) {
            queryParams.put("view", view)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    Tickets.class )

    }

    def postTicketInfo ( BigDecimal id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/tickets/${id}"

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
                    ViewTicketResponse.class )

    }

    def postTicketsList ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/tickets"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    Tickets.class )

    }

    def putTicketInfo ( BigDecimal id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/tickets/${id}"

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
                    "PUT", "",
                    ViewTicketResponse.class )

    }

    def replyTicket ( BigDecimal id, ReplyTicketRequest replyTicketRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/tickets/${id}/reply"

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



        contentType = 'application/json';
        bodyParams = replyTicketRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    ReplyTicketResponseSchema.class )

    }

    def updateTicketInfo ( BigDecimal id, UpdateTicket updateTicket, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/tickets/${id}/update"

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



        contentType = 'application/json';
        bodyParams = updateTicket


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    UpdateTicketResponseSchema.class )

    }

}
