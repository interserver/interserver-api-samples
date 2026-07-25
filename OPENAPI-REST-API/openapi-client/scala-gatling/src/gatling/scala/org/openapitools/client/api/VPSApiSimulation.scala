package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class VPSApiSimulation extends Simulation {

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
    val addVpsPerSecond = config.getDouble("performance.operationsPerSecond.addVps") * rateMultiplier * instanceMultiplier
    val deleteVpsBackupPerSecond = config.getDouble("performance.operationsPerSecond.deleteVpsBackup") * rateMultiplier * instanceMultiplier
    val doVpsBlockSmtpPerSecond = config.getDouble("performance.operationsPerSecond.doVpsBlockSmtp") * rateMultiplier * instanceMultiplier
    val doVpsDisableCdPerSecond = config.getDouble("performance.operationsPerSecond.doVpsDisableCd") * rateMultiplier * instanceMultiplier
    val doVpsDisableQuotaPerSecond = config.getDouble("performance.operationsPerSecond.doVpsDisableQuota") * rateMultiplier * instanceMultiplier
    val doVpsEjectCdPerSecond = config.getDouble("performance.operationsPerSecond.doVpsEjectCd") * rateMultiplier * instanceMultiplier
    val doVpsEnableQuotaPerSecond = config.getDouble("performance.operationsPerSecond.doVpsEnableQuota") * rateMultiplier * instanceMultiplier
    val doVpsRestartPerSecond = config.getDouble("performance.operationsPerSecond.doVpsRestart") * rateMultiplier * instanceMultiplier
    val doVpsStartPerSecond = config.getDouble("performance.operationsPerSecond.doVpsStart") * rateMultiplier * instanceMultiplier
    val doVpsStopPerSecond = config.getDouble("performance.operationsPerSecond.doVpsStop") * rateMultiplier * instanceMultiplier
    val downloadVpsBackupPerSecond = config.getDouble("performance.operationsPerSecond.downloadVpsBackup") * rateMultiplier * instanceMultiplier
    val getNewVpsPerSecond = config.getDouble("performance.operationsPerSecond.getNewVps") * rateMultiplier * instanceMultiplier
    val getVpsBackupPerSecond = config.getDouble("performance.operationsPerSecond.getVpsBackup") * rateMultiplier * instanceMultiplier
    val getVpsBackupsPerSecond = config.getDouble("performance.operationsPerSecond.getVpsBackups") * rateMultiplier * instanceMultiplier
    val getVpsBuyHdSpacePerSecond = config.getDouble("performance.operationsPerSecond.getVpsBuyHdSpace") * rateMultiplier * instanceMultiplier
    val getVpsBuyIpPerSecond = config.getDouble("performance.operationsPerSecond.getVpsBuyIp") * rateMultiplier * instanceMultiplier
    val getVpsChangeHostnamePerSecond = config.getDouble("performance.operationsPerSecond.getVpsChangeHostname") * rateMultiplier * instanceMultiplier
    val getVpsChangeRootPasswordPerSecond = config.getDouble("performance.operationsPerSecond.getVpsChangeRootPassword") * rateMultiplier * instanceMultiplier
    val getVpsChangeTimezonePerSecond = config.getDouble("performance.operationsPerSecond.getVpsChangeTimezone") * rateMultiplier * instanceMultiplier
    val getVpsInfoPerSecond = config.getDouble("performance.operationsPerSecond.getVpsInfo") * rateMultiplier * instanceMultiplier
    val getVpsInsertCdPerSecond = config.getDouble("performance.operationsPerSecond.getVpsInsertCd") * rateMultiplier * instanceMultiplier
    val getVpsInvoicesPerSecond = config.getDouble("performance.operationsPerSecond.getVpsInvoices") * rateMultiplier * instanceMultiplier
    val getVpsListPerSecond = config.getDouble("performance.operationsPerSecond.getVpsList") * rateMultiplier * instanceMultiplier
    val getVpsReinstallOsPerSecond = config.getDouble("performance.operationsPerSecond.getVpsReinstallOs") * rateMultiplier * instanceMultiplier
    val getVpsResetPasswordPerSecond = config.getDouble("performance.operationsPerSecond.getVpsResetPassword") * rateMultiplier * instanceMultiplier
    val getVpsReverseDnsPerSecond = config.getDouble("performance.operationsPerSecond.getVpsReverseDns") * rateMultiplier * instanceMultiplier
    val getVpsSetupVncPerSecond = config.getDouble("performance.operationsPerSecond.getVpsSetupVnc") * rateMultiplier * instanceMultiplier
    val getVpsSlicesPerSecond = config.getDouble("performance.operationsPerSecond.getVpsSlices") * rateMultiplier * instanceMultiplier
    val getVpsTrafficUsagePerSecond = config.getDouble("performance.operationsPerSecond.getVpsTrafficUsage") * rateMultiplier * instanceMultiplier
    val getVpsViewDesktopPerSecond = config.getDouble("performance.operationsPerSecond.getVpsViewDesktop") * rateMultiplier * instanceMultiplier
    val getVpsWelcomeEmailPerSecond = config.getDouble("performance.operationsPerSecond.getVpsWelcomeEmail") * rateMultiplier * instanceMultiplier
    val postVpsBuyHdSpacePerSecond = config.getDouble("performance.operationsPerSecond.postVpsBuyHdSpace") * rateMultiplier * instanceMultiplier
    val postVpsBuyIpPerSecond = config.getDouble("performance.operationsPerSecond.postVpsBuyIp") * rateMultiplier * instanceMultiplier
    val postVpsChangeHostnamePerSecond = config.getDouble("performance.operationsPerSecond.postVpsChangeHostname") * rateMultiplier * instanceMultiplier
    val postVpsChangeRootPasswordPerSecond = config.getDouble("performance.operationsPerSecond.postVpsChangeRootPassword") * rateMultiplier * instanceMultiplier
    val postVpsChangeTimezonePerSecond = config.getDouble("performance.operationsPerSecond.postVpsChangeTimezone") * rateMultiplier * instanceMultiplier
    val postVpsChangeWebuzoPasswordPerSecond = config.getDouble("performance.operationsPerSecond.postVpsChangeWebuzoPassword") * rateMultiplier * instanceMultiplier
    val postVpsInsertCdPerSecond = config.getDouble("performance.operationsPerSecond.postVpsInsertCd") * rateMultiplier * instanceMultiplier
    val postVpsReinstallOsPerSecond = config.getDouble("performance.operationsPerSecond.postVpsReinstallOs") * rateMultiplier * instanceMultiplier
    val postVpsResetPasswordPerSecond = config.getDouble("performance.operationsPerSecond.postVpsResetPassword") * rateMultiplier * instanceMultiplier
    val postVpsRestorePerSecond = config.getDouble("performance.operationsPerSecond.postVpsRestore") * rateMultiplier * instanceMultiplier
    val postVpsReverseDnsPerSecond = config.getDouble("performance.operationsPerSecond.postVpsReverseDns") * rateMultiplier * instanceMultiplier
    val postVpsSetupVncPerSecond = config.getDouble("performance.operationsPerSecond.postVpsSetupVnc") * rateMultiplier * instanceMultiplier
    val postVpsSlicesPerSecond = config.getDouble("performance.operationsPerSecond.postVpsSlices") * rateMultiplier * instanceMultiplier
    val postVpsTrafficUsagePerSecond = config.getDouble("performance.operationsPerSecond.postVpsTrafficUsage") * rateMultiplier * instanceMultiplier
    val postVpsViewDesktopPerSecond = config.getDouble("performance.operationsPerSecond.postVpsViewDesktop") * rateMultiplier * instanceMultiplier
    val putVpsPerSecond = config.getDouble("performance.operationsPerSecond.putVps") * rateMultiplier * instanceMultiplier
    val putVpsBuyHdSpacePerSecond = config.getDouble("performance.operationsPerSecond.putVpsBuyHdSpace") * rateMultiplier * instanceMultiplier
    val updateVpsInfoPerSecond = config.getDouble("performance.operationsPerSecond.updateVpsInfo") * rateMultiplier * instanceMultiplier
    val vPSCancelPerSecond = config.getDouble("performance.operationsPerSecond.vPSCancel") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val deleteVpsBackupQUERYFeeder = csv(userDataDirectory + File.separator + "deleteVpsBackup-queryParams.csv").random
    val deleteVpsBackupPATHFeeder = csv(userDataDirectory + File.separator + "deleteVpsBackup-pathParams.csv").random
    val doVpsBlockSmtpPATHFeeder = csv(userDataDirectory + File.separator + "doVpsBlockSmtp-pathParams.csv").random
    val doVpsDisableCdPATHFeeder = csv(userDataDirectory + File.separator + "doVpsDisableCd-pathParams.csv").random
    val doVpsDisableQuotaPATHFeeder = csv(userDataDirectory + File.separator + "doVpsDisableQuota-pathParams.csv").random
    val doVpsEjectCdPATHFeeder = csv(userDataDirectory + File.separator + "doVpsEjectCd-pathParams.csv").random
    val doVpsEnableQuotaPATHFeeder = csv(userDataDirectory + File.separator + "doVpsEnableQuota-pathParams.csv").random
    val doVpsRestartPATHFeeder = csv(userDataDirectory + File.separator + "doVpsRestart-pathParams.csv").random
    val doVpsStartPATHFeeder = csv(userDataDirectory + File.separator + "doVpsStart-pathParams.csv").random
    val doVpsStopPATHFeeder = csv(userDataDirectory + File.separator + "doVpsStop-pathParams.csv").random
    val downloadVpsBackupQUERYFeeder = csv(userDataDirectory + File.separator + "downloadVpsBackup-queryParams.csv").random
    val downloadVpsBackupPATHFeeder = csv(userDataDirectory + File.separator + "downloadVpsBackup-pathParams.csv").random
    val getVpsBackupPATHFeeder = csv(userDataDirectory + File.separator + "getVpsBackup-pathParams.csv").random
    val getVpsBackupsQUERYFeeder = csv(userDataDirectory + File.separator + "getVpsBackups-queryParams.csv").random
    val getVpsBackupsPATHFeeder = csv(userDataDirectory + File.separator + "getVpsBackups-pathParams.csv").random
    val getVpsBuyHdSpacePATHFeeder = csv(userDataDirectory + File.separator + "getVpsBuyHdSpace-pathParams.csv").random
    val getVpsBuyIpPATHFeeder = csv(userDataDirectory + File.separator + "getVpsBuyIp-pathParams.csv").random
    val getVpsChangeHostnamePATHFeeder = csv(userDataDirectory + File.separator + "getVpsChangeHostname-pathParams.csv").random
    val getVpsChangeRootPasswordPATHFeeder = csv(userDataDirectory + File.separator + "getVpsChangeRootPassword-pathParams.csv").random
    val getVpsChangeTimezonePATHFeeder = csv(userDataDirectory + File.separator + "getVpsChangeTimezone-pathParams.csv").random
    val getVpsInfoPATHFeeder = csv(userDataDirectory + File.separator + "getVpsInfo-pathParams.csv").random
    val getVpsInsertCdPATHFeeder = csv(userDataDirectory + File.separator + "getVpsInsertCd-pathParams.csv").random
    val getVpsInvoicesPATHFeeder = csv(userDataDirectory + File.separator + "getVpsInvoices-pathParams.csv").random
    val getVpsReinstallOsPATHFeeder = csv(userDataDirectory + File.separator + "getVpsReinstallOs-pathParams.csv").random
    val getVpsResetPasswordPATHFeeder = csv(userDataDirectory + File.separator + "getVpsResetPassword-pathParams.csv").random
    val getVpsReverseDnsPATHFeeder = csv(userDataDirectory + File.separator + "getVpsReverseDns-pathParams.csv").random
    val getVpsSetupVncPATHFeeder = csv(userDataDirectory + File.separator + "getVpsSetupVnc-pathParams.csv").random
    val getVpsSlicesPATHFeeder = csv(userDataDirectory + File.separator + "getVpsSlices-pathParams.csv").random
    val getVpsTrafficUsagePATHFeeder = csv(userDataDirectory + File.separator + "getVpsTrafficUsage-pathParams.csv").random
    val getVpsViewDesktopPATHFeeder = csv(userDataDirectory + File.separator + "getVpsViewDesktop-pathParams.csv").random
    val getVpsWelcomeEmailPATHFeeder = csv(userDataDirectory + File.separator + "getVpsWelcomeEmail-pathParams.csv").random
    val postVpsBuyHdSpacePATHFeeder = csv(userDataDirectory + File.separator + "postVpsBuyHdSpace-pathParams.csv").random
    val postVpsBuyIpPATHFeeder = csv(userDataDirectory + File.separator + "postVpsBuyIp-pathParams.csv").random
    val postVpsChangeHostnamePATHFeeder = csv(userDataDirectory + File.separator + "postVpsChangeHostname-pathParams.csv").random
    val postVpsChangeRootPasswordPATHFeeder = csv(userDataDirectory + File.separator + "postVpsChangeRootPassword-pathParams.csv").random
    val postVpsChangeTimezonePATHFeeder = csv(userDataDirectory + File.separator + "postVpsChangeTimezone-pathParams.csv").random
    val postVpsChangeWebuzoPasswordPATHFeeder = csv(userDataDirectory + File.separator + "postVpsChangeWebuzoPassword-pathParams.csv").random
    val postVpsInsertCdPATHFeeder = csv(userDataDirectory + File.separator + "postVpsInsertCd-pathParams.csv").random
    val postVpsReinstallOsPATHFeeder = csv(userDataDirectory + File.separator + "postVpsReinstallOs-pathParams.csv").random
    val postVpsResetPasswordPATHFeeder = csv(userDataDirectory + File.separator + "postVpsResetPassword-pathParams.csv").random
    val postVpsRestorePATHFeeder = csv(userDataDirectory + File.separator + "postVpsRestore-pathParams.csv").random
    val postVpsReverseDnsPATHFeeder = csv(userDataDirectory + File.separator + "postVpsReverseDns-pathParams.csv").random
    val postVpsSetupVncPATHFeeder = csv(userDataDirectory + File.separator + "postVpsSetupVnc-pathParams.csv").random
    val postVpsSlicesPATHFeeder = csv(userDataDirectory + File.separator + "postVpsSlices-pathParams.csv").random
    val postVpsTrafficUsagePATHFeeder = csv(userDataDirectory + File.separator + "postVpsTrafficUsage-pathParams.csv").random
    val postVpsViewDesktopPATHFeeder = csv(userDataDirectory + File.separator + "postVpsViewDesktop-pathParams.csv").random
    val putVpsBuyHdSpacePATHFeeder = csv(userDataDirectory + File.separator + "putVpsBuyHdSpace-pathParams.csv").random
    val updateVpsInfoPATHFeeder = csv(userDataDirectory + File.separator + "updateVpsInfo-pathParams.csv").random
    val VPSCancelPATHFeeder = csv(userDataDirectory + File.separator + "vPSCancel-pathParams.csv").random

    // Setup all scenarios

    
    val scnaddVps = scenario("addVpsSimulation")
        .exec(http("addVps")
        .httpRequest("POST","/vps/order")
)

    // Run scnaddVps with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnaddVps.inject(
        rampUsersPerSec(1) to(addVpsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(addVpsPerSecond) during(durationSeconds),
        rampUsersPerSec(addVpsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndeleteVpsBackup = scenario("deleteVpsBackupSimulation")
        .feed(deleteVpsBackupQUERYFeeder)
        .feed(deleteVpsBackupPATHFeeder)
        .exec(http("deleteVpsBackup")
        .httpRequest("DELETE","/vps/${id}/backups")
        .queryParam("file","${file}")
        .queryParam("all","${all}")
)

    // Run scndeleteVpsBackup with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndeleteVpsBackup.inject(
        rampUsersPerSec(1) to(deleteVpsBackupPerSecond) during(rampUpSeconds),
        constantUsersPerSec(deleteVpsBackupPerSecond) during(durationSeconds),
        rampUsersPerSec(deleteVpsBackupPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndoVpsBlockSmtp = scenario("doVpsBlockSmtpSimulation")
        .feed(doVpsBlockSmtpPATHFeeder)
        .exec(http("doVpsBlockSmtp")
        .httpRequest("GET","/vps/${id}/block_smtp")
)

    // Run scndoVpsBlockSmtp with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndoVpsBlockSmtp.inject(
        rampUsersPerSec(1) to(doVpsBlockSmtpPerSecond) during(rampUpSeconds),
        constantUsersPerSec(doVpsBlockSmtpPerSecond) during(durationSeconds),
        rampUsersPerSec(doVpsBlockSmtpPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndoVpsDisableCd = scenario("doVpsDisableCdSimulation")
        .feed(doVpsDisableCdPATHFeeder)
        .exec(http("doVpsDisableCd")
        .httpRequest("GET","/vps/${id}/disable_cd")
)

    // Run scndoVpsDisableCd with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndoVpsDisableCd.inject(
        rampUsersPerSec(1) to(doVpsDisableCdPerSecond) during(rampUpSeconds),
        constantUsersPerSec(doVpsDisableCdPerSecond) during(durationSeconds),
        rampUsersPerSec(doVpsDisableCdPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndoVpsDisableQuota = scenario("doVpsDisableQuotaSimulation")
        .feed(doVpsDisableQuotaPATHFeeder)
        .exec(http("doVpsDisableQuota")
        .httpRequest("GET","/vps/${id}/disable_quota")
)

    // Run scndoVpsDisableQuota with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndoVpsDisableQuota.inject(
        rampUsersPerSec(1) to(doVpsDisableQuotaPerSecond) during(rampUpSeconds),
        constantUsersPerSec(doVpsDisableQuotaPerSecond) during(durationSeconds),
        rampUsersPerSec(doVpsDisableQuotaPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndoVpsEjectCd = scenario("doVpsEjectCdSimulation")
        .feed(doVpsEjectCdPATHFeeder)
        .exec(http("doVpsEjectCd")
        .httpRequest("GET","/vps/${id}/eject_cd")
)

    // Run scndoVpsEjectCd with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndoVpsEjectCd.inject(
        rampUsersPerSec(1) to(doVpsEjectCdPerSecond) during(rampUpSeconds),
        constantUsersPerSec(doVpsEjectCdPerSecond) during(durationSeconds),
        rampUsersPerSec(doVpsEjectCdPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndoVpsEnableQuota = scenario("doVpsEnableQuotaSimulation")
        .feed(doVpsEnableQuotaPATHFeeder)
        .exec(http("doVpsEnableQuota")
        .httpRequest("GET","/vps/${id}/enable_quota")
)

    // Run scndoVpsEnableQuota with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndoVpsEnableQuota.inject(
        rampUsersPerSec(1) to(doVpsEnableQuotaPerSecond) during(rampUpSeconds),
        constantUsersPerSec(doVpsEnableQuotaPerSecond) during(durationSeconds),
        rampUsersPerSec(doVpsEnableQuotaPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndoVpsRestart = scenario("doVpsRestartSimulation")
        .feed(doVpsRestartPATHFeeder)
        .exec(http("doVpsRestart")
        .httpRequest("GET","/vps/${id}/restart")
)

    // Run scndoVpsRestart with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndoVpsRestart.inject(
        rampUsersPerSec(1) to(doVpsRestartPerSecond) during(rampUpSeconds),
        constantUsersPerSec(doVpsRestartPerSecond) during(durationSeconds),
        rampUsersPerSec(doVpsRestartPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndoVpsStart = scenario("doVpsStartSimulation")
        .feed(doVpsStartPATHFeeder)
        .exec(http("doVpsStart")
        .httpRequest("GET","/vps/${id}/start")
)

    // Run scndoVpsStart with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndoVpsStart.inject(
        rampUsersPerSec(1) to(doVpsStartPerSecond) during(rampUpSeconds),
        constantUsersPerSec(doVpsStartPerSecond) during(durationSeconds),
        rampUsersPerSec(doVpsStartPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndoVpsStop = scenario("doVpsStopSimulation")
        .feed(doVpsStopPATHFeeder)
        .exec(http("doVpsStop")
        .httpRequest("GET","/vps/${id}/stop")
)

    // Run scndoVpsStop with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndoVpsStop.inject(
        rampUsersPerSec(1) to(doVpsStopPerSecond) during(rampUpSeconds),
        constantUsersPerSec(doVpsStopPerSecond) during(durationSeconds),
        rampUsersPerSec(doVpsStopPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndownloadVpsBackup = scenario("downloadVpsBackupSimulation")
        .feed(downloadVpsBackupQUERYFeeder)
        .feed(downloadVpsBackupPATHFeeder)
        .exec(http("downloadVpsBackup")
        .httpRequest("PATCH","/vps/${id}/backups")
        .queryParam("all","${all}")
)

    // Run scndownloadVpsBackup with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndownloadVpsBackup.inject(
        rampUsersPerSec(1) to(downloadVpsBackupPerSecond) during(rampUpSeconds),
        constantUsersPerSec(downloadVpsBackupPerSecond) during(durationSeconds),
        rampUsersPerSec(downloadVpsBackupPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetNewVps = scenario("getNewVpsSimulation")
        .exec(http("getNewVps")
        .httpRequest("GET","/vps/order")
)

    // Run scngetNewVps with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetNewVps.inject(
        rampUsersPerSec(1) to(getNewVpsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getNewVpsPerSecond) during(durationSeconds),
        rampUsersPerSec(getNewVpsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetVpsBackup = scenario("getVpsBackupSimulation")
        .feed(getVpsBackupPATHFeeder)
        .exec(http("getVpsBackup")
        .httpRequest("GET","/vps/${id}/backup")
)

    // Run scngetVpsBackup with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetVpsBackup.inject(
        rampUsersPerSec(1) to(getVpsBackupPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getVpsBackupPerSecond) during(durationSeconds),
        rampUsersPerSec(getVpsBackupPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetVpsBackups = scenario("getVpsBackupsSimulation")
        .feed(getVpsBackupsQUERYFeeder)
        .feed(getVpsBackupsPATHFeeder)
        .exec(http("getVpsBackups")
        .httpRequest("GET","/vps/${id}/backups")
        .queryParam("all","${all}")
)

    // Run scngetVpsBackups with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetVpsBackups.inject(
        rampUsersPerSec(1) to(getVpsBackupsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getVpsBackupsPerSecond) during(durationSeconds),
        rampUsersPerSec(getVpsBackupsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetVpsBuyHdSpace = scenario("getVpsBuyHdSpaceSimulation")
        .feed(getVpsBuyHdSpacePATHFeeder)
        .exec(http("getVpsBuyHdSpace")
        .httpRequest("GET","/vps/${id}/buy_hd_space")
)

    // Run scngetVpsBuyHdSpace with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetVpsBuyHdSpace.inject(
        rampUsersPerSec(1) to(getVpsBuyHdSpacePerSecond) during(rampUpSeconds),
        constantUsersPerSec(getVpsBuyHdSpacePerSecond) during(durationSeconds),
        rampUsersPerSec(getVpsBuyHdSpacePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetVpsBuyIp = scenario("getVpsBuyIpSimulation")
        .feed(getVpsBuyIpPATHFeeder)
        .exec(http("getVpsBuyIp")
        .httpRequest("GET","/vps/${id}/buy_ip")
)

    // Run scngetVpsBuyIp with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetVpsBuyIp.inject(
        rampUsersPerSec(1) to(getVpsBuyIpPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getVpsBuyIpPerSecond) during(durationSeconds),
        rampUsersPerSec(getVpsBuyIpPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetVpsChangeHostname = scenario("getVpsChangeHostnameSimulation")
        .feed(getVpsChangeHostnamePATHFeeder)
        .exec(http("getVpsChangeHostname")
        .httpRequest("GET","/vps/${id}/change_hostname")
)

    // Run scngetVpsChangeHostname with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetVpsChangeHostname.inject(
        rampUsersPerSec(1) to(getVpsChangeHostnamePerSecond) during(rampUpSeconds),
        constantUsersPerSec(getVpsChangeHostnamePerSecond) during(durationSeconds),
        rampUsersPerSec(getVpsChangeHostnamePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetVpsChangeRootPassword = scenario("getVpsChangeRootPasswordSimulation")
        .feed(getVpsChangeRootPasswordPATHFeeder)
        .exec(http("getVpsChangeRootPassword")
        .httpRequest("GET","/vps/${id}/change_root_password")
)

    // Run scngetVpsChangeRootPassword with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetVpsChangeRootPassword.inject(
        rampUsersPerSec(1) to(getVpsChangeRootPasswordPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getVpsChangeRootPasswordPerSecond) during(durationSeconds),
        rampUsersPerSec(getVpsChangeRootPasswordPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetVpsChangeTimezone = scenario("getVpsChangeTimezoneSimulation")
        .feed(getVpsChangeTimezonePATHFeeder)
        .exec(http("getVpsChangeTimezone")
        .httpRequest("GET","/vps/${id}/change_timezone")
)

    // Run scngetVpsChangeTimezone with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetVpsChangeTimezone.inject(
        rampUsersPerSec(1) to(getVpsChangeTimezonePerSecond) during(rampUpSeconds),
        constantUsersPerSec(getVpsChangeTimezonePerSecond) during(durationSeconds),
        rampUsersPerSec(getVpsChangeTimezonePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetVpsInfo = scenario("getVpsInfoSimulation")
        .feed(getVpsInfoPATHFeeder)
        .exec(http("getVpsInfo")
        .httpRequest("GET","/vps/${id}")
)

    // Run scngetVpsInfo with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetVpsInfo.inject(
        rampUsersPerSec(1) to(getVpsInfoPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getVpsInfoPerSecond) during(durationSeconds),
        rampUsersPerSec(getVpsInfoPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetVpsInsertCd = scenario("getVpsInsertCdSimulation")
        .feed(getVpsInsertCdPATHFeeder)
        .exec(http("getVpsInsertCd")
        .httpRequest("GET","/vps/${id}/insert_cd")
)

    // Run scngetVpsInsertCd with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetVpsInsertCd.inject(
        rampUsersPerSec(1) to(getVpsInsertCdPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getVpsInsertCdPerSecond) during(durationSeconds),
        rampUsersPerSec(getVpsInsertCdPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetVpsInvoices = scenario("getVpsInvoicesSimulation")
        .feed(getVpsInvoicesPATHFeeder)
        .exec(http("getVpsInvoices")
        .httpRequest("GET","/vps/${id}/invoices")
)

    // Run scngetVpsInvoices with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetVpsInvoices.inject(
        rampUsersPerSec(1) to(getVpsInvoicesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getVpsInvoicesPerSecond) during(durationSeconds),
        rampUsersPerSec(getVpsInvoicesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetVpsList = scenario("getVpsListSimulation")
        .exec(http("getVpsList")
        .httpRequest("GET","/vps")
)

    // Run scngetVpsList with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetVpsList.inject(
        rampUsersPerSec(1) to(getVpsListPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getVpsListPerSecond) during(durationSeconds),
        rampUsersPerSec(getVpsListPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetVpsReinstallOs = scenario("getVpsReinstallOsSimulation")
        .feed(getVpsReinstallOsPATHFeeder)
        .exec(http("getVpsReinstallOs")
        .httpRequest("GET","/vps/${id}/reinstall_os")
)

    // Run scngetVpsReinstallOs with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetVpsReinstallOs.inject(
        rampUsersPerSec(1) to(getVpsReinstallOsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getVpsReinstallOsPerSecond) during(durationSeconds),
        rampUsersPerSec(getVpsReinstallOsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetVpsResetPassword = scenario("getVpsResetPasswordSimulation")
        .feed(getVpsResetPasswordPATHFeeder)
        .exec(http("getVpsResetPassword")
        .httpRequest("GET","/vps/${id}/reset_password")
)

    // Run scngetVpsResetPassword with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetVpsResetPassword.inject(
        rampUsersPerSec(1) to(getVpsResetPasswordPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getVpsResetPasswordPerSecond) during(durationSeconds),
        rampUsersPerSec(getVpsResetPasswordPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetVpsReverseDns = scenario("getVpsReverseDnsSimulation")
        .feed(getVpsReverseDnsPATHFeeder)
        .exec(http("getVpsReverseDns")
        .httpRequest("GET","/vps/${id}/reverse_dns")
)

    // Run scngetVpsReverseDns with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetVpsReverseDns.inject(
        rampUsersPerSec(1) to(getVpsReverseDnsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getVpsReverseDnsPerSecond) during(durationSeconds),
        rampUsersPerSec(getVpsReverseDnsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetVpsSetupVnc = scenario("getVpsSetupVncSimulation")
        .feed(getVpsSetupVncPATHFeeder)
        .exec(http("getVpsSetupVnc")
        .httpRequest("GET","/vps/${id}/setup_vnc")
)

    // Run scngetVpsSetupVnc with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetVpsSetupVnc.inject(
        rampUsersPerSec(1) to(getVpsSetupVncPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getVpsSetupVncPerSecond) during(durationSeconds),
        rampUsersPerSec(getVpsSetupVncPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetVpsSlices = scenario("getVpsSlicesSimulation")
        .feed(getVpsSlicesPATHFeeder)
        .exec(http("getVpsSlices")
        .httpRequest("GET","/vps/${id}/slices")
)

    // Run scngetVpsSlices with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetVpsSlices.inject(
        rampUsersPerSec(1) to(getVpsSlicesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getVpsSlicesPerSecond) during(durationSeconds),
        rampUsersPerSec(getVpsSlicesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetVpsTrafficUsage = scenario("getVpsTrafficUsageSimulation")
        .feed(getVpsTrafficUsagePATHFeeder)
        .exec(http("getVpsTrafficUsage")
        .httpRequest("GET","/vps/${id}/traffic_usage")
)

    // Run scngetVpsTrafficUsage with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetVpsTrafficUsage.inject(
        rampUsersPerSec(1) to(getVpsTrafficUsagePerSecond) during(rampUpSeconds),
        constantUsersPerSec(getVpsTrafficUsagePerSecond) during(durationSeconds),
        rampUsersPerSec(getVpsTrafficUsagePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetVpsViewDesktop = scenario("getVpsViewDesktopSimulation")
        .feed(getVpsViewDesktopPATHFeeder)
        .exec(http("getVpsViewDesktop")
        .httpRequest("GET","/vps/${id}/view_desktop")
)

    // Run scngetVpsViewDesktop with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetVpsViewDesktop.inject(
        rampUsersPerSec(1) to(getVpsViewDesktopPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getVpsViewDesktopPerSecond) during(durationSeconds),
        rampUsersPerSec(getVpsViewDesktopPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetVpsWelcomeEmail = scenario("getVpsWelcomeEmailSimulation")
        .feed(getVpsWelcomeEmailPATHFeeder)
        .exec(http("getVpsWelcomeEmail")
        .httpRequest("GET","/vps/${id}/welcome_email")
)

    // Run scngetVpsWelcomeEmail with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetVpsWelcomeEmail.inject(
        rampUsersPerSec(1) to(getVpsWelcomeEmailPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getVpsWelcomeEmailPerSecond) during(durationSeconds),
        rampUsersPerSec(getVpsWelcomeEmailPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostVpsBuyHdSpace = scenario("postVpsBuyHdSpaceSimulation")
        .feed(postVpsBuyHdSpacePATHFeeder)
        .exec(http("postVpsBuyHdSpace")
        .httpRequest("POST","/vps/${id}/buy_hd_space")
)

    // Run scnpostVpsBuyHdSpace with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostVpsBuyHdSpace.inject(
        rampUsersPerSec(1) to(postVpsBuyHdSpacePerSecond) during(rampUpSeconds),
        constantUsersPerSec(postVpsBuyHdSpacePerSecond) during(durationSeconds),
        rampUsersPerSec(postVpsBuyHdSpacePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostVpsBuyIp = scenario("postVpsBuyIpSimulation")
        .feed(postVpsBuyIpPATHFeeder)
        .exec(http("postVpsBuyIp")
        .httpRequest("POST","/vps/${id}/buy_ip")
)

    // Run scnpostVpsBuyIp with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostVpsBuyIp.inject(
        rampUsersPerSec(1) to(postVpsBuyIpPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postVpsBuyIpPerSecond) during(durationSeconds),
        rampUsersPerSec(postVpsBuyIpPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostVpsChangeHostname = scenario("postVpsChangeHostnameSimulation")
        .feed(postVpsChangeHostnamePATHFeeder)
        .exec(http("postVpsChangeHostname")
        .httpRequest("POST","/vps/${id}/change_hostname")
)

    // Run scnpostVpsChangeHostname with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostVpsChangeHostname.inject(
        rampUsersPerSec(1) to(postVpsChangeHostnamePerSecond) during(rampUpSeconds),
        constantUsersPerSec(postVpsChangeHostnamePerSecond) during(durationSeconds),
        rampUsersPerSec(postVpsChangeHostnamePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostVpsChangeRootPassword = scenario("postVpsChangeRootPasswordSimulation")
        .feed(postVpsChangeRootPasswordPATHFeeder)
        .exec(http("postVpsChangeRootPassword")
        .httpRequest("POST","/vps/${id}/change_root_password")
)

    // Run scnpostVpsChangeRootPassword with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostVpsChangeRootPassword.inject(
        rampUsersPerSec(1) to(postVpsChangeRootPasswordPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postVpsChangeRootPasswordPerSecond) during(durationSeconds),
        rampUsersPerSec(postVpsChangeRootPasswordPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostVpsChangeTimezone = scenario("postVpsChangeTimezoneSimulation")
        .feed(postVpsChangeTimezonePATHFeeder)
        .exec(http("postVpsChangeTimezone")
        .httpRequest("POST","/vps/${id}/change_timezone")
)

    // Run scnpostVpsChangeTimezone with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostVpsChangeTimezone.inject(
        rampUsersPerSec(1) to(postVpsChangeTimezonePerSecond) during(rampUpSeconds),
        constantUsersPerSec(postVpsChangeTimezonePerSecond) during(durationSeconds),
        rampUsersPerSec(postVpsChangeTimezonePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostVpsChangeWebuzoPassword = scenario("postVpsChangeWebuzoPasswordSimulation")
        .feed(postVpsChangeWebuzoPasswordPATHFeeder)
        .exec(http("postVpsChangeWebuzoPassword")
        .httpRequest("POST","/vps/${id}/change_webuzo_password")
)

    // Run scnpostVpsChangeWebuzoPassword with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostVpsChangeWebuzoPassword.inject(
        rampUsersPerSec(1) to(postVpsChangeWebuzoPasswordPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postVpsChangeWebuzoPasswordPerSecond) during(durationSeconds),
        rampUsersPerSec(postVpsChangeWebuzoPasswordPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostVpsInsertCd = scenario("postVpsInsertCdSimulation")
        .feed(postVpsInsertCdPATHFeeder)
        .exec(http("postVpsInsertCd")
        .httpRequest("POST","/vps/${id}/insert_cd")
)

    // Run scnpostVpsInsertCd with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostVpsInsertCd.inject(
        rampUsersPerSec(1) to(postVpsInsertCdPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postVpsInsertCdPerSecond) during(durationSeconds),
        rampUsersPerSec(postVpsInsertCdPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostVpsReinstallOs = scenario("postVpsReinstallOsSimulation")
        .feed(postVpsReinstallOsPATHFeeder)
        .exec(http("postVpsReinstallOs")
        .httpRequest("POST","/vps/${id}/reinstall_os")
)

    // Run scnpostVpsReinstallOs with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostVpsReinstallOs.inject(
        rampUsersPerSec(1) to(postVpsReinstallOsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postVpsReinstallOsPerSecond) during(durationSeconds),
        rampUsersPerSec(postVpsReinstallOsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostVpsResetPassword = scenario("postVpsResetPasswordSimulation")
        .feed(postVpsResetPasswordPATHFeeder)
        .exec(http("postVpsResetPassword")
        .httpRequest("POST","/vps/${id}/reset_password")
)

    // Run scnpostVpsResetPassword with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostVpsResetPassword.inject(
        rampUsersPerSec(1) to(postVpsResetPasswordPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postVpsResetPasswordPerSecond) during(durationSeconds),
        rampUsersPerSec(postVpsResetPasswordPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostVpsRestore = scenario("postVpsRestoreSimulation")
        .feed(postVpsRestorePATHFeeder)
        .exec(http("postVpsRestore")
        .httpRequest("POST","/vps/${id}/restore")
)

    // Run scnpostVpsRestore with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostVpsRestore.inject(
        rampUsersPerSec(1) to(postVpsRestorePerSecond) during(rampUpSeconds),
        constantUsersPerSec(postVpsRestorePerSecond) during(durationSeconds),
        rampUsersPerSec(postVpsRestorePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostVpsReverseDns = scenario("postVpsReverseDnsSimulation")
        .feed(postVpsReverseDnsPATHFeeder)
        .exec(http("postVpsReverseDns")
        .httpRequest("POST","/vps/${id}/reverse_dns")
)

    // Run scnpostVpsReverseDns with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostVpsReverseDns.inject(
        rampUsersPerSec(1) to(postVpsReverseDnsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postVpsReverseDnsPerSecond) during(durationSeconds),
        rampUsersPerSec(postVpsReverseDnsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostVpsSetupVnc = scenario("postVpsSetupVncSimulation")
        .feed(postVpsSetupVncPATHFeeder)
        .exec(http("postVpsSetupVnc")
        .httpRequest("POST","/vps/${id}/setup_vnc")
)

    // Run scnpostVpsSetupVnc with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostVpsSetupVnc.inject(
        rampUsersPerSec(1) to(postVpsSetupVncPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postVpsSetupVncPerSecond) during(durationSeconds),
        rampUsersPerSec(postVpsSetupVncPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostVpsSlices = scenario("postVpsSlicesSimulation")
        .feed(postVpsSlicesPATHFeeder)
        .exec(http("postVpsSlices")
        .httpRequest("POST","/vps/${id}/slices")
)

    // Run scnpostVpsSlices with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostVpsSlices.inject(
        rampUsersPerSec(1) to(postVpsSlicesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postVpsSlicesPerSecond) during(durationSeconds),
        rampUsersPerSec(postVpsSlicesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostVpsTrafficUsage = scenario("postVpsTrafficUsageSimulation")
        .feed(postVpsTrafficUsagePATHFeeder)
        .exec(http("postVpsTrafficUsage")
        .httpRequest("POST","/vps/${id}/traffic_usage")
)

    // Run scnpostVpsTrafficUsage with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostVpsTrafficUsage.inject(
        rampUsersPerSec(1) to(postVpsTrafficUsagePerSecond) during(rampUpSeconds),
        constantUsersPerSec(postVpsTrafficUsagePerSecond) during(durationSeconds),
        rampUsersPerSec(postVpsTrafficUsagePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostVpsViewDesktop = scenario("postVpsViewDesktopSimulation")
        .feed(postVpsViewDesktopPATHFeeder)
        .exec(http("postVpsViewDesktop")
        .httpRequest("POST","/vps/${id}/view_desktop")
)

    // Run scnpostVpsViewDesktop with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostVpsViewDesktop.inject(
        rampUsersPerSec(1) to(postVpsViewDesktopPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postVpsViewDesktopPerSecond) during(durationSeconds),
        rampUsersPerSec(postVpsViewDesktopPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnputVps = scenario("putVpsSimulation")
        .exec(http("putVps")
        .httpRequest("PUT","/vps/order")
)

    // Run scnputVps with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnputVps.inject(
        rampUsersPerSec(1) to(putVpsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(putVpsPerSecond) during(durationSeconds),
        rampUsersPerSec(putVpsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnputVpsBuyHdSpace = scenario("putVpsBuyHdSpaceSimulation")
        .feed(putVpsBuyHdSpacePATHFeeder)
        .exec(http("putVpsBuyHdSpace")
        .httpRequest("PUT","/vps/${id}/buy_hd_space")
)

    // Run scnputVpsBuyHdSpace with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnputVpsBuyHdSpace.inject(
        rampUsersPerSec(1) to(putVpsBuyHdSpacePerSecond) during(rampUpSeconds),
        constantUsersPerSec(putVpsBuyHdSpacePerSecond) during(durationSeconds),
        rampUsersPerSec(putVpsBuyHdSpacePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateVpsInfo = scenario("updateVpsInfoSimulation")
        .feed(updateVpsInfoPATHFeeder)
        .exec(http("updateVpsInfo")
        .httpRequest("POST","/vps/${id}")
)

    // Run scnupdateVpsInfo with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateVpsInfo.inject(
        rampUsersPerSec(1) to(updateVpsInfoPerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateVpsInfoPerSecond) during(durationSeconds),
        rampUsersPerSec(updateVpsInfoPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnvPSCancel = scenario("vPSCancelSimulation")
        .feed(VPSCancelPATHFeeder)
        .exec(http("vPSCancel")
        .httpRequest("DELETE","/vps/${id}")
)

    // Run scnvPSCancel with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnvPSCancel.inject(
        rampUsersPerSec(1) to(vPSCancelPerSecond) during(rampUpSeconds),
        constantUsersPerSec(vPSCancelPerSecond) during(durationSeconds),
        rampUsersPerSec(vPSCancelPerSecond) to(1) during(rampDownSeconds)
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
