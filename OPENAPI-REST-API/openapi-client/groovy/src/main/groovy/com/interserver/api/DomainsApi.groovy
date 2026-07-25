package com.interserver.api;

import com.interserver.ApiUtils
import com.interserver.model.CancelDomain200Response
import com.interserver.model.ChargeInvoiceRows
import com.interserver.model.Domain
import com.interserver.model.DomainContactDetails
import com.interserver.model.DomainDnssecRecords
import com.interserver.model.DomainDnssecRequest
import com.interserver.model.DomainLookupResponse
import com.interserver.model.DomainNameserverGetResponse
import com.interserver.model.DomainNameserverPostRequest
import com.interserver.model.DomainNameserverPutRequest
import com.interserver.model.DomainOrder
import com.interserver.model.DomainOrderRequest
import com.interserver.model.DomainRow
import com.interserver.model.DomainSearchResponse
import com.interserver.model.DomainWhoisPrivacyRequest
import com.interserver.model.GetAccountInfo401Response
import com.interserver.model.ServiceOrderPostResponse
import com.interserver.model.SuccessTextResponse
import com.interserver.model.TextResponse

class DomainsApi {
    String basePath = "https://my.interserver.net/apiv2"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def addDomain ( DomainOrderRequest domainOrderRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/order"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (domainOrderRequest == null) {
            throw new RuntimeException("missing required params domainOrderRequest")
        }



        contentType = 'application/json';
        bodyParams = domainOrderRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    ServiceOrderPostResponse.class )

    }

    def addDomainDnssec ( DomainDnssecRequest domainDnssecRequest, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/${id}/dnssec"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (domainDnssecRequest == null) {
            throw new RuntimeException("missing required params domainDnssecRequest")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = domainDnssecRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    SuccessTextResponse.class )

    }

    def addDomainNameserver ( DomainNameserverPostRequest domainNameserverPostRequest, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/${id}/nameservers"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (domainNameserverPostRequest == null) {
            throw new RuntimeException("missing required params domainNameserverPostRequest")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = domainNameserverPostRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    TextResponse.class )

    }

    def cancelDomain ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/${id}"

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
                    CancelDomain200Response.class )

    }

    def deleteDomainDnssec ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/${id}/dnssec"

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

    def deleteDomainNameserver ( Integer id, Integer index, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/${id}/nameservers"

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
        if (index == null) {
            throw new RuntimeException("missing required params index")
        }

        if (index != null) {
            queryParams.put("index", index)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "DELETE", "",
                    TextResponse.class )

    }

    def getDomainContact ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/${id}/contact"

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
                    DomainContactDetails.class )

    }

    def getDomainDnssec ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/${id}/dnssec"

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
                    DomainDnssecRecords.class )

    }

    def getDomainInfo ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/${id}"

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
                    Domain.class )

    }

    def getDomainInvoices ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/${id}/invoices"

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

    def getDomainLookup ( String name, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/lookup/${name}"

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
                    DomainLookupResponse.class )

    }

    def getDomainNameservers ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/${id}/nameservers"

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
                    DomainNameserverGetResponse.class )

    }

    def getDomainRenewal ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/${id}/renew"

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

    def getDomainSearch ( String name, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/search/${name}"

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
                    DomainSearchResponse.class )

    }

    def getDomainTransfer ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/${id}/transfer"

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

    def getDomainWhoisPrivacy ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/${id}/whois"

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

    def getDomainsList ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    DomainRow.class )

    }

    def getDomainsWelcomeEmail ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/${id}/welcome_email"

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

    def getNewDomain ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/order"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    DomainOrder.class )

    }

    def patchDomains ( DomainOrderRequest domainOrderRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/order"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (domainOrderRequest == null) {
            throw new RuntimeException("missing required params domainOrderRequest")
        }



        contentType = 'application/json';
        bodyParams = domainOrderRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "PATCH", "",
                    null )

    }

    def postDomainRenewal ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/${id}/renew"

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

    def postDomainSearch ( String name, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/search/${name}"

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
                    "POST", "",
                    null )

    }

    def postDomainTransfer ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/${id}/transfer"

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

    def putDomains ( DomainOrderRequest domainOrderRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/order"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (domainOrderRequest == null) {
            throw new RuntimeException("missing required params domainOrderRequest")
        }



        contentType = 'application/json';
        bodyParams = domainOrderRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "PUT", "",
                    null )

    }

    def updateDomainContact ( DomainContactDetails domainContactDetails, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/${id}/contact"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (domainContactDetails == null) {
            throw new RuntimeException("missing required params domainContactDetails")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = domainContactDetails


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    SuccessTextResponse.class )

    }

    def updateDomainInfo ( Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/${id}"

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

    def updateDomainNameservers ( DomainNameserverPutRequest domainNameserverPutRequest, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/${id}/nameservers"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (domainNameserverPutRequest == null) {
            throw new RuntimeException("missing required params domainNameserverPutRequest")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = domainNameserverPutRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "PUT", "",
                    TextResponse.class )

    }

    def updateDomainWhoisPrivacy ( DomainWhoisPrivacyRequest domainWhoisPrivacyRequest, Integer id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/domains/${id}/whois"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (domainWhoisPrivacyRequest == null) {
            throw new RuntimeException("missing required params domainWhoisPrivacyRequest")
        }
        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = domainWhoisPrivacyRequest


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    SuccessTextResponse.class )

    }

}
