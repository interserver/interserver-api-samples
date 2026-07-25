package com.interserver.api;

import com.interserver.ApiUtils
import com.interserver.model.AddServer200Response
import com.interserver.model.BuyItNowList
import com.interserver.model.BuyItNowServerOrder200Response
import com.interserver.model.ChargeInvoiceRows
import com.interserver.model.GetAccountInfo401Response
import com.interserver.model.PlaceBuyNowServerRequest
import com.interserver.model.ReverseDnsEntries
import com.interserver.model.Server
import com.interserver.model.ServerBulkIpmiPowerResponse
import com.interserver.model.ServerIpmiLiveInfo
import com.interserver.model.ServerOrder
import com.interserver.model.ServerOrderPostRequest
import com.interserver.model.ServerRow
import com.interserver.model.ServersBuyNowError
import com.interserver.model.ServersBuyNowResponse
import com.interserver.model.ServersCancel200Response
import com.interserver.model.SuccessTextResponse
import com.interserver.model.TextResponse

class ServersApi {
    String basePath = "https://my.interserver.net/apiv2"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def addServer ( ServerOrderPostRequest serverOrderPostRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/servers/order"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (serverOrderPostRequest == null) {
            throw new RuntimeException("missing required params serverOrderPostRequest")
        }



        contentType = 'application/json';
        bodyParams = serverOrderPostRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    AddServer200Response.class )

    }

    def buyItNowServerOrder ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/servers/order/buy_now_server"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    BuyItNowServerOrder200Response.class )

    }

    def getMPServers ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/buy_now_servers_list"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    BuyItNowList.class )

    }

    def getNewServer ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/servers/order"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    ServerOrder.class )

    }

    def getServerInfo ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/servers/${id}"

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
                    Server.class )

    }

    def getServerInvoices ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/servers/${id}/invoices"

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

    def getServerList ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/servers"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    ServerRow.class )

    }

    def getServerReverseDns ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/servers/${id}/reverse_dns"

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
                    ReverseDnsEntries.class )

    }

    def getServersWelcomeEmail ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/servers/${id}/welcome_email"

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

    def placeBuyNowServer ( PlaceBuyNowServerRequest placeBuyNowServerRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/servers/order/buy_now_server"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType




        contentType = 'application/json';
        bodyParams = placeBuyNowServerRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    ServersBuyNowResponse.class )

    }

    def postServerReverseDns ( ReverseDnsEntries reverseDnsEntries, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/servers/${id}/reverse_dns"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (reverseDnsEntries == null) {
            throw new RuntimeException("missing required params reverseDnsEntries")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = reverseDnsEntries


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    TextResponse.class )

    }

    def serverBulkIpmiPowerGet ( String ids, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/servers/bulk/ipmi_power"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (ids == null) {
            throw new RuntimeException("missing required params ids")
        }

        if (ids != null) {
            queryParams.put("ids", ids)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    ServerBulkIpmiPowerResponse.class )

    }

    def serverIpmiLiveGet ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/servers/${id}/ipmi_live"

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
                    ServerIpmiLiveInfo.class )

    }

    def serverIpmiLivePost ( String ip, Integer id, Integer asset, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/servers/${id}/ipmi_live"

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
        bodyParams = [:]
        bodyParams.put("asset", asset)
        bodyParams.put("ip", ip)

        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    ServerIpmiLiveInfo.class )

    }

    def serverIpmiPowerGet ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/servers/${id}/ipmi_power"

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
                    TextResponse.class )

    }

    def serverIpmiPowerPost ( String action, Integer id, Integer asset, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/servers/${id}/ipmi_power"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (action == null) {
            throw new RuntimeException("missing required params action")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }




        contentType = 'multipart/form-data';
        bodyParams = [:]
        bodyParams.put("asset", asset)
        bodyParams.put("action", action)

        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    TextResponse.class )

    }

    def serversCancel ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/servers/${id}"

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
                    ServersCancel200Response.class )

    }

    def updateServerInfo ( String id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/servers/${id}"

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
