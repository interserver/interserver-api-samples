package com.interserver.api;

import com.interserver.ApiUtils
import com.interserver.model.ChargeInvoiceRows
import com.interserver.model.FloatingIpOrderRequest
import com.interserver.model.FloatingIpsCancel200Response
import com.interserver.model.GetAccountInfo401Response
import com.interserver.model.ServiceOrderPostResponse
import com.interserver.model.SuccessTextResponse

class FloatingIpsApi {
    String basePath = "https://my.interserver.net/apiv2"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def addFloatingIp ( FloatingIpOrderRequest floatingIpOrderRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/floating_ips/order"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (floatingIpOrderRequest == null) {
            throw new RuntimeException("missing required params floatingIpOrderRequest")
        }



        contentType = 'application/json';
        bodyParams = floatingIpOrderRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    ServiceOrderPostResponse.class )

    }

    def floatingIpsCancel ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/floating_ips/${id}"

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
                    FloatingIpsCancel200Response.class )

    }

    def getFloatingIpInfo ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/floating_ips/${id}"

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
                    Object.class )

    }

    def getFloatingIpInvoices ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/floating_ips/${id}/invoices"

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

    def getFloatingIpsList ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/floating_ips"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    Object.class )

    }

    def getFloatingIpsWelcomeEmail ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/floating_ips/${id}/welcome_email"

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

    def getNewFloatingIp ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/floating_ips/order"

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

    def postFloatingIpsChangeIp ( String ip, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/floating_ips/${id}/change_ip"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (ip == null) {
            throw new RuntimeException("missing required params ip")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }




        contentType = 'multipart/form-data';
        bodyParams = ip

        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    SuccessTextResponse.class )

    }

    def putFloatingIps ( FloatingIpOrderRequest floatingIpOrderRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/floating_ips/order"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (floatingIpOrderRequest == null) {
            throw new RuntimeException("missing required params floatingIpOrderRequest")
        }



        contentType = 'application/json';
        bodyParams = floatingIpOrderRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "PUT", "",
                    null )

    }

    def updateFloatingIpInfo ( String id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/floating_ips/${id}"

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

}
