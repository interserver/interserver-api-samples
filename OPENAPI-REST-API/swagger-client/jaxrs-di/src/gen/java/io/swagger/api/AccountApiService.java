package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;

import io.swagger.model.Account2faBody1;
import io.swagger.model.AccountFeatures;
import io.swagger.model.AccountInfo;
import io.swagger.model.AccountInfoPost;
import io.swagger.model.AccountSshKey;
import io.swagger.model.GenericResponse;
import io.swagger.model.InlineResponse200;
import io.swagger.model.InlineResponse401;
import io.swagger.model.InlineResponseMap200;
import io.swagger.model.IpLimitRange;
import io.swagger.model.PasswordRequest;
import io.swagger.model.SuccessTextResponse;
import io.swagger.model.TextResponse;

import java.util.Map;
import java.util.List;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.validation.constraints.*;

public interface AccountApiService {
    public Response deleteAccountOauthName(String name,SecurityContext securityContext);
    public Response deleteAccountTfa(SecurityContext securityContext);
    public Response deleteIpLimit(IpLimitRange body,SecurityContext securityContext);
    public Response getAccountCurrencies(SecurityContext securityContext);
    public Response getAccountInfo(SecurityContext securityContext);
    public Response getAccountLocales(SecurityContext securityContext);
    public Response getAccountTfaSetup(SecurityContext securityContext);
    public Response getCountries( String fetchBy,SecurityContext securityContext);
    public Response getTimezones(SecurityContext securityContext);
    public Response logoutAccountOauth(String name,SecurityContext securityContext);
    public Response updateAccountApiKey(SecurityContext securityContext);
    public Response updateAccountFeatures(Integer disableReset,Integer disableReinstall,SecurityContext securityContext);
    public Response updateAccountFeatures(AccountFeatures body,SecurityContext securityContext);
    public Response updateAccountInfo(String name,String company,String address,String address2,String city,String state,String zip,String country,String phone,String locale,String emailInvoices,String emailAbuse,Boolean disableReset,Boolean disableReinstall,Boolean disableServerNotifications,Boolean disableEmailNotifications,String gstin,SecurityContext securityContext);
    public Response updateAccountInfo(AccountInfoPost body,SecurityContext securityContext);
    public Response updateAccountIpLimits(String start,String end,SecurityContext securityContext);
    public Response updateAccountIpLimits(IpLimitRange body,SecurityContext securityContext);
    public Response updateAccountPassword(String password,SecurityContext securityContext);
    public Response updateAccountPassword(PasswordRequest body,SecurityContext securityContext);
    public Response updateAccountSshKey(String sshKey,SecurityContext securityContext);
    public Response updateAccountSshKey(AccountSshKey body,SecurityContext securityContext);
    public Response updateAccountTfa(String _2faGoogleCode,SecurityContext securityContext);
    public Response updateAccountTfa(Account2faBody1 body,SecurityContext securityContext);
}
