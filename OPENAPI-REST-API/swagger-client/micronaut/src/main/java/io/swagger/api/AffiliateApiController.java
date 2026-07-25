package io.swagger.api;

import io.swagger.model.AffiliateBannerRow;

import io.swagger.model.AffiliateDockSetup;

import io.swagger.model.AffiliatePaymentSetup;

import io.swagger.model.AffiliateTrafficRow;

import io.swagger.model.InlineResponse2001;

import io.swagger.model.InlineResponse401;

import io.swagger.model.MonthlyCounts;

import io.swagger.model.StatusMonthlyBreakdown;

import io.swagger.model.TextResponse;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.HttpResponse;
import io.reactivex.rxjava3.core.Single;

import javax.annotation.Nullable;
import javax.validation.Valid;
import javax.validation.constraints.*;
import java.util.List;
import java.util.Map;

@Controller
public class AffiliateApiController implements AffiliateApi {

    @Override
    public Single<HttpResponse<List<AffiliateBannerRow>>> getAffiliateBanners() {
        // TODO: Implement me
        return AffiliateApi.super.getAffiliateBanners();
    }

    @Override
    public Single<HttpResponse<Void>> getAffiliateDownload(@Nullable String st, @Nullable String ex, @Nullable Integer year) {
        // TODO: Implement me
        return AffiliateApi.super.getAffiliateDownload(st, ex, year);
    }

    @Override
    public Single<HttpResponse<TextResponse>> getAffiliateRichReport() {
        // TODO: Implement me
        return AffiliateApi.super.getAffiliateRichReport();
    }

    @Override
    public Single<HttpResponse<StatusMonthlyBreakdown>> getAffiliateSalesGraph(@Nullable Integer days) {
        // TODO: Implement me
        return AffiliateApi.super.getAffiliateSalesGraph(days);
    }

    @Override
    public Single<HttpResponse<InlineResponse2001>> getAffiliateSignups(@Nullable String st) {
        // TODO: Implement me
        return AffiliateApi.super.getAffiliateSignups(st);
    }

    @Override
    public Single<HttpResponse<MonthlyCounts>> getAffiliateTrafficGraph(@Nullable Integer days) {
        // TODO: Implement me
        return AffiliateApi.super.getAffiliateTrafficGraph(days);
    }

    @Override
    public Single<HttpResponse<List<AffiliateTrafficRow>>> getAffiliateWebTraffic() {
        // TODO: Implement me
        return AffiliateApi.super.getAffiliateWebTraffic();
    }

    @Override
    public Single<HttpResponse<TextResponse>> updateAffiliateDockSetup(@NotNull String affiliateDockTitle, @NotNull String affiliateDockDescription, @NotNull String referrerCoupon) {
        // TODO: Implement me
        return AffiliateApi.super.updateAffiliateDockSetup(affiliateDockTitle, affiliateDockDescription, referrerCoupon);
    }

    @Override
    public Single<HttpResponse<TextResponse>> updateAffiliateDockSetup(@NotNull @Valid AffiliateDockSetup body) {
        // TODO: Implement me
        return AffiliateApi.super.updateAffiliateDockSetup(body);
    }

    @Override
    public Single<HttpResponse<TextResponse>> updateAffiliatePaymentSetup(@NotNull String affiliatePaypal, @NotNull String affiliatePaymentMethod) {
        // TODO: Implement me
        return AffiliateApi.super.updateAffiliatePaymentSetup(affiliatePaypal, affiliatePaymentMethod);
    }

    @Override
    public Single<HttpResponse<TextResponse>> updateAffiliatePaymentSetup(@NotNull @Valid AffiliatePaymentSetup body) {
        // TODO: Implement me
        return AffiliateApi.super.updateAffiliatePaymentSetup(body);
    }
}
