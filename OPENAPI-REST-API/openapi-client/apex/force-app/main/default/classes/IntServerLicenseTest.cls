@isTest
private class IntServerLicenseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerLicense license1 = IntServerLicense.getExample();
        IntServerLicense license2 = license1;
        IntServerLicense license3 = new IntServerLicense();
        IntServerLicense license4 = license3;

        System.assert(license1.equals(license2));
        System.assert(license2.equals(license1));
        System.assert(license1.equals(license1));
        System.assert(license3.equals(license4));
        System.assert(license4.equals(license3));
        System.assert(license3.equals(license3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerLicense license1 = IntServerLicense.getExample();
        IntServerLicense license2 = IntServerLicense.getExample();
        IntServerLicense license3 = new IntServerLicense();
        IntServerLicense license4 = new IntServerLicense();

        System.assert(license1.equals(license2));
        System.assert(license2.equals(license1));
        System.assert(license3.equals(license4));
        System.assert(license4.equals(license3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerLicense license1 = IntServerLicense.getExample();
        IntServerLicense license2 = new IntServerLicense();

        System.assertEquals(false, license1.equals('foo'));
        System.assertEquals(false, license2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerLicense license1 = IntServerLicense.getExample();
        IntServerLicense license2 = new IntServerLicense();
        IntServerLicense license3;

        System.assertEquals(false, license1.equals(license3));
        System.assertEquals(false, license2.equals(license3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerLicense license1 = IntServerLicense.getExample();
        IntServerLicense license2 = new IntServerLicense();

        System.assertEquals(license1.hashCode(), license1.hashCode());
        System.assertEquals(license2.hashCode(), license2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerLicense license1 = IntServerLicense.getExample();
        IntServerLicense license2 = IntServerLicense.getExample();
        IntServerLicense license3 = new IntServerLicense();
        IntServerLicense license4 = new IntServerLicense();

        System.assert(license1.equals(license2));
        System.assert(license3.equals(license4));
        System.assertEquals(license1.hashCode(), license2.hashCode());
        System.assertEquals(license3.hashCode(), license4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerLicense license = new IntServerLicense();
        Map<String, String> x-property-mappings = license.getx-property-mappings();
        System.assertEquals('clientLinks', x-property-mappings.get('client_links'));
        System.assertEquals('r_package', x-property-mappings.get('package'));
        System.assertEquals('serviceOverviewExtra', x-property-mappings.get('service_overview_extra'));
        System.assertEquals('licenseKey', x-property-mappings.get('license_key'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerLicense license = new IntServerLicense();
        System.assertEquals(new List<IntServerLicenseClientLink>(), license.clientLinks);
        System.assertEquals(new List<String>(), license.serviceExtra);
        System.assertEquals(null, license.serviceInfo);
        System.assertEquals(null, license.billingDetails);
        System.assertEquals(null, license.custCurrency);
        System.assertEquals(null, license.custCurrencySymbol);
        System.assertEquals(null, license.r_package);
        System.assertEquals(null, license.extraInfoTables);
        System.assertEquals(null, license.serviceOverviewExtra);
        System.assertEquals(null, license.serviceType);
        System.assertEquals(null, license.licenseKey);
    }
}
