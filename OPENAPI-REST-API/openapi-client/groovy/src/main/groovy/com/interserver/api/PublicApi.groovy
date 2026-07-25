package com.interserver.api;

import com.interserver.ApiUtils
import com.interserver.model.BuyItNowList
import com.interserver.model.CaptchaResponse
import com.interserver.model.GetAccountInfo401Response
import com.interserver.model.GetAccountLocales200ResponseValue
import com.interserver.model.GetOauthRedirect200Response
import com.interserver.model.LoginErrorResponse
import com.interserver.model.LoginInfo
import com.interserver.model.LoginSubmissionExample
import com.interserver.model.LoginSubmissionExampleGRecaptchaResponse
import com.interserver.model.LoginSuccessResponse
import com.interserver.model.PatchOauthTwoFactor200Response
import com.interserver.model.PatchOauthTwoFactorRequest
import com.interserver.model.PostOauthCallback200Response
import com.interserver.model.PostOauthCallbackRequest
import com.interserver.model.ServicesInfo

class PublicApi {
    String basePath = "https://my.interserver.net/apiv2"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def getAccountCurrencies ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/account/currencies"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    String.class )

    }

    def getAccountLocales ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/account/locales"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "map",
                    GetAccountLocales200ResponseValue.class )

    }

    def getCaptcha ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/captcha"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    CaptchaResponse.class )

    }

    def getCountries ( String fetchBy, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/account/countries"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType


        if (fetchBy != null) {
            queryParams.put("fetch_by", fetchBy)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    Object.class )

    }

    def getInfo ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/info"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    ServicesInfo.class )

    }

    def getLoginInfo ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/login"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    LoginInfo.class )

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

    def getOauthRedirect ( String provider, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/oauth"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (provider == null) {
            throw new RuntimeException("missing required params provider")
        }

        if (provider != null) {
            queryParams.put("provider", provider)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    GetOauthRedirect200Response.class )

    }

    def getTimezones ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/account/timezones"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    String.class )

    }

    def patchOauthTwoFactor ( PatchOauthTwoFactorRequest patchOauthTwoFactorRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/oauth"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (patchOauthTwoFactorRequest == null) {
            throw new RuntimeException("missing required params patchOauthTwoFactorRequest")
        }



        contentType = 'application/json';
        bodyParams = patchOauthTwoFactorRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "PATCH", "",
                    PatchOauthTwoFactor200Response.class )

    }

    def pingServer ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ping"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    String.class )

    }

    def postOauthCallback ( String provider, PostOauthCallbackRequest postOauthCallbackRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/oauth"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (provider == null) {
            throw new RuntimeException("missing required params provider")
        }

        if (provider != null) {
            queryParams.put("provider", provider)
        }


        contentType = 'application/json';
        bodyParams = postOauthCallbackRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    PostOauthCallback200Response.class )

    }

    def submitLogin ( String login, String passwd, String remember, LoginSubmissionExampleGRecaptchaResponse gRecaptchaResponse, String tfa, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/login"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (login == null) {
            throw new RuntimeException("missing required params login")
        }
        // verify required params are set
        if (passwd == null) {
            throw new RuntimeException("missing required params passwd")
        }




        contentType = 'multipart/form-data';
        bodyParams = [:]
        bodyParams.put("login", login)
        bodyParams.put("passwd", passwd)
        bodyParams.put("remember", remember)
        bodyParams.put("g-recaptcha-response", gRecaptchaResponse)
        bodyParams.put("tfa", tfa)

        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    LoginSuccessResponse.class )

    }

    def submitSignup ( LoginSubmissionExample loginSubmissionExample, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/signup"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType




        contentType = 'application/json';
        bodyParams = loginSubmissionExample


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    null )

    }

}
