package com.interserver.api;

import com.interserver.ApiUtils
import com.interserver.model.ChargeInvoiceRows
import com.interserver.model.GetAccountInfo401Response
import com.interserver.model.GetWebsiteBuyIp200Response
import com.interserver.model.PostWebsiteBuyIp200Response
import com.interserver.model.PostWebsiteBuyIpRequest
import com.interserver.model.PostWebsiteMigration200Response
import com.interserver.model.PostWebsiteMigrationRequest
import com.interserver.model.PostWebsiteMigrationRequest1
import com.interserver.model.ReverseDnsEntries
import com.interserver.model.ServiceOrderPostResponse
import com.interserver.model.SuccessTextResponse
import com.interserver.model.TextResponse
import com.interserver.model.WebhostingCancel200Response
import com.interserver.model.Website
import com.interserver.model.WebsiteBackups
import com.interserver.model.WebsiteLoginResponse
import com.interserver.model.WebsiteOrderPostRequest
import com.interserver.model.WebsiteOrderPutRequest
import com.interserver.model.WebsiteRow
import com.interserver.model.WebsitesOrder

class WebhostingApi {
    String basePath = "https://my.interserver.net/apiv2"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def addWebsite ( WebsiteOrderPostRequest websiteOrderPostRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/websites/order"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (websiteOrderPostRequest == null) {
            throw new RuntimeException("missing required params websiteOrderPostRequest")
        }



        contentType = 'application/json';
        bodyParams = websiteOrderPostRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    ServiceOrderPostResponse.class )

    }

    def getNewWebsite ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/websites/order"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    WebsitesOrder.class )

    }

    def getWebsiteBuyIp ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/websites/${id}/buy_ip"

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
                    GetWebsiteBuyIp200Response.class )

    }

    def getWebsiteInfo ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/websites/${id}"

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
                    Website.class )

    }

    def getWebsiteInvoices ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/websites/${id}/invoices"

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

    def getWebsiteList ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/websites"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json", "multipart/form-data"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    WebsiteRow.class )

    }

    def getWebsitesBackups ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/websites/${id}/backups"

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
                    WebsiteBackups.class )

    }

    def getWebsitesLogin ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/websites/${id}/login"

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
                    WebsiteLoginResponse.class )

    }

    def getWebsitesWelcomeEmail ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/websites/${id}/welcome_email"

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

    def gettWebsiteReverseDns ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/websites/${id}/reverse_dns"

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

    def postWebsiteBuyIp ( PostWebsiteBuyIpRequest postWebsiteBuyIpRequest, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/websites/${id}/buy_ip"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (postWebsiteBuyIpRequest == null) {
            throw new RuntimeException("missing required params postWebsiteBuyIpRequest")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = postWebsiteBuyIpRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    PostWebsiteBuyIp200Response.class )

    }

    def postWebsiteMigration ( PostWebsiteMigrationRequest postWebsiteMigrationRequest, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/websites/${id}/migration"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (postWebsiteMigrationRequest == null) {
            throw new RuntimeException("missing required params postWebsiteMigrationRequest")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = postWebsiteMigrationRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    PostWebsiteMigration200Response.class )

    }

    def postWebsitesReverseDns ( ReverseDnsEntries reverseDnsEntries, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/websites/${id}/reverse_dns"

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

    def putWebsites ( WebsiteOrderPutRequest websiteOrderPutRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/websites/order"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (websiteOrderPutRequest == null) {
            throw new RuntimeException("missing required params websiteOrderPutRequest")
        }



        contentType = 'application/json';
        bodyParams = websiteOrderPutRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "PUT", "",
                    null )

    }

    def updateWebsiteInfo ( String id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/websites/${id}"

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

    def webhostingCancel ( String id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/websites/${id}"

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
                    WebhostingCancel200Response.class )

    }

}
