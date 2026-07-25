@isTest
private class IntServerLicenseServiceTypeTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerLicenseServiceType licenseServiceType1 = IntServerLicenseServiceType.getExample();
        IntServerLicenseServiceType licenseServiceType2 = licenseServiceType1;
        IntServerLicenseServiceType licenseServiceType3 = new IntServerLicenseServiceType();
        IntServerLicenseServiceType licenseServiceType4 = licenseServiceType3;

        System.assert(licenseServiceType1.equals(licenseServiceType2));
        System.assert(licenseServiceType2.equals(licenseServiceType1));
        System.assert(licenseServiceType1.equals(licenseServiceType1));
        System.assert(licenseServiceType3.equals(licenseServiceType4));
        System.assert(licenseServiceType4.equals(licenseServiceType3));
        System.assert(licenseServiceType3.equals(licenseServiceType3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerLicenseServiceType licenseServiceType1 = IntServerLicenseServiceType.getExample();
        IntServerLicenseServiceType licenseServiceType2 = IntServerLicenseServiceType.getExample();
        IntServerLicenseServiceType licenseServiceType3 = new IntServerLicenseServiceType();
        IntServerLicenseServiceType licenseServiceType4 = new IntServerLicenseServiceType();

        System.assert(licenseServiceType1.equals(licenseServiceType2));
        System.assert(licenseServiceType2.equals(licenseServiceType1));
        System.assert(licenseServiceType3.equals(licenseServiceType4));
        System.assert(licenseServiceType4.equals(licenseServiceType3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerLicenseServiceType licenseServiceType1 = IntServerLicenseServiceType.getExample();
        IntServerLicenseServiceType licenseServiceType2 = new IntServerLicenseServiceType();

        System.assertEquals(false, licenseServiceType1.equals('foo'));
        System.assertEquals(false, licenseServiceType2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerLicenseServiceType licenseServiceType1 = IntServerLicenseServiceType.getExample();
        IntServerLicenseServiceType licenseServiceType2 = new IntServerLicenseServiceType();
        IntServerLicenseServiceType licenseServiceType3;

        System.assertEquals(false, licenseServiceType1.equals(licenseServiceType3));
        System.assertEquals(false, licenseServiceType2.equals(licenseServiceType3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerLicenseServiceType licenseServiceType1 = IntServerLicenseServiceType.getExample();
        IntServerLicenseServiceType licenseServiceType2 = new IntServerLicenseServiceType();

        System.assertEquals(licenseServiceType1.hashCode(), licenseServiceType1.hashCode());
        System.assertEquals(licenseServiceType2.hashCode(), licenseServiceType2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerLicenseServiceType licenseServiceType1 = IntServerLicenseServiceType.getExample();
        IntServerLicenseServiceType licenseServiceType2 = IntServerLicenseServiceType.getExample();
        IntServerLicenseServiceType licenseServiceType3 = new IntServerLicenseServiceType();
        IntServerLicenseServiceType licenseServiceType4 = new IntServerLicenseServiceType();

        System.assert(licenseServiceType1.equals(licenseServiceType2));
        System.assert(licenseServiceType3.equals(licenseServiceType4));
        System.assertEquals(licenseServiceType1.hashCode(), licenseServiceType2.hashCode());
        System.assertEquals(licenseServiceType3.hashCode(), licenseServiceType4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerLicenseServiceType licenseServiceType = new IntServerLicenseServiceType();
        Map<String, String> x-property-mappings = licenseServiceType.getx-property-mappings();
        System.assertEquals('servicesId', x-property-mappings.get('services_id'));
        System.assertEquals('servicesName', x-property-mappings.get('services_name'));
        System.assertEquals('servicesCost', x-property-mappings.get('services_cost'));
        System.assertEquals('servicesCategory', x-property-mappings.get('services_category'));
        System.assertEquals('servicesBuyable', x-property-mappings.get('services_buyable'));
        System.assertEquals('servicesType', x-property-mappings.get('services_type'));
        System.assertEquals('servicesField1', x-property-mappings.get('services_field1'));
        System.assertEquals('servicesField2', x-property-mappings.get('services_field2'));
        System.assertEquals('servicesModule', x-property-mappings.get('services_module'));
    }
}
