package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.apache.cxf.jaxrs.ext.multipart.Multipart;

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

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;


public interface LicensesApiService {
      public Response addLicense(LicenseOrderRequest body, SecurityContext securityContext);
      public Response getLicenseInfo(Integer id, SecurityContext securityContext);
      public Response getLicenseInvoices(Integer id, SecurityContext securityContext);
      public Response getLicenseList(SecurityContext securityContext);
      public Response getLicensesWelcomeEmail(Integer id, SecurityContext securityContext);
      public Response getNewLicense(SecurityContext securityContext);
      public Response licensesCancel(Integer id, SecurityContext securityContext);
      public Response postLicenseChangeIp(IpObject body, Integer id, SecurityContext securityContext);
      public Response postLicenseChangeIp(String ip, Integer id, SecurityContext securityContext);
      public Response putLicenses(LicenseOrderRequest body, SecurityContext securityContext);
      public Response updateLicenseInfo(String id, SecurityContext securityContext);
}
