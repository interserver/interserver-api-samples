@isTest
private class IntServerWebsiteServiceInfoTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerWebsiteServiceInfo websiteServiceInfo1 = IntServerWebsiteServiceInfo.getExample();
        IntServerWebsiteServiceInfo websiteServiceInfo2 = websiteServiceInfo1;
        IntServerWebsiteServiceInfo websiteServiceInfo3 = new IntServerWebsiteServiceInfo();
        IntServerWebsiteServiceInfo websiteServiceInfo4 = websiteServiceInfo3;

        System.assert(websiteServiceInfo1.equals(websiteServiceInfo2));
        System.assert(websiteServiceInfo2.equals(websiteServiceInfo1));
        System.assert(websiteServiceInfo1.equals(websiteServiceInfo1));
        System.assert(websiteServiceInfo3.equals(websiteServiceInfo4));
        System.assert(websiteServiceInfo4.equals(websiteServiceInfo3));
        System.assert(websiteServiceInfo3.equals(websiteServiceInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerWebsiteServiceInfo websiteServiceInfo1 = IntServerWebsiteServiceInfo.getExample();
        IntServerWebsiteServiceInfo websiteServiceInfo2 = IntServerWebsiteServiceInfo.getExample();
        IntServerWebsiteServiceInfo websiteServiceInfo3 = new IntServerWebsiteServiceInfo();
        IntServerWebsiteServiceInfo websiteServiceInfo4 = new IntServerWebsiteServiceInfo();

        System.assert(websiteServiceInfo1.equals(websiteServiceInfo2));
        System.assert(websiteServiceInfo2.equals(websiteServiceInfo1));
        System.assert(websiteServiceInfo3.equals(websiteServiceInfo4));
        System.assert(websiteServiceInfo4.equals(websiteServiceInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerWebsiteServiceInfo websiteServiceInfo1 = IntServerWebsiteServiceInfo.getExample();
        IntServerWebsiteServiceInfo websiteServiceInfo2 = new IntServerWebsiteServiceInfo();

        System.assertEquals(false, websiteServiceInfo1.equals('foo'));
        System.assertEquals(false, websiteServiceInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerWebsiteServiceInfo websiteServiceInfo1 = IntServerWebsiteServiceInfo.getExample();
        IntServerWebsiteServiceInfo websiteServiceInfo2 = new IntServerWebsiteServiceInfo();
        IntServerWebsiteServiceInfo websiteServiceInfo3;

        System.assertEquals(false, websiteServiceInfo1.equals(websiteServiceInfo3));
        System.assertEquals(false, websiteServiceInfo2.equals(websiteServiceInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerWebsiteServiceInfo websiteServiceInfo1 = IntServerWebsiteServiceInfo.getExample();
        IntServerWebsiteServiceInfo websiteServiceInfo2 = new IntServerWebsiteServiceInfo();

        System.assertEquals(websiteServiceInfo1.hashCode(), websiteServiceInfo1.hashCode());
        System.assertEquals(websiteServiceInfo2.hashCode(), websiteServiceInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerWebsiteServiceInfo websiteServiceInfo1 = IntServerWebsiteServiceInfo.getExample();
        IntServerWebsiteServiceInfo websiteServiceInfo2 = IntServerWebsiteServiceInfo.getExample();
        IntServerWebsiteServiceInfo websiteServiceInfo3 = new IntServerWebsiteServiceInfo();
        IntServerWebsiteServiceInfo websiteServiceInfo4 = new IntServerWebsiteServiceInfo();

        System.assert(websiteServiceInfo1.equals(websiteServiceInfo2));
        System.assert(websiteServiceInfo3.equals(websiteServiceInfo4));
        System.assertEquals(websiteServiceInfo1.hashCode(), websiteServiceInfo2.hashCode());
        System.assertEquals(websiteServiceInfo3.hashCode(), websiteServiceInfo4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerWebsiteServiceInfo websiteServiceInfo = new IntServerWebsiteServiceInfo();
        Map<String, String> x-property-mappings = websiteServiceInfo.getx-property-mappings();
        System.assertEquals('websiteId', x-property-mappings.get('website_id'));
        System.assertEquals('websiteServer', x-property-mappings.get('website_server'));
        System.assertEquals('websiteType', x-property-mappings.get('website_type'));
        System.assertEquals('websiteCurrency', x-property-mappings.get('website_currency'));
        System.assertEquals('websiteOrderDate', x-property-mappings.get('website_order_date'));
        System.assertEquals('websiteCustid', x-property-mappings.get('website_custid'));
        System.assertEquals('websiteIp', x-property-mappings.get('website_ip'));
        System.assertEquals('websiteStatus', x-property-mappings.get('website_status'));
        System.assertEquals('websiteInvoice', x-property-mappings.get('website_invoice'));
        System.assertEquals('websiteCoupon', x-property-mappings.get('website_coupon'));
        System.assertEquals('websiteExtra', x-property-mappings.get('website_extra'));
        System.assertEquals('websiteHostname', x-property-mappings.get('website_hostname'));
        System.assertEquals('websiteComment', x-property-mappings.get('website_comment'));
        System.assertEquals('websiteUsername', x-property-mappings.get('website_username'));
        System.assertEquals('websiteServerStatus', x-property-mappings.get('website_server_status'));
    }
}
