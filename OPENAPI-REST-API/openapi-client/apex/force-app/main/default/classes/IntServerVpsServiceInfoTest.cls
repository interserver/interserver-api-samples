@isTest
private class IntServerVpsServiceInfoTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsServiceInfo vpsServiceInfo1 = IntServerVpsServiceInfo.getExample();
        IntServerVpsServiceInfo vpsServiceInfo2 = vpsServiceInfo1;
        IntServerVpsServiceInfo vpsServiceInfo3 = new IntServerVpsServiceInfo();
        IntServerVpsServiceInfo vpsServiceInfo4 = vpsServiceInfo3;

        System.assert(vpsServiceInfo1.equals(vpsServiceInfo2));
        System.assert(vpsServiceInfo2.equals(vpsServiceInfo1));
        System.assert(vpsServiceInfo1.equals(vpsServiceInfo1));
        System.assert(vpsServiceInfo3.equals(vpsServiceInfo4));
        System.assert(vpsServiceInfo4.equals(vpsServiceInfo3));
        System.assert(vpsServiceInfo3.equals(vpsServiceInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsServiceInfo vpsServiceInfo1 = IntServerVpsServiceInfo.getExample();
        IntServerVpsServiceInfo vpsServiceInfo2 = IntServerVpsServiceInfo.getExample();
        IntServerVpsServiceInfo vpsServiceInfo3 = new IntServerVpsServiceInfo();
        IntServerVpsServiceInfo vpsServiceInfo4 = new IntServerVpsServiceInfo();

        System.assert(vpsServiceInfo1.equals(vpsServiceInfo2));
        System.assert(vpsServiceInfo2.equals(vpsServiceInfo1));
        System.assert(vpsServiceInfo3.equals(vpsServiceInfo4));
        System.assert(vpsServiceInfo4.equals(vpsServiceInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsServiceInfo vpsServiceInfo1 = IntServerVpsServiceInfo.getExample();
        IntServerVpsServiceInfo vpsServiceInfo2 = new IntServerVpsServiceInfo();

        System.assertEquals(false, vpsServiceInfo1.equals('foo'));
        System.assertEquals(false, vpsServiceInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsServiceInfo vpsServiceInfo1 = IntServerVpsServiceInfo.getExample();
        IntServerVpsServiceInfo vpsServiceInfo2 = new IntServerVpsServiceInfo();
        IntServerVpsServiceInfo vpsServiceInfo3;

        System.assertEquals(false, vpsServiceInfo1.equals(vpsServiceInfo3));
        System.assertEquals(false, vpsServiceInfo2.equals(vpsServiceInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsServiceInfo vpsServiceInfo1 = IntServerVpsServiceInfo.getExample();
        IntServerVpsServiceInfo vpsServiceInfo2 = new IntServerVpsServiceInfo();

        System.assertEquals(vpsServiceInfo1.hashCode(), vpsServiceInfo1.hashCode());
        System.assertEquals(vpsServiceInfo2.hashCode(), vpsServiceInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsServiceInfo vpsServiceInfo1 = IntServerVpsServiceInfo.getExample();
        IntServerVpsServiceInfo vpsServiceInfo2 = IntServerVpsServiceInfo.getExample();
        IntServerVpsServiceInfo vpsServiceInfo3 = new IntServerVpsServiceInfo();
        IntServerVpsServiceInfo vpsServiceInfo4 = new IntServerVpsServiceInfo();

        System.assert(vpsServiceInfo1.equals(vpsServiceInfo2));
        System.assert(vpsServiceInfo3.equals(vpsServiceInfo4));
        System.assertEquals(vpsServiceInfo1.hashCode(), vpsServiceInfo2.hashCode());
        System.assertEquals(vpsServiceInfo3.hashCode(), vpsServiceInfo4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerVpsServiceInfo vpsServiceInfo = new IntServerVpsServiceInfo();
        Map<String, String> x-property-mappings = vpsServiceInfo.getx-property-mappings();
        System.assertEquals('vpsId', x-property-mappings.get('vps_id'));
        System.assertEquals('vpsCustid', x-property-mappings.get('vps_custid'));
        System.assertEquals('vpsServer', x-property-mappings.get('vps_server'));
        System.assertEquals('vpsIp', x-property-mappings.get('vps_ip'));
        System.assertEquals('vpsIpv6', x-property-mappings.get('vps_ipv6'));
        System.assertEquals('vpsVzid', x-property-mappings.get('vps_vzid'));
        System.assertEquals('vpsCurrency', x-property-mappings.get('vps_currency'));
        System.assertEquals('vpsType', x-property-mappings.get('vps_type'));
        System.assertEquals('vpsOrderDate', x-property-mappings.get('vps_order_date'));
        System.assertEquals('vpsStatus', x-property-mappings.get('vps_status'));
        System.assertEquals('vpsInvoice', x-property-mappings.get('vps_invoice'));
        System.assertEquals('vpsCoupon', x-property-mappings.get('vps_coupon'));
        System.assertEquals('vpsExtra', x-property-mappings.get('vps_extra'));
        System.assertEquals('vpsHostname', x-property-mappings.get('vps_hostname'));
        System.assertEquals('vpsServerStatus', x-property-mappings.get('vps_server_status'));
        System.assertEquals('vpsComment', x-property-mappings.get('vps_comment'));
        System.assertEquals('vpsSlices', x-property-mappings.get('vps_slices'));
        System.assertEquals('vpsVnc', x-property-mappings.get('vps_vnc'));
        System.assertEquals('vpsVncPort', x-property-mappings.get('vps_vnc_port'));
        System.assertEquals('vpsRootpass', x-property-mappings.get('vps_rootpass'));
        System.assertEquals('vpsMac', x-property-mappings.get('vps_mac'));
        System.assertEquals('vpsOs', x-property-mappings.get('vps_os'));
        System.assertEquals('vpsVersion', x-property-mappings.get('vps_version'));
        System.assertEquals('vpsLocation', x-property-mappings.get('vps_location'));
        System.assertEquals('vpsPlatform', x-property-mappings.get('vps_platform'));
        System.assertEquals('vpsDiskused', x-property-mappings.get('vps_diskused'));
        System.assertEquals('vpsDiskmax', x-property-mappings.get('vps_diskmax'));
    }
}
