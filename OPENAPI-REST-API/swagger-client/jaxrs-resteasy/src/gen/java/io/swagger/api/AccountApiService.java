package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;

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

import java.util.List;
import java.util.Map;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;


public interface AccountApiService {
      Response deleteAccountOauthName(String name,SecurityContext securityContext) throws NotFoundException;
      Response deleteAccountTfa(SecurityContext securityContext) throws NotFoundException;
      Response deleteIpLimit(IpLimitRange body,SecurityContext securityContext) throws NotFoundException;
      Response getAccountCurrencies(SecurityContext securityContext) throws NotFoundException;
      Response getAccountInfo(SecurityContext securityContext) throws NotFoundException;
      Response getAccountLocales(SecurityContext securityContext) throws NotFoundException;
      Response getAccountTfaSetup(SecurityContext securityContext) throws NotFoundException;
      Response getCountries(String fetchBy,SecurityContext securityContext) throws NotFoundException;
      Response getTimezones(SecurityContext securityContext) throws NotFoundException;
      Response logoutAccountOauth(String name,SecurityContext securityContext) throws NotFoundException;
      Response updateAccountApiKey(SecurityContext securityContext) throws NotFoundException;
      Response updateAccountFeatures(MultipartFormDataInput input,Integer disableReset,Integer disableReinstall,SecurityContext securityContext) throws NotFoundException;
      Response updateAccountFeatures(MultipartFormDataInput input,AccountFeatures body,SecurityContext securityContext) throws NotFoundException;
      Response updateAccountInfo(MultipartFormDataInput input,String name,String company,String address,String address2,String city,String state,String zip,String country,String phone,String locale,String emailInvoices,String emailAbuse,Boolean disableReset,Boolean disableReinstall,Boolean disableServerNotifications,Boolean disableEmailNotifications,String gstin,SecurityContext securityContext) throws NotFoundException;
      Response updateAccountInfo(MultipartFormDataInput input,AccountInfoPost body,SecurityContext securityContext) throws NotFoundException;
      Response updateAccountIpLimits(MultipartFormDataInput input,String start,String end,SecurityContext securityContext) throws NotFoundException;
      Response updateAccountIpLimits(MultipartFormDataInput input,IpLimitRange body,SecurityContext securityContext) throws NotFoundException;
      Response updateAccountPassword(MultipartFormDataInput input,String password,SecurityContext securityContext) throws NotFoundException;
      Response updateAccountPassword(MultipartFormDataInput input,PasswordRequest body,SecurityContext securityContext) throws NotFoundException;
      Response updateAccountSshKey(MultipartFormDataInput input,String sshKey,SecurityContext securityContext) throws NotFoundException;
      Response updateAccountSshKey(MultipartFormDataInput input,AccountSshKey body,SecurityContext securityContext) throws NotFoundException;
      Response updateAccountTfa(MultipartFormDataInput input,String _2faGoogleCode,SecurityContext securityContext) throws NotFoundException;
      Response updateAccountTfa(MultipartFormDataInput input,Account2faBody1 body,SecurityContext securityContext) throws NotFoundException;
}
