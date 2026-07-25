package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class TicketsApiSimulation extends Simulation {

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
    val addNewTicketPerSecond = config.getDouble("performance.operationsPerSecond.addNewTicket") * rateMultiplier * instanceMultiplier
    val closeTicketPerSecond = config.getDouble("performance.operationsPerSecond.closeTicket") * rateMultiplier * instanceMultiplier
    val deleteTicketInfoPerSecond = config.getDouble("performance.operationsPerSecond.deleteTicketInfo") * rateMultiplier * instanceMultiplier
    val getNewTicketPerSecond = config.getDouble("performance.operationsPerSecond.getNewTicket") * rateMultiplier * instanceMultiplier
    val getTicketInfoPerSecond = config.getDouble("performance.operationsPerSecond.getTicketInfo") * rateMultiplier * instanceMultiplier
    val getTicketsListPerSecond = config.getDouble("performance.operationsPerSecond.getTicketsList") * rateMultiplier * instanceMultiplier
    val postTicketInfoPerSecond = config.getDouble("performance.operationsPerSecond.postTicketInfo") * rateMultiplier * instanceMultiplier
    val postTicketsListPerSecond = config.getDouble("performance.operationsPerSecond.postTicketsList") * rateMultiplier * instanceMultiplier
    val putTicketInfoPerSecond = config.getDouble("performance.operationsPerSecond.putTicketInfo") * rateMultiplier * instanceMultiplier
    val replyTicketPerSecond = config.getDouble("performance.operationsPerSecond.replyTicket") * rateMultiplier * instanceMultiplier
    val updateTicketInfoPerSecond = config.getDouble("performance.operationsPerSecond.updateTicketInfo") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val CloseTicketPATHFeeder = csv(userDataDirectory + File.separator + "closeTicket-pathParams.csv").random
    val deleteTicketInfoPATHFeeder = csv(userDataDirectory + File.separator + "deleteTicketInfo-pathParams.csv").random
    val getTicketInfoPATHFeeder = csv(userDataDirectory + File.separator + "getTicketInfo-pathParams.csv").random
    val getTicketsListQUERYFeeder = csv(userDataDirectory + File.separator + "getTicketsList-queryParams.csv").random
    val postTicketInfoPATHFeeder = csv(userDataDirectory + File.separator + "postTicketInfo-pathParams.csv").random
    val putTicketInfoPATHFeeder = csv(userDataDirectory + File.separator + "putTicketInfo-pathParams.csv").random
    val ReplyTicketPATHFeeder = csv(userDataDirectory + File.separator + "replyTicket-pathParams.csv").random
    val updateTicketInfoPATHFeeder = csv(userDataDirectory + File.separator + "updateTicketInfo-pathParams.csv").random

    // Setup all scenarios

    
    val scnaddNewTicket = scenario("addNewTicketSimulation")
        .exec(http("addNewTicket")
        .httpRequest("POST","/tickets/new")
)

    // Run scnaddNewTicket with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnaddNewTicket.inject(
        rampUsersPerSec(1) to(addNewTicketPerSecond) during(rampUpSeconds),
        constantUsersPerSec(addNewTicketPerSecond) during(durationSeconds),
        rampUsersPerSec(addNewTicketPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scncloseTicket = scenario("closeTicketSimulation")
        .feed(CloseTicketPATHFeeder)
        .exec(http("closeTicket")
        .httpRequest("GET","/tickets/${id}/close")
)

    // Run scncloseTicket with warm up and reach a constant rate for entire duration
    scenarioBuilders += scncloseTicket.inject(
        rampUsersPerSec(1) to(closeTicketPerSecond) during(rampUpSeconds),
        constantUsersPerSec(closeTicketPerSecond) during(durationSeconds),
        rampUsersPerSec(closeTicketPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndeleteTicketInfo = scenario("deleteTicketInfoSimulation")
        .feed(deleteTicketInfoPATHFeeder)
        .exec(http("deleteTicketInfo")
        .httpRequest("DELETE","/tickets/${id}")
)

    // Run scndeleteTicketInfo with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndeleteTicketInfo.inject(
        rampUsersPerSec(1) to(deleteTicketInfoPerSecond) during(rampUpSeconds),
        constantUsersPerSec(deleteTicketInfoPerSecond) during(durationSeconds),
        rampUsersPerSec(deleteTicketInfoPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetNewTicket = scenario("getNewTicketSimulation")
        .exec(http("getNewTicket")
        .httpRequest("GET","/tickets/new")
)

    // Run scngetNewTicket with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetNewTicket.inject(
        rampUsersPerSec(1) to(getNewTicketPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getNewTicketPerSecond) during(durationSeconds),
        rampUsersPerSec(getNewTicketPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetTicketInfo = scenario("getTicketInfoSimulation")
        .feed(getTicketInfoPATHFeeder)
        .exec(http("getTicketInfo")
        .httpRequest("GET","/tickets/${id}")
)

    // Run scngetTicketInfo with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetTicketInfo.inject(
        rampUsersPerSec(1) to(getTicketInfoPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getTicketInfoPerSecond) during(durationSeconds),
        rampUsersPerSec(getTicketInfoPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetTicketsList = scenario("getTicketsListSimulation")
        .feed(getTicketsListQUERYFeeder)
        .exec(http("getTicketsList")
        .httpRequest("GET","/tickets")
        .queryParam("period","${period}")
        .queryParam("page","${page}")
        .queryParam("view","${view}")
)

    // Run scngetTicketsList with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetTicketsList.inject(
        rampUsersPerSec(1) to(getTicketsListPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getTicketsListPerSecond) during(durationSeconds),
        rampUsersPerSec(getTicketsListPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostTicketInfo = scenario("postTicketInfoSimulation")
        .feed(postTicketInfoPATHFeeder)
        .exec(http("postTicketInfo")
        .httpRequest("POST","/tickets/${id}")
)

    // Run scnpostTicketInfo with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostTicketInfo.inject(
        rampUsersPerSec(1) to(postTicketInfoPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postTicketInfoPerSecond) during(durationSeconds),
        rampUsersPerSec(postTicketInfoPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostTicketsList = scenario("postTicketsListSimulation")
        .exec(http("postTicketsList")
        .httpRequest("POST","/tickets")
)

    // Run scnpostTicketsList with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostTicketsList.inject(
        rampUsersPerSec(1) to(postTicketsListPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postTicketsListPerSecond) during(durationSeconds),
        rampUsersPerSec(postTicketsListPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnputTicketInfo = scenario("putTicketInfoSimulation")
        .feed(putTicketInfoPATHFeeder)
        .exec(http("putTicketInfo")
        .httpRequest("PUT","/tickets/${id}")
)

    // Run scnputTicketInfo with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnputTicketInfo.inject(
        rampUsersPerSec(1) to(putTicketInfoPerSecond) during(rampUpSeconds),
        constantUsersPerSec(putTicketInfoPerSecond) during(durationSeconds),
        rampUsersPerSec(putTicketInfoPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnreplyTicket = scenario("replyTicketSimulation")
        .feed(ReplyTicketPATHFeeder)
        .exec(http("replyTicket")
        .httpRequest("POST","/tickets/${id}/reply")
)

    // Run scnreplyTicket with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnreplyTicket.inject(
        rampUsersPerSec(1) to(replyTicketPerSecond) during(rampUpSeconds),
        constantUsersPerSec(replyTicketPerSecond) during(durationSeconds),
        rampUsersPerSec(replyTicketPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateTicketInfo = scenario("updateTicketInfoSimulation")
        .feed(updateTicketInfoPATHFeeder)
        .exec(http("updateTicketInfo")
        .httpRequest("POST","/tickets/${id}/update")
)

    // Run scnupdateTicketInfo with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateTicketInfo.inject(
        rampUsersPerSec(1) to(updateTicketInfoPerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateTicketInfoPerSecond) during(durationSeconds),
        rampUsersPerSec(updateTicketInfoPerSecond) to(1) during(rampDownSeconds)
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
