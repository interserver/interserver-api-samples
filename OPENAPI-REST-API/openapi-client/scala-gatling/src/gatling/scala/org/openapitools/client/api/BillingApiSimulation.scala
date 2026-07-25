package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class BillingApiSimulation extends Simulation {

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
    val addBillingCreditCardPerSecond = config.getDouble("performance.operationsPerSecond.addBillingCreditCard") * rateMultiplier * instanceMultiplier
    val addBillingPrepayPerSecond = config.getDouble("performance.operationsPerSecond.addBillingPrepay") * rateMultiplier * instanceMultiplier
    val deleteBillingCreditCardPerSecond = config.getDouble("performance.operationsPerSecond.deleteBillingCreditCard") * rateMultiplier * instanceMultiplier
    val deleteBillingInvoicePerSecond = config.getDouble("performance.operationsPerSecond.deleteBillingInvoice") * rateMultiplier * instanceMultiplier
    val deleteBillingPrepayPerSecond = config.getDouble("performance.operationsPerSecond.deleteBillingPrepay") * rateMultiplier * instanceMultiplier
    val getAffiliateBannersPerSecond = config.getDouble("performance.operationsPerSecond.getAffiliateBanners") * rateMultiplier * instanceMultiplier
    val getAffiliateDownloadPerSecond = config.getDouble("performance.operationsPerSecond.getAffiliateDownload") * rateMultiplier * instanceMultiplier
    val getAffiliateRichReportPerSecond = config.getDouble("performance.operationsPerSecond.getAffiliateRichReport") * rateMultiplier * instanceMultiplier
    val getAffiliateSalesGraphPerSecond = config.getDouble("performance.operationsPerSecond.getAffiliateSalesGraph") * rateMultiplier * instanceMultiplier
    val getAffiliateSignupsPerSecond = config.getDouble("performance.operationsPerSecond.getAffiliateSignups") * rateMultiplier * instanceMultiplier
    val getAffiliateTrafficGraphPerSecond = config.getDouble("performance.operationsPerSecond.getAffiliateTrafficGraph") * rateMultiplier * instanceMultiplier
    val getAffiliateWebTrafficPerSecond = config.getDouble("performance.operationsPerSecond.getAffiliateWebTraffic") * rateMultiplier * instanceMultiplier
    val getBillingCartPerSecond = config.getDouble("performance.operationsPerSecond.getBillingCart") * rateMultiplier * instanceMultiplier
    val getBillingCreditCardVerifyPerSecond = config.getDouble("performance.operationsPerSecond.getBillingCreditCardVerify") * rateMultiplier * instanceMultiplier
    val getBillingInvoicePerSecond = config.getDouble("performance.operationsPerSecond.getBillingInvoice") * rateMultiplier * instanceMultiplier
    val getBillingInvoicesPerSecond = config.getDouble("performance.operationsPerSecond.getBillingInvoices") * rateMultiplier * instanceMultiplier
    val getBillingPrePaysPerSecond = config.getDouble("performance.operationsPerSecond.getBillingPrePays") * rateMultiplier * instanceMultiplier
    val initiatePaymentPerSecond = config.getDouble("performance.operationsPerSecond.initiatePayment") * rateMultiplier * instanceMultiplier
    val patchBillingCreditCardVerifyPerSecond = config.getDouble("performance.operationsPerSecond.patchBillingCreditCardVerify") * rateMultiplier * instanceMultiplier
    val postBillingCreditCardVerifyPerSecond = config.getDouble("performance.operationsPerSecond.postBillingCreditCardVerify") * rateMultiplier * instanceMultiplier
    val updateAffiliateDockSetupPerSecond = config.getDouble("performance.operationsPerSecond.updateAffiliateDockSetup") * rateMultiplier * instanceMultiplier
    val updateAffiliatePaymentSetupPerSecond = config.getDouble("performance.operationsPerSecond.updateAffiliatePaymentSetup") * rateMultiplier * instanceMultiplier
    val updateBillingCreditCardPerSecond = config.getDouble("performance.operationsPerSecond.updateBillingCreditCard") * rateMultiplier * instanceMultiplier
    val updateBillingPaymentMethodPerSecond = config.getDouble("performance.operationsPerSecond.updateBillingPaymentMethod") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val deleteBillingCreditCardPATHFeeder = csv(userDataDirectory + File.separator + "deleteBillingCreditCard-pathParams.csv").random
    val deleteBillingInvoicePATHFeeder = csv(userDataDirectory + File.separator + "deleteBillingInvoice-pathParams.csv").random
    val deleteBillingPrepayPATHFeeder = csv(userDataDirectory + File.separator + "deleteBillingPrepay-pathParams.csv").random
    val getAffiliateDownloadQUERYFeeder = csv(userDataDirectory + File.separator + "getAffiliateDownload-queryParams.csv").random
    val getAffiliateSalesGraphQUERYFeeder = csv(userDataDirectory + File.separator + "getAffiliateSalesGraph-queryParams.csv").random
    val getAffiliateSignupsQUERYFeeder = csv(userDataDirectory + File.separator + "getAffiliateSignups-queryParams.csv").random
    val getAffiliateTrafficGraphQUERYFeeder = csv(userDataDirectory + File.separator + "getAffiliateTrafficGraph-queryParams.csv").random
    val getBillingCreditCardVerifyPATHFeeder = csv(userDataDirectory + File.separator + "getBillingCreditCardVerify-pathParams.csv").random
    val getBillingInvoicePATHFeeder = csv(userDataDirectory + File.separator + "getBillingInvoice-pathParams.csv").random
    val initiatePaymentPATHFeeder = csv(userDataDirectory + File.separator + "initiatePayment-pathParams.csv").random
    val patchBillingCreditCardVerifyPATHFeeder = csv(userDataDirectory + File.separator + "patchBillingCreditCardVerify-pathParams.csv").random
    val postBillingCreditCardVerifyPATHFeeder = csv(userDataDirectory + File.separator + "postBillingCreditCardVerify-pathParams.csv").random
    val updateBillingCreditCardPATHFeeder = csv(userDataDirectory + File.separator + "updateBillingCreditCard-pathParams.csv").random

    // Setup all scenarios

    
    val scnaddBillingCreditCard = scenario("addBillingCreditCardSimulation")
        .exec(http("addBillingCreditCard")
        .httpRequest("POST","/billing/creditcards")
)

    // Run scnaddBillingCreditCard with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnaddBillingCreditCard.inject(
        rampUsersPerSec(1) to(addBillingCreditCardPerSecond) during(rampUpSeconds),
        constantUsersPerSec(addBillingCreditCardPerSecond) during(durationSeconds),
        rampUsersPerSec(addBillingCreditCardPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnaddBillingPrepay = scenario("addBillingPrepaySimulation")
        .exec(http("addBillingPrepay")
        .httpRequest("POST","/billing/prepays")
)

    // Run scnaddBillingPrepay with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnaddBillingPrepay.inject(
        rampUsersPerSec(1) to(addBillingPrepayPerSecond) during(rampUpSeconds),
        constantUsersPerSec(addBillingPrepayPerSecond) during(durationSeconds),
        rampUsersPerSec(addBillingPrepayPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndeleteBillingCreditCard = scenario("deleteBillingCreditCardSimulation")
        .feed(deleteBillingCreditCardPATHFeeder)
        .exec(http("deleteBillingCreditCard")
        .httpRequest("DELETE","/billing/creditcards/${id}")
)

    // Run scndeleteBillingCreditCard with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndeleteBillingCreditCard.inject(
        rampUsersPerSec(1) to(deleteBillingCreditCardPerSecond) during(rampUpSeconds),
        constantUsersPerSec(deleteBillingCreditCardPerSecond) during(durationSeconds),
        rampUsersPerSec(deleteBillingCreditCardPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndeleteBillingInvoice = scenario("deleteBillingInvoiceSimulation")
        .feed(deleteBillingInvoicePATHFeeder)
        .exec(http("deleteBillingInvoice")
        .httpRequest("DELETE","/billing/invoices/${id}")
)

    // Run scndeleteBillingInvoice with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndeleteBillingInvoice.inject(
        rampUsersPerSec(1) to(deleteBillingInvoicePerSecond) during(rampUpSeconds),
        constantUsersPerSec(deleteBillingInvoicePerSecond) during(durationSeconds),
        rampUsersPerSec(deleteBillingInvoicePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndeleteBillingPrepay = scenario("deleteBillingPrepaySimulation")
        .feed(deleteBillingPrepayPATHFeeder)
        .exec(http("deleteBillingPrepay")
        .httpRequest("DELETE","/billing/prepays/${id}")
)

    // Run scndeleteBillingPrepay with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndeleteBillingPrepay.inject(
        rampUsersPerSec(1) to(deleteBillingPrepayPerSecond) during(rampUpSeconds),
        constantUsersPerSec(deleteBillingPrepayPerSecond) during(durationSeconds),
        rampUsersPerSec(deleteBillingPrepayPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetAffiliateBanners = scenario("getAffiliateBannersSimulation")
        .exec(http("getAffiliateBanners")
        .httpRequest("GET","/affiliate/banners")
)

    // Run scngetAffiliateBanners with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetAffiliateBanners.inject(
        rampUsersPerSec(1) to(getAffiliateBannersPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getAffiliateBannersPerSecond) during(durationSeconds),
        rampUsersPerSec(getAffiliateBannersPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetAffiliateDownload = scenario("getAffiliateDownloadSimulation")
        .feed(getAffiliateDownloadQUERYFeeder)
        .exec(http("getAffiliateDownload")
        .httpRequest("GET","/affiliate/download")
        .queryParam("st","${st}")
        .queryParam("year","${year}")
        .queryParam("ex","${ex}")
)

    // Run scngetAffiliateDownload with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetAffiliateDownload.inject(
        rampUsersPerSec(1) to(getAffiliateDownloadPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getAffiliateDownloadPerSecond) during(durationSeconds),
        rampUsersPerSec(getAffiliateDownloadPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetAffiliateRichReport = scenario("getAffiliateRichReportSimulation")
        .exec(http("getAffiliateRichReport")
        .httpRequest("GET","/affiliate/rich_report")
)

    // Run scngetAffiliateRichReport with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetAffiliateRichReport.inject(
        rampUsersPerSec(1) to(getAffiliateRichReportPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getAffiliateRichReportPerSecond) during(durationSeconds),
        rampUsersPerSec(getAffiliateRichReportPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetAffiliateSalesGraph = scenario("getAffiliateSalesGraphSimulation")
        .feed(getAffiliateSalesGraphQUERYFeeder)
        .exec(http("getAffiliateSalesGraph")
        .httpRequest("GET","/affiliate/sales_graph")
        .queryParam("days","${days}")
)

    // Run scngetAffiliateSalesGraph with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetAffiliateSalesGraph.inject(
        rampUsersPerSec(1) to(getAffiliateSalesGraphPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getAffiliateSalesGraphPerSecond) during(durationSeconds),
        rampUsersPerSec(getAffiliateSalesGraphPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetAffiliateSignups = scenario("getAffiliateSignupsSimulation")
        .feed(getAffiliateSignupsQUERYFeeder)
        .exec(http("getAffiliateSignups")
        .httpRequest("GET","/affiliate/signups")
        .queryParam("st","${st}")
)

    // Run scngetAffiliateSignups with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetAffiliateSignups.inject(
        rampUsersPerSec(1) to(getAffiliateSignupsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getAffiliateSignupsPerSecond) during(durationSeconds),
        rampUsersPerSec(getAffiliateSignupsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetAffiliateTrafficGraph = scenario("getAffiliateTrafficGraphSimulation")
        .feed(getAffiliateTrafficGraphQUERYFeeder)
        .exec(http("getAffiliateTrafficGraph")
        .httpRequest("GET","/affiliate/traffic_graph")
        .queryParam("days","${days}")
)

    // Run scngetAffiliateTrafficGraph with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetAffiliateTrafficGraph.inject(
        rampUsersPerSec(1) to(getAffiliateTrafficGraphPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getAffiliateTrafficGraphPerSecond) during(durationSeconds),
        rampUsersPerSec(getAffiliateTrafficGraphPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetAffiliateWebTraffic = scenario("getAffiliateWebTrafficSimulation")
        .exec(http("getAffiliateWebTraffic")
        .httpRequest("GET","/affiliate/web_traffic")
)

    // Run scngetAffiliateWebTraffic with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetAffiliateWebTraffic.inject(
        rampUsersPerSec(1) to(getAffiliateWebTrafficPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getAffiliateWebTrafficPerSecond) during(durationSeconds),
        rampUsersPerSec(getAffiliateWebTrafficPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetBillingCart = scenario("getBillingCartSimulation")
        .exec(http("getBillingCart")
        .httpRequest("GET","/billing/cart")
)

    // Run scngetBillingCart with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetBillingCart.inject(
        rampUsersPerSec(1) to(getBillingCartPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getBillingCartPerSecond) during(durationSeconds),
        rampUsersPerSec(getBillingCartPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetBillingCreditCardVerify = scenario("getBillingCreditCardVerifySimulation")
        .feed(getBillingCreditCardVerifyPATHFeeder)
        .exec(http("getBillingCreditCardVerify")
        .httpRequest("GET","/billing/creditcards/${id}/verify")
)

    // Run scngetBillingCreditCardVerify with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetBillingCreditCardVerify.inject(
        rampUsersPerSec(1) to(getBillingCreditCardVerifyPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getBillingCreditCardVerifyPerSecond) during(durationSeconds),
        rampUsersPerSec(getBillingCreditCardVerifyPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetBillingInvoice = scenario("getBillingInvoiceSimulation")
        .feed(getBillingInvoicePATHFeeder)
        .exec(http("getBillingInvoice")
        .httpRequest("GET","/billing/invoices/${id}")
)

    // Run scngetBillingInvoice with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetBillingInvoice.inject(
        rampUsersPerSec(1) to(getBillingInvoicePerSecond) during(rampUpSeconds),
        constantUsersPerSec(getBillingInvoicePerSecond) during(durationSeconds),
        rampUsersPerSec(getBillingInvoicePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetBillingInvoices = scenario("getBillingInvoicesSimulation")
        .exec(http("getBillingInvoices")
        .httpRequest("GET","/billing/invoices")
)

    // Run scngetBillingInvoices with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetBillingInvoices.inject(
        rampUsersPerSec(1) to(getBillingInvoicesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getBillingInvoicesPerSecond) during(durationSeconds),
        rampUsersPerSec(getBillingInvoicesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetBillingPrePays = scenario("getBillingPrePaysSimulation")
        .exec(http("getBillingPrePays")
        .httpRequest("GET","/billing/prepays")
)

    // Run scngetBillingPrePays with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetBillingPrePays.inject(
        rampUsersPerSec(1) to(getBillingPrePaysPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getBillingPrePaysPerSecond) during(durationSeconds),
        rampUsersPerSec(getBillingPrePaysPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scninitiatePayment = scenario("initiatePaymentSimulation")
        .feed(initiatePaymentPATHFeeder)
        .exec(http("initiatePayment")
        .httpRequest("GET","/billing/pay/${method}/${invoices}")
)

    // Run scninitiatePayment with warm up and reach a constant rate for entire duration
    scenarioBuilders += scninitiatePayment.inject(
        rampUsersPerSec(1) to(initiatePaymentPerSecond) during(rampUpSeconds),
        constantUsersPerSec(initiatePaymentPerSecond) during(durationSeconds),
        rampUsersPerSec(initiatePaymentPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpatchBillingCreditCardVerify = scenario("patchBillingCreditCardVerifySimulation")
        .feed(patchBillingCreditCardVerifyPATHFeeder)
        .exec(http("patchBillingCreditCardVerify")
        .httpRequest("PATCH","/billing/creditcards/${id}/verify")
)

    // Run scnpatchBillingCreditCardVerify with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpatchBillingCreditCardVerify.inject(
        rampUsersPerSec(1) to(patchBillingCreditCardVerifyPerSecond) during(rampUpSeconds),
        constantUsersPerSec(patchBillingCreditCardVerifyPerSecond) during(durationSeconds),
        rampUsersPerSec(patchBillingCreditCardVerifyPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostBillingCreditCardVerify = scenario("postBillingCreditCardVerifySimulation")
        .feed(postBillingCreditCardVerifyPATHFeeder)
        .exec(http("postBillingCreditCardVerify")
        .httpRequest("POST","/billing/creditcards/${id}/verify")
)

    // Run scnpostBillingCreditCardVerify with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostBillingCreditCardVerify.inject(
        rampUsersPerSec(1) to(postBillingCreditCardVerifyPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postBillingCreditCardVerifyPerSecond) during(durationSeconds),
        rampUsersPerSec(postBillingCreditCardVerifyPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateAffiliateDockSetup = scenario("updateAffiliateDockSetupSimulation")
        .exec(http("updateAffiliateDockSetup")
        .httpRequest("POST","/affiliate/dock_setup")
)

    // Run scnupdateAffiliateDockSetup with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateAffiliateDockSetup.inject(
        rampUsersPerSec(1) to(updateAffiliateDockSetupPerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateAffiliateDockSetupPerSecond) during(durationSeconds),
        rampUsersPerSec(updateAffiliateDockSetupPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateAffiliatePaymentSetup = scenario("updateAffiliatePaymentSetupSimulation")
        .exec(http("updateAffiliatePaymentSetup")
        .httpRequest("POST","/affiliate/payment_setup")
)

    // Run scnupdateAffiliatePaymentSetup with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateAffiliatePaymentSetup.inject(
        rampUsersPerSec(1) to(updateAffiliatePaymentSetupPerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateAffiliatePaymentSetupPerSecond) during(durationSeconds),
        rampUsersPerSec(updateAffiliatePaymentSetupPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateBillingCreditCard = scenario("updateBillingCreditCardSimulation")
        .feed(updateBillingCreditCardPATHFeeder)
        .exec(http("updateBillingCreditCard")
        .httpRequest("POST","/billing/creditcards/${id}")
)

    // Run scnupdateBillingCreditCard with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateBillingCreditCard.inject(
        rampUsersPerSec(1) to(updateBillingCreditCardPerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateBillingCreditCardPerSecond) during(durationSeconds),
        rampUsersPerSec(updateBillingCreditCardPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateBillingPaymentMethod = scenario("updateBillingPaymentMethodSimulation")
        .exec(http("updateBillingPaymentMethod")
        .httpRequest("POST","/billing/payment_method")
)

    // Run scnupdateBillingPaymentMethod with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateBillingPaymentMethod.inject(
        rampUsersPerSec(1) to(updateBillingPaymentMethodPerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateBillingPaymentMethodPerSecond) during(durationSeconds),
        rampUsersPerSec(updateBillingPaymentMethodPerSecond) to(1) during(rampDownSeconds)
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
