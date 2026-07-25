package io.swagger.api.impl;

import io.swagger.api.*;
import io.swagger.model.*;

import java.math.BigDecimal;
import io.swagger.model.BillingAddCcRequest;
import io.swagger.model.BillingInvoiceDetail;
import io.swagger.model.BillingInvoiceList;
import io.swagger.model.BillingPaymentMethodRequest;
import io.swagger.model.BillingPrepayRequest;
import io.swagger.model.BillingVerifyCcRequest;
import io.swagger.model.IdVerifyBody;
import io.swagger.model.InlineResponse20010;
import io.swagger.model.InlineResponse401;
import io.swagger.model.SuccessTextResponse;

import java.util.List;
import java.util.Map;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;


public class BillingApiServiceImpl implements BillingApi {
      public Response addBillingCreditCard(BillingAddCcRequest body,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response addBillingCreditCard(String name,String address,String city,String state,String country,String zip,String cc,String ccExp,String ccCcv2,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response addBillingPrepay(BillingPrepayRequest body,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response addBillingPrepay(String module,BigDecimal amount,String automaticUse,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response deleteBillingCreditCard(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response deleteBillingInvoice(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response deleteBillingPrepay(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getBillingCart(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getBillingCreditCardVerify(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getBillingInvoice(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getBillingInvoices(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getBillingPrePays(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response initiatePayment(String method,String invoices,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response patchBillingCreditCardVerify(IdVerifyBody body,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response patchBillingCreditCardVerify(String ccCcv2,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postBillingCreditCardVerify(BillingVerifyCcRequest body,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postBillingCreditCardVerify(Integer idx,String ccCcv2,String ccAmount1,String ccAmount2,Boolean terms,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response updateBillingCreditCard(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response updateBillingPaymentMethod(BillingPaymentMethodRequest body,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response updateBillingPaymentMethod(String paymentMethod,String ccAuto,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
}
