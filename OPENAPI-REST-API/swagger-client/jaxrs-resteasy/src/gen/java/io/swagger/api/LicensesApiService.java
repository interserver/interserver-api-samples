package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import io.swagger.model.ChargeInvoiceRows;
import io.swagger.model.InlineResponse2005;
import io.swagger.model.InlineResponse401;
import io.swagger.model.IpObject;
import io.swagger.model.License;
import io.swagger.model.LicenseOrderRequest;
import io.swagger.model.LicenseRow;
import io.swagger.model.LicensesOrder;
import io.swagger.model.ServiceOrderPostResponse;
import io.swagger.model.SuccessTextResponse;

import java.util.List;
import java.util.Map;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;


public interface LicensesApiService {
      Response addLicense(LicenseOrderRequest body,SecurityContext securityContext) throws NotFoundException;
      Response getLicenseInfo(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getLicenseInvoices(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getLicenseList(SecurityContext securityContext) throws NotFoundException;
      Response getLicensesWelcomeEmail(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getNewLicense(SecurityContext securityContext) throws NotFoundException;
      Response licensesCancel(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response postLicenseChangeIp(IpObject body,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response postLicenseChangeIp(String ip,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response putLicenses(LicenseOrderRequest body,SecurityContext securityContext) throws NotFoundException;
      Response updateLicenseInfo(String id,SecurityContext securityContext) throws NotFoundException;
}
