package com.interserver.api;

import com.interserver.ApiUtils
import com.interserver.model.Backup
import com.interserver.model.BackupLoginResponse
import com.interserver.model.BackupOrderPostResponse
import com.interserver.model.BackupOrderPutResponse
import com.interserver.model.BackupRow
import com.interserver.model.BackupsOrder
import com.interserver.model.CancelBackup200Response
import com.interserver.model.ChargeInvoiceRows
import com.interserver.model.GetAccountInfo401Response
import com.interserver.model.SuccessTextResponse

class BackupsApi {
    String basePath = "https://my.interserver.net/apiv2"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def addBackup ( Boolean validateOnly, Integer serviceType, String coupon, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/backups/order"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType





        contentType = 'multipart/form-data';
        bodyParams = [:]
        bodyParams.put("validateOnly", validateOnly)
        bodyParams.put("serviceType", serviceType)
        bodyParams.put("coupon", coupon)

        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    BackupOrderPostResponse.class )

    }

    def cancelBackup ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/backups/${id}"

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
                    CancelBackup200Response.class )

    }

    def getBackupInfo ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/backups/${id}"

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
                    Backup.class )

    }

    def getBackupInvoices ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/backups/${id}/invoices"

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

    def getBackupLogin ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/backups/${id}/login"

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
                    BackupLoginResponse.class )

    }

    def getBackupsList ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/backups"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    BackupRow.class )

    }

    def getBackupsWelcomeEmail ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/backups/${id}/welcome_email"

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

    def getNewBackup ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/backups/order"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    BackupsOrder.class )

    }

    def updateBackupInfo ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/backups/${id}"

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

    def validateBackupOrder ( Boolean validateOnly, Integer serviceType, String coupon, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/backups/order"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType





        contentType = 'multipart/form-data';
        bodyParams = [:]
        bodyParams.put("validateOnly", validateOnly)
        bodyParams.put("serviceType", serviceType)
        bodyParams.put("coupon", coupon)

        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "PUT", "",
                    BackupOrderPutResponse.class )

    }

}
