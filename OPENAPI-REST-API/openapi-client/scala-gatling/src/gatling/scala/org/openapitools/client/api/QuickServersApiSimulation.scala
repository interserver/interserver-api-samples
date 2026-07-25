package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class QuickServersApiSimulation extends Simulation {

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
    val addQsPerSecond = config.getDouble("performance.operationsPerSecond.addQs") * rateMultiplier * instanceMultiplier
    val deleteQsBackupPerSecond = config.getDouble("performance.operationsPerSecond.deleteQsBackup") * rateMultiplier * instanceMultiplier
    val doQsBlockSmtpPerSecond = config.getDouble("performance.operationsPerSecond.doQsBlockSmtp") * rateMultiplier * instanceMultiplier
    val doQsDisableCdPerSecond = config.getDouble("performance.operationsPerSecond.doQsDisableCd") * rateMultiplier * instanceMultiplier
    val doQsDisableQuotaPerSecond = config.getDouble("performance.operationsPerSecond.doQsDisableQuota") * rateMultiplier * instanceMultiplier
    val doQsEjectCdPerSecond = config.getDouble("performance.operationsPerSecond.doQsEjectCd") * rateMultiplier * instanceMultiplier
    val doQsEnableQuotaPerSecond = config.getDouble("performance.operationsPerSecond.doQsEnableQuota") * rateMultiplier * instanceMultiplier
    val doQsRestartPerSecond = config.getDouble("performance.operationsPerSecond.doQsRestart") * rateMultiplier * instanceMultiplier
    val doQsStartPerSecond = config.getDouble("performance.operationsPerSecond.doQsStart") * rateMultiplier * instanceMultiplier
    val doQsStopPerSecond = config.getDouble("performance.operationsPerSecond.doQsStop") * rateMultiplier * instanceMultiplier
    val downloadQsBackupPerSecond = config.getDouble("performance.operationsPerSecond.downloadQsBackup") * rateMultiplier * instanceMultiplier
    val getNewQsPerSecond = config.getDouble("performance.operationsPerSecond.getNewQs") * rateMultiplier * instanceMultiplier
    val getQsBackupPerSecond = config.getDouble("performance.operationsPerSecond.getQsBackup") * rateMultiplier * instanceMultiplier
    val getQsBackupsPerSecond = config.getDouble("performance.operationsPerSecond.getQsBackups") * rateMultiplier * instanceMultiplier
    val getQsChangeHostnamePerSecond = config.getDouble("performance.operationsPerSecond.getQsChangeHostname") * rateMultiplier * instanceMultiplier
    val getQsChangeRootPasswordPerSecond = config.getDouble("performance.operationsPerSecond.getQsChangeRootPassword") * rateMultiplier * instanceMultiplier
    val getQsChangeTimezonePerSecond = config.getDouble("performance.operationsPerSecond.getQsChangeTimezone") * rateMultiplier * instanceMultiplier
    val getQsChangeWebuzoPasswordPerSecond = config.getDouble("performance.operationsPerSecond.getQsChangeWebuzoPassword") * rateMultiplier * instanceMultiplier
    val getQsInfoPerSecond = config.getDouble("performance.operationsPerSecond.getQsInfo") * rateMultiplier * instanceMultiplier
    val getQsInsertCdPerSecond = config.getDouble("performance.operationsPerSecond.getQsInsertCd") * rateMultiplier * instanceMultiplier
    val getQsInvoicesPerSecond = config.getDouble("performance.operationsPerSecond.getQsInvoices") * rateMultiplier * instanceMultiplier
    val getQsListPerSecond = config.getDouble("performance.operationsPerSecond.getQsList") * rateMultiplier * instanceMultiplier
    val getQsReinstallOsPerSecond = config.getDouble("performance.operationsPerSecond.getQsReinstallOs") * rateMultiplier * instanceMultiplier
    val getQsResetPasswordPerSecond = config.getDouble("performance.operationsPerSecond.getQsResetPassword") * rateMultiplier * instanceMultiplier
    val getQsReverseDnsPerSecond = config.getDouble("performance.operationsPerSecond.getQsReverseDns") * rateMultiplier * instanceMultiplier
    val getQsSetupVncPerSecond = config.getDouble("performance.operationsPerSecond.getQsSetupVnc") * rateMultiplier * instanceMultiplier
    val getQsTrafficUsagePerSecond = config.getDouble("performance.operationsPerSecond.getQsTrafficUsage") * rateMultiplier * instanceMultiplier
    val getQsViewDesktopPerSecond = config.getDouble("performance.operationsPerSecond.getQsViewDesktop") * rateMultiplier * instanceMultiplier
    val getQsWelcomeEmailPerSecond = config.getDouble("performance.operationsPerSecond.getQsWelcomeEmail") * rateMultiplier * instanceMultiplier
    val postQsChangeHostnamePerSecond = config.getDouble("performance.operationsPerSecond.postQsChangeHostname") * rateMultiplier * instanceMultiplier
    val postQsChangeRootPasswordPerSecond = config.getDouble("performance.operationsPerSecond.postQsChangeRootPassword") * rateMultiplier * instanceMultiplier
    val postQsChangeTimezonePerSecond = config.getDouble("performance.operationsPerSecond.postQsChangeTimezone") * rateMultiplier * instanceMultiplier
    val postQsChangeWebuzoPasswordPerSecond = config.getDouble("performance.operationsPerSecond.postQsChangeWebuzoPassword") * rateMultiplier * instanceMultiplier
    val postQsInsertCdPerSecond = config.getDouble("performance.operationsPerSecond.postQsInsertCd") * rateMultiplier * instanceMultiplier
    val postQsReinstallOsPerSecond = config.getDouble("performance.operationsPerSecond.postQsReinstallOs") * rateMultiplier * instanceMultiplier
    val postQsResetPasswordPerSecond = config.getDouble("performance.operationsPerSecond.postQsResetPassword") * rateMultiplier * instanceMultiplier
    val postQsReverseDnsPerSecond = config.getDouble("performance.operationsPerSecond.postQsReverseDns") * rateMultiplier * instanceMultiplier
    val postQsSetupVncPerSecond = config.getDouble("performance.operationsPerSecond.postQsSetupVnc") * rateMultiplier * instanceMultiplier
    val postQsTrafficUsagePerSecond = config.getDouble("performance.operationsPerSecond.postQsTrafficUsage") * rateMultiplier * instanceMultiplier
    val postQsViewDesktopPerSecond = config.getDouble("performance.operationsPerSecond.postQsViewDesktop") * rateMultiplier * instanceMultiplier
    val postQuickServerRestorePerSecond = config.getDouble("performance.operationsPerSecond.postQuickServerRestore") * rateMultiplier * instanceMultiplier
    val putQsPerSecond = config.getDouble("performance.operationsPerSecond.putQs") * rateMultiplier * instanceMultiplier
    val quickserversCancelPerSecond = config.getDouble("performance.operationsPerSecond.quickserversCancel") * rateMultiplier * instanceMultiplier
    val updateQsInfoPerSecond = config.getDouble("performance.operationsPerSecond.updateQsInfo") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val deleteQsBackupQUERYFeeder = csv(userDataDirectory + File.separator + "deleteQsBackup-queryParams.csv").random
    val deleteQsBackupPATHFeeder = csv(userDataDirectory + File.separator + "deleteQsBackup-pathParams.csv").random
    val doQsBlockSmtpPATHFeeder = csv(userDataDirectory + File.separator + "doQsBlockSmtp-pathParams.csv").random
    val doQsDisableCdPATHFeeder = csv(userDataDirectory + File.separator + "doQsDisableCd-pathParams.csv").random
    val doQsDisableQuotaPATHFeeder = csv(userDataDirectory + File.separator + "doQsDisableQuota-pathParams.csv").random
    val doQsEjectCdPATHFeeder = csv(userDataDirectory + File.separator + "doQsEjectCd-pathParams.csv").random
    val doQsEnableQuotaPATHFeeder = csv(userDataDirectory + File.separator + "doQsEnableQuota-pathParams.csv").random
    val doQsRestartPATHFeeder = csv(userDataDirectory + File.separator + "doQsRestart-pathParams.csv").random
    val doQsStartPATHFeeder = csv(userDataDirectory + File.separator + "doQsStart-pathParams.csv").random
    val doQsStopPATHFeeder = csv(userDataDirectory + File.separator + "doQsStop-pathParams.csv").random
    val downloadQsBackupQUERYFeeder = csv(userDataDirectory + File.separator + "downloadQsBackup-queryParams.csv").random
    val downloadQsBackupPATHFeeder = csv(userDataDirectory + File.separator + "downloadQsBackup-pathParams.csv").random
    val getQsBackupPATHFeeder = csv(userDataDirectory + File.separator + "getQsBackup-pathParams.csv").random
    val getQsBackupsQUERYFeeder = csv(userDataDirectory + File.separator + "getQsBackups-queryParams.csv").random
    val getQsBackupsPATHFeeder = csv(userDataDirectory + File.separator + "getQsBackups-pathParams.csv").random
    val getQsChangeHostnamePATHFeeder = csv(userDataDirectory + File.separator + "getQsChangeHostname-pathParams.csv").random
    val getQsChangeRootPasswordPATHFeeder = csv(userDataDirectory + File.separator + "getQsChangeRootPassword-pathParams.csv").random
    val getQsChangeTimezonePATHFeeder = csv(userDataDirectory + File.separator + "getQsChangeTimezone-pathParams.csv").random
    val getQsChangeWebuzoPasswordPATHFeeder = csv(userDataDirectory + File.separator + "getQsChangeWebuzoPassword-pathParams.csv").random
    val getQsInfoPATHFeeder = csv(userDataDirectory + File.separator + "getQsInfo-pathParams.csv").random
    val getQsInsertCdPATHFeeder = csv(userDataDirectory + File.separator + "getQsInsertCd-pathParams.csv").random
    val getQsInvoicesPATHFeeder = csv(userDataDirectory + File.separator + "getQsInvoices-pathParams.csv").random
    val getQsReinstallOsPATHFeeder = csv(userDataDirectory + File.separator + "getQsReinstallOs-pathParams.csv").random
    val getQsResetPasswordPATHFeeder = csv(userDataDirectory + File.separator + "getQsResetPassword-pathParams.csv").random
    val getQsReverseDnsPATHFeeder = csv(userDataDirectory + File.separator + "getQsReverseDns-pathParams.csv").random
    val getQsSetupVncPATHFeeder = csv(userDataDirectory + File.separator + "getQsSetupVnc-pathParams.csv").random
    val getQsTrafficUsagePATHFeeder = csv(userDataDirectory + File.separator + "getQsTrafficUsage-pathParams.csv").random
    val getQsViewDesktopPATHFeeder = csv(userDataDirectory + File.separator + "getQsViewDesktop-pathParams.csv").random
    val getQsWelcomeEmailPATHFeeder = csv(userDataDirectory + File.separator + "getQsWelcomeEmail-pathParams.csv").random
    val postQsChangeHostnamePATHFeeder = csv(userDataDirectory + File.separator + "postQsChangeHostname-pathParams.csv").random
    val postQsChangeRootPasswordPATHFeeder = csv(userDataDirectory + File.separator + "postQsChangeRootPassword-pathParams.csv").random
    val postQsChangeTimezonePATHFeeder = csv(userDataDirectory + File.separator + "postQsChangeTimezone-pathParams.csv").random
    val postQsChangeWebuzoPasswordPATHFeeder = csv(userDataDirectory + File.separator + "postQsChangeWebuzoPassword-pathParams.csv").random
    val postQsInsertCdPATHFeeder = csv(userDataDirectory + File.separator + "postQsInsertCd-pathParams.csv").random
    val postQsReinstallOsPATHFeeder = csv(userDataDirectory + File.separator + "postQsReinstallOs-pathParams.csv").random
    val postQsResetPasswordPATHFeeder = csv(userDataDirectory + File.separator + "postQsResetPassword-pathParams.csv").random
    val postQsReverseDnsPATHFeeder = csv(userDataDirectory + File.separator + "postQsReverseDns-pathParams.csv").random
    val postQsSetupVncPATHFeeder = csv(userDataDirectory + File.separator + "postQsSetupVnc-pathParams.csv").random
    val postQsTrafficUsagePATHFeeder = csv(userDataDirectory + File.separator + "postQsTrafficUsage-pathParams.csv").random
    val postQsViewDesktopPATHFeeder = csv(userDataDirectory + File.separator + "postQsViewDesktop-pathParams.csv").random
    val postQuickServerRestorePATHFeeder = csv(userDataDirectory + File.separator + "postQuickServerRestore-pathParams.csv").random
    val quickserversCancelPATHFeeder = csv(userDataDirectory + File.separator + "quickserversCancel-pathParams.csv").random
    val updateQsInfoPATHFeeder = csv(userDataDirectory + File.separator + "updateQsInfo-pathParams.csv").random

    // Setup all scenarios

    
    val scnaddQs = scenario("addQsSimulation")
        .exec(http("addQs")
        .httpRequest("POST","/qs/order")
)

    // Run scnaddQs with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnaddQs.inject(
        rampUsersPerSec(1) to(addQsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(addQsPerSecond) during(durationSeconds),
        rampUsersPerSec(addQsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndeleteQsBackup = scenario("deleteQsBackupSimulation")
        .feed(deleteQsBackupQUERYFeeder)
        .feed(deleteQsBackupPATHFeeder)
        .exec(http("deleteQsBackup")
        .httpRequest("DELETE","/qs/${id}/backups")
        .queryParam("file","${file}")
        .queryParam("all","${all}")
)

    // Run scndeleteQsBackup with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndeleteQsBackup.inject(
        rampUsersPerSec(1) to(deleteQsBackupPerSecond) during(rampUpSeconds),
        constantUsersPerSec(deleteQsBackupPerSecond) during(durationSeconds),
        rampUsersPerSec(deleteQsBackupPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndoQsBlockSmtp = scenario("doQsBlockSmtpSimulation")
        .feed(doQsBlockSmtpPATHFeeder)
        .exec(http("doQsBlockSmtp")
        .httpRequest("GET","/qs/${id}/block_smtp")
)

    // Run scndoQsBlockSmtp with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndoQsBlockSmtp.inject(
        rampUsersPerSec(1) to(doQsBlockSmtpPerSecond) during(rampUpSeconds),
        constantUsersPerSec(doQsBlockSmtpPerSecond) during(durationSeconds),
        rampUsersPerSec(doQsBlockSmtpPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndoQsDisableCd = scenario("doQsDisableCdSimulation")
        .feed(doQsDisableCdPATHFeeder)
        .exec(http("doQsDisableCd")
        .httpRequest("GET","/qs/${id}/disable_cd")
)

    // Run scndoQsDisableCd with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndoQsDisableCd.inject(
        rampUsersPerSec(1) to(doQsDisableCdPerSecond) during(rampUpSeconds),
        constantUsersPerSec(doQsDisableCdPerSecond) during(durationSeconds),
        rampUsersPerSec(doQsDisableCdPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndoQsDisableQuota = scenario("doQsDisableQuotaSimulation")
        .feed(doQsDisableQuotaPATHFeeder)
        .exec(http("doQsDisableQuota")
        .httpRequest("GET","/qs/${id}/disable_quota")
)

    // Run scndoQsDisableQuota with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndoQsDisableQuota.inject(
        rampUsersPerSec(1) to(doQsDisableQuotaPerSecond) during(rampUpSeconds),
        constantUsersPerSec(doQsDisableQuotaPerSecond) during(durationSeconds),
        rampUsersPerSec(doQsDisableQuotaPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndoQsEjectCd = scenario("doQsEjectCdSimulation")
        .feed(doQsEjectCdPATHFeeder)
        .exec(http("doQsEjectCd")
        .httpRequest("GET","/qs/${id}/eject_cd")
)

    // Run scndoQsEjectCd with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndoQsEjectCd.inject(
        rampUsersPerSec(1) to(doQsEjectCdPerSecond) during(rampUpSeconds),
        constantUsersPerSec(doQsEjectCdPerSecond) during(durationSeconds),
        rampUsersPerSec(doQsEjectCdPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndoQsEnableQuota = scenario("doQsEnableQuotaSimulation")
        .feed(doQsEnableQuotaPATHFeeder)
        .exec(http("doQsEnableQuota")
        .httpRequest("GET","/qs/${id}/enable_quota")
)

    // Run scndoQsEnableQuota with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndoQsEnableQuota.inject(
        rampUsersPerSec(1) to(doQsEnableQuotaPerSecond) during(rampUpSeconds),
        constantUsersPerSec(doQsEnableQuotaPerSecond) during(durationSeconds),
        rampUsersPerSec(doQsEnableQuotaPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndoQsRestart = scenario("doQsRestartSimulation")
        .feed(doQsRestartPATHFeeder)
        .exec(http("doQsRestart")
        .httpRequest("GET","/qs/${id}/restart")
)

    // Run scndoQsRestart with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndoQsRestart.inject(
        rampUsersPerSec(1) to(doQsRestartPerSecond) during(rampUpSeconds),
        constantUsersPerSec(doQsRestartPerSecond) during(durationSeconds),
        rampUsersPerSec(doQsRestartPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndoQsStart = scenario("doQsStartSimulation")
        .feed(doQsStartPATHFeeder)
        .exec(http("doQsStart")
        .httpRequest("GET","/qs/${id}/start")
)

    // Run scndoQsStart with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndoQsStart.inject(
        rampUsersPerSec(1) to(doQsStartPerSecond) during(rampUpSeconds),
        constantUsersPerSec(doQsStartPerSecond) during(durationSeconds),
        rampUsersPerSec(doQsStartPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndoQsStop = scenario("doQsStopSimulation")
        .feed(doQsStopPATHFeeder)
        .exec(http("doQsStop")
        .httpRequest("GET","/qs/${id}/stop")
)

    // Run scndoQsStop with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndoQsStop.inject(
        rampUsersPerSec(1) to(doQsStopPerSecond) during(rampUpSeconds),
        constantUsersPerSec(doQsStopPerSecond) during(durationSeconds),
        rampUsersPerSec(doQsStopPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndownloadQsBackup = scenario("downloadQsBackupSimulation")
        .feed(downloadQsBackupQUERYFeeder)
        .feed(downloadQsBackupPATHFeeder)
        .exec(http("downloadQsBackup")
        .httpRequest("PATCH","/qs/${id}/backups")
        .queryParam("all","${all}")
)

    // Run scndownloadQsBackup with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndownloadQsBackup.inject(
        rampUsersPerSec(1) to(downloadQsBackupPerSecond) during(rampUpSeconds),
        constantUsersPerSec(downloadQsBackupPerSecond) during(durationSeconds),
        rampUsersPerSec(downloadQsBackupPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetNewQs = scenario("getNewQsSimulation")
        .exec(http("getNewQs")
        .httpRequest("GET","/qs/order")
)

    // Run scngetNewQs with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetNewQs.inject(
        rampUsersPerSec(1) to(getNewQsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getNewQsPerSecond) during(durationSeconds),
        rampUsersPerSec(getNewQsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetQsBackup = scenario("getQsBackupSimulation")
        .feed(getQsBackupPATHFeeder)
        .exec(http("getQsBackup")
        .httpRequest("GET","/qs/${id}/backup")
)

    // Run scngetQsBackup with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetQsBackup.inject(
        rampUsersPerSec(1) to(getQsBackupPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getQsBackupPerSecond) during(durationSeconds),
        rampUsersPerSec(getQsBackupPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetQsBackups = scenario("getQsBackupsSimulation")
        .feed(getQsBackupsQUERYFeeder)
        .feed(getQsBackupsPATHFeeder)
        .exec(http("getQsBackups")
        .httpRequest("GET","/qs/${id}/backups")
        .queryParam("all","${all}")
)

    // Run scngetQsBackups with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetQsBackups.inject(
        rampUsersPerSec(1) to(getQsBackupsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getQsBackupsPerSecond) during(durationSeconds),
        rampUsersPerSec(getQsBackupsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetQsChangeHostname = scenario("getQsChangeHostnameSimulation")
        .feed(getQsChangeHostnamePATHFeeder)
        .exec(http("getQsChangeHostname")
        .httpRequest("GET","/qs/${id}/change_hostname")
)

    // Run scngetQsChangeHostname with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetQsChangeHostname.inject(
        rampUsersPerSec(1) to(getQsChangeHostnamePerSecond) during(rampUpSeconds),
        constantUsersPerSec(getQsChangeHostnamePerSecond) during(durationSeconds),
        rampUsersPerSec(getQsChangeHostnamePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetQsChangeRootPassword = scenario("getQsChangeRootPasswordSimulation")
        .feed(getQsChangeRootPasswordPATHFeeder)
        .exec(http("getQsChangeRootPassword")
        .httpRequest("GET","/qs/${id}/change_root_password")
)

    // Run scngetQsChangeRootPassword with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetQsChangeRootPassword.inject(
        rampUsersPerSec(1) to(getQsChangeRootPasswordPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getQsChangeRootPasswordPerSecond) during(durationSeconds),
        rampUsersPerSec(getQsChangeRootPasswordPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetQsChangeTimezone = scenario("getQsChangeTimezoneSimulation")
        .feed(getQsChangeTimezonePATHFeeder)
        .exec(http("getQsChangeTimezone")
        .httpRequest("GET","/qs/${id}/change_timezone")
)

    // Run scngetQsChangeTimezone with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetQsChangeTimezone.inject(
        rampUsersPerSec(1) to(getQsChangeTimezonePerSecond) during(rampUpSeconds),
        constantUsersPerSec(getQsChangeTimezonePerSecond) during(durationSeconds),
        rampUsersPerSec(getQsChangeTimezonePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetQsChangeWebuzoPassword = scenario("getQsChangeWebuzoPasswordSimulation")
        .feed(getQsChangeWebuzoPasswordPATHFeeder)
        .exec(http("getQsChangeWebuzoPassword")
        .httpRequest("GET","/qs/${id}/change_webuzo_password")
)

    // Run scngetQsChangeWebuzoPassword with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetQsChangeWebuzoPassword.inject(
        rampUsersPerSec(1) to(getQsChangeWebuzoPasswordPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getQsChangeWebuzoPasswordPerSecond) during(durationSeconds),
        rampUsersPerSec(getQsChangeWebuzoPasswordPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetQsInfo = scenario("getQsInfoSimulation")
        .feed(getQsInfoPATHFeeder)
        .exec(http("getQsInfo")
        .httpRequest("GET","/qs/${id}")
)

    // Run scngetQsInfo with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetQsInfo.inject(
        rampUsersPerSec(1) to(getQsInfoPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getQsInfoPerSecond) during(durationSeconds),
        rampUsersPerSec(getQsInfoPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetQsInsertCd = scenario("getQsInsertCdSimulation")
        .feed(getQsInsertCdPATHFeeder)
        .exec(http("getQsInsertCd")
        .httpRequest("GET","/qs/${id}/insert_cd")
)

    // Run scngetQsInsertCd with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetQsInsertCd.inject(
        rampUsersPerSec(1) to(getQsInsertCdPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getQsInsertCdPerSecond) during(durationSeconds),
        rampUsersPerSec(getQsInsertCdPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetQsInvoices = scenario("getQsInvoicesSimulation")
        .feed(getQsInvoicesPATHFeeder)
        .exec(http("getQsInvoices")
        .httpRequest("GET","/qs/${id}/invoices")
)

    // Run scngetQsInvoices with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetQsInvoices.inject(
        rampUsersPerSec(1) to(getQsInvoicesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getQsInvoicesPerSecond) during(durationSeconds),
        rampUsersPerSec(getQsInvoicesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetQsList = scenario("getQsListSimulation")
        .exec(http("getQsList")
        .httpRequest("GET","/qs")
)

    // Run scngetQsList with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetQsList.inject(
        rampUsersPerSec(1) to(getQsListPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getQsListPerSecond) during(durationSeconds),
        rampUsersPerSec(getQsListPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetQsReinstallOs = scenario("getQsReinstallOsSimulation")
        .feed(getQsReinstallOsPATHFeeder)
        .exec(http("getQsReinstallOs")
        .httpRequest("GET","/qs/${id}/reinstall_os")
)

    // Run scngetQsReinstallOs with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetQsReinstallOs.inject(
        rampUsersPerSec(1) to(getQsReinstallOsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getQsReinstallOsPerSecond) during(durationSeconds),
        rampUsersPerSec(getQsReinstallOsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetQsResetPassword = scenario("getQsResetPasswordSimulation")
        .feed(getQsResetPasswordPATHFeeder)
        .exec(http("getQsResetPassword")
        .httpRequest("GET","/qs/${id}/reset_password")
)

    // Run scngetQsResetPassword with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetQsResetPassword.inject(
        rampUsersPerSec(1) to(getQsResetPasswordPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getQsResetPasswordPerSecond) during(durationSeconds),
        rampUsersPerSec(getQsResetPasswordPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetQsReverseDns = scenario("getQsReverseDnsSimulation")
        .feed(getQsReverseDnsPATHFeeder)
        .exec(http("getQsReverseDns")
        .httpRequest("GET","/qs/${id}/reverse_dns")
)

    // Run scngetQsReverseDns with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetQsReverseDns.inject(
        rampUsersPerSec(1) to(getQsReverseDnsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getQsReverseDnsPerSecond) during(durationSeconds),
        rampUsersPerSec(getQsReverseDnsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetQsSetupVnc = scenario("getQsSetupVncSimulation")
        .feed(getQsSetupVncPATHFeeder)
        .exec(http("getQsSetupVnc")
        .httpRequest("GET","/qs/${id}/setup_vnc")
)

    // Run scngetQsSetupVnc with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetQsSetupVnc.inject(
        rampUsersPerSec(1) to(getQsSetupVncPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getQsSetupVncPerSecond) during(durationSeconds),
        rampUsersPerSec(getQsSetupVncPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetQsTrafficUsage = scenario("getQsTrafficUsageSimulation")
        .feed(getQsTrafficUsagePATHFeeder)
        .exec(http("getQsTrafficUsage")
        .httpRequest("GET","/qs/${id}/traffic_usage")
)

    // Run scngetQsTrafficUsage with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetQsTrafficUsage.inject(
        rampUsersPerSec(1) to(getQsTrafficUsagePerSecond) during(rampUpSeconds),
        constantUsersPerSec(getQsTrafficUsagePerSecond) during(durationSeconds),
        rampUsersPerSec(getQsTrafficUsagePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetQsViewDesktop = scenario("getQsViewDesktopSimulation")
        .feed(getQsViewDesktopPATHFeeder)
        .exec(http("getQsViewDesktop")
        .httpRequest("GET","/qs/${id}/view_desktop")
)

    // Run scngetQsViewDesktop with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetQsViewDesktop.inject(
        rampUsersPerSec(1) to(getQsViewDesktopPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getQsViewDesktopPerSecond) during(durationSeconds),
        rampUsersPerSec(getQsViewDesktopPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetQsWelcomeEmail = scenario("getQsWelcomeEmailSimulation")
        .feed(getQsWelcomeEmailPATHFeeder)
        .exec(http("getQsWelcomeEmail")
        .httpRequest("GET","/qs/${id}/welcome_email")
)

    // Run scngetQsWelcomeEmail with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetQsWelcomeEmail.inject(
        rampUsersPerSec(1) to(getQsWelcomeEmailPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getQsWelcomeEmailPerSecond) during(durationSeconds),
        rampUsersPerSec(getQsWelcomeEmailPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostQsChangeHostname = scenario("postQsChangeHostnameSimulation")
        .feed(postQsChangeHostnamePATHFeeder)
        .exec(http("postQsChangeHostname")
        .httpRequest("POST","/qs/${id}/change_hostname")
)

    // Run scnpostQsChangeHostname with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostQsChangeHostname.inject(
        rampUsersPerSec(1) to(postQsChangeHostnamePerSecond) during(rampUpSeconds),
        constantUsersPerSec(postQsChangeHostnamePerSecond) during(durationSeconds),
        rampUsersPerSec(postQsChangeHostnamePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostQsChangeRootPassword = scenario("postQsChangeRootPasswordSimulation")
        .feed(postQsChangeRootPasswordPATHFeeder)
        .exec(http("postQsChangeRootPassword")
        .httpRequest("POST","/qs/${id}/change_root_password")
)

    // Run scnpostQsChangeRootPassword with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostQsChangeRootPassword.inject(
        rampUsersPerSec(1) to(postQsChangeRootPasswordPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postQsChangeRootPasswordPerSecond) during(durationSeconds),
        rampUsersPerSec(postQsChangeRootPasswordPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostQsChangeTimezone = scenario("postQsChangeTimezoneSimulation")
        .feed(postQsChangeTimezonePATHFeeder)
        .exec(http("postQsChangeTimezone")
        .httpRequest("POST","/qs/${id}/change_timezone")
)

    // Run scnpostQsChangeTimezone with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostQsChangeTimezone.inject(
        rampUsersPerSec(1) to(postQsChangeTimezonePerSecond) during(rampUpSeconds),
        constantUsersPerSec(postQsChangeTimezonePerSecond) during(durationSeconds),
        rampUsersPerSec(postQsChangeTimezonePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostQsChangeWebuzoPassword = scenario("postQsChangeWebuzoPasswordSimulation")
        .feed(postQsChangeWebuzoPasswordPATHFeeder)
        .exec(http("postQsChangeWebuzoPassword")
        .httpRequest("POST","/qs/${id}/change_webuzo_password")
)

    // Run scnpostQsChangeWebuzoPassword with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostQsChangeWebuzoPassword.inject(
        rampUsersPerSec(1) to(postQsChangeWebuzoPasswordPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postQsChangeWebuzoPasswordPerSecond) during(durationSeconds),
        rampUsersPerSec(postQsChangeWebuzoPasswordPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostQsInsertCd = scenario("postQsInsertCdSimulation")
        .feed(postQsInsertCdPATHFeeder)
        .exec(http("postQsInsertCd")
        .httpRequest("POST","/qs/${id}/insert_cd")
)

    // Run scnpostQsInsertCd with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostQsInsertCd.inject(
        rampUsersPerSec(1) to(postQsInsertCdPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postQsInsertCdPerSecond) during(durationSeconds),
        rampUsersPerSec(postQsInsertCdPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostQsReinstallOs = scenario("postQsReinstallOsSimulation")
        .feed(postQsReinstallOsPATHFeeder)
        .exec(http("postQsReinstallOs")
        .httpRequest("POST","/qs/${id}/reinstall_os")
)

    // Run scnpostQsReinstallOs with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostQsReinstallOs.inject(
        rampUsersPerSec(1) to(postQsReinstallOsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postQsReinstallOsPerSecond) during(durationSeconds),
        rampUsersPerSec(postQsReinstallOsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostQsResetPassword = scenario("postQsResetPasswordSimulation")
        .feed(postQsResetPasswordPATHFeeder)
        .exec(http("postQsResetPassword")
        .httpRequest("POST","/qs/${id}/reset_password")
)

    // Run scnpostQsResetPassword with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostQsResetPassword.inject(
        rampUsersPerSec(1) to(postQsResetPasswordPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postQsResetPasswordPerSecond) during(durationSeconds),
        rampUsersPerSec(postQsResetPasswordPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostQsReverseDns = scenario("postQsReverseDnsSimulation")
        .feed(postQsReverseDnsPATHFeeder)
        .exec(http("postQsReverseDns")
        .httpRequest("POST","/qs/${id}/reverse_dns")
)

    // Run scnpostQsReverseDns with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostQsReverseDns.inject(
        rampUsersPerSec(1) to(postQsReverseDnsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postQsReverseDnsPerSecond) during(durationSeconds),
        rampUsersPerSec(postQsReverseDnsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostQsSetupVnc = scenario("postQsSetupVncSimulation")
        .feed(postQsSetupVncPATHFeeder)
        .exec(http("postQsSetupVnc")
        .httpRequest("POST","/qs/${id}/setup_vnc")
)

    // Run scnpostQsSetupVnc with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostQsSetupVnc.inject(
        rampUsersPerSec(1) to(postQsSetupVncPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postQsSetupVncPerSecond) during(durationSeconds),
        rampUsersPerSec(postQsSetupVncPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostQsTrafficUsage = scenario("postQsTrafficUsageSimulation")
        .feed(postQsTrafficUsagePATHFeeder)
        .exec(http("postQsTrafficUsage")
        .httpRequest("POST","/qs/${id}/traffic_usage")
)

    // Run scnpostQsTrafficUsage with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostQsTrafficUsage.inject(
        rampUsersPerSec(1) to(postQsTrafficUsagePerSecond) during(rampUpSeconds),
        constantUsersPerSec(postQsTrafficUsagePerSecond) during(durationSeconds),
        rampUsersPerSec(postQsTrafficUsagePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostQsViewDesktop = scenario("postQsViewDesktopSimulation")
        .feed(postQsViewDesktopPATHFeeder)
        .exec(http("postQsViewDesktop")
        .httpRequest("POST","/qs/${id}/view_desktop")
)

    // Run scnpostQsViewDesktop with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostQsViewDesktop.inject(
        rampUsersPerSec(1) to(postQsViewDesktopPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postQsViewDesktopPerSecond) during(durationSeconds),
        rampUsersPerSec(postQsViewDesktopPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostQuickServerRestore = scenario("postQuickServerRestoreSimulation")
        .feed(postQuickServerRestorePATHFeeder)
        .exec(http("postQuickServerRestore")
        .httpRequest("POST","/qs/${id}/restore")
)

    // Run scnpostQuickServerRestore with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostQuickServerRestore.inject(
        rampUsersPerSec(1) to(postQuickServerRestorePerSecond) during(rampUpSeconds),
        constantUsersPerSec(postQuickServerRestorePerSecond) during(durationSeconds),
        rampUsersPerSec(postQuickServerRestorePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnputQs = scenario("putQsSimulation")
        .exec(http("putQs")
        .httpRequest("PUT","/qs/order")
)

    // Run scnputQs with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnputQs.inject(
        rampUsersPerSec(1) to(putQsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(putQsPerSecond) during(durationSeconds),
        rampUsersPerSec(putQsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnquickserversCancel = scenario("quickserversCancelSimulation")
        .feed(quickserversCancelPATHFeeder)
        .exec(http("quickserversCancel")
        .httpRequest("DELETE","/qs/${id}")
)

    // Run scnquickserversCancel with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnquickserversCancel.inject(
        rampUsersPerSec(1) to(quickserversCancelPerSecond) during(rampUpSeconds),
        constantUsersPerSec(quickserversCancelPerSecond) during(durationSeconds),
        rampUsersPerSec(quickserversCancelPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateQsInfo = scenario("updateQsInfoSimulation")
        .feed(updateQsInfoPATHFeeder)
        .exec(http("updateQsInfo")
        .httpRequest("POST","/qs/${id}")
)

    // Run scnupdateQsInfo with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateQsInfo.inject(
        rampUsersPerSec(1) to(updateQsInfoPerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateQsInfoPerSecond) during(durationSeconds),
        rampUsersPerSec(updateQsInfoPerSecond) to(1) during(rampDownSeconds)
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
