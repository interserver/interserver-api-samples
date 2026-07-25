package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class MailApiSimulation extends Simulation {

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
    val addMailPerSecond = config.getDouble("performance.operationsPerSecond.addMail") * rateMultiplier * instanceMultiplier
    val addRulePerSecond = config.getDouble("performance.operationsPerSecond.addRule") * rateMultiplier * instanceMultiplier
    val createMailAlertPerSecond = config.getDouble("performance.operationsPerSecond.createMailAlert") * rateMultiplier * instanceMultiplier
    val deleteMailAlertPerSecond = config.getDouble("performance.operationsPerSecond.deleteMailAlert") * rateMultiplier * instanceMultiplier
    val deleteRulePerSecond = config.getDouble("performance.operationsPerSecond.deleteRule") * rateMultiplier * instanceMultiplier
    val delistBlockPerSecond = config.getDouble("performance.operationsPerSecond.delistBlock") * rateMultiplier * instanceMultiplier
    val getMailAlertsPerSecond = config.getDouble("performance.operationsPerSecond.getMailAlerts") * rateMultiplier * instanceMultiplier
    val getMailBlocksPerSecond = config.getDouble("performance.operationsPerSecond.getMailBlocks") * rateMultiplier * instanceMultiplier
    val getMailDelistPerSecond = config.getDouble("performance.operationsPerSecond.getMailDelist") * rateMultiplier * instanceMultiplier
    val getMailDeliverabilityPerSecond = config.getDouble("performance.operationsPerSecond.getMailDeliverability") * rateMultiplier * instanceMultiplier
    val getMailInfoPerSecond = config.getDouble("performance.operationsPerSecond.getMailInfo") * rateMultiplier * instanceMultiplier
    val getMailInvoicesPerSecond = config.getDouble("performance.operationsPerSecond.getMailInvoices") * rateMultiplier * instanceMultiplier
    val getMailListPerSecond = config.getDouble("performance.operationsPerSecond.getMailList") * rateMultiplier * instanceMultiplier
    val getMailWelcomeEmailPerSecond = config.getDouble("performance.operationsPerSecond.getMailWelcomeEmail") * rateMultiplier * instanceMultiplier
    val getNewMailPerSecond = config.getDouble("performance.operationsPerSecond.getNewMail") * rateMultiplier * instanceMultiplier
    val getRulesPerSecond = config.getDouble("performance.operationsPerSecond.getRules") * rateMultiplier * instanceMultiplier
    val getStatsPerSecond = config.getDouble("performance.operationsPerSecond.getStats") * rateMultiplier * instanceMultiplier
    val mailCancelPerSecond = config.getDouble("performance.operationsPerSecond.mailCancel") * rateMultiplier * instanceMultiplier
    val postMailDelistPerSecond = config.getDouble("performance.operationsPerSecond.postMailDelist") * rateMultiplier * instanceMultiplier
    val putMailPerSecond = config.getDouble("performance.operationsPerSecond.putMail") * rateMultiplier * instanceMultiplier
    val resetMailPasswordPerSecond = config.getDouble("performance.operationsPerSecond.resetMailPassword") * rateMultiplier * instanceMultiplier
    val sendAdvMailPerSecond = config.getDouble("performance.operationsPerSecond.sendAdvMail") * rateMultiplier * instanceMultiplier
    val sendMailPerSecond = config.getDouble("performance.operationsPerSecond.sendMail") * rateMultiplier * instanceMultiplier
    val updateMailAlertPerSecond = config.getDouble("performance.operationsPerSecond.updateMailAlert") * rateMultiplier * instanceMultiplier
    val updateMailInfoPerSecond = config.getDouble("performance.operationsPerSecond.updateMailInfo") * rateMultiplier * instanceMultiplier
    val updateRulePerSecond = config.getDouble("performance.operationsPerSecond.updateRule") * rateMultiplier * instanceMultiplier
    val viewMailLogPerSecond = config.getDouble("performance.operationsPerSecond.viewMailLog") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val addRulePATHFeeder = csv(userDataDirectory + File.separator + "addRule-pathParams.csv").random
    val createMailAlertPATHFeeder = csv(userDataDirectory + File.separator + "createMailAlert-pathParams.csv").random
    val deleteMailAlertPATHFeeder = csv(userDataDirectory + File.separator + "deleteMailAlert-pathParams.csv").random
    val deleteRulePATHFeeder = csv(userDataDirectory + File.separator + "deleteRule-pathParams.csv").random
    val delistBlockPATHFeeder = csv(userDataDirectory + File.separator + "delistBlock-pathParams.csv").random
    val getMailAlertsPATHFeeder = csv(userDataDirectory + File.separator + "getMailAlerts-pathParams.csv").random
    val getMailBlocksPATHFeeder = csv(userDataDirectory + File.separator + "getMailBlocks-pathParams.csv").random
    val getMailDelistPATHFeeder = csv(userDataDirectory + File.separator + "getMailDelist-pathParams.csv").random
    val getMailDeliverabilityPATHFeeder = csv(userDataDirectory + File.separator + "getMailDeliverability-pathParams.csv").random
    val getMailInfoPATHFeeder = csv(userDataDirectory + File.separator + "getMailInfo-pathParams.csv").random
    val getMailInvoicesPATHFeeder = csv(userDataDirectory + File.separator + "getMailInvoices-pathParams.csv").random
    val getMailWelcomeEmailPATHFeeder = csv(userDataDirectory + File.separator + "getMailWelcomeEmail-pathParams.csv").random
    val getRulesPATHFeeder = csv(userDataDirectory + File.separator + "getRules-pathParams.csv").random
    val getStatsQUERYFeeder = csv(userDataDirectory + File.separator + "getStats-queryParams.csv").random
    val getStatsPATHFeeder = csv(userDataDirectory + File.separator + "getStats-pathParams.csv").random
    val mailCancelPATHFeeder = csv(userDataDirectory + File.separator + "mailCancel-pathParams.csv").random
    val postMailDelistPATHFeeder = csv(userDataDirectory + File.separator + "postMailDelist-pathParams.csv").random
    val resetMailPasswordPATHFeeder = csv(userDataDirectory + File.separator + "resetMailPassword-pathParams.csv").random
    val sendAdvMailPATHFeeder = csv(userDataDirectory + File.separator + "sendAdvMail-pathParams.csv").random
    val sendMailPATHFeeder = csv(userDataDirectory + File.separator + "sendMail-pathParams.csv").random
    val updateMailAlertPATHFeeder = csv(userDataDirectory + File.separator + "updateMailAlert-pathParams.csv").random
    val updateMailInfoPATHFeeder = csv(userDataDirectory + File.separator + "updateMailInfo-pathParams.csv").random
    val updateRulePATHFeeder = csv(userDataDirectory + File.separator + "updateRule-pathParams.csv").random
    val viewMailLogQUERYFeeder = csv(userDataDirectory + File.separator + "viewMailLog-queryParams.csv").random
    val viewMailLogPATHFeeder = csv(userDataDirectory + File.separator + "viewMailLog-pathParams.csv").random

    // Setup all scenarios

    
    val scnaddMail = scenario("addMailSimulation")
        .exec(http("addMail")
        .httpRequest("POST","/mail/order")
)

    // Run scnaddMail with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnaddMail.inject(
        rampUsersPerSec(1) to(addMailPerSecond) during(rampUpSeconds),
        constantUsersPerSec(addMailPerSecond) during(durationSeconds),
        rampUsersPerSec(addMailPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnaddRule = scenario("addRuleSimulation")
        .feed(addRulePATHFeeder)
        .exec(http("addRule")
        .httpRequest("POST","/mail/${id}/rules")
)

    // Run scnaddRule with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnaddRule.inject(
        rampUsersPerSec(1) to(addRulePerSecond) during(rampUpSeconds),
        constantUsersPerSec(addRulePerSecond) during(durationSeconds),
        rampUsersPerSec(addRulePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scncreateMailAlert = scenario("createMailAlertSimulation")
        .feed(createMailAlertPATHFeeder)
        .exec(http("createMailAlert")
        .httpRequest("POST","/mail/${id}/alerts")
)

    // Run scncreateMailAlert with warm up and reach a constant rate for entire duration
    scenarioBuilders += scncreateMailAlert.inject(
        rampUsersPerSec(1) to(createMailAlertPerSecond) during(rampUpSeconds),
        constantUsersPerSec(createMailAlertPerSecond) during(durationSeconds),
        rampUsersPerSec(createMailAlertPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndeleteMailAlert = scenario("deleteMailAlertSimulation")
        .feed(deleteMailAlertPATHFeeder)
        .exec(http("deleteMailAlert")
        .httpRequest("DELETE","/mail/${id}/alerts")
)

    // Run scndeleteMailAlert with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndeleteMailAlert.inject(
        rampUsersPerSec(1) to(deleteMailAlertPerSecond) during(rampUpSeconds),
        constantUsersPerSec(deleteMailAlertPerSecond) during(durationSeconds),
        rampUsersPerSec(deleteMailAlertPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndeleteRule = scenario("deleteRuleSimulation")
        .feed(deleteRulePATHFeeder)
        .exec(http("deleteRule")
        .httpRequest("DELETE","/mail/${id}/rules/${rule}")
)

    // Run scndeleteRule with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndeleteRule.inject(
        rampUsersPerSec(1) to(deleteRulePerSecond) during(rampUpSeconds),
        constantUsersPerSec(deleteRulePerSecond) during(durationSeconds),
        rampUsersPerSec(deleteRulePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndelistBlock = scenario("delistBlockSimulation")
        .feed(delistBlockPATHFeeder)
        .exec(http("delistBlock")
        .httpRequest("POST","/mail/${id}/blocks/delete")
)

    // Run scndelistBlock with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndelistBlock.inject(
        rampUsersPerSec(1) to(delistBlockPerSecond) during(rampUpSeconds),
        constantUsersPerSec(delistBlockPerSecond) during(durationSeconds),
        rampUsersPerSec(delistBlockPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetMailAlerts = scenario("getMailAlertsSimulation")
        .feed(getMailAlertsPATHFeeder)
        .exec(http("getMailAlerts")
        .httpRequest("GET","/mail/${id}/alerts")
)

    // Run scngetMailAlerts with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetMailAlerts.inject(
        rampUsersPerSec(1) to(getMailAlertsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getMailAlertsPerSecond) during(durationSeconds),
        rampUsersPerSec(getMailAlertsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetMailBlocks = scenario("getMailBlocksSimulation")
        .feed(getMailBlocksPATHFeeder)
        .exec(http("getMailBlocks")
        .httpRequest("GET","/mail/${id}/blocks")
)

    // Run scngetMailBlocks with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetMailBlocks.inject(
        rampUsersPerSec(1) to(getMailBlocksPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getMailBlocksPerSecond) during(durationSeconds),
        rampUsersPerSec(getMailBlocksPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetMailDelist = scenario("getMailDelistSimulation")
        .feed(getMailDelistPATHFeeder)
        .exec(http("getMailDelist")
        .httpRequest("GET","/mail/${id}/delist")
)

    // Run scngetMailDelist with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetMailDelist.inject(
        rampUsersPerSec(1) to(getMailDelistPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getMailDelistPerSecond) during(durationSeconds),
        rampUsersPerSec(getMailDelistPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetMailDeliverability = scenario("getMailDeliverabilitySimulation")
        .feed(getMailDeliverabilityPATHFeeder)
        .exec(http("getMailDeliverability")
        .httpRequest("GET","/mail/${id}/deliverability")
)

    // Run scngetMailDeliverability with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetMailDeliverability.inject(
        rampUsersPerSec(1) to(getMailDeliverabilityPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getMailDeliverabilityPerSecond) during(durationSeconds),
        rampUsersPerSec(getMailDeliverabilityPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetMailInfo = scenario("getMailInfoSimulation")
        .feed(getMailInfoPATHFeeder)
        .exec(http("getMailInfo")
        .httpRequest("GET","/mail/${id}")
)

    // Run scngetMailInfo with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetMailInfo.inject(
        rampUsersPerSec(1) to(getMailInfoPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getMailInfoPerSecond) during(durationSeconds),
        rampUsersPerSec(getMailInfoPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetMailInvoices = scenario("getMailInvoicesSimulation")
        .feed(getMailInvoicesPATHFeeder)
        .exec(http("getMailInvoices")
        .httpRequest("GET","/mail/${id}/invoices")
)

    // Run scngetMailInvoices with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetMailInvoices.inject(
        rampUsersPerSec(1) to(getMailInvoicesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getMailInvoicesPerSecond) during(durationSeconds),
        rampUsersPerSec(getMailInvoicesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetMailList = scenario("getMailListSimulation")
        .exec(http("getMailList")
        .httpRequest("GET","/mail")
)

    // Run scngetMailList with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetMailList.inject(
        rampUsersPerSec(1) to(getMailListPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getMailListPerSecond) during(durationSeconds),
        rampUsersPerSec(getMailListPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetMailWelcomeEmail = scenario("getMailWelcomeEmailSimulation")
        .feed(getMailWelcomeEmailPATHFeeder)
        .exec(http("getMailWelcomeEmail")
        .httpRequest("GET","/mail/${id}/welcome_email")
)

    // Run scngetMailWelcomeEmail with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetMailWelcomeEmail.inject(
        rampUsersPerSec(1) to(getMailWelcomeEmailPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getMailWelcomeEmailPerSecond) during(durationSeconds),
        rampUsersPerSec(getMailWelcomeEmailPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetNewMail = scenario("getNewMailSimulation")
        .exec(http("getNewMail")
        .httpRequest("GET","/mail/order")
)

    // Run scngetNewMail with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetNewMail.inject(
        rampUsersPerSec(1) to(getNewMailPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getNewMailPerSecond) during(durationSeconds),
        rampUsersPerSec(getNewMailPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetRules = scenario("getRulesSimulation")
        .feed(getRulesPATHFeeder)
        .exec(http("getRules")
        .httpRequest("GET","/mail/${id}/rules")
)

    // Run scngetRules with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetRules.inject(
        rampUsersPerSec(1) to(getRulesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getRulesPerSecond) during(durationSeconds),
        rampUsersPerSec(getRulesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetStats = scenario("getStatsSimulation")
        .feed(getStatsQUERYFeeder)
        .feed(getStatsPATHFeeder)
        .exec(http("getStats")
        .httpRequest("GET","/mail/${id}/stats")
        .queryParam("time","${time}")
)

    // Run scngetStats with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetStats.inject(
        rampUsersPerSec(1) to(getStatsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getStatsPerSecond) during(durationSeconds),
        rampUsersPerSec(getStatsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmailCancel = scenario("mailCancelSimulation")
        .feed(mailCancelPATHFeeder)
        .exec(http("mailCancel")
        .httpRequest("DELETE","/mail/${id}")
)

    // Run scnmailCancel with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmailCancel.inject(
        rampUsersPerSec(1) to(mailCancelPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mailCancelPerSecond) during(durationSeconds),
        rampUsersPerSec(mailCancelPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostMailDelist = scenario("postMailDelistSimulation")
        .feed(postMailDelistPATHFeeder)
        .exec(http("postMailDelist")
        .httpRequest("POST","/mail/${id}/delist")
)

    // Run scnpostMailDelist with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostMailDelist.inject(
        rampUsersPerSec(1) to(postMailDelistPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postMailDelistPerSecond) during(durationSeconds),
        rampUsersPerSec(postMailDelistPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnputMail = scenario("putMailSimulation")
        .exec(http("putMail")
        .httpRequest("PUT","/mail/order")
)

    // Run scnputMail with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnputMail.inject(
        rampUsersPerSec(1) to(putMailPerSecond) during(rampUpSeconds),
        constantUsersPerSec(putMailPerSecond) during(durationSeconds),
        rampUsersPerSec(putMailPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnresetMailPassword = scenario("resetMailPasswordSimulation")
        .feed(resetMailPasswordPATHFeeder)
        .exec(http("resetMailPassword")
        .httpRequest("GET","/mail/${id}/reset_password")
)

    // Run scnresetMailPassword with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnresetMailPassword.inject(
        rampUsersPerSec(1) to(resetMailPasswordPerSecond) during(rampUpSeconds),
        constantUsersPerSec(resetMailPasswordPerSecond) during(durationSeconds),
        rampUsersPerSec(resetMailPasswordPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnsendAdvMail = scenario("sendAdvMailSimulation")
        .feed(sendAdvMailPATHFeeder)
        .exec(http("sendAdvMail")
        .httpRequest("POST","/mail/${id}/advsend")
)

    // Run scnsendAdvMail with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnsendAdvMail.inject(
        rampUsersPerSec(1) to(sendAdvMailPerSecond) during(rampUpSeconds),
        constantUsersPerSec(sendAdvMailPerSecond) during(durationSeconds),
        rampUsersPerSec(sendAdvMailPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnsendMail = scenario("sendMailSimulation")
        .feed(sendMailPATHFeeder)
        .exec(http("sendMail")
        .httpRequest("POST","/mail/${id}/send")
)

    // Run scnsendMail with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnsendMail.inject(
        rampUsersPerSec(1) to(sendMailPerSecond) during(rampUpSeconds),
        constantUsersPerSec(sendMailPerSecond) during(durationSeconds),
        rampUsersPerSec(sendMailPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateMailAlert = scenario("updateMailAlertSimulation")
        .feed(updateMailAlertPATHFeeder)
        .exec(http("updateMailAlert")
        .httpRequest("PUT","/mail/${id}/alerts")
)

    // Run scnupdateMailAlert with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateMailAlert.inject(
        rampUsersPerSec(1) to(updateMailAlertPerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateMailAlertPerSecond) during(durationSeconds),
        rampUsersPerSec(updateMailAlertPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateMailInfo = scenario("updateMailInfoSimulation")
        .feed(updateMailInfoPATHFeeder)
        .exec(http("updateMailInfo")
        .httpRequest("POST","/mail/${id}")
)

    // Run scnupdateMailInfo with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateMailInfo.inject(
        rampUsersPerSec(1) to(updateMailInfoPerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateMailInfoPerSecond) during(durationSeconds),
        rampUsersPerSec(updateMailInfoPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateRule = scenario("updateRuleSimulation")
        .feed(updateRulePATHFeeder)
        .exec(http("updateRule")
        .httpRequest("PUT","/mail/${id}/rules/${rule}")
)

    // Run scnupdateRule with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateRule.inject(
        rampUsersPerSec(1) to(updateRulePerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateRulePerSecond) during(durationSeconds),
        rampUsersPerSec(updateRulePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnviewMailLog = scenario("viewMailLogSimulation")
        .feed(viewMailLogQUERYFeeder)
        .feed(viewMailLogPATHFeeder)
        .exec(http("viewMailLog")
        .httpRequest("GET","/mail/${id}/log")
        .queryParam("dir","${dir}")
        .queryParam("endDate","${endDate}")
        .queryParam("id","${id}")
        .queryParam("skip","${skip}")
        .queryParam("messageId","${messageId}")
        .queryParam("origin","${origin}")
        .queryParam("limit","${limit}")
        .queryParam("from","${from}")
        .queryParam("replyto","${replyto}")
        .queryParam("startDate","${startDate}")
        .queryParam("headerfrom","${headerfrom}")
        .queryParam("mx","${mx}")
        .queryParam("delivered","${delivered}")
        .queryParam("sort","${sort}")
        .queryParam("groupby","${groupby}")
        .queryParam("subject","${subject}")
        .queryParam("mailid","${mailid}")
        .queryParam("to","${to}")
)

    // Run scnviewMailLog with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnviewMailLog.inject(
        rampUsersPerSec(1) to(viewMailLogPerSecond) during(rampUpSeconds),
        constantUsersPerSec(viewMailLogPerSecond) during(durationSeconds),
        rampUsersPerSec(viewMailLogPerSecond) to(1) during(rampDownSeconds)
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
