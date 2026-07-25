package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class DomainsApiSimulation extends Simulation {

    def getCurrentDirectory = new File("").getAbsolutePath
    def userDataDirectory = getCurrentDirectory + "/src/gatling/resources/data"

    // basic test setup
    val configName = System.getProperty("testConfig", "baseline")
    val config = ConfigFactory.load(configName).withFallback(ConfigFactory.load("default"))
    val durationSeconds = config.getInt("performance.durationSeconds")
    val rampUpSeconds = config.getInt("performance.rampUpSeconds")
    val rampDownSeconds = config.getInt("performance.rampDownSeconds")
    val authentication = config.getString("performance.authorizationHeader")
    val acceptHeader = config.getString("performance.acceptType")
    val contentTypeHeader = config.getString("performance.contentType")
    val rateMultiplier = config.getDouble("performance.rateMultiplier")
    val instanceMultiplier = config.getDouble("performance.instanceMultiplier")

    // global assertion data
    val globalResponseTimeMinLTE = config.getInt("performance.global.assertions.responseTime.min.lte")
    val globalResponseTimeMinGTE = config.getInt("performance.global.assertions.responseTime.min.gte")
    val globalResponseTimeMaxLTE = config.getInt("performance.global.assertions.responseTime.max.lte")
    val globalResponseTimeMaxGTE = config.getInt("performance.global.assertions.responseTime.max.gte")
    val globalResponseTimeMeanLTE = config.getInt("performance.global.assertions.responseTime.mean.lte")
    val globalResponseTimeMeanGTE = config.getInt("performance.global.assertions.responseTime.mean.gte")
    val globalResponseTimeFailedRequestsPercentLTE = config.getDouble("performance.global.assertions.failedRequests.percent.lte")
    val globalResponseTimeFailedRequestsPercentGTE = config.getDouble("performance.global.assertions.failedRequests.percent.gte")
    val globalResponseTimeSuccessfulRequestsPercentLTE = config.getDouble("performance.global.assertions.successfulRequests.percent.lte")
    val globalResponseTimeSuccessfulRequestsPercentGTE = config.getDouble("performance.global.assertions.successfulRequests.percent.gte")

// Setup http protocol configuration
    val httpConf = http
        .baseURL("https://my.interserver.net/apiv2")
        .doNotTrackHeader("1")
        .acceptLanguageHeader("en-US,en;q=0.5")
        .acceptEncodingHeader("gzip, deflate")
        .userAgentHeader("Mozilla/5.0 (Windows NT 5.1; rv:31.0) Gecko/20100101 Firefox/31.0")
        .acceptHeader(acceptHeader)
        .contentTypeHeader(contentTypeHeader)

    // set authorization header if it has been modified from config
    if(!authentication.equals("~MANUAL_ENTRY")){
        httpConf.authorizationHeader(authentication)
    }

    // Setup all the operations per second for the test to ultimately be generated from configs
    val addDomainPerSecond = config.getDouble("performance.operationsPerSecond.addDomain") * rateMultiplier * instanceMultiplier
    val addDomainDnssecPerSecond = config.getDouble("performance.operationsPerSecond.addDomainDnssec") * rateMultiplier * instanceMultiplier
    val addDomainNameserverPerSecond = config.getDouble("performance.operationsPerSecond.addDomainNameserver") * rateMultiplier * instanceMultiplier
    val cancelDomainPerSecond = config.getDouble("performance.operationsPerSecond.cancelDomain") * rateMultiplier * instanceMultiplier
    val deleteDomainDnssecPerSecond = config.getDouble("performance.operationsPerSecond.deleteDomainDnssec") * rateMultiplier * instanceMultiplier
    val deleteDomainNameserverPerSecond = config.getDouble("performance.operationsPerSecond.deleteDomainNameserver") * rateMultiplier * instanceMultiplier
    val getDomainContactPerSecond = config.getDouble("performance.operationsPerSecond.getDomainContact") * rateMultiplier * instanceMultiplier
    val getDomainDnssecPerSecond = config.getDouble("performance.operationsPerSecond.getDomainDnssec") * rateMultiplier * instanceMultiplier
    val getDomainInfoPerSecond = config.getDouble("performance.operationsPerSecond.getDomainInfo") * rateMultiplier * instanceMultiplier
    val getDomainInvoicesPerSecond = config.getDouble("performance.operationsPerSecond.getDomainInvoices") * rateMultiplier * instanceMultiplier
    val getDomainLookupPerSecond = config.getDouble("performance.operationsPerSecond.getDomainLookup") * rateMultiplier * instanceMultiplier
    val getDomainNameserversPerSecond = config.getDouble("performance.operationsPerSecond.getDomainNameservers") * rateMultiplier * instanceMultiplier
    val getDomainRenewalPerSecond = config.getDouble("performance.operationsPerSecond.getDomainRenewal") * rateMultiplier * instanceMultiplier
    val getDomainSearchPerSecond = config.getDouble("performance.operationsPerSecond.getDomainSearch") * rateMultiplier * instanceMultiplier
    val getDomainTransferPerSecond = config.getDouble("performance.operationsPerSecond.getDomainTransfer") * rateMultiplier * instanceMultiplier
    val getDomainWhoisPrivacyPerSecond = config.getDouble("performance.operationsPerSecond.getDomainWhoisPrivacy") * rateMultiplier * instanceMultiplier
    val getDomainsListPerSecond = config.getDouble("performance.operationsPerSecond.getDomainsList") * rateMultiplier * instanceMultiplier
    val getDomainsWelcomeEmailPerSecond = config.getDouble("performance.operationsPerSecond.getDomainsWelcomeEmail") * rateMultiplier * instanceMultiplier
    val getNewDomainPerSecond = config.getDouble("performance.operationsPerSecond.getNewDomain") * rateMultiplier * instanceMultiplier
    val patchDomainsPerSecond = config.getDouble("performance.operationsPerSecond.patchDomains") * rateMultiplier * instanceMultiplier
    val postDomainRenewalPerSecond = config.getDouble("performance.operationsPerSecond.postDomainRenewal") * rateMultiplier * instanceMultiplier
    val postDomainSearchPerSecond = config.getDouble("performance.operationsPerSecond.postDomainSearch") * rateMultiplier * instanceMultiplier
    val postDomainTransferPerSecond = config.getDouble("performance.operationsPerSecond.postDomainTransfer") * rateMultiplier * instanceMultiplier
    val putDomainsPerSecond = config.getDouble("performance.operationsPerSecond.putDomains") * rateMultiplier * instanceMultiplier
    val updateDomainContactPerSecond = config.getDouble("performance.operationsPerSecond.updateDomainContact") * rateMultiplier * instanceMultiplier
    val updateDomainInfoPerSecond = config.getDouble("performance.operationsPerSecond.updateDomainInfo") * rateMultiplier * instanceMultiplier
    val updateDomainNameserversPerSecond = config.getDouble("performance.operationsPerSecond.updateDomainNameservers") * rateMultiplier * instanceMultiplier
    val updateDomainWhoisPrivacyPerSecond = config.getDouble("performance.operationsPerSecond.updateDomainWhoisPrivacy") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val addDomainDnssecPATHFeeder = csv(userDataDirectory + File.separator + "addDomainDnssec-pathParams.csv").random
    val addDomainNameserverPATHFeeder = csv(userDataDirectory + File.separator + "addDomainNameserver-pathParams.csv").random
    val CancelDomainPATHFeeder = csv(userDataDirectory + File.separator + "cancelDomain-pathParams.csv").random
    val deleteDomainDnssecPATHFeeder = csv(userDataDirectory + File.separator + "deleteDomainDnssec-pathParams.csv").random
    val deleteDomainNameserverQUERYFeeder = csv(userDataDirectory + File.separator + "deleteDomainNameserver-queryParams.csv").random
    val deleteDomainNameserverPATHFeeder = csv(userDataDirectory + File.separator + "deleteDomainNameserver-pathParams.csv").random
    val getDomainContactPATHFeeder = csv(userDataDirectory + File.separator + "getDomainContact-pathParams.csv").random
    val getDomainDnssecPATHFeeder = csv(userDataDirectory + File.separator + "getDomainDnssec-pathParams.csv").random
    val getDomainInfoPATHFeeder = csv(userDataDirectory + File.separator + "getDomainInfo-pathParams.csv").random
    val getDomainInvoicesPATHFeeder = csv(userDataDirectory + File.separator + "getDomainInvoices-pathParams.csv").random
    val getDomainLookupPATHFeeder = csv(userDataDirectory + File.separator + "getDomainLookup-pathParams.csv").random
    val getDomainNameserversPATHFeeder = csv(userDataDirectory + File.separator + "getDomainNameservers-pathParams.csv").random
    val getDomainRenewalPATHFeeder = csv(userDataDirectory + File.separator + "getDomainRenewal-pathParams.csv").random
    val getDomainSearchPATHFeeder = csv(userDataDirectory + File.separator + "getDomainSearch-pathParams.csv").random
    val getDomainTransferPATHFeeder = csv(userDataDirectory + File.separator + "getDomainTransfer-pathParams.csv").random
    val getDomainWhoisPrivacyPATHFeeder = csv(userDataDirectory + File.separator + "getDomainWhoisPrivacy-pathParams.csv").random
    val getDomainsWelcomeEmailPATHFeeder = csv(userDataDirectory + File.separator + "getDomainsWelcomeEmail-pathParams.csv").random
    val postDomainRenewalPATHFeeder = csv(userDataDirectory + File.separator + "postDomainRenewal-pathParams.csv").random
    val postDomainSearchPATHFeeder = csv(userDataDirectory + File.separator + "postDomainSearch-pathParams.csv").random
    val postDomainTransferPATHFeeder = csv(userDataDirectory + File.separator + "postDomainTransfer-pathParams.csv").random
    val updateDomainContactPATHFeeder = csv(userDataDirectory + File.separator + "updateDomainContact-pathParams.csv").random
    val updateDomainInfoPATHFeeder = csv(userDataDirectory + File.separator + "updateDomainInfo-pathParams.csv").random
    val updateDomainNameserversPATHFeeder = csv(userDataDirectory + File.separator + "updateDomainNameservers-pathParams.csv").random
    val updateDomainWhoisPrivacyPATHFeeder = csv(userDataDirectory + File.separator + "updateDomainWhoisPrivacy-pathParams.csv").random

    // Setup all scenarios

    
    val scnaddDomain = scenario("addDomainSimulation")
        .exec(http("addDomain")
        .httpRequest("POST","/domains/order")
)

    // Run scnaddDomain with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnaddDomain.inject(
        rampUsersPerSec(1) to(addDomainPerSecond) during(rampUpSeconds),
        constantUsersPerSec(addDomainPerSecond) during(durationSeconds),
        rampUsersPerSec(addDomainPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnaddDomainDnssec = scenario("addDomainDnssecSimulation")
        .feed(addDomainDnssecPATHFeeder)
        .exec(http("addDomainDnssec")
        .httpRequest("POST","/domains/${id}/dnssec")
)

    // Run scnaddDomainDnssec with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnaddDomainDnssec.inject(
        rampUsersPerSec(1) to(addDomainDnssecPerSecond) during(rampUpSeconds),
        constantUsersPerSec(addDomainDnssecPerSecond) during(durationSeconds),
        rampUsersPerSec(addDomainDnssecPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnaddDomainNameserver = scenario("addDomainNameserverSimulation")
        .feed(addDomainNameserverPATHFeeder)
        .exec(http("addDomainNameserver")
        .httpRequest("POST","/domains/${id}/nameservers")
)

    // Run scnaddDomainNameserver with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnaddDomainNameserver.inject(
        rampUsersPerSec(1) to(addDomainNameserverPerSecond) during(rampUpSeconds),
        constantUsersPerSec(addDomainNameserverPerSecond) during(durationSeconds),
        rampUsersPerSec(addDomainNameserverPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scncancelDomain = scenario("cancelDomainSimulation")
        .feed(CancelDomainPATHFeeder)
        .exec(http("cancelDomain")
        .httpRequest("DELETE","/domains/${id}")
)

    // Run scncancelDomain with warm up and reach a constant rate for entire duration
    scenarioBuilders += scncancelDomain.inject(
        rampUsersPerSec(1) to(cancelDomainPerSecond) during(rampUpSeconds),
        constantUsersPerSec(cancelDomainPerSecond) during(durationSeconds),
        rampUsersPerSec(cancelDomainPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndeleteDomainDnssec = scenario("deleteDomainDnssecSimulation")
        .feed(deleteDomainDnssecPATHFeeder)
        .exec(http("deleteDomainDnssec")
        .httpRequest("DELETE","/domains/${id}/dnssec")
)

    // Run scndeleteDomainDnssec with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndeleteDomainDnssec.inject(
        rampUsersPerSec(1) to(deleteDomainDnssecPerSecond) during(rampUpSeconds),
        constantUsersPerSec(deleteDomainDnssecPerSecond) during(durationSeconds),
        rampUsersPerSec(deleteDomainDnssecPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndeleteDomainNameserver = scenario("deleteDomainNameserverSimulation")
        .feed(deleteDomainNameserverQUERYFeeder)
        .feed(deleteDomainNameserverPATHFeeder)
        .exec(http("deleteDomainNameserver")
        .httpRequest("DELETE","/domains/${id}/nameservers")
        .queryParam("index","${index}")
)

    // Run scndeleteDomainNameserver with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndeleteDomainNameserver.inject(
        rampUsersPerSec(1) to(deleteDomainNameserverPerSecond) during(rampUpSeconds),
        constantUsersPerSec(deleteDomainNameserverPerSecond) during(durationSeconds),
        rampUsersPerSec(deleteDomainNameserverPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetDomainContact = scenario("getDomainContactSimulation")
        .feed(getDomainContactPATHFeeder)
        .exec(http("getDomainContact")
        .httpRequest("GET","/domains/${id}/contact")
)

    // Run scngetDomainContact with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetDomainContact.inject(
        rampUsersPerSec(1) to(getDomainContactPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getDomainContactPerSecond) during(durationSeconds),
        rampUsersPerSec(getDomainContactPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetDomainDnssec = scenario("getDomainDnssecSimulation")
        .feed(getDomainDnssecPATHFeeder)
        .exec(http("getDomainDnssec")
        .httpRequest("GET","/domains/${id}/dnssec")
)

    // Run scngetDomainDnssec with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetDomainDnssec.inject(
        rampUsersPerSec(1) to(getDomainDnssecPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getDomainDnssecPerSecond) during(durationSeconds),
        rampUsersPerSec(getDomainDnssecPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetDomainInfo = scenario("getDomainInfoSimulation")
        .feed(getDomainInfoPATHFeeder)
        .exec(http("getDomainInfo")
        .httpRequest("GET","/domains/${id}")
)

    // Run scngetDomainInfo with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetDomainInfo.inject(
        rampUsersPerSec(1) to(getDomainInfoPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getDomainInfoPerSecond) during(durationSeconds),
        rampUsersPerSec(getDomainInfoPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetDomainInvoices = scenario("getDomainInvoicesSimulation")
        .feed(getDomainInvoicesPATHFeeder)
        .exec(http("getDomainInvoices")
        .httpRequest("GET","/domains/${id}/invoices")
)

    // Run scngetDomainInvoices with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetDomainInvoices.inject(
        rampUsersPerSec(1) to(getDomainInvoicesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getDomainInvoicesPerSecond) during(durationSeconds),
        rampUsersPerSec(getDomainInvoicesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetDomainLookup = scenario("getDomainLookupSimulation")
        .feed(getDomainLookupPATHFeeder)
        .exec(http("getDomainLookup")
        .httpRequest("GET","/domains/lookup/${name}")
)

    // Run scngetDomainLookup with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetDomainLookup.inject(
        rampUsersPerSec(1) to(getDomainLookupPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getDomainLookupPerSecond) during(durationSeconds),
        rampUsersPerSec(getDomainLookupPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetDomainNameservers = scenario("getDomainNameserversSimulation")
        .feed(getDomainNameserversPATHFeeder)
        .exec(http("getDomainNameservers")
        .httpRequest("GET","/domains/${id}/nameservers")
)

    // Run scngetDomainNameservers with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetDomainNameservers.inject(
        rampUsersPerSec(1) to(getDomainNameserversPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getDomainNameserversPerSecond) during(durationSeconds),
        rampUsersPerSec(getDomainNameserversPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetDomainRenewal = scenario("getDomainRenewalSimulation")
        .feed(getDomainRenewalPATHFeeder)
        .exec(http("getDomainRenewal")
        .httpRequest("GET","/domains/${id}/renew")
)

    // Run scngetDomainRenewal with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetDomainRenewal.inject(
        rampUsersPerSec(1) to(getDomainRenewalPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getDomainRenewalPerSecond) during(durationSeconds),
        rampUsersPerSec(getDomainRenewalPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetDomainSearch = scenario("getDomainSearchSimulation")
        .feed(getDomainSearchPATHFeeder)
        .exec(http("getDomainSearch")
        .httpRequest("GET","/domains/search/${name}")
)

    // Run scngetDomainSearch with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetDomainSearch.inject(
        rampUsersPerSec(1) to(getDomainSearchPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getDomainSearchPerSecond) during(durationSeconds),
        rampUsersPerSec(getDomainSearchPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetDomainTransfer = scenario("getDomainTransferSimulation")
        .feed(getDomainTransferPATHFeeder)
        .exec(http("getDomainTransfer")
        .httpRequest("GET","/domains/${id}/transfer")
)

    // Run scngetDomainTransfer with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetDomainTransfer.inject(
        rampUsersPerSec(1) to(getDomainTransferPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getDomainTransferPerSecond) during(durationSeconds),
        rampUsersPerSec(getDomainTransferPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetDomainWhoisPrivacy = scenario("getDomainWhoisPrivacySimulation")
        .feed(getDomainWhoisPrivacyPATHFeeder)
        .exec(http("getDomainWhoisPrivacy")
        .httpRequest("GET","/domains/${id}/whois")
)

    // Run scngetDomainWhoisPrivacy with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetDomainWhoisPrivacy.inject(
        rampUsersPerSec(1) to(getDomainWhoisPrivacyPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getDomainWhoisPrivacyPerSecond) during(durationSeconds),
        rampUsersPerSec(getDomainWhoisPrivacyPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetDomainsList = scenario("getDomainsListSimulation")
        .exec(http("getDomainsList")
        .httpRequest("GET","/domains")
)

    // Run scngetDomainsList with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetDomainsList.inject(
        rampUsersPerSec(1) to(getDomainsListPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getDomainsListPerSecond) during(durationSeconds),
        rampUsersPerSec(getDomainsListPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetDomainsWelcomeEmail = scenario("getDomainsWelcomeEmailSimulation")
        .feed(getDomainsWelcomeEmailPATHFeeder)
        .exec(http("getDomainsWelcomeEmail")
        .httpRequest("GET","/domains/${id}/welcome_email")
)

    // Run scngetDomainsWelcomeEmail with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetDomainsWelcomeEmail.inject(
        rampUsersPerSec(1) to(getDomainsWelcomeEmailPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getDomainsWelcomeEmailPerSecond) during(durationSeconds),
        rampUsersPerSec(getDomainsWelcomeEmailPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetNewDomain = scenario("getNewDomainSimulation")
        .exec(http("getNewDomain")
        .httpRequest("GET","/domains/order")
)

    // Run scngetNewDomain with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetNewDomain.inject(
        rampUsersPerSec(1) to(getNewDomainPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getNewDomainPerSecond) during(durationSeconds),
        rampUsersPerSec(getNewDomainPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpatchDomains = scenario("patchDomainsSimulation")
        .exec(http("patchDomains")
        .httpRequest("PATCH","/domains/order")
)

    // Run scnpatchDomains with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpatchDomains.inject(
        rampUsersPerSec(1) to(patchDomainsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(patchDomainsPerSecond) during(durationSeconds),
        rampUsersPerSec(patchDomainsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostDomainRenewal = scenario("postDomainRenewalSimulation")
        .feed(postDomainRenewalPATHFeeder)
        .exec(http("postDomainRenewal")
        .httpRequest("POST","/domains/${id}/renew")
)

    // Run scnpostDomainRenewal with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostDomainRenewal.inject(
        rampUsersPerSec(1) to(postDomainRenewalPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postDomainRenewalPerSecond) during(durationSeconds),
        rampUsersPerSec(postDomainRenewalPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostDomainSearch = scenario("postDomainSearchSimulation")
        .feed(postDomainSearchPATHFeeder)
        .exec(http("postDomainSearch")
        .httpRequest("POST","/domains/search/${name}")
)

    // Run scnpostDomainSearch with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostDomainSearch.inject(
        rampUsersPerSec(1) to(postDomainSearchPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postDomainSearchPerSecond) during(durationSeconds),
        rampUsersPerSec(postDomainSearchPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostDomainTransfer = scenario("postDomainTransferSimulation")
        .feed(postDomainTransferPATHFeeder)
        .exec(http("postDomainTransfer")
        .httpRequest("POST","/domains/${id}/transfer")
)

    // Run scnpostDomainTransfer with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostDomainTransfer.inject(
        rampUsersPerSec(1) to(postDomainTransferPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postDomainTransferPerSecond) during(durationSeconds),
        rampUsersPerSec(postDomainTransferPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnputDomains = scenario("putDomainsSimulation")
        .exec(http("putDomains")
        .httpRequest("PUT","/domains/order")
)

    // Run scnputDomains with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnputDomains.inject(
        rampUsersPerSec(1) to(putDomainsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(putDomainsPerSecond) during(durationSeconds),
        rampUsersPerSec(putDomainsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateDomainContact = scenario("updateDomainContactSimulation")
        .feed(updateDomainContactPATHFeeder)
        .exec(http("updateDomainContact")
        .httpRequest("POST","/domains/${id}/contact")
)

    // Run scnupdateDomainContact with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateDomainContact.inject(
        rampUsersPerSec(1) to(updateDomainContactPerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateDomainContactPerSecond) during(durationSeconds),
        rampUsersPerSec(updateDomainContactPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateDomainInfo = scenario("updateDomainInfoSimulation")
        .feed(updateDomainInfoPATHFeeder)
        .exec(http("updateDomainInfo")
        .httpRequest("POST","/domains/${id}")
)

    // Run scnupdateDomainInfo with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateDomainInfo.inject(
        rampUsersPerSec(1) to(updateDomainInfoPerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateDomainInfoPerSecond) during(durationSeconds),
        rampUsersPerSec(updateDomainInfoPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateDomainNameservers = scenario("updateDomainNameserversSimulation")
        .feed(updateDomainNameserversPATHFeeder)
        .exec(http("updateDomainNameservers")
        .httpRequest("PUT","/domains/${id}/nameservers")
)

    // Run scnupdateDomainNameservers with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateDomainNameservers.inject(
        rampUsersPerSec(1) to(updateDomainNameserversPerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateDomainNameserversPerSecond) during(durationSeconds),
        rampUsersPerSec(updateDomainNameserversPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateDomainWhoisPrivacy = scenario("updateDomainWhoisPrivacySimulation")
        .feed(updateDomainWhoisPrivacyPATHFeeder)
        .exec(http("updateDomainWhoisPrivacy")
        .httpRequest("POST","/domains/${id}/whois")
)

    // Run scnupdateDomainWhoisPrivacy with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateDomainWhoisPrivacy.inject(
        rampUsersPerSec(1) to(updateDomainWhoisPrivacyPerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateDomainWhoisPrivacyPerSecond) during(durationSeconds),
        rampUsersPerSec(updateDomainWhoisPrivacyPerSecond) to(1) during(rampDownSeconds)
    )

    setUp(
        scenarioBuilders.toList
    ).protocols(httpConf).assertions(
        global.responseTime.min.lte(globalResponseTimeMinLTE),
        global.responseTime.min.gte(globalResponseTimeMinGTE),
        global.responseTime.max.lte(globalResponseTimeMaxLTE),
        global.responseTime.max.gte(globalResponseTimeMaxGTE),
        global.responseTime.mean.lte(globalResponseTimeMeanLTE),
        global.responseTime.mean.gte(globalResponseTimeMeanGTE),
        global.failedRequests.percent.lte(globalResponseTimeFailedRequestsPercentLTE),
        global.failedRequests.percent.gte(globalResponseTimeFailedRequestsPercentGTE),
        global.successfulRequests.percent.lte(globalResponseTimeSuccessfulRequestsPercentLTE),
        global.successfulRequests.percent.gte(globalResponseTimeSuccessfulRequestsPercentGTE)
    )
}
