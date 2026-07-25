package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class ScrubIpsApiSimulation extends Simulation {

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
    val cancelScrubIpPerSecond = config.getDouble("performance.operationsPerSecond.cancelScrubIp") * rateMultiplier * instanceMultiplier
    val createFilterPerSecond = config.getDouble("performance.operationsPerSecond.createFilter") * rateMultiplier * instanceMultiplier
    val createGeoRulePerSecond = config.getDouble("performance.operationsPerSecond.createGeoRule") * rateMultiplier * instanceMultiplier
    val createRulePerSecond = config.getDouble("performance.operationsPerSecond.createRule") * rateMultiplier * instanceMultiplier
    val deleteFilterPerSecond = config.getDouble("performance.operationsPerSecond.deleteFilter") * rateMultiplier * instanceMultiplier
    val disableScrubPerSecond = config.getDouble("performance.operationsPerSecond.disableScrub") * rateMultiplier * instanceMultiplier
    val enableScrubPerSecond = config.getDouble("performance.operationsPerSecond.enableScrub") * rateMultiplier * instanceMultiplier
    val getOrderDetailPerSecond = config.getDouble("performance.operationsPerSecond.getOrderDetail") * rateMultiplier * instanceMultiplier
    val getScrubIpDetailsPerSecond = config.getDouble("performance.operationsPerSecond.getScrubIpDetails") * rateMultiplier * instanceMultiplier
    val getScrubIpFilterTypesPerSecond = config.getDouble("performance.operationsPerSecond.getScrubIpFilterTypes") * rateMultiplier * instanceMultiplier
    val getScrubIpInvoicesPerSecond = config.getDouble("performance.operationsPerSecond.getScrubIpInvoices") * rateMultiplier * instanceMultiplier
    val getScrubIpLogsPerSecond = config.getDouble("performance.operationsPerSecond.getScrubIpLogs") * rateMultiplier * instanceMultiplier
    val getScrubIpsListPerSecond = config.getDouble("performance.operationsPerSecond.getScrubIpsList") * rateMultiplier * instanceMultiplier
    val placeScrubOrderPerSecond = config.getDouble("performance.operationsPerSecond.placeScrubOrder") * rateMultiplier * instanceMultiplier
    val putScrubIpsPerSecond = config.getDouble("performance.operationsPerSecond.putScrubIps") * rateMultiplier * instanceMultiplier
    val scrubIpsDeleteGeoRulePerSecond = config.getDouble("performance.operationsPerSecond.scrubIpsDeleteGeoRule") * rateMultiplier * instanceMultiplier
    val scrubIpsDeleteRulePerSecond = config.getDouble("performance.operationsPerSecond.scrubIpsDeleteRule") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val cancelScrubIpPATHFeeder = csv(userDataDirectory + File.separator + "cancelScrubIp-pathParams.csv").random
    val createFilterPATHFeeder = csv(userDataDirectory + File.separator + "createFilter-pathParams.csv").random
    val createGeoRulePATHFeeder = csv(userDataDirectory + File.separator + "createGeoRule-pathParams.csv").random
    val createRulePATHFeeder = csv(userDataDirectory + File.separator + "createRule-pathParams.csv").random
    val deleteFilterPATHFeeder = csv(userDataDirectory + File.separator + "deleteFilter-pathParams.csv").random
    val disableScrubPATHFeeder = csv(userDataDirectory + File.separator + "disableScrub-pathParams.csv").random
    val enableScrubPATHFeeder = csv(userDataDirectory + File.separator + "enableScrub-pathParams.csv").random
    val getScrubIpDetailsPATHFeeder = csv(userDataDirectory + File.separator + "getScrubIpDetails-pathParams.csv").random
    val getScrubIpInvoicesPATHFeeder = csv(userDataDirectory + File.separator + "getScrubIpInvoices-pathParams.csv").random
    val getScrubIpLogsPATHFeeder = csv(userDataDirectory + File.separator + "getScrubIpLogs-pathParams.csv").random
    val scrubIpsDeleteGeoRulePATHFeeder = csv(userDataDirectory + File.separator + "scrubIpsDeleteGeoRule-pathParams.csv").random
    val scrubIpsDeleteRulePATHFeeder = csv(userDataDirectory + File.separator + "scrubIpsDeleteRule-pathParams.csv").random

    // Setup all scenarios

    
    val scncancelScrubIp = scenario("cancelScrubIpSimulation")
        .feed(cancelScrubIpPATHFeeder)
        .exec(http("cancelScrubIp")
        .httpRequest("DELETE","/scrub_ips/${id}")
)

    // Run scncancelScrubIp with warm up and reach a constant rate for entire duration
    scenarioBuilders += scncancelScrubIp.inject(
        rampUsersPerSec(1) to(cancelScrubIpPerSecond) during(rampUpSeconds),
        constantUsersPerSec(cancelScrubIpPerSecond) during(durationSeconds),
        rampUsersPerSec(cancelScrubIpPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scncreateFilter = scenario("createFilterSimulation")
        .feed(createFilterPATHFeeder)
        .exec(http("createFilter")
        .httpRequest("POST","/scrub_ips/${id}/create_filter")
)

    // Run scncreateFilter with warm up and reach a constant rate for entire duration
    scenarioBuilders += scncreateFilter.inject(
        rampUsersPerSec(1) to(createFilterPerSecond) during(rampUpSeconds),
        constantUsersPerSec(createFilterPerSecond) during(durationSeconds),
        rampUsersPerSec(createFilterPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scncreateGeoRule = scenario("createGeoRuleSimulation")
        .feed(createGeoRulePATHFeeder)
        .exec(http("createGeoRule")
        .httpRequest("POST","/scrub_ips/${id}/create_geo_rule")
)

    // Run scncreateGeoRule with warm up and reach a constant rate for entire duration
    scenarioBuilders += scncreateGeoRule.inject(
        rampUsersPerSec(1) to(createGeoRulePerSecond) during(rampUpSeconds),
        constantUsersPerSec(createGeoRulePerSecond) during(durationSeconds),
        rampUsersPerSec(createGeoRulePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scncreateRule = scenario("createRuleSimulation")
        .feed(createRulePATHFeeder)
        .exec(http("createRule")
        .httpRequest("POST","/scrub_ips/${id}/create_rule")
)

    // Run scncreateRule with warm up and reach a constant rate for entire duration
    scenarioBuilders += scncreateRule.inject(
        rampUsersPerSec(1) to(createRulePerSecond) during(rampUpSeconds),
        constantUsersPerSec(createRulePerSecond) during(durationSeconds),
        rampUsersPerSec(createRulePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndeleteFilter = scenario("deleteFilterSimulation")
        .feed(deleteFilterPATHFeeder)
        .exec(http("deleteFilter")
        .httpRequest("POST","/scrub_ips/${id}/delete_filter")
)

    // Run scndeleteFilter with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndeleteFilter.inject(
        rampUsersPerSec(1) to(deleteFilterPerSecond) during(rampUpSeconds),
        constantUsersPerSec(deleteFilterPerSecond) during(durationSeconds),
        rampUsersPerSec(deleteFilterPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndisableScrub = scenario("disableScrubSimulation")
        .feed(disableScrubPATHFeeder)
        .exec(http("disableScrub")
        .httpRequest("GET","/scrub_ips/${id}/disable")
)

    // Run scndisableScrub with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndisableScrub.inject(
        rampUsersPerSec(1) to(disableScrubPerSecond) during(rampUpSeconds),
        constantUsersPerSec(disableScrubPerSecond) during(durationSeconds),
        rampUsersPerSec(disableScrubPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnenableScrub = scenario("enableScrubSimulation")
        .feed(enableScrubPATHFeeder)
        .exec(http("enableScrub")
        .httpRequest("GET","/scrub_ips/${id}/enable")
)

    // Run scnenableScrub with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnenableScrub.inject(
        rampUsersPerSec(1) to(enableScrubPerSecond) during(rampUpSeconds),
        constantUsersPerSec(enableScrubPerSecond) during(durationSeconds),
        rampUsersPerSec(enableScrubPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetOrderDetail = scenario("getOrderDetailSimulation")
        .exec(http("getOrderDetail")
        .httpRequest("GET","/scrub_ips/order")
)

    // Run scngetOrderDetail with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetOrderDetail.inject(
        rampUsersPerSec(1) to(getOrderDetailPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getOrderDetailPerSecond) during(durationSeconds),
        rampUsersPerSec(getOrderDetailPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetScrubIpDetails = scenario("getScrubIpDetailsSimulation")
        .feed(getScrubIpDetailsPATHFeeder)
        .exec(http("getScrubIpDetails")
        .httpRequest("GET","/scrub_ips/${id}")
)

    // Run scngetScrubIpDetails with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetScrubIpDetails.inject(
        rampUsersPerSec(1) to(getScrubIpDetailsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getScrubIpDetailsPerSecond) during(durationSeconds),
        rampUsersPerSec(getScrubIpDetailsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetScrubIpFilterTypes = scenario("getScrubIpFilterTypesSimulation")
        .exec(http("getScrubIpFilterTypes")
        .httpRequest("GET","/scrub_ips/filter_types")
)

    // Run scngetScrubIpFilterTypes with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetScrubIpFilterTypes.inject(
        rampUsersPerSec(1) to(getScrubIpFilterTypesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getScrubIpFilterTypesPerSecond) during(durationSeconds),
        rampUsersPerSec(getScrubIpFilterTypesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetScrubIpInvoices = scenario("getScrubIpInvoicesSimulation")
        .feed(getScrubIpInvoicesPATHFeeder)
        .exec(http("getScrubIpInvoices")
        .httpRequest("GET","/scrub_ips/${id}/invoices")
)

    // Run scngetScrubIpInvoices with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetScrubIpInvoices.inject(
        rampUsersPerSec(1) to(getScrubIpInvoicesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getScrubIpInvoicesPerSecond) during(durationSeconds),
        rampUsersPerSec(getScrubIpInvoicesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetScrubIpLogs = scenario("getScrubIpLogsSimulation")
        .feed(getScrubIpLogsPATHFeeder)
        .exec(http("getScrubIpLogs")
        .httpRequest("GET","/scrub_ips/${id}/logs")
)

    // Run scngetScrubIpLogs with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetScrubIpLogs.inject(
        rampUsersPerSec(1) to(getScrubIpLogsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getScrubIpLogsPerSecond) during(durationSeconds),
        rampUsersPerSec(getScrubIpLogsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetScrubIpsList = scenario("getScrubIpsListSimulation")
        .exec(http("getScrubIpsList")
        .httpRequest("GET","/scrub_ips")
)

    // Run scngetScrubIpsList with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetScrubIpsList.inject(
        rampUsersPerSec(1) to(getScrubIpsListPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getScrubIpsListPerSecond) during(durationSeconds),
        rampUsersPerSec(getScrubIpsListPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnplaceScrubOrder = scenario("placeScrubOrderSimulation")
        .exec(http("placeScrubOrder")
        .httpRequest("POST","/scrub_ips/order")
)

    // Run scnplaceScrubOrder with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnplaceScrubOrder.inject(
        rampUsersPerSec(1) to(placeScrubOrderPerSecond) during(rampUpSeconds),
        constantUsersPerSec(placeScrubOrderPerSecond) during(durationSeconds),
        rampUsersPerSec(placeScrubOrderPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnputScrubIps = scenario("putScrubIpsSimulation")
        .exec(http("putScrubIps")
        .httpRequest("PUT","/scrub_ips/order")
)

    // Run scnputScrubIps with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnputScrubIps.inject(
        rampUsersPerSec(1) to(putScrubIpsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(putScrubIpsPerSecond) during(durationSeconds),
        rampUsersPerSec(putScrubIpsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnscrubIpsDeleteGeoRule = scenario("scrubIpsDeleteGeoRuleSimulation")
        .feed(scrubIpsDeleteGeoRulePATHFeeder)
        .exec(http("scrubIpsDeleteGeoRule")
        .httpRequest("POST","/scrub_ips/${id}/delete_geo_rule")
)

    // Run scnscrubIpsDeleteGeoRule with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnscrubIpsDeleteGeoRule.inject(
        rampUsersPerSec(1) to(scrubIpsDeleteGeoRulePerSecond) during(rampUpSeconds),
        constantUsersPerSec(scrubIpsDeleteGeoRulePerSecond) during(durationSeconds),
        rampUsersPerSec(scrubIpsDeleteGeoRulePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnscrubIpsDeleteRule = scenario("scrubIpsDeleteRuleSimulation")
        .feed(scrubIpsDeleteRulePATHFeeder)
        .exec(http("scrubIpsDeleteRule")
        .httpRequest("POST","/scrub_ips/${id}/delete_rule")
)

    // Run scnscrubIpsDeleteRule with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnscrubIpsDeleteRule.inject(
        rampUsersPerSec(1) to(scrubIpsDeleteRulePerSecond) during(rampUpSeconds),
        constantUsersPerSec(scrubIpsDeleteRulePerSecond) during(durationSeconds),
        rampUsersPerSec(scrubIpsDeleteRulePerSecond) to(1) during(rampDownSeconds)
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
