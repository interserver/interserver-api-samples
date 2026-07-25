package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class ServersApiSimulation extends Simulation {

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
    val addServerPerSecond = config.getDouble("performance.operationsPerSecond.addServer") * rateMultiplier * instanceMultiplier
    val buyItNowServerOrderPerSecond = config.getDouble("performance.operationsPerSecond.buyItNowServerOrder") * rateMultiplier * instanceMultiplier
    val getMPServersPerSecond = config.getDouble("performance.operationsPerSecond.getMPServers") * rateMultiplier * instanceMultiplier
    val getNewServerPerSecond = config.getDouble("performance.operationsPerSecond.getNewServer") * rateMultiplier * instanceMultiplier
    val getServerInfoPerSecond = config.getDouble("performance.operationsPerSecond.getServerInfo") * rateMultiplier * instanceMultiplier
    val getServerInvoicesPerSecond = config.getDouble("performance.operationsPerSecond.getServerInvoices") * rateMultiplier * instanceMultiplier
    val getServerListPerSecond = config.getDouble("performance.operationsPerSecond.getServerList") * rateMultiplier * instanceMultiplier
    val getServerReverseDnsPerSecond = config.getDouble("performance.operationsPerSecond.getServerReverseDns") * rateMultiplier * instanceMultiplier
    val getServersWelcomeEmailPerSecond = config.getDouble("performance.operationsPerSecond.getServersWelcomeEmail") * rateMultiplier * instanceMultiplier
    val placeBuyNowServerPerSecond = config.getDouble("performance.operationsPerSecond.placeBuyNowServer") * rateMultiplier * instanceMultiplier
    val postServerReverseDnsPerSecond = config.getDouble("performance.operationsPerSecond.postServerReverseDns") * rateMultiplier * instanceMultiplier
    val serverBulkIpmiPowerGetPerSecond = config.getDouble("performance.operationsPerSecond.serverBulkIpmiPowerGet") * rateMultiplier * instanceMultiplier
    val serverIpmiLiveGetPerSecond = config.getDouble("performance.operationsPerSecond.serverIpmiLiveGet") * rateMultiplier * instanceMultiplier
    val serverIpmiLivePostPerSecond = config.getDouble("performance.operationsPerSecond.serverIpmiLivePost") * rateMultiplier * instanceMultiplier
    val serverIpmiPowerGetPerSecond = config.getDouble("performance.operationsPerSecond.serverIpmiPowerGet") * rateMultiplier * instanceMultiplier
    val serverIpmiPowerPostPerSecond = config.getDouble("performance.operationsPerSecond.serverIpmiPowerPost") * rateMultiplier * instanceMultiplier
    val serversCancelPerSecond = config.getDouble("performance.operationsPerSecond.serversCancel") * rateMultiplier * instanceMultiplier
    val updateServerInfoPerSecond = config.getDouble("performance.operationsPerSecond.updateServerInfo") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val getServerInfoPATHFeeder = csv(userDataDirectory + File.separator + "getServerInfo-pathParams.csv").random
    val getServerInvoicesPATHFeeder = csv(userDataDirectory + File.separator + "getServerInvoices-pathParams.csv").random
    val getServerReverseDnsPATHFeeder = csv(userDataDirectory + File.separator + "getServerReverseDns-pathParams.csv").random
    val getServersWelcomeEmailPATHFeeder = csv(userDataDirectory + File.separator + "getServersWelcomeEmail-pathParams.csv").random
    val postServerReverseDnsPATHFeeder = csv(userDataDirectory + File.separator + "postServerReverseDns-pathParams.csv").random
    val serverBulkIpmiPowerGetQUERYFeeder = csv(userDataDirectory + File.separator + "serverBulkIpmiPowerGet-queryParams.csv").random
    val serverIpmiLiveGetPATHFeeder = csv(userDataDirectory + File.separator + "serverIpmiLiveGet-pathParams.csv").random
    val serverIpmiLivePostPATHFeeder = csv(userDataDirectory + File.separator + "serverIpmiLivePost-pathParams.csv").random
    val serverIpmiPowerGetPATHFeeder = csv(userDataDirectory + File.separator + "serverIpmiPowerGet-pathParams.csv").random
    val serverIpmiPowerPostPATHFeeder = csv(userDataDirectory + File.separator + "serverIpmiPowerPost-pathParams.csv").random
    val serversCancelPATHFeeder = csv(userDataDirectory + File.separator + "serversCancel-pathParams.csv").random
    val updateServerInfoPATHFeeder = csv(userDataDirectory + File.separator + "updateServerInfo-pathParams.csv").random

    // Setup all scenarios

    
    val scnaddServer = scenario("addServerSimulation")
        .exec(http("addServer")
        .httpRequest("POST","/servers/order")
)

    // Run scnaddServer with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnaddServer.inject(
        rampUsersPerSec(1) to(addServerPerSecond) during(rampUpSeconds),
        constantUsersPerSec(addServerPerSecond) during(durationSeconds),
        rampUsersPerSec(addServerPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnbuyItNowServerOrder = scenario("buyItNowServerOrderSimulation")
        .exec(http("buyItNowServerOrder")
        .httpRequest("GET","/servers/order/buy_now_server")
)

    // Run scnbuyItNowServerOrder with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnbuyItNowServerOrder.inject(
        rampUsersPerSec(1) to(buyItNowServerOrderPerSecond) during(rampUpSeconds),
        constantUsersPerSec(buyItNowServerOrderPerSecond) during(durationSeconds),
        rampUsersPerSec(buyItNowServerOrderPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetMPServers = scenario("getMPServersSimulation")
        .exec(http("getMPServers")
        .httpRequest("GET","/buy_now_servers_list")
)

    // Run scngetMPServers with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetMPServers.inject(
        rampUsersPerSec(1) to(getMPServersPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getMPServersPerSecond) during(durationSeconds),
        rampUsersPerSec(getMPServersPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetNewServer = scenario("getNewServerSimulation")
        .exec(http("getNewServer")
        .httpRequest("GET","/servers/order")
)

    // Run scngetNewServer with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetNewServer.inject(
        rampUsersPerSec(1) to(getNewServerPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getNewServerPerSecond) during(durationSeconds),
        rampUsersPerSec(getNewServerPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetServerInfo = scenario("getServerInfoSimulation")
        .feed(getServerInfoPATHFeeder)
        .exec(http("getServerInfo")
        .httpRequest("GET","/servers/${id}")
)

    // Run scngetServerInfo with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetServerInfo.inject(
        rampUsersPerSec(1) to(getServerInfoPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getServerInfoPerSecond) during(durationSeconds),
        rampUsersPerSec(getServerInfoPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetServerInvoices = scenario("getServerInvoicesSimulation")
        .feed(getServerInvoicesPATHFeeder)
        .exec(http("getServerInvoices")
        .httpRequest("GET","/servers/${id}/invoices")
)

    // Run scngetServerInvoices with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetServerInvoices.inject(
        rampUsersPerSec(1) to(getServerInvoicesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getServerInvoicesPerSecond) during(durationSeconds),
        rampUsersPerSec(getServerInvoicesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetServerList = scenario("getServerListSimulation")
        .exec(http("getServerList")
        .httpRequest("GET","/servers")
)

    // Run scngetServerList with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetServerList.inject(
        rampUsersPerSec(1) to(getServerListPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getServerListPerSecond) during(durationSeconds),
        rampUsersPerSec(getServerListPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetServerReverseDns = scenario("getServerReverseDnsSimulation")
        .feed(getServerReverseDnsPATHFeeder)
        .exec(http("getServerReverseDns")
        .httpRequest("GET","/servers/${id}/reverse_dns")
)

    // Run scngetServerReverseDns with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetServerReverseDns.inject(
        rampUsersPerSec(1) to(getServerReverseDnsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getServerReverseDnsPerSecond) during(durationSeconds),
        rampUsersPerSec(getServerReverseDnsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetServersWelcomeEmail = scenario("getServersWelcomeEmailSimulation")
        .feed(getServersWelcomeEmailPATHFeeder)
        .exec(http("getServersWelcomeEmail")
        .httpRequest("GET","/servers/${id}/welcome_email")
)

    // Run scngetServersWelcomeEmail with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetServersWelcomeEmail.inject(
        rampUsersPerSec(1) to(getServersWelcomeEmailPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getServersWelcomeEmailPerSecond) during(durationSeconds),
        rampUsersPerSec(getServersWelcomeEmailPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnplaceBuyNowServer = scenario("placeBuyNowServerSimulation")
        .exec(http("placeBuyNowServer")
        .httpRequest("POST","/servers/order/buy_now_server")
)

    // Run scnplaceBuyNowServer with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnplaceBuyNowServer.inject(
        rampUsersPerSec(1) to(placeBuyNowServerPerSecond) during(rampUpSeconds),
        constantUsersPerSec(placeBuyNowServerPerSecond) during(durationSeconds),
        rampUsersPerSec(placeBuyNowServerPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostServerReverseDns = scenario("postServerReverseDnsSimulation")
        .feed(postServerReverseDnsPATHFeeder)
        .exec(http("postServerReverseDns")
        .httpRequest("POST","/servers/${id}/reverse_dns")
)

    // Run scnpostServerReverseDns with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostServerReverseDns.inject(
        rampUsersPerSec(1) to(postServerReverseDnsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postServerReverseDnsPerSecond) during(durationSeconds),
        rampUsersPerSec(postServerReverseDnsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnserverBulkIpmiPowerGet = scenario("serverBulkIpmiPowerGetSimulation")
        .feed(serverBulkIpmiPowerGetQUERYFeeder)
        .exec(http("serverBulkIpmiPowerGet")
        .httpRequest("GET","/servers/bulk/ipmi_power")
        .queryParam("ids","${ids}")
)

    // Run scnserverBulkIpmiPowerGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnserverBulkIpmiPowerGet.inject(
        rampUsersPerSec(1) to(serverBulkIpmiPowerGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(serverBulkIpmiPowerGetPerSecond) during(durationSeconds),
        rampUsersPerSec(serverBulkIpmiPowerGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnserverIpmiLiveGet = scenario("serverIpmiLiveGetSimulation")
        .feed(serverIpmiLiveGetPATHFeeder)
        .exec(http("serverIpmiLiveGet")
        .httpRequest("GET","/servers/${id}/ipmi_live")
)

    // Run scnserverIpmiLiveGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnserverIpmiLiveGet.inject(
        rampUsersPerSec(1) to(serverIpmiLiveGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(serverIpmiLiveGetPerSecond) during(durationSeconds),
        rampUsersPerSec(serverIpmiLiveGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnserverIpmiLivePost = scenario("serverIpmiLivePostSimulation")
        .feed(serverIpmiLivePostPATHFeeder)
        .exec(http("serverIpmiLivePost")
        .httpRequest("POST","/servers/${id}/ipmi_live")
)

    // Run scnserverIpmiLivePost with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnserverIpmiLivePost.inject(
        rampUsersPerSec(1) to(serverIpmiLivePostPerSecond) during(rampUpSeconds),
        constantUsersPerSec(serverIpmiLivePostPerSecond) during(durationSeconds),
        rampUsersPerSec(serverIpmiLivePostPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnserverIpmiPowerGet = scenario("serverIpmiPowerGetSimulation")
        .feed(serverIpmiPowerGetPATHFeeder)
        .exec(http("serverIpmiPowerGet")
        .httpRequest("GET","/servers/${id}/ipmi_power")
)

    // Run scnserverIpmiPowerGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnserverIpmiPowerGet.inject(
        rampUsersPerSec(1) to(serverIpmiPowerGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(serverIpmiPowerGetPerSecond) during(durationSeconds),
        rampUsersPerSec(serverIpmiPowerGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnserverIpmiPowerPost = scenario("serverIpmiPowerPostSimulation")
        .feed(serverIpmiPowerPostPATHFeeder)
        .exec(http("serverIpmiPowerPost")
        .httpRequest("POST","/servers/${id}/ipmi_power")
)

    // Run scnserverIpmiPowerPost with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnserverIpmiPowerPost.inject(
        rampUsersPerSec(1) to(serverIpmiPowerPostPerSecond) during(rampUpSeconds),
        constantUsersPerSec(serverIpmiPowerPostPerSecond) during(durationSeconds),
        rampUsersPerSec(serverIpmiPowerPostPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnserversCancel = scenario("serversCancelSimulation")
        .feed(serversCancelPATHFeeder)
        .exec(http("serversCancel")
        .httpRequest("DELETE","/servers/${id}")
)

    // Run scnserversCancel with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnserversCancel.inject(
        rampUsersPerSec(1) to(serversCancelPerSecond) during(rampUpSeconds),
        constantUsersPerSec(serversCancelPerSecond) during(durationSeconds),
        rampUsersPerSec(serversCancelPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateServerInfo = scenario("updateServerInfoSimulation")
        .feed(updateServerInfoPATHFeeder)
        .exec(http("updateServerInfo")
        .httpRequest("POST","/servers/${id}")
)

    // Run scnupdateServerInfo with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateServerInfo.inject(
        rampUsersPerSec(1) to(updateServerInfoPerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateServerInfoPerSecond) during(durationSeconds),
        rampUsersPerSec(updateServerInfoPerSecond) to(1) during(rampDownSeconds)
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
