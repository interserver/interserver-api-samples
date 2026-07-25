package com.interserver.api;

import com.interserver.ApiUtils
import com.interserver.model.AccountInfo
import com.interserver.model.GenericResponse
import com.interserver.model.GetAccountInfo401Response
import com.interserver.model.GetAccountTfaSetup200Response
import com.interserver.model.Home
import com.interserver.model.IpLimitRange
import com.interserver.model.SearchAutocompleteResponse
import com.interserver.model.SuccessTextResponse
import com.interserver.model.TextResponse

class AccountApi {
    String basePath = "https://my.interserver.net/apiv2"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def deleteAccountOauthName ( String name, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/account/oauth/${name}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "DELETE", "",
                    SuccessTextResponse.class )

    }

    def deleteAccountTfa ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/account/2fa"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "DELETE", "",
                    SuccessTextResponse.class )

    }

    def deleteIpLimit ( IpLimitRange ipLimitRange, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/account/iplimits"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType




        contentType = 'application/json';
        bodyParams = ipLimitRange


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "PATCH", "",
                    GenericResponse.class )

    }

    def getAccountInfo ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/account"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    AccountInfo.class )

    }

    def getAccountTfaSetup ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/account/2fa"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    GetAccountTfaSetup200Response.class )

    }

    def getHome ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/home"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    Home.class )

    }

    def getSearch ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    SearchAutocompleteResponse.class )

    }

    def logout ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/logout"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    SuccessTextResponse.class )

    }

    def logoutAccountOauth ( String name, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/account/oauth/${name}/logout"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    SuccessTextResponse.class )

    }

    def updateAccountApiKey ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/account/apikey"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    SuccessTextResponse.class )

    }

    def updateAccountFeatures ( Integer disableReset, Integer disableReinstall, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/account/features"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType





        contentType = 'multipart/form-data';
        bodyParams = [:]
        bodyParams.put("disable_reset", disableReset)
        bodyParams.put("disable_reinstall", disableReinstall)

        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    SuccessTextResponse.class )

    }

    def updateAccountInfo ( String name, String address, String city, String state, String zip, String country, String phone, String company, String address2, String locale, String emailInvoices, String emailAbuse, Boolean disableReset, Boolean disableReinstall, Boolean disableServerNotifications, Boolean disableEmailNotifications, String gstin, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/account"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }
        // verify required params are set
        if (address == null) {
            throw new RuntimeException("missing required params address")
        }
        // verify required params are set
        if (city == null) {
            throw new RuntimeException("missing required params city")
        }
        // verify required params are set
        if (state == null) {
            throw new RuntimeException("missing required params state")
        }
        // verify required params are set
        if (zip == null) {
            throw new RuntimeException("missing required params zip")
        }
        // verify required params are set
        if (country == null) {
            throw new RuntimeException("missing required params country")
        }
        // verify required params are set
        if (phone == null) {
            throw new RuntimeException("missing required params phone")
        }




        contentType = 'multipart/form-data';
        bodyParams = [:]
        bodyParams.put("name", name)
        bodyParams.put("company", company)
        bodyParams.put("address", address)
        bodyParams.put("address2", address2)
        bodyParams.put("city", city)
        bodyParams.put("state", state)
        bodyParams.put("zip", zip)
        bodyParams.put("country", country)
        bodyParams.put("phone", phone)
        bodyParams.put("locale", locale)
        bodyParams.put("email_invoices", emailInvoices)
        bodyParams.put("email_abuse", emailAbuse)
        bodyParams.put("disable_reset", disableReset)
        bodyParams.put("disable_reinstall", disableReinstall)
        bodyParams.put("disable_server_notifications", disableServerNotifications)
        bodyParams.put("disable_email_notifications", disableEmailNotifications)
        bodyParams.put("gstin", gstin)

        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    SuccessTextResponse.class )

    }

    def updateAccountIpLimits ( String start, String end, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/account/iplimits"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (start == null) {
            throw new RuntimeException("missing required params start")
        }
        // verify required params are set
        if (end == null) {
            throw new RuntimeException("missing required params end")
        }




        contentType = 'multipart/form-data';
        bodyParams = [:]
        bodyParams.put("start", start)
        bodyParams.put("end", end)

        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    SuccessTextResponse.class )

    }

    def updateAccountPassword ( String password, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/account/password"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (password == null) {
            throw new RuntimeException("missing required params password")
        }




        contentType = 'multipart/form-data';
        bodyParams = password

        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    TextResponse.class )

    }

    def updateAccountSshKey ( String sshKey, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/account/sshkey"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType





        contentType = 'multipart/form-data';
        bodyParams = sshKey

        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    SuccessTextResponse.class )

    }

    def updateAccountTfa ( String _2faGoogleCode, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/account/2fa"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (_2faGoogleCode == null) {
            throw new RuntimeException("missing required params _2faGoogleCode")
        }




        contentType = 'multipart/form-data';
        bodyParams = _2faGoogleCode

        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    SuccessTextResponse.class )

    }

}
