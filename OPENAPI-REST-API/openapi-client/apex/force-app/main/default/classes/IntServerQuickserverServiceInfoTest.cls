@isTest
private class IntServerQuickserverServiceInfoTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerQuickserverServiceInfo quickserverServiceInfo1 = IntServerQuickserverServiceInfo.getExample();
        IntServerQuickserverServiceInfo quickserverServiceInfo2 = quickserverServiceInfo1;
        IntServerQuickserverServiceInfo quickserverServiceInfo3 = new IntServerQuickserverServiceInfo();
        IntServerQuickserverServiceInfo quickserverServiceInfo4 = quickserverServiceInfo3;

        System.assert(quickserverServiceInfo1.equals(quickserverServiceInfo2));
        System.assert(quickserverServiceInfo2.equals(quickserverServiceInfo1));
        System.assert(quickserverServiceInfo1.equals(quickserverServiceInfo1));
        System.assert(quickserverServiceInfo3.equals(quickserverServiceInfo4));
        System.assert(quickserverServiceInfo4.equals(quickserverServiceInfo3));
        System.assert(quickserverServiceInfo3.equals(quickserverServiceInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerQuickserverServiceInfo quickserverServiceInfo1 = IntServerQuickserverServiceInfo.getExample();
        IntServerQuickserverServiceInfo quickserverServiceInfo2 = IntServerQuickserverServiceInfo.getExample();
        IntServerQuickserverServiceInfo quickserverServiceInfo3 = new IntServerQuickserverServiceInfo();
        IntServerQuickserverServiceInfo quickserverServiceInfo4 = new IntServerQuickserverServiceInfo();

        System.assert(quickserverServiceInfo1.equals(quickserverServiceInfo2));
        System.assert(quickserverServiceInfo2.equals(quickserverServiceInfo1));
        System.assert(quickserverServiceInfo3.equals(quickserverServiceInfo4));
        System.assert(quickserverServiceInfo4.equals(quickserverServiceInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerQuickserverServiceInfo quickserverServiceInfo1 = IntServerQuickserverServiceInfo.getExample();
        IntServerQuickserverServiceInfo quickserverServiceInfo2 = new IntServerQuickserverServiceInfo();

        System.assertEquals(false, quickserverServiceInfo1.equals('foo'));
        System.assertEquals(false, quickserverServiceInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerQuickserverServiceInfo quickserverServiceInfo1 = IntServerQuickserverServiceInfo.getExample();
        IntServerQuickserverServiceInfo quickserverServiceInfo2 = new IntServerQuickserverServiceInfo();
        IntServerQuickserverServiceInfo quickserverServiceInfo3;

        System.assertEquals(false, quickserverServiceInfo1.equals(quickserverServiceInfo3));
        System.assertEquals(false, quickserverServiceInfo2.equals(quickserverServiceInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerQuickserverServiceInfo quickserverServiceInfo1 = IntServerQuickserverServiceInfo.getExample();
        IntServerQuickserverServiceInfo quickserverServiceInfo2 = new IntServerQuickserverServiceInfo();

        System.assertEquals(quickserverServiceInfo1.hashCode(), quickserverServiceInfo1.hashCode());
        System.assertEquals(quickserverServiceInfo2.hashCode(), quickserverServiceInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerQuickserverServiceInfo quickserverServiceInfo1 = IntServerQuickserverServiceInfo.getExample();
        IntServerQuickserverServiceInfo quickserverServiceInfo2 = IntServerQuickserverServiceInfo.getExample();
        IntServerQuickserverServiceInfo quickserverServiceInfo3 = new IntServerQuickserverServiceInfo();
        IntServerQuickserverServiceInfo quickserverServiceInfo4 = new IntServerQuickserverServiceInfo();

        System.assert(quickserverServiceInfo1.equals(quickserverServiceInfo2));
        System.assert(quickserverServiceInfo3.equals(quickserverServiceInfo4));
        System.assertEquals(quickserverServiceInfo1.hashCode(), quickserverServiceInfo2.hashCode());
        System.assertEquals(quickserverServiceInfo3.hashCode(), quickserverServiceInfo4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerQuickserverServiceInfo quickserverServiceInfo = new IntServerQuickserverServiceInfo();
        Map<String, String> x-property-mappings = quickserverServiceInfo.getx-property-mappings();
        System.assertEquals('qsId', x-property-mappings.get('qs_id'));
        System.assertEquals('qsCustid', x-property-mappings.get('qs_custid'));
        System.assertEquals('qsServer', x-property-mappings.get('qs_server'));
        System.assertEquals('qsIp', x-property-mappings.get('qs_ip'));
        System.assertEquals('qsIpv6', x-property-mappings.get('qs_ipv6'));
        System.assertEquals('qsVzid', x-property-mappings.get('qs_vzid'));
        System.assertEquals('qsCurrency', x-property-mappings.get('qs_currency'));
        System.assertEquals('qsType', x-property-mappings.get('qs_type'));
        System.assertEquals('qsOrderDate', x-property-mappings.get('qs_order_date'));
        System.assertEquals('qsStatus', x-property-mappings.get('qs_status'));
        System.assertEquals('qsInvoice', x-property-mappings.get('qs_invoice'));
        System.assertEquals('qsCoupon', x-property-mappings.get('qs_coupon'));
        System.assertEquals('qsExtra', x-property-mappings.get('qs_extra'));
        System.assertEquals('qsHostname', x-property-mappings.get('qs_hostname'));
        System.assertEquals('qsServerStatus', x-property-mappings.get('qs_server_status'));
        System.assertEquals('qsComment', x-property-mappings.get('qs_comment'));
        System.assertEquals('qsSlices', x-property-mappings.get('qs_slices'));
        System.assertEquals('qsVnc', x-property-mappings.get('qs_vnc'));
        System.assertEquals('qsVncPort', x-property-mappings.get('qs_vnc_port'));
        System.assertEquals('qsRootpass', x-property-mappings.get('qs_rootpass'));
        System.assertEquals('qsMac', x-property-mappings.get('qs_mac'));
        System.assertEquals('qsOs', x-property-mappings.get('qs_os'));
        System.assertEquals('qsVersion', x-property-mappings.get('qs_version'));
        System.assertEquals('qsLocation', x-property-mappings.get('qs_location'));
        System.assertEquals('qsPlatform', x-property-mappings.get('qs_platform'));
    }
}
