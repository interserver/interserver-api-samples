package io.swagger.api;

import io.swagger.model.InlineResponse2006;
import io.swagger.model.InlineResponse2007;
import io.swagger.model.InlineResponse2008;
import io.swagger.model.InlineResponse401;
import io.swagger.model.OauthBody;
import io.swagger.model.OauthBody2;

import io.micronaut.http.HttpResponse;
import io.micronaut.http.HttpStatus;
import io.micronaut.test.extensions.junit5.annotation.MicronautTest;
import org.junit.jupiter.api.Test;
import jakarta.inject.Inject;

import java.util.*;

import static org.junit.jupiter.api.Assumptions.assumeTrue;

@MicronautTest
class OauthApiControllerTest {

    @Inject
    private OauthApi api;

    @Test
    void getOauthRedirectTest() {
        String provider = null;
        try {
            //TODO: api.getOauthRedirect(provider).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void patchOauthTwoFactorTest() {
        OauthBody2 body = null;
        try {
            //TODO: api.patchOauthTwoFactor(body).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postOauthCallbackTest() {
        String provider = null;
        OauthBody body = null;
        try {
            //TODO: api.postOauthCallback(provider, body).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

}
