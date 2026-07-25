package com.interserver.api;

import com.interserver.ApiUtils
import com.interserver.model.ChargeInvoiceRows
import com.interserver.model.GetAccountInfo401Response
import com.interserver.model.IpObject
import com.interserver.model.License
import com.interserver.model.LicenseOrderRequest
import com.interserver.model.LicenseRow
import com.interserver.model.LicensesCancel200Response
import com.interserver.model.LicensesOrder
import com.interserver.model.ServiceOrderPostResponse
import com.interserver.model.SuccessTextResponse

class LicensesApi {
    String basePath = "https://my.interserver.net/apiv2"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def addLicense ( LicenseOrderRequest licenseOrderRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/licenses/order"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (licenseOrderRequest == null) {
            throw new RuntimeException("missing required params licenseOrderRequest")
        }



        contentType = 'application/json';
        bodyParams = licenseOrderRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    ServiceOrderPostResponse.class )

    }

    def getLicenseInfo ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/licenses/${id}"

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
                    License.class )

    }

    def getLicenseInvoices ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/licenses/${id}/invoices"

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

    def getLicenseList ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/licenses"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    LicenseRow.class )

    }

    def getLicensesWelcomeEmail ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/licenses/${id}/welcome_email"

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

    def getNewLicense ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/licenses/order"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    LicensesOrder.class )

    }

    def licensesCancel ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/licenses/${id}"

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
                    LicensesCancel200Response.class )

    }

    def postLicenseChangeIp ( IpObject ipObject, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/licenses/${id}/change_ip"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (ipObject == null) {
            throw new RuntimeException("missing required params ipObject")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = ipObject


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    SuccessTextResponse.class )

    }

    def putLicenses ( LicenseOrderRequest licenseOrderRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/licenses/order"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (licenseOrderRequest == null) {
            throw new RuntimeException("missing required params licenseOrderRequest")
        }



        contentType = 'application/json';
        bodyParams = licenseOrderRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "PUT", "",
                    null )

    }

    def updateLicenseInfo ( String id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/licenses/${id}"

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
