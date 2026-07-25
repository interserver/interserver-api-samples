package io.swagger.api;

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
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;


public interface BillingApiService {
      Response addBillingCreditCard(BillingAddCcRequest body,SecurityContext securityContext) throws NotFoundException;
      Response addBillingCreditCard(String name,String address,String city,String state,String country,String zip,String cc,String ccExp,String ccCcv2,SecurityContext securityContext) throws NotFoundException;
      Response addBillingPrepay(BillingPrepayRequest body,SecurityContext securityContext) throws NotFoundException;
      Response addBillingPrepay(String module,BigDecimal amount,String automaticUse,SecurityContext securityContext) throws NotFoundException;
      Response deleteBillingCreditCard(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response deleteBillingInvoice(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response deleteBillingPrepay(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getBillingCart(SecurityContext securityContext) throws NotFoundException;
      Response getBillingCreditCardVerify(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getBillingInvoice(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getBillingInvoices(SecurityContext securityContext) throws NotFoundException;
      Response getBillingPrePays(SecurityContext securityContext) throws NotFoundException;
      Response initiatePayment(String method,String invoices,SecurityContext securityContext) throws NotFoundException;
      Response patchBillingCreditCardVerify(IdVerifyBody body,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response patchBillingCreditCardVerify(String ccCcv2,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response postBillingCreditCardVerify(BillingVerifyCcRequest body,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response postBillingCreditCardVerify(Integer idx,String ccCcv2,String ccAmount1,String ccAmount2,Boolean terms,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response updateBillingCreditCard(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response updateBillingPaymentMethod(BillingPaymentMethodRequest body,SecurityContext securityContext) throws NotFoundException;
      Response updateBillingPaymentMethod(String paymentMethod,String ccAuto,SecurityContext securityContext) throws NotFoundException;
}
