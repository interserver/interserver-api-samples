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
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.validation.constraints.*;

public abstract class AccountApiService {
    public abstract Response deleteAccountOauthName(String name,SecurityContext securityContext) throws NotFoundException;
    public abstract Response deleteAccountTfa(SecurityContext securityContext) throws NotFoundException;
    public abstract Response deleteIpLimit(IpLimitRange body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getAccountCurrencies(SecurityContext securityContext) throws NotFoundException;
    public abstract Response getAccountInfo(SecurityContext securityContext) throws NotFoundException;
    public abstract Response getAccountLocales(SecurityContext securityContext) throws NotFoundException;
    public abstract Response getAccountTfaSetup(SecurityContext securityContext) throws NotFoundException;
    public abstract Response getCountries( String fetchBy,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getTimezones(SecurityContext securityContext) throws NotFoundException;
    public abstract Response logoutAccountOauth(String name,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateAccountApiKey(SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateAccountFeatures(Integer disableReset,Integer disableReinstall,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateAccountFeatures(AccountFeatures body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateAccountInfo(String name,String company,String address,String address2,String city,String state,String zip,String country,String phone,String locale,String emailInvoices,String emailAbuse,Boolean disableReset,Boolean disableReinstall,Boolean disableServerNotifications,Boolean disableEmailNotifications,String gstin,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateAccountInfo(AccountInfoPost body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateAccountIpLimits(String start,String end,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateAccountIpLimits(IpLimitRange body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateAccountPassword(String password,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateAccountPassword(PasswordRequest body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateAccountSshKey(String sshKey,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateAccountSshKey(AccountSshKey body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateAccountTfa(String _2faGoogleCode,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateAccountTfa(Account2faBody1 body,SecurityContext securityContext) throws NotFoundException;
}
