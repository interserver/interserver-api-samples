@isTest
private class IntServerLicenseOrderRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerLicenseOrderRequest licenseOrderRequest1 = IntServerLicenseOrderRequest.getExample();
        IntServerLicenseOrderRequest licenseOrderRequest2 = licenseOrderRequest1;
        IntServerLicenseOrderRequest licenseOrderRequest3 = new IntServerLicenseOrderRequest();
        IntServerLicenseOrderRequest licenseOrderRequest4 = licenseOrderRequest3;

        System.assert(licenseOrderRequest1.equals(licenseOrderRequest2));
        System.assert(licenseOrderRequest2.equals(licenseOrderRequest1));
        System.assert(licenseOrderRequest1.equals(licenseOrderRequest1));
        System.assert(licenseOrderRequest3.equals(licenseOrderRequest4));
        System.assert(licenseOrderRequest4.equals(licenseOrderRequest3));
        System.assert(licenseOrderRequest3.equals(licenseOrderRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerLicenseOrderRequest licenseOrderRequest1 = IntServerLicenseOrderRequest.getExample();
        IntServerLicenseOrderRequest licenseOrderRequest2 = IntServerLicenseOrderRequest.getExample();
        IntServerLicenseOrderRequest licenseOrderRequest3 = new IntServerLicenseOrderRequest();
        IntServerLicenseOrderRequest licenseOrderRequest4 = new IntServerLicenseOrderRequest();

        System.assert(licenseOrderRequest1.equals(licenseOrderRequest2));
        System.assert(licenseOrderRequest2.equals(licenseOrderRequest1));
        System.assert(licenseOrderRequest3.equals(licenseOrderRequest4));
        System.assert(licenseOrderRequest4.equals(licenseOrderRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerLicenseOrderRequest licenseOrderRequest1 = IntServerLicenseOrderRequest.getExample();
        IntServerLicenseOrderRequest licenseOrderRequest2 = new IntServerLicenseOrderRequest();

        System.assertEquals(false, licenseOrderRequest1.equals('foo'));
        System.assertEquals(false, licenseOrderRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerLicenseOrderRequest licenseOrderRequest1 = IntServerLicenseOrderRequest.getExample();
        IntServerLicenseOrderRequest licenseOrderRequest2 = new IntServerLicenseOrderRequest();
        IntServerLicenseOrderRequest licenseOrderRequest3;

        System.assertEquals(false, licenseOrderRequest1.equals(licenseOrderRequest3));
        System.assertEquals(false, licenseOrderRequest2.equals(licenseOrderRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerLicenseOrderRequest licenseOrderRequest1 = IntServerLicenseOrderRequest.getExample();
        IntServerLicenseOrderRequest licenseOrderRequest2 = new IntServerLicenseOrderRequest();

        System.assertEquals(licenseOrderRequest1.hashCode(), licenseOrderRequest1.hashCode());
        System.assertEquals(licenseOrderRequest2.hashCode(), licenseOrderRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerLicenseOrderRequest licenseOrderRequest1 = IntServerLicenseOrderRequest.getExample();
        IntServerLicenseOrderRequest licenseOrderRequest2 = IntServerLicenseOrderRequest.getExample();
        IntServerLicenseOrderRequest licenseOrderRequest3 = new IntServerLicenseOrderRequest();
        IntServerLicenseOrderRequest licenseOrderRequest4 = new IntServerLicenseOrderRequest();

        System.assert(licenseOrderRequest1.equals(licenseOrderRequest2));
        System.assert(licenseOrderRequest3.equals(licenseOrderRequest4));
        System.assertEquals(licenseOrderRequest1.hashCode(), licenseOrderRequest2.hashCode());
        System.assertEquals(licenseOrderRequest3.hashCode(), licenseOrderRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerLicenseOrderRequest licenseOrderRequest = new IntServerLicenseOrderRequest();
        Map<String, String> x-property-mappings = licenseOrderRequest.getx-property-mappings();
        System.assertEquals('r_package', x-property-mappings.get('package'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerLicenseOrderRequest licenseOrderRequest = new IntServerLicenseOrderRequest();
        System.assertEquals(1, licenseOrderRequest.frequency);
        System.assertEquals('', licenseOrderRequest.coupon);
        System.assertEquals('', licenseOrderRequest.comment);
        System.assertEquals(null, licenseOrderRequest.r_package);
        System.assertEquals(null, licenseOrderRequest.ip);
        System.assertEquals(null, licenseOrderRequest.tos);
    }
}
