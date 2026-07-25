@isTest
private class IntServerServerServiceInfoTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerServiceInfo serverServiceInfo1 = IntServerServerServiceInfo.getExample();
        IntServerServerServiceInfo serverServiceInfo2 = serverServiceInfo1;
        IntServerServerServiceInfo serverServiceInfo3 = new IntServerServerServiceInfo();
        IntServerServerServiceInfo serverServiceInfo4 = serverServiceInfo3;

        System.assert(serverServiceInfo1.equals(serverServiceInfo2));
        System.assert(serverServiceInfo2.equals(serverServiceInfo1));
        System.assert(serverServiceInfo1.equals(serverServiceInfo1));
        System.assert(serverServiceInfo3.equals(serverServiceInfo4));
        System.assert(serverServiceInfo4.equals(serverServiceInfo3));
        System.assert(serverServiceInfo3.equals(serverServiceInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerServiceInfo serverServiceInfo1 = IntServerServerServiceInfo.getExample();
        IntServerServerServiceInfo serverServiceInfo2 = IntServerServerServiceInfo.getExample();
        IntServerServerServiceInfo serverServiceInfo3 = new IntServerServerServiceInfo();
        IntServerServerServiceInfo serverServiceInfo4 = new IntServerServerServiceInfo();

        System.assert(serverServiceInfo1.equals(serverServiceInfo2));
        System.assert(serverServiceInfo2.equals(serverServiceInfo1));
        System.assert(serverServiceInfo3.equals(serverServiceInfo4));
        System.assert(serverServiceInfo4.equals(serverServiceInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerServiceInfo serverServiceInfo1 = IntServerServerServiceInfo.getExample();
        IntServerServerServiceInfo serverServiceInfo2 = new IntServerServerServiceInfo();

        System.assertEquals(false, serverServiceInfo1.equals('foo'));
        System.assertEquals(false, serverServiceInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerServiceInfo serverServiceInfo1 = IntServerServerServiceInfo.getExample();
        IntServerServerServiceInfo serverServiceInfo2 = new IntServerServerServiceInfo();
        IntServerServerServiceInfo serverServiceInfo3;

        System.assertEquals(false, serverServiceInfo1.equals(serverServiceInfo3));
        System.assertEquals(false, serverServiceInfo2.equals(serverServiceInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerServiceInfo serverServiceInfo1 = IntServerServerServiceInfo.getExample();
        IntServerServerServiceInfo serverServiceInfo2 = new IntServerServerServiceInfo();

        System.assertEquals(serverServiceInfo1.hashCode(), serverServiceInfo1.hashCode());
        System.assertEquals(serverServiceInfo2.hashCode(), serverServiceInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerServiceInfo serverServiceInfo1 = IntServerServerServiceInfo.getExample();
        IntServerServerServiceInfo serverServiceInfo2 = IntServerServerServiceInfo.getExample();
        IntServerServerServiceInfo serverServiceInfo3 = new IntServerServerServiceInfo();
        IntServerServerServiceInfo serverServiceInfo4 = new IntServerServerServiceInfo();

        System.assert(serverServiceInfo1.equals(serverServiceInfo2));
        System.assert(serverServiceInfo3.equals(serverServiceInfo4));
        System.assertEquals(serverServiceInfo1.hashCode(), serverServiceInfo2.hashCode());
        System.assertEquals(serverServiceInfo3.hashCode(), serverServiceInfo4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServerServiceInfo serverServiceInfo = new IntServerServerServiceInfo();
        Map<String, String> x-property-mappings = serverServiceInfo.getx-property-mappings();
        System.assertEquals('serverId', x-property-mappings.get('server_id'));
        System.assertEquals('serverHostname', x-property-mappings.get('server_hostname'));
        System.assertEquals('serverCustid', x-property-mappings.get('server_custid'));
        System.assertEquals('serverType', x-property-mappings.get('server_type'));
        System.assertEquals('serverCurrency', x-property-mappings.get('server_currency'));
        System.assertEquals('serverOrderDate', x-property-mappings.get('server_order_date'));
        System.assertEquals('serverInvoice', x-property-mappings.get('server_invoice'));
        System.assertEquals('serverCoupon', x-property-mappings.get('server_coupon'));
        System.assertEquals('serverStatus', x-property-mappings.get('server_status'));
        System.assertEquals('serverRoot', x-property-mappings.get('server_root'));
        System.assertEquals('serverDedicatedTag', x-property-mappings.get('server_dedicated_tag'));
        System.assertEquals('serverCustomTag', x-property-mappings.get('server_custom_tag'));
        System.assertEquals('serverComment', x-property-mappings.get('server_comment'));
        System.assertEquals('serverInitialBill', x-property-mappings.get('server_initial_bill'));
        System.assertEquals('serverHardware', x-property-mappings.get('server_hardware'));
        System.assertEquals('serverIps', x-property-mappings.get('server_ips'));
        System.assertEquals('serverMonthlyBill', x-property-mappings.get('server_monthly_bill'));
        System.assertEquals('serverSetup', x-property-mappings.get('server_setup'));
        System.assertEquals('serverDiscount', x-property-mappings.get('server_discount'));
        System.assertEquals('serverRep', x-property-mappings.get('server_rep'));
        System.assertEquals('serverDate', x-property-mappings.get('server_date'));
        System.assertEquals('serverTotalCost', x-property-mappings.get('server_total_cost'));
        System.assertEquals('serverLocation', x-property-mappings.get('server_location'));
        System.assertEquals('serverHardwareOrdered', x-property-mappings.get('server_hardware_ordered'));
        System.assertEquals('serverBilled', x-property-mappings.get('server_billed'));
        System.assertEquals('serverWelcomeEmail', x-property-mappings.get('server_welcome_email'));
        System.assertEquals('serverDedicatedCpu', x-property-mappings.get('server_dedicated_cpu'));
        System.assertEquals('serverDedicatedMemory', x-property-mappings.get('server_dedicated_memory'));
        System.assertEquals('serverDedicatedHd1', x-property-mappings.get('server_dedicated_hd1'));
        System.assertEquals('serverDedicatedHd2', x-property-mappings.get('server_dedicated_hd2'));
        System.assertEquals('serverDedicatedBandwidth', x-property-mappings.get('server_dedicated_bandwidth'));
        System.assertEquals('serverDedicatedIps', x-property-mappings.get('server_dedicated_ips'));
        System.assertEquals('serverDedicatedOs', x-property-mappings.get('server_dedicated_os'));
        System.assertEquals('serverDedicatedCp', x-property-mappings.get('server_dedicated_cp'));
        System.assertEquals('serverDedicatedRaid', x-property-mappings.get('server_dedicated_raid'));
        System.assertEquals('serverExtra', x-property-mappings.get('server_extra'));
    }
}
