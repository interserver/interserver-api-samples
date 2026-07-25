package com.interserver.api;

import com.interserver.ApiUtils
import com.interserver.model.ChargeInvoiceRows
import com.interserver.model.DownloadQsBackup200Response
import com.interserver.model.DownloadQsBackupRequest
import com.interserver.model.GetAccountInfo401Response
import com.interserver.model.QsOrderRequest
import com.interserver.model.QueueResponse
import com.interserver.model.Quickserver
import com.interserver.model.QuickserverOrder
import com.interserver.model.QuickserverRow
import com.interserver.model.QuickserversCancel200Response
import com.interserver.model.RestoreRequest
import com.interserver.model.ReverseDnsEntries
import com.interserver.model.ServiceOrderPostResponse
import com.interserver.model.SuccessTextResponse
import com.interserver.model.TextResponse
import com.interserver.model.VpsBackupRows
import com.interserver.model.VpsTemplatesList

class QuickServersApi {
    String basePath = "https://my.interserver.net/apiv2"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def addQs ( QsOrderRequest qsOrderRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/order"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (qsOrderRequest == null) {
            throw new RuntimeException("missing required params qsOrderRequest")
        }



        contentType = 'application/json';
        bodyParams = qsOrderRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    ServiceOrderPostResponse.class )

    }

    def deleteQsBackup ( Integer id, String _file, String all, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/backups"

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
        if (_file == null) {
            throw new RuntimeException("missing required params _file")
        }

        if (all != null) {
            queryParams.put("all", all)
        }
        if (_file != null) {
            queryParams.put("file", _file)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "DELETE", "",
                    SuccessTextResponse.class )

    }

    def doQsBlockSmtp ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/block_smtp"

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
                    QueueResponse.class )

    }

    def doQsDisableCd ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/disable_cd"

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
                    QueueResponse.class )

    }

    def doQsDisableQuota ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/disable_quota"

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
                    QueueResponse.class )

    }

    def doQsEjectCd ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/eject_cd"

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
                    QueueResponse.class )

    }

    def doQsEnableQuota ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/enable_quota"

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
                    QueueResponse.class )

    }

    def doQsRestart ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/restart"

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
                    QueueResponse.class )

    }

    def doQsStart ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/start"

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
                    QueueResponse.class )

    }

    def doQsStop ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/stop"

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
                    QueueResponse.class )

    }

    def downloadQsBackup ( DownloadQsBackupRequest downloadQsBackupRequest, Integer id, String all, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/backups"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (downloadQsBackupRequest == null) {
            throw new RuntimeException("missing required params downloadQsBackupRequest")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }

        if (all != null) {
            queryParams.put("all", all)
        }


        contentType = 'application/json';
        bodyParams = downloadQsBackupRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "PATCH", "",
                    DownloadQsBackup200Response.class )

    }

    def getNewQs ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/order"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    QuickserverOrder.class )

    }

    def getQsBackup ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/backup"

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
                    QueueResponse.class )

    }

    def getQsBackups ( Integer id, String all, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/backups"

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

        if (all != null) {
            queryParams.put("all", all)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    VpsBackupRows.class )

    }

    def getQsChangeHostname ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/change_hostname"

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
                    null )

    }

    def getQsChangeRootPassword ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/change_root_password"

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
                    null )

    }

    def getQsChangeTimezone ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/change_timezone"

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
                    String.class )

    }

    def getQsChangeWebuzoPassword ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/change_webuzo_password"

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
                    null )

    }

    def getQsInfo ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}"

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
                    Quickserver.class )

    }

    def getQsInsertCd ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/insert_cd"

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
                    null )

    }

    def getQsInvoices ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/invoices"

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

    def getQsList ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    QuickserverRow.class )

    }

    def getQsReinstallOs ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/reinstall_os"

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
                    VpsTemplatesList.class )

    }

    def getQsResetPassword ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/reset_password"

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
                    null )

    }

    def getQsReverseDns ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/reverse_dns"

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

    def getQsSetupVnc ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/setup_vnc"

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
                    null )

    }

    def getQsTrafficUsage ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/traffic_usage"

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
                    null )

    }

    def getQsViewDesktop ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/view_desktop"

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
                    null )

    }

    def getQsWelcomeEmail ( String id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/welcome_email"

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

    def postQsChangeHostname ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/change_hostname"

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
                    QueueResponse.class )

    }

    def postQsChangeRootPassword ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/change_root_password"

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
                    QueueResponse.class )

    }

    def postQsChangeTimezone ( String timezone, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/change_timezone"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (timezone == null) {
            throw new RuntimeException("missing required params timezone")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }




        contentType = 'multipart/form-data';
        bodyParams = timezone

        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    QueueResponse.class )

    }

    def postQsChangeWebuzoPassword ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/change_webuzo_password"

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
                    QueueResponse.class )

    }

    def postQsInsertCd ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/insert_cd"

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
                    QueueResponse.class )

    }

    def postQsReinstallOs ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/reinstall_os"

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
                    QueueResponse.class )

    }

    def postQsResetPassword ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/reset_password"

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
                    QueueResponse.class )

    }

    def postQsReverseDns ( ReverseDnsEntries reverseDnsEntries, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/reverse_dns"

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

    def postQsSetupVnc ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/setup_vnc"

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
                    QueueResponse.class )

    }

    def postQsTrafficUsage ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/traffic_usage"

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
                    null )

    }

    def postQsViewDesktop ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/view_desktop"

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
                    null )

    }

    def postQuickServerRestore ( RestoreRequest restoreRequest, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}/restore"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (restoreRequest == null) {
            throw new RuntimeException("missing required params restoreRequest")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = restoreRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    QueueResponse.class )

    }

    def putQs ( QsOrderRequest qsOrderRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/order"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (qsOrderRequest == null) {
            throw new RuntimeException("missing required params qsOrderRequest")
        }



        contentType = 'application/json';
        bodyParams = qsOrderRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "PUT", "",
                    null )

    }

    def quickserversCancel ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}"

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
                    QuickserversCancel200Response.class )

    }

    def updateQsInfo ( String id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/qs/${id}"

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
