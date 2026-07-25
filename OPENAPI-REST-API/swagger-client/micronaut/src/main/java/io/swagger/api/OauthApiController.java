package io.swagger.api;

import io.swagger.model.InlineResponse2006;

import io.swagger.model.InlineResponse2007;

import io.swagger.model.InlineResponse2008;

import io.swagger.model.InlineResponse401;

import io.swagger.model.OauthBody;

import io.swagger.model.OauthBody2;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.HttpResponse;
import io.reactivex.rxjava3.core.Single;

import javax.annotation.Nullable;
import javax.validation.Valid;
import javax.validation.constraints.*;
import java.util.List;
import java.util.Map;

@Controller
public class OauthApiController implements OauthApi {

    @Override
    public Single<HttpResponse<InlineResponse2006>> getOauthRedirect(@NotNull String provider) {
        // TODO: Implement me
        return OauthApi.super.getOauthRedirect(provider);
    }

    @Override
    public Single<HttpResponse<InlineResponse2008>> patchOauthTwoFactor(@NotNull @Valid OauthBody2 body) {
        // TODO: Implement me
        return OauthApi.super.patchOauthTwoFactor(body);
    }

    @Override
    public Single<HttpResponse<InlineResponse2008>> patchOauthTwoFactor(@NotNull Integer accountId, @NotNull String code) {
        // TODO: Implement me
        return OauthApi.super.patchOauthTwoFactor(accountId, code);
    }

    @Override
    public Single<HttpResponse<InlineResponse2007>> postOauthCallback(@NotNull String provider, @Nullable @Valid OauthBody body) {
        // TODO: Implement me
        return OauthApi.super.postOauthCallback(provider, body);
    }

    @Override
    public Single<HttpResponse<InlineResponse2007>> postOauthCallback(@NotNull String provider, @Nullable String provider2) {
        // TODO: Implement me
        return OauthApi.super.postOauthCallback(provider, provider2);
    }
}
