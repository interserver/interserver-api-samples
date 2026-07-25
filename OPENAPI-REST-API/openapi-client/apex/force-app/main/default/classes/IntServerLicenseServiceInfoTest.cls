@isTest
private class IntServerLicenseServiceInfoTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerLicenseServiceInfo licenseServiceInfo1 = IntServerLicenseServiceInfo.getExample();
        IntServerLicenseServiceInfo licenseServiceInfo2 = licenseServiceInfo1;
        IntServerLicenseServiceInfo licenseServiceInfo3 = new IntServerLicenseServiceInfo();
        IntServerLicenseServiceInfo licenseServiceInfo4 = licenseServiceInfo3;

        System.assert(licenseServiceInfo1.equals(licenseServiceInfo2));
        System.assert(licenseServiceInfo2.equals(licenseServiceInfo1));
        System.assert(licenseServiceInfo1.equals(licenseServiceInfo1));
        System.assert(licenseServiceInfo3.equals(licenseServiceInfo4));
        System.assert(licenseServiceInfo4.equals(licenseServiceInfo3));
        System.assert(licenseServiceInfo3.equals(licenseServiceInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerLicenseServiceInfo licenseServiceInfo1 = IntServerLicenseServiceInfo.getExample();
        IntServerLicenseServiceInfo licenseServiceInfo2 = IntServerLicenseServiceInfo.getExample();
        IntServerLicenseServiceInfo licenseServiceInfo3 = new IntServerLicenseServiceInfo();
        IntServerLicenseServiceInfo licenseServiceInfo4 = new IntServerLicenseServiceInfo();

        System.assert(licenseServiceInfo1.equals(licenseServiceInfo2));
        System.assert(licenseServiceInfo2.equals(licenseServiceInfo1));
        System.assert(licenseServiceInfo3.equals(licenseServiceInfo4));
        System.assert(licenseServiceInfo4.equals(licenseServiceInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerLicenseServiceInfo licenseServiceInfo1 = IntServerLicenseServiceInfo.getExample();
        IntServerLicenseServiceInfo licenseServiceInfo2 = new IntServerLicenseServiceInfo();

        System.assertEquals(false, licenseServiceInfo1.equals('foo'));
        System.assertEquals(false, licenseServiceInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerLicenseServiceInfo licenseServiceInfo1 = IntServerLicenseServiceInfo.getExample();
        IntServerLicenseServiceInfo licenseServiceInfo2 = new IntServerLicenseServiceInfo();
        IntServerLicenseServiceInfo licenseServiceInfo3;

        System.assertEquals(false, licenseServiceInfo1.equals(licenseServiceInfo3));
        System.assertEquals(false, licenseServiceInfo2.equals(licenseServiceInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerLicenseServiceInfo licenseServiceInfo1 = IntServerLicenseServiceInfo.getExample();
        IntServerLicenseServiceInfo licenseServiceInfo2 = new IntServerLicenseServiceInfo();

        System.assertEquals(licenseServiceInfo1.hashCode(), licenseServiceInfo1.hashCode());
        System.assertEquals(licenseServiceInfo2.hashCode(), licenseServiceInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerLicenseServiceInfo licenseServiceInfo1 = IntServerLicenseServiceInfo.getExample();
        IntServerLicenseServiceInfo licenseServiceInfo2 = IntServerLicenseServiceInfo.getExample();
        IntServerLicenseServiceInfo licenseServiceInfo3 = new IntServerLicenseServiceInfo();
        IntServerLicenseServiceInfo licenseServiceInfo4 = new IntServerLicenseServiceInfo();

        System.assert(licenseServiceInfo1.equals(licenseServiceInfo2));
        System.assert(licenseServiceInfo3.equals(licenseServiceInfo4));
        System.assertEquals(licenseServiceInfo1.hashCode(), licenseServiceInfo2.hashCode());
        System.assertEquals(licenseServiceInfo3.hashCode(), licenseServiceInfo4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerLicenseServiceInfo licenseServiceInfo = new IntServerLicenseServiceInfo();
        Map<String, String> x-property-mappings = licenseServiceInfo.getx-property-mappings();
        System.assertEquals('licenseId', x-property-mappings.get('license_id'));
        System.assertEquals('licenseType', x-property-mappings.get('license_type'));
        System.assertEquals('licenseCurrency', x-property-mappings.get('license_currency'));
        System.assertEquals('licenseOrderDate', x-property-mappings.get('license_order_date'));
        System.assertEquals('licenseCustid', x-property-mappings.get('license_custid'));
        System.assertEquals('licenseIp', x-property-mappings.get('license_ip'));
        System.assertEquals('licenseStatus', x-property-mappings.get('license_status'));
        System.assertEquals('licenseInvoice', x-property-mappings.get('license_invoice'));
        System.assertEquals('licenseCoupon', x-property-mappings.get('license_coupon'));
        System.assertEquals('licenseHostname', x-property-mappings.get('license_hostname'));
        System.assertEquals('licenseKey', x-property-mappings.get('license_key'));
        System.assertEquals('licenseExtra', x-property-mappings.get('license_extra'));
    }
}
