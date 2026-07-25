package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class LicensesApiSimulation extends Simulation {

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
    val addLicensePerSecond = config.getDouble("performance.operationsPerSecond.addLicense") * rateMultiplier * instanceMultiplier
    val getLicenseInfoPerSecond = config.getDouble("performance.operationsPerSecond.getLicenseInfo") * rateMultiplier * instanceMultiplier
    val getLicenseInvoicesPerSecond = config.getDouble("performance.operationsPerSecond.getLicenseInvoices") * rateMultiplier * instanceMultiplier
    val getLicenseListPerSecond = config.getDouble("performance.operationsPerSecond.getLicenseList") * rateMultiplier * instanceMultiplier
    val getLicensesWelcomeEmailPerSecond = config.getDouble("performance.operationsPerSecond.getLicensesWelcomeEmail") * rateMultiplier * instanceMultiplier
    val getNewLicensePerSecond = config.getDouble("performance.operationsPerSecond.getNewLicense") * rateMultiplier * instanceMultiplier
    val licensesCancelPerSecond = config.getDouble("performance.operationsPerSecond.licensesCancel") * rateMultiplier * instanceMultiplier
    val postLicenseChangeIpPerSecond = config.getDouble("performance.operationsPerSecond.postLicenseChangeIp") * rateMultiplier * instanceMultiplier
    val putLicensesPerSecond = config.getDouble("performance.operationsPerSecond.putLicenses") * rateMultiplier * instanceMultiplier
    val updateLicenseInfoPerSecond = config.getDouble("performance.operationsPerSecond.updateLicenseInfo") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val getLicenseInfoPATHFeeder = csv(userDataDirectory + File.separator + "getLicenseInfo-pathParams.csv").random
    val getLicenseInvoicesPATHFeeder = csv(userDataDirectory + File.separator + "getLicenseInvoices-pathParams.csv").random
    val getLicensesWelcomeEmailPATHFeeder = csv(userDataDirectory + File.separator + "getLicensesWelcomeEmail-pathParams.csv").random
    val licensesCancelPATHFeeder = csv(userDataDirectory + File.separator + "licensesCancel-pathParams.csv").random
    val postLicenseChangeIpPATHFeeder = csv(userDataDirectory + File.separator + "postLicenseChangeIp-pathParams.csv").random
    val updateLicenseInfoPATHFeeder = csv(userDataDirectory + File.separator + "updateLicenseInfo-pathParams.csv").random

    // Setup all scenarios

    
    val scnaddLicense = scenario("addLicenseSimulation")
        .exec(http("addLicense")
        .httpRequest("POST","/licenses/order")
)

    // Run scnaddLicense with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnaddLicense.inject(
        rampUsersPerSec(1) to(addLicensePerSecond) during(rampUpSeconds),
        constantUsersPerSec(addLicensePerSecond) during(durationSeconds),
        rampUsersPerSec(addLicensePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetLicenseInfo = scenario("getLicenseInfoSimulation")
        .feed(getLicenseInfoPATHFeeder)
        .exec(http("getLicenseInfo")
        .httpRequest("GET","/licenses/${id}")
)

    // Run scngetLicenseInfo with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetLicenseInfo.inject(
        rampUsersPerSec(1) to(getLicenseInfoPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getLicenseInfoPerSecond) during(durationSeconds),
        rampUsersPerSec(getLicenseInfoPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetLicenseInvoices = scenario("getLicenseInvoicesSimulation")
        .feed(getLicenseInvoicesPATHFeeder)
        .exec(http("getLicenseInvoices")
        .httpRequest("GET","/licenses/${id}/invoices")
)

    // Run scngetLicenseInvoices with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetLicenseInvoices.inject(
        rampUsersPerSec(1) to(getLicenseInvoicesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getLicenseInvoicesPerSecond) during(durationSeconds),
        rampUsersPerSec(getLicenseInvoicesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetLicenseList = scenario("getLicenseListSimulation")
        .exec(http("getLicenseList")
        .httpRequest("GET","/licenses")
)

    // Run scngetLicenseList with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetLicenseList.inject(
        rampUsersPerSec(1) to(getLicenseListPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getLicenseListPerSecond) during(durationSeconds),
        rampUsersPerSec(getLicenseListPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetLicensesWelcomeEmail = scenario("getLicensesWelcomeEmailSimulation")
        .feed(getLicensesWelcomeEmailPATHFeeder)
        .exec(http("getLicensesWelcomeEmail")
        .httpRequest("GET","/licenses/${id}/welcome_email")
)

    // Run scngetLicensesWelcomeEmail with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetLicensesWelcomeEmail.inject(
        rampUsersPerSec(1) to(getLicensesWelcomeEmailPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getLicensesWelcomeEmailPerSecond) during(durationSeconds),
        rampUsersPerSec(getLicensesWelcomeEmailPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetNewLicense = scenario("getNewLicenseSimulation")
        .exec(http("getNewLicense")
        .httpRequest("GET","/licenses/order")
)

    // Run scngetNewLicense with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetNewLicense.inject(
        rampUsersPerSec(1) to(getNewLicensePerSecond) during(rampUpSeconds),
        constantUsersPerSec(getNewLicensePerSecond) during(durationSeconds),
        rampUsersPerSec(getNewLicensePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnlicensesCancel = scenario("licensesCancelSimulation")
        .feed(licensesCancelPATHFeeder)
        .exec(http("licensesCancel")
        .httpRequest("DELETE","/licenses/${id}")
)

    // Run scnlicensesCancel with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnlicensesCancel.inject(
        rampUsersPerSec(1) to(licensesCancelPerSecond) during(rampUpSeconds),
        constantUsersPerSec(licensesCancelPerSecond) during(durationSeconds),
        rampUsersPerSec(licensesCancelPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostLicenseChangeIp = scenario("postLicenseChangeIpSimulation")
        .feed(postLicenseChangeIpPATHFeeder)
        .exec(http("postLicenseChangeIp")
        .httpRequest("POST","/licenses/${id}/change_ip")
)

    // Run scnpostLicenseChangeIp with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostLicenseChangeIp.inject(
        rampUsersPerSec(1) to(postLicenseChangeIpPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postLicenseChangeIpPerSecond) during(durationSeconds),
        rampUsersPerSec(postLicenseChangeIpPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnputLicenses = scenario("putLicensesSimulation")
        .exec(http("putLicenses")
        .httpRequest("PUT","/licenses/order")
)

    // Run scnputLicenses with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnputLicenses.inject(
        rampUsersPerSec(1) to(putLicensesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(putLicensesPerSecond) during(durationSeconds),
        rampUsersPerSec(putLicensesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateLicenseInfo = scenario("updateLicenseInfoSimulation")
        .feed(updateLicenseInfoPATHFeeder)
        .exec(http("updateLicenseInfo")
        .httpRequest("POST","/licenses/${id}")
)

    // Run scnupdateLicenseInfo with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateLicenseInfo.inject(
        rampUsersPerSec(1) to(updateLicenseInfoPerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateLicenseInfoPerSecond) during(durationSeconds),
        rampUsersPerSec(updateLicenseInfoPerSecond) to(1) during(rampDownSeconds)
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
