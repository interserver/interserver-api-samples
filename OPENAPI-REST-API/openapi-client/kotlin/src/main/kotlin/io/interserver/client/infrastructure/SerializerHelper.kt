package io.interserver.client.infrastructure

import com.squareup.moshi.Moshi
import com.squareup.moshi.adapters.EnumJsonAdapter

object SerializerHelper {
    fun addEnumUnknownDefaultCase(moshiBuilder: Moshi.Builder): Moshi.Builder {
        return moshiBuilder
            .add(io.interserver.client.models.ChargeInvoiceRowsInvoicesValue.InvoicesPaid::class.java, EnumJsonAdapter.create(io.interserver.client.models.ChargeInvoiceRowsInvoicesValue.InvoicesPaid::class.java)
                .withUnknownFallback(io.interserver.client.models.ChargeInvoiceRowsInvoicesValue.InvoicesPaid.unknownDefaultOpenApi))
            .add(io.interserver.client.models.CreateFirewallRule.ProtocolId::class.java, EnumJsonAdapter.create(io.interserver.client.models.CreateFirewallRule.ProtocolId::class.java)
                .withUnknownFallback(io.interserver.client.models.CreateFirewallRule.ProtocolId.unknownDefaultOpenApi))
            .add(io.interserver.client.models.CreateFirewallRule.XdpAction::class.java, EnumJsonAdapter.create(io.interserver.client.models.CreateFirewallRule.XdpAction::class.java)
                .withUnknownFallback(io.interserver.client.models.CreateFirewallRule.XdpAction.unknownDefaultOpenApi))
            .add(io.interserver.client.models.CreateGeoFirewallRule.XdpAction::class.java, EnumJsonAdapter.create(io.interserver.client.models.CreateGeoFirewallRule.XdpAction::class.java)
                .withUnknownFallback(io.interserver.client.models.CreateGeoFirewallRule.XdpAction.unknownDefaultOpenApi))
            .add(io.interserver.client.models.DenyRuleNew.Type::class.java, EnumJsonAdapter.create(io.interserver.client.models.DenyRuleNew.Type::class.java)
                .withUnknownFallback(io.interserver.client.models.DenyRuleNew.Type.unknownDefaultOpenApi))
            .add(io.interserver.client.models.DenyRuleRecord.Type::class.java, EnumJsonAdapter.create(io.interserver.client.models.DenyRuleRecord.Type::class.java)
                .withUnknownFallback(io.interserver.client.models.DenyRuleRecord.Type.unknownDefaultOpenApi))
            .add(io.interserver.client.models.DnsRecordType::class.java, EnumJsonAdapter.create(io.interserver.client.models.DnsRecordType::class.java)
                .withUnknownFallback(io.interserver.client.models.DnsRecordType.unknownDefaultOpenApi))
            .add(io.interserver.client.models.DomainNameserverGetResponseInner.CanDelete::class.java, EnumJsonAdapter.create(io.interserver.client.models.DomainNameserverGetResponseInner.CanDelete::class.java)
                .withUnknownFallback(io.interserver.client.models.DomainNameserverGetResponseInner.CanDelete.unknownDefaultOpenApi))
            .add(io.interserver.client.models.DomainOrderRequest.Type::class.java, EnumJsonAdapter.create(io.interserver.client.models.DomainOrderRequest.Type::class.java)
                .withUnknownFallback(io.interserver.client.models.DomainOrderRequest.Type.unknownDefaultOpenApi))
            .add(io.interserver.client.models.DomainOrderRequest.WhoisPrivacy::class.java, EnumJsonAdapter.create(io.interserver.client.models.DomainOrderRequest.WhoisPrivacy::class.java)
                .withUnknownFallback(io.interserver.client.models.DomainOrderRequest.WhoisPrivacy.unknownDefaultOpenApi))
            .add(io.interserver.client.models.GetScrubIpDetails200ResponseServiceInfo.ScrubIpStatus::class.java, EnumJsonAdapter.create(io.interserver.client.models.GetScrubIpDetails200ResponseServiceInfo.ScrubIpStatus::class.java)
                .withUnknownFallback(io.interserver.client.models.GetScrubIpDetails200ResponseServiceInfo.ScrubIpStatus.unknownDefaultOpenApi))
            .add(io.interserver.client.models.InitiatePayment200Response.Type::class.java, EnumJsonAdapter.create(io.interserver.client.models.InitiatePayment200Response.Type::class.java)
                .withUnknownFallback(io.interserver.client.models.InitiatePayment200Response.Type.unknownDefaultOpenApi))
            .add(io.interserver.client.models.MailStatsType.Time::class.java, EnumJsonAdapter.create(io.interserver.client.models.MailStatsType.Time::class.java)
                .withUnknownFallback(io.interserver.client.models.MailStatsType.Time.unknownDefaultOpenApi))
            .add(io.interserver.client.models.ServerIpmiPowerRequest.Action::class.java, EnumJsonAdapter.create(io.interserver.client.models.ServerIpmiPowerRequest.Action::class.java)
                .withUnknownFallback(io.interserver.client.models.ServerIpmiPowerRequest.Action.unknownDefaultOpenApi))
            .add(io.interserver.client.models.SslOrderRequest.CsrType::class.java, EnumJsonAdapter.create(io.interserver.client.models.SslOrderRequest.CsrType::class.java)
                .withUnknownFallback(io.interserver.client.models.SslOrderRequest.CsrType.unknownDefaultOpenApi))
            .add(io.interserver.client.models.TicketCustomFieldDetails.CustomerServerAccess::class.java, EnumJsonAdapter.create(io.interserver.client.models.TicketCustomFieldDetails.CustomerServerAccess::class.java)
                .withUnknownFallback(io.interserver.client.models.TicketCustomFieldDetails.CustomerServerAccess.unknownDefaultOpenApi))
            .add(io.interserver.client.models.TicketPostDetailsInner.Creator::class.java, EnumJsonAdapter.create(io.interserver.client.models.TicketPostDetailsInner.Creator::class.java)
                .withUnknownFallback(io.interserver.client.models.TicketPostDetailsInner.Creator.unknownDefaultOpenApi))
            .add(io.interserver.client.models.UpdateTicket.CustomerServerAccess::class.java, EnumJsonAdapter.create(io.interserver.client.models.UpdateTicket.CustomerServerAccess::class.java)
                .withUnknownFallback(io.interserver.client.models.UpdateTicket.CustomerServerAccess.unknownDefaultOpenApi))
            .add(io.interserver.client.models.VpsOrderPostRequest.VpsPlatform::class.java, EnumJsonAdapter.create(io.interserver.client.models.VpsOrderPostRequest.VpsPlatform::class.java)
                .withUnknownFallback(io.interserver.client.models.VpsOrderPostRequest.VpsPlatform.unknownDefaultOpenApi))
            .add(io.interserver.client.models.VpsOrderPostRequest.Controlpanel::class.java, EnumJsonAdapter.create(io.interserver.client.models.VpsOrderPostRequest.Controlpanel::class.java)
                .withUnknownFallback(io.interserver.client.models.VpsOrderPostRequest.Controlpanel.unknownDefaultOpenApi))
            .add(io.interserver.client.models.VpsOrderPutRequest.VpsPlatform::class.java, EnumJsonAdapter.create(io.interserver.client.models.VpsOrderPutRequest.VpsPlatform::class.java)
                .withUnknownFallback(io.interserver.client.models.VpsOrderPutRequest.VpsPlatform.unknownDefaultOpenApi))
            .add(io.interserver.client.models.VpsOrderPutRequest.Controlpanel::class.java, EnumJsonAdapter.create(io.interserver.client.models.VpsOrderPutRequest.Controlpanel::class.java)
                .withUnknownFallback(io.interserver.client.models.VpsOrderPutRequest.Controlpanel.unknownDefaultOpenApi))
    }
}
