package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class PublicApiSimulation extends Simulation {

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
    val getAccountCurrenciesPerSecond = config.getDouble("performance.operationsPerSecond.getAccountCurrencies") * rateMultiplier * instanceMultiplier
    val getAccountLocalesPerSecond = config.getDouble("performance.operationsPerSecond.getAccountLocales") * rateMultiplier * instanceMultiplier
    val getCaptchaPerSecond = config.getDouble("performance.operationsPerSecond.getCaptcha") * rateMultiplier * instanceMultiplier
    val getCountriesPerSecond = config.getDouble("performance.operationsPerSecond.getCountries") * rateMultiplier * instanceMultiplier
    val getInfoPerSecond = config.getDouble("performance.operationsPerSecond.getInfo") * rateMultiplier * instanceMultiplier
    val getLoginInfoPerSecond = config.getDouble("performance.operationsPerSecond.getLoginInfo") * rateMultiplier * instanceMultiplier
    val getMPServersPerSecond = config.getDouble("performance.operationsPerSecond.getMPServers") * rateMultiplier * instanceMultiplier
    val getOauthRedirectPerSecond = config.getDouble("performance.operationsPerSecond.getOauthRedirect") * rateMultiplier * instanceMultiplier
    val getTimezonesPerSecond = config.getDouble("performance.operationsPerSecond.getTimezones") * rateMultiplier * instanceMultiplier
    val patchOauthTwoFactorPerSecond = config.getDouble("performance.operationsPerSecond.patchOauthTwoFactor") * rateMultiplier * instanceMultiplier
    val pingServerPerSecond = config.getDouble("performance.operationsPerSecond.pingServer") * rateMultiplier * instanceMultiplier
    val postOauthCallbackPerSecond = config.getDouble("performance.operationsPerSecond.postOauthCallback") * rateMultiplier * instanceMultiplier
    val submitLoginPerSecond = config.getDouble("performance.operationsPerSecond.submitLogin") * rateMultiplier * instanceMultiplier
    val submitSignupPerSecond = config.getDouble("performance.operationsPerSecond.submitSignup") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val getCountriesQUERYFeeder = csv(userDataDirectory + File.separator + "getCountries-queryParams.csv").random
    val getOauthRedirectQUERYFeeder = csv(userDataDirectory + File.separator + "getOauthRedirect-queryParams.csv").random
    val postOauthCallbackQUERYFeeder = csv(userDataDirectory + File.separator + "postOauthCallback-queryParams.csv").random

    // Setup all scenarios

    
    val scngetAccountCurrencies = scenario("getAccountCurrenciesSimulation")
        .exec(http("getAccountCurrencies")
        .httpRequest("GET","/account/currencies")
)

    // Run scngetAccountCurrencies with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetAccountCurrencies.inject(
        rampUsersPerSec(1) to(getAccountCurrenciesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getAccountCurrenciesPerSecond) during(durationSeconds),
        rampUsersPerSec(getAccountCurrenciesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetAccountLocales = scenario("getAccountLocalesSimulation")
        .exec(http("getAccountLocales")
        .httpRequest("GET","/account/locales")
)

    // Run scngetAccountLocales with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetAccountLocales.inject(
        rampUsersPerSec(1) to(getAccountLocalesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getAccountLocalesPerSecond) during(durationSeconds),
        rampUsersPerSec(getAccountLocalesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetCaptcha = scenario("getCaptchaSimulation")
        .exec(http("getCaptcha")
        .httpRequest("GET","/captcha")
)

    // Run scngetCaptcha with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetCaptcha.inject(
        rampUsersPerSec(1) to(getCaptchaPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getCaptchaPerSecond) during(durationSeconds),
        rampUsersPerSec(getCaptchaPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetCountries = scenario("getCountriesSimulation")
        .feed(getCountriesQUERYFeeder)
        .exec(http("getCountries")
        .httpRequest("GET","/account/countries")
        .queryParam("fetch_by","${fetch_by}")
)

    // Run scngetCountries with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetCountries.inject(
        rampUsersPerSec(1) to(getCountriesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getCountriesPerSecond) during(durationSeconds),
        rampUsersPerSec(getCountriesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetInfo = scenario("getInfoSimulation")
        .exec(http("getInfo")
        .httpRequest("GET","/info")
)

    // Run scngetInfo with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetInfo.inject(
        rampUsersPerSec(1) to(getInfoPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getInfoPerSecond) during(durationSeconds),
        rampUsersPerSec(getInfoPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetLoginInfo = scenario("getLoginInfoSimulation")
        .exec(http("getLoginInfo")
        .httpRequest("GET","/login")
)

    // Run scngetLoginInfo with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetLoginInfo.inject(
        rampUsersPerSec(1) to(getLoginInfoPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getLoginInfoPerSecond) during(durationSeconds),
        rampUsersPerSec(getLoginInfoPerSecond) to(1) during(rampDownSeconds)
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

    
    val scngetOauthRedirect = scenario("getOauthRedirectSimulation")
        .feed(getOauthRedirectQUERYFeeder)
        .exec(http("getOauthRedirect")
        .httpRequest("GET","/oauth")
        .queryParam("provider","${provider}")
)

    // Run scngetOauthRedirect with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetOauthRedirect.inject(
        rampUsersPerSec(1) to(getOauthRedirectPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getOauthRedirectPerSecond) during(durationSeconds),
        rampUsersPerSec(getOauthRedirectPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetTimezones = scenario("getTimezonesSimulation")
        .exec(http("getTimezones")
        .httpRequest("GET","/account/timezones")
)

    // Run scngetTimezones with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetTimezones.inject(
        rampUsersPerSec(1) to(getTimezonesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getTimezonesPerSecond) during(durationSeconds),
        rampUsersPerSec(getTimezonesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpatchOauthTwoFactor = scenario("patchOauthTwoFactorSimulation")
        .exec(http("patchOauthTwoFactor")
        .httpRequest("PATCH","/oauth")
)

    // Run scnpatchOauthTwoFactor with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpatchOauthTwoFactor.inject(
        rampUsersPerSec(1) to(patchOauthTwoFactorPerSecond) during(rampUpSeconds),
        constantUsersPerSec(patchOauthTwoFactorPerSecond) during(durationSeconds),
        rampUsersPerSec(patchOauthTwoFactorPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpingServer = scenario("pingServerSimulation")
        .exec(http("pingServer")
        .httpRequest("GET","/ping")
)

    // Run scnpingServer with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpingServer.inject(
        rampUsersPerSec(1) to(pingServerPerSecond) during(rampUpSeconds),
        constantUsersPerSec(pingServerPerSecond) during(durationSeconds),
        rampUsersPerSec(pingServerPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostOauthCallback = scenario("postOauthCallbackSimulation")
        .feed(postOauthCallbackQUERYFeeder)
        .exec(http("postOauthCallback")
        .httpRequest("POST","/oauth")
        .queryParam("provider","${provider}")
)

    // Run scnpostOauthCallback with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostOauthCallback.inject(
        rampUsersPerSec(1) to(postOauthCallbackPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postOauthCallbackPerSecond) during(durationSeconds),
        rampUsersPerSec(postOauthCallbackPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnsubmitLogin = scenario("submitLoginSimulation")
        .exec(http("submitLogin")
        .httpRequest("POST","/login")
)

    // Run scnsubmitLogin with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnsubmitLogin.inject(
        rampUsersPerSec(1) to(submitLoginPerSecond) during(rampUpSeconds),
        constantUsersPerSec(submitLoginPerSecond) during(durationSeconds),
        rampUsersPerSec(submitLoginPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnsubmitSignup = scenario("submitSignupSimulation")
        .exec(http("submitSignup")
        .httpRequest("POST","/signup")
)

    // Run scnsubmitSignup with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnsubmitSignup.inject(
        rampUsersPerSec(1) to(submitSignupPerSecond) during(rampUpSeconds),
        constantUsersPerSec(submitSignupPerSecond) during(durationSeconds),
        rampUsersPerSec(submitSignupPerSecond) to(1) during(rampDownSeconds)
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
