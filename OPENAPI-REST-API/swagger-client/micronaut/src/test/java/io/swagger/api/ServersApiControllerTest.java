package io.swagger.api;

import io.swagger.model.ChargeInvoiceRows;
import io.swagger.model.InlineResponse20021;
import io.swagger.model.InlineResponse20022;
import io.swagger.model.InlineResponse20029;
import io.swagger.model.InlineResponse401;
import io.swagger.model.OrderBuyNowServerBody;
import io.swagger.model.ReverseDnsEntries;
import io.swagger.model.Server;
import io.swagger.model.ServerBulkIpmiPowerResponse;
import io.swagger.model.ServerIpmiLiveInfo;
import io.swagger.model.ServerIpmiLiveRequest;
import io.swagger.model.ServerIpmiPowerRequest;
import io.swagger.model.ServerOrder;
import io.swagger.model.ServerOrderPostRequest;
import io.swagger.model.ServerRow;
import io.swagger.model.ServersBuyNowError;
import io.swagger.model.ServersBuyNowResponse;
import io.swagger.model.SuccessTextResponse;
import io.swagger.model.TextResponse;

import io.micronaut.http.HttpResponse;
import io.micronaut.http.HttpStatus;
import io.micronaut.test.extensions.junit5.annotation.MicronautTest;
import org.junit.jupiter.api.Test;
import jakarta.inject.Inject;

import java.util.*;

import static org.junit.jupiter.api.Assumptions.assumeTrue;

@MicronautTest
class ServersApiControllerTest {

    @Inject
    private ServersApi api;

    @Test
    void addServerTest() {
        ServerOrderPostRequest body = null;
        try {
            //TODO: api.addServer(body).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void buyItNowServerOrderTest() {
        try {
            //TODO: api.buyItNowServerOrder().blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getNewServerTest() {
        try {
            //TODO: api.getNewServer().blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getServerInfoTest() {
        Integer id = null;
        try {
            //TODO: api.getServerInfo(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getServerInvoicesTest() {
        Integer id = null;
        try {
            //TODO: api.getServerInvoices(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getServerListTest() {
        try {
            //TODO: api.getServerList().blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getServerReverseDnsTest() {
        Integer id = null;
        try {
            //TODO: api.getServerReverseDns(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getServersWelcomeEmailTest() {
        Integer id = null;
        try {
            //TODO: api.getServersWelcomeEmail(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void placeBuyNowServerTest() {
        OrderBuyNowServerBody body = null;
        try {
            //TODO: api.placeBuyNowServer(body).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postServerReverseDnsTest() {
        ReverseDnsEntries body = null;
        Integer id = null;
        try {
            //TODO: api.postServerReverseDns(body, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void serverBulkIpmiPowerGetTest() {
        String ids = null;
        try {
            //TODO: api.serverBulkIpmiPowerGet(ids).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void serverIpmiLiveGetTest() {
        Integer id = null;
        try {
            //TODO: api.serverIpmiLiveGet(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void serverIpmiLivePostFormTest() {
        Integer asset = null;
        String ip = null;
        Integer id = null;
        try {
            //TODO: api.serverIpmiLivePost(asset, ip, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void serverIpmiPowerGetTest() {
        Integer id = null;
        try {
            //TODO: api.serverIpmiPowerGet(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void serverIpmiPowerPostFormTest() {
        Integer asset = null;
        String action = null;
        Integer id = null;
        try {
            //TODO: api.serverIpmiPowerPost(asset, action, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void serversCancelTest() {
        Integer id = null;
        try {
            //TODO: api.serversCancel(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void updateServerInfoTest() {
        String id = null;
        try {
            //TODO: api.updateServerInfo(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

}
