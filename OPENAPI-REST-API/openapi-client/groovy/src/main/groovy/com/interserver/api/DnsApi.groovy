package com.interserver.api;

import com.interserver.ApiUtils
import com.interserver.model.DnsListItem
import com.interserver.model.DnsRecord
import com.interserver.model.DnsRecordType
import com.interserver.model.GetAccountInfo401Response
import com.interserver.model.SuccessTextResponse

class DnsApi {
    String basePath = "https://my.interserver.net/apiv2"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def addDnsDomain ( String domain, String ip, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dns"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (domain == null) {
            throw new RuntimeException("missing required params domain")
        }
        // verify required params are set
        if (ip == null) {
            throw new RuntimeException("missing required params ip")
        }




        contentType = 'multipart/form-data';
        bodyParams = [:]
        bodyParams.put("domain", domain)
        bodyParams.put("ip", ip)

        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    SuccessTextResponse.class )

    }

    def addDnsRecord ( String name, DnsRecordType type, String content, String id, Integer ttl, Integer prio, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dns/${id}"

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
        if (type == null) {
            throw new RuntimeException("missing required params type")
        }
        // verify required params are set
        if (content == null) {
            throw new RuntimeException("missing required params content")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }




        contentType = 'multipart/form-data';
        bodyParams = [:]
        bodyParams.put("name", name)
        bodyParams.put("type", type)
        bodyParams.put("content", content)
        bodyParams.put("ttl", ttl)
        bodyParams.put("prio", prio)

        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    null )

    }

    def deleteDnsDomain ( String id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dns/${id}"

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
                    SuccessTextResponse.class )

    }

    def deleteDnsRecord ( Integer domainId, Integer recordId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dns/${domainId}/${recordId}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (domainId == null) {
            throw new RuntimeException("missing required params domainId")
        }
        // verify required params are set
        if (recordId == null) {
            throw new RuntimeException("missing required params recordId")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "DELETE", "",
                    SuccessTextResponse.class )

    }

    def getDnsDomain ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dns/${id}"

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
                    DnsRecord.class )

    }

    def getDnsList ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dns"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    DnsListItem.class )

    }

    def updateDnsRecord ( Integer domainId, Integer recordId, String name, DnsRecordType type, String content, String ttl, String prio, String disabled, String ordername, String auth, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dns/${domainId}/${recordId}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (domainId == null) {
            throw new RuntimeException("missing required params domainId")
        }
        // verify required params are set
        if (recordId == null) {
            throw new RuntimeException("missing required params recordId")
        }




        contentType = 'multipart/form-data';
        bodyParams = [:]
        bodyParams.put("name", name)
        bodyParams.put("type", type)
        bodyParams.put("content", content)
        bodyParams.put("ttl", ttl)
        bodyParams.put("prio", prio)
        bodyParams.put("disabled", disabled)
        bodyParams.put("ordername", ordername)
        bodyParams.put("auth", auth)

        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    SuccessTextResponse.class )

    }

}
