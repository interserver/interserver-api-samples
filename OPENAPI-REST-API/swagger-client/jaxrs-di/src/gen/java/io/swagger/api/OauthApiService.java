package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;

import io.swagger.model.InlineResponse2006;
import io.swagger.model.InlineResponse2007;
import io.swagger.model.InlineResponse2008;
import io.swagger.model.InlineResponse401;
import io.swagger.model.OauthBody;
import io.swagger.model.OauthBody2;

import java.util.Map;
import java.util.List;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.validation.constraints.*;

public interface OauthApiService {
    public Response getOauthRedirect( @NotNull String provider,SecurityContext securityContext);
    public Response patchOauthTwoFactor(OauthBody2 body,SecurityContext securityContext);
    public Response patchOauthTwoFactor(Integer accountId,String code,SecurityContext securityContext);
    public Response postOauthCallback( @NotNull String provider,OauthBody body,SecurityContext securityContext);
    public Response postOauthCallback( @NotNull String provider,String provider2,SecurityContext securityContext);
}
