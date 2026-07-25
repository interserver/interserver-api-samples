package io.swagger.api;

import javax.ws.rs.ApplicationPath;
import javax.ws.rs.core.Application;
import javax.servlet.ServletConfig;
import javax.ws.rs.core.Context;

import java.util.Set;
import java.util.HashSet;

import io.swagger.api.impl.AccountApiServiceImpl;
import io.swagger.api.impl.AffiliateApiServiceImpl;
import io.swagger.api.impl.BackupsApiServiceImpl;
import io.swagger.api.impl.BillingApiServiceImpl;
import io.swagger.api.impl.BuyNowServersListApiServiceImpl;
import io.swagger.api.impl.CaptchaApiServiceImpl;
import io.swagger.api.impl.DnsApiServiceImpl;
import io.swagger.api.impl.DomainsApiServiceImpl;
import io.swagger.api.impl.FloatingIpsApiServiceImpl;
import io.swagger.api.impl.HomeApiServiceImpl;
import io.swagger.api.impl.InfoApiServiceImpl;
import io.swagger.api.impl.LicensesApiServiceImpl;
import io.swagger.api.impl.LoginApiServiceImpl;
import io.swagger.api.impl.LogoutApiServiceImpl;
import io.swagger.api.impl.MailApiServiceImpl;
import io.swagger.api.impl.OauthApiServiceImpl;
import io.swagger.api.impl.PingApiServiceImpl;
import io.swagger.api.impl.QsApiServiceImpl;
import io.swagger.api.impl.ScrubIpsApiServiceImpl;
import io.swagger.api.impl.SearchApiServiceImpl;
import io.swagger.api.impl.ServersApiServiceImpl;
import io.swagger.api.impl.SignupApiServiceImpl;
import io.swagger.api.impl.SslApiServiceImpl;
import io.swagger.api.impl.TicketsApiServiceImpl;
import io.swagger.api.impl.VpsApiServiceImpl;
import io.swagger.api.impl.WebsitesApiServiceImpl;

@ApplicationPath("/")
public class RestApplication extends Application {


    public Set<Class<?>> getClasses() {
        Set<Class<?>> resources = new HashSet<Class<?>>();
        resources.add(AccountApiServiceImpl.class);
        resources.add(AffiliateApiServiceImpl.class);
        resources.add(BackupsApiServiceImpl.class);
        resources.add(BillingApiServiceImpl.class);
        resources.add(BuyNowServersListApiServiceImpl.class);
        resources.add(CaptchaApiServiceImpl.class);
        resources.add(DnsApiServiceImpl.class);
        resources.add(DomainsApiServiceImpl.class);
        resources.add(FloatingIpsApiServiceImpl.class);
        resources.add(HomeApiServiceImpl.class);
        resources.add(InfoApiServiceImpl.class);
        resources.add(LicensesApiServiceImpl.class);
        resources.add(LoginApiServiceImpl.class);
        resources.add(LogoutApiServiceImpl.class);
        resources.add(MailApiServiceImpl.class);
        resources.add(OauthApiServiceImpl.class);
        resources.add(PingApiServiceImpl.class);
        resources.add(QsApiServiceImpl.class);
        resources.add(ScrubIpsApiServiceImpl.class);
        resources.add(SearchApiServiceImpl.class);
        resources.add(ServersApiServiceImpl.class);
        resources.add(SignupApiServiceImpl.class);
        resources.add(SslApiServiceImpl.class);
        resources.add(TicketsApiServiceImpl.class);
        resources.add(VpsApiServiceImpl.class);
        resources.add(WebsitesApiServiceImpl.class);


        return resources;
    }




}
