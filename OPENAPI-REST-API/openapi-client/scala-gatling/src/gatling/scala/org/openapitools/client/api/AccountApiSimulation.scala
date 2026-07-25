package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class AccountApiSimulation extends Simulation {

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
    val deleteAccountOauthNamePerSecond = config.getDouble("performance.operationsPerSecond.deleteAccountOauthName") * rateMultiplier * instanceMultiplier
    val deleteAccountTfaPerSecond = config.getDouble("performance.operationsPerSecond.deleteAccountTfa") * rateMultiplier * instanceMultiplier
    val deleteIpLimitPerSecond = config.getDouble("performance.operationsPerSecond.deleteIpLimit") * rateMultiplier * instanceMultiplier
    val getAccountInfoPerSecond = config.getDouble("performance.operationsPerSecond.getAccountInfo") * rateMultiplier * instanceMultiplier
    val getAccountTfaSetupPerSecond = config.getDouble("performance.operationsPerSecond.getAccountTfaSetup") * rateMultiplier * instanceMultiplier
    val getHomePerSecond = config.getDouble("performance.operationsPerSecond.getHome") * rateMultiplier * instanceMultiplier
    val getSearchPerSecond = config.getDouble("performance.operationsPerSecond.getSearch") * rateMultiplier * instanceMultiplier
    val logoutPerSecond = config.getDouble("performance.operationsPerSecond.logout") * rateMultiplier * instanceMultiplier
    val logoutAccountOauthPerSecond = config.getDouble("performance.operationsPerSecond.logoutAccountOauth") * rateMultiplier * instanceMultiplier
    val updateAccountApiKeyPerSecond = config.getDouble("performance.operationsPerSecond.updateAccountApiKey") * rateMultiplier * instanceMultiplier
    val updateAccountFeaturesPerSecond = config.getDouble("performance.operationsPerSecond.updateAccountFeatures") * rateMultiplier * instanceMultiplier
    val updateAccountInfoPerSecond = config.getDouble("performance.operationsPerSecond.updateAccountInfo") * rateMultiplier * instanceMultiplier
    val updateAccountIpLimitsPerSecond = config.getDouble("performance.operationsPerSecond.updateAccountIpLimits") * rateMultiplier * instanceMultiplier
    val updateAccountPasswordPerSecond = config.getDouble("performance.operationsPerSecond.updateAccountPassword") * rateMultiplier * instanceMultiplier
    val updateAccountSshKeyPerSecond = config.getDouble("performance.operationsPerSecond.updateAccountSshKey") * rateMultiplier * instanceMultiplier
    val updateAccountTfaPerSecond = config.getDouble("performance.operationsPerSecond.updateAccountTfa") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val deleteAccountOauthNamePATHFeeder = csv(userDataDirectory + File.separator + "deleteAccountOauthName-pathParams.csv").random
    val logoutAccountOauthPATHFeeder = csv(userDataDirectory + File.separator + "logoutAccountOauth-pathParams.csv").random

    // Setup all scenarios

    
    val scndeleteAccountOauthName = scenario("deleteAccountOauthNameSimulation")
        .feed(deleteAccountOauthNamePATHFeeder)
        .exec(http("deleteAccountOauthName")
        .httpRequest("DELETE","/account/oauth/${name}")
)

    // Run scndeleteAccountOauthName with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndeleteAccountOauthName.inject(
        rampUsersPerSec(1) to(deleteAccountOauthNamePerSecond) during(rampUpSeconds),
        constantUsersPerSec(deleteAccountOauthNamePerSecond) during(durationSeconds),
        rampUsersPerSec(deleteAccountOauthNamePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndeleteAccountTfa = scenario("deleteAccountTfaSimulation")
        .exec(http("deleteAccountTfa")
        .httpRequest("DELETE","/account/2fa")
)

    // Run scndeleteAccountTfa with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndeleteAccountTfa.inject(
        rampUsersPerSec(1) to(deleteAccountTfaPerSecond) during(rampUpSeconds),
        constantUsersPerSec(deleteAccountTfaPerSecond) during(durationSeconds),
        rampUsersPerSec(deleteAccountTfaPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndeleteIpLimit = scenario("deleteIpLimitSimulation")
        .exec(http("deleteIpLimit")
        .httpRequest("PATCH","/account/iplimits")
)

    // Run scndeleteIpLimit with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndeleteIpLimit.inject(
        rampUsersPerSec(1) to(deleteIpLimitPerSecond) during(rampUpSeconds),
        constantUsersPerSec(deleteIpLimitPerSecond) during(durationSeconds),
        rampUsersPerSec(deleteIpLimitPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetAccountInfo = scenario("getAccountInfoSimulation")
        .exec(http("getAccountInfo")
        .httpRequest("GET","/account")
)

    // Run scngetAccountInfo with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetAccountInfo.inject(
        rampUsersPerSec(1) to(getAccountInfoPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getAccountInfoPerSecond) during(durationSeconds),
        rampUsersPerSec(getAccountInfoPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetAccountTfaSetup = scenario("getAccountTfaSetupSimulation")
        .exec(http("getAccountTfaSetup")
        .httpRequest("GET","/account/2fa")
)

    // Run scngetAccountTfaSetup with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetAccountTfaSetup.inject(
        rampUsersPerSec(1) to(getAccountTfaSetupPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getAccountTfaSetupPerSecond) during(durationSeconds),
        rampUsersPerSec(getAccountTfaSetupPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetHome = scenario("getHomeSimulation")
        .exec(http("getHome")
        .httpRequest("GET","/home")
)

    // Run scngetHome with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetHome.inject(
        rampUsersPerSec(1) to(getHomePerSecond) during(rampUpSeconds),
        constantUsersPerSec(getHomePerSecond) during(durationSeconds),
        rampUsersPerSec(getHomePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetSearch = scenario("getSearchSimulation")
        .exec(http("getSearch")
        .httpRequest("GET","/search")
)

    // Run scngetSearch with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetSearch.inject(
        rampUsersPerSec(1) to(getSearchPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getSearchPerSecond) during(durationSeconds),
        rampUsersPerSec(getSearchPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnlogout = scenario("logoutSimulation")
        .exec(http("logout")
        .httpRequest("GET","/logout")
)

    // Run scnlogout with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnlogout.inject(
        rampUsersPerSec(1) to(logoutPerSecond) during(rampUpSeconds),
        constantUsersPerSec(logoutPerSecond) during(durationSeconds),
        rampUsersPerSec(logoutPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnlogoutAccountOauth = scenario("logoutAccountOauthSimulation")
        .feed(logoutAccountOauthPATHFeeder)
        .exec(http("logoutAccountOauth")
        .httpRequest("GET","/account/oauth/${name}/logout")
)

    // Run scnlogoutAccountOauth with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnlogoutAccountOauth.inject(
        rampUsersPerSec(1) to(logoutAccountOauthPerSecond) during(rampUpSeconds),
        constantUsersPerSec(logoutAccountOauthPerSecond) during(durationSeconds),
        rampUsersPerSec(logoutAccountOauthPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateAccountApiKey = scenario("updateAccountApiKeySimulation")
        .exec(http("updateAccountApiKey")
        .httpRequest("POST","/account/apikey")
)

    // Run scnupdateAccountApiKey with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateAccountApiKey.inject(
        rampUsersPerSec(1) to(updateAccountApiKeyPerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateAccountApiKeyPerSecond) during(durationSeconds),
        rampUsersPerSec(updateAccountApiKeyPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateAccountFeatures = scenario("updateAccountFeaturesSimulation")
        .exec(http("updateAccountFeatures")
        .httpRequest("POST","/account/features")
)

    // Run scnupdateAccountFeatures with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateAccountFeatures.inject(
        rampUsersPerSec(1) to(updateAccountFeaturesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateAccountFeaturesPerSecond) during(durationSeconds),
        rampUsersPerSec(updateAccountFeaturesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateAccountInfo = scenario("updateAccountInfoSimulation")
        .exec(http("updateAccountInfo")
        .httpRequest("POST","/account")
)

    // Run scnupdateAccountInfo with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateAccountInfo.inject(
        rampUsersPerSec(1) to(updateAccountInfoPerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateAccountInfoPerSecond) during(durationSeconds),
        rampUsersPerSec(updateAccountInfoPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateAccountIpLimits = scenario("updateAccountIpLimitsSimulation")
        .exec(http("updateAccountIpLimits")
        .httpRequest("POST","/account/iplimits")
)

    // Run scnupdateAccountIpLimits with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateAccountIpLimits.inject(
        rampUsersPerSec(1) to(updateAccountIpLimitsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateAccountIpLimitsPerSecond) during(durationSeconds),
        rampUsersPerSec(updateAccountIpLimitsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateAccountPassword = scenario("updateAccountPasswordSimulation")
        .exec(http("updateAccountPassword")
        .httpRequest("POST","/account/password")
)

    // Run scnupdateAccountPassword with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateAccountPassword.inject(
        rampUsersPerSec(1) to(updateAccountPasswordPerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateAccountPasswordPerSecond) during(durationSeconds),
        rampUsersPerSec(updateAccountPasswordPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateAccountSshKey = scenario("updateAccountSshKeySimulation")
        .exec(http("updateAccountSshKey")
        .httpRequest("POST","/account/sshkey")
)

    // Run scnupdateAccountSshKey with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateAccountSshKey.inject(
        rampUsersPerSec(1) to(updateAccountSshKeyPerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateAccountSshKeyPerSecond) during(durationSeconds),
        rampUsersPerSec(updateAccountSshKeyPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateAccountTfa = scenario("updateAccountTfaSimulation")
        .exec(http("updateAccountTfa")
        .httpRequest("POST","/account/2fa")
)

    // Run scnupdateAccountTfa with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateAccountTfa.inject(
        rampUsersPerSec(1) to(updateAccountTfaPerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateAccountTfaPerSecond) during(durationSeconds),
        rampUsersPerSec(updateAccountTfaPerSecond) to(1) during(rampDownSeconds)
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
