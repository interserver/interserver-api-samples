package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import io.swagger.model.InlineResponse2006;
import io.swagger.model.InlineResponse2007;
import io.swagger.model.InlineResponse2008;
import io.swagger.model.InlineResponse401;
import io.swagger.model.OauthBody;
import io.swagger.model.OauthBody2;

import java.util.List;
import java.util.Map;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;


public interface OauthApiService {
      Response getOauthRedirect(String provider,SecurityContext securityContext) throws NotFoundException;
      Response patchOauthTwoFactor(OauthBody2 body,SecurityContext securityContext) throws NotFoundException;
      Response patchOauthTwoFactor(Integer accountId,String code,SecurityContext securityContext) throws NotFoundException;
      Response postOauthCallback(String provider,OauthBody body,SecurityContext securityContext) throws NotFoundException;
      Response postOauthCallback(String provider,String provider2,SecurityContext securityContext) throws NotFoundException;
}
