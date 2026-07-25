package com.interserver.api;

import com.interserver.ApiUtils
import com.interserver.model.CancelScrubIp200Response
import com.interserver.model.ChargeInvoiceRows
import com.interserver.model.CreateFilter
import com.interserver.model.CreateFilter201Response
import com.interserver.model.CreateFilter400Response
import com.interserver.model.CreateFilter500Response
import com.interserver.model.CreateFirewallRule
import com.interserver.model.CreateGeoFirewallRule
import com.interserver.model.CreateGeoRule400Response
import com.interserver.model.CreateRule201Response
import com.interserver.model.CreateRule400Response
import com.interserver.model.CreateRule500Response
import com.interserver.model.DeleteFilter200Response
import com.interserver.model.DeleteFilter400Response
import com.interserver.model.DeleteFilter500Response
import com.interserver.model.DeleteFirewallRule
import com.interserver.model.DeleteGeoFirewallRule
import com.interserver.model.DisableScrub200Response
import com.interserver.model.DisableScrub400Response
import com.interserver.model.DisableScrub500Response
import com.interserver.model.EnableScrub200Response
import com.interserver.model.EnableScrub500Response
import com.interserver.model.GetAccountInfo401Response
import com.interserver.model.GetOrderDetail200Response
import com.interserver.model.GetScrubIpDetails200Response
import com.interserver.model.PlaceScrubOrder201Response
import com.interserver.model.PutScrubIps200Response
import com.interserver.model.ScrubIpFilterTypes
import com.interserver.model.ScrubIpPlaceOrder
import com.interserver.model.ScrubIpsDeleteRule200Response
import com.interserver.model.ScrubIpsDeleteRule400Response
import com.interserver.model.ScrubIpsDeleteRule500Response
import com.interserver.model.ScrubIpsLogRowSchema
import com.interserver.model.ScrubIpsRowSchema

class ScrubIpsApi {
    String basePath = "https://my.interserver.net/apiv2"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def cancelScrubIp ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/scrub_ips/${id}"

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
                    CancelScrubIp200Response.class )

    }

    def createFilter ( CreateFilter createFilter, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/scrub_ips/${id}/create_filter"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (createFilter == null) {
            throw new RuntimeException("missing required params createFilter")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = createFilter


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    CreateFilter201Response.class )

    }

    def createGeoRule ( CreateGeoFirewallRule createGeoFirewallRule, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/scrub_ips/${id}/create_geo_rule"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (createGeoFirewallRule == null) {
            throw new RuntimeException("missing required params createGeoFirewallRule")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = createGeoFirewallRule


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    CreateRule201Response.class )

    }

    def createRule ( CreateFirewallRule createFirewallRule, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/scrub_ips/${id}/create_rule"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (createFirewallRule == null) {
            throw new RuntimeException("missing required params createFirewallRule")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = createFirewallRule


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    CreateRule201Response.class )

    }

    def deleteFilter ( CreateFilter createFilter, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/scrub_ips/${id}/delete_filter"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (createFilter == null) {
            throw new RuntimeException("missing required params createFilter")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = createFilter


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    DeleteFilter200Response.class )

    }

    def disableScrub ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/scrub_ips/${id}/disable"

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
                    DisableScrub200Response.class )

    }

    def enableScrub ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/scrub_ips/${id}/enable"

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
                    EnableScrub200Response.class )

    }

    def getOrderDetail ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/scrub_ips/order"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    GetOrderDetail200Response.class )

    }

    def getScrubIpDetails ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/scrub_ips/${id}"

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
                    GetScrubIpDetails200Response.class )

    }

    def getScrubIpFilterTypes ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/scrub_ips/filter_types"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    ScrubIpFilterTypes.class )

    }

    def getScrubIpInvoices ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/scrub_ips/${id}/invoices"

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

    def getScrubIpLogs ( String id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/scrub_ips/${id}/logs"

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
                    ScrubIpsLogRowSchema.class )

    }

    def getScrubIpsList ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/scrub_ips"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    ScrubIpsRowSchema.class )

    }

    def placeScrubOrder ( ScrubIpPlaceOrder scrubIpPlaceOrder, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/scrub_ips/order"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (scrubIpPlaceOrder == null) {
            throw new RuntimeException("missing required params scrubIpPlaceOrder")
        }



        contentType = 'application/json';
        bodyParams = scrubIpPlaceOrder


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    PlaceScrubOrder201Response.class )

    }

    def putScrubIps ( ScrubIpPlaceOrder scrubIpPlaceOrder, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/scrub_ips/order"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (scrubIpPlaceOrder == null) {
            throw new RuntimeException("missing required params scrubIpPlaceOrder")
        }



        contentType = 'application/json';
        bodyParams = scrubIpPlaceOrder


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "PUT", "",
                    PutScrubIps200Response.class )

    }

    def scrubIpsDeleteGeoRule ( DeleteGeoFirewallRule deleteGeoFirewallRule, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/scrub_ips/${id}/delete_geo_rule"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (deleteGeoFirewallRule == null) {
            throw new RuntimeException("missing required params deleteGeoFirewallRule")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = deleteGeoFirewallRule


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    ScrubIpsDeleteRule200Response.class )

    }

    def scrubIpsDeleteRule ( DeleteFirewallRule deleteFirewallRule, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/scrub_ips/${id}/delete_rule"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (deleteFirewallRule == null) {
            throw new RuntimeException("missing required params deleteFirewallRule")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = deleteFirewallRule


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    ScrubIpsDeleteRule200Response.class )

    }

}
