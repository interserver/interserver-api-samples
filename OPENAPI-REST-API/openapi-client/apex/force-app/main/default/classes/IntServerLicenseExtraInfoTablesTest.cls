@isTest
private class IntServerLicenseExtraInfoTablesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerLicenseExtraInfoTables licenseExtraInfoTables1 = IntServerLicenseExtraInfoTables.getExample();
        IntServerLicenseExtraInfoTables licenseExtraInfoTables2 = licenseExtraInfoTables1;
        IntServerLicenseExtraInfoTables licenseExtraInfoTables3 = new IntServerLicenseExtraInfoTables();
        IntServerLicenseExtraInfoTables licenseExtraInfoTables4 = licenseExtraInfoTables3;

        System.assert(licenseExtraInfoTables1.equals(licenseExtraInfoTables2));
        System.assert(licenseExtraInfoTables2.equals(licenseExtraInfoTables1));
        System.assert(licenseExtraInfoTables1.equals(licenseExtraInfoTables1));
        System.assert(licenseExtraInfoTables3.equals(licenseExtraInfoTables4));
        System.assert(licenseExtraInfoTables4.equals(licenseExtraInfoTables3));
        System.assert(licenseExtraInfoTables3.equals(licenseExtraInfoTables3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerLicenseExtraInfoTables licenseExtraInfoTables1 = IntServerLicenseExtraInfoTables.getExample();
        IntServerLicenseExtraInfoTables licenseExtraInfoTables2 = IntServerLicenseExtraInfoTables.getExample();
        IntServerLicenseExtraInfoTables licenseExtraInfoTables3 = new IntServerLicenseExtraInfoTables();
        IntServerLicenseExtraInfoTables licenseExtraInfoTables4 = new IntServerLicenseExtraInfoTables();

        System.assert(licenseExtraInfoTables1.equals(licenseExtraInfoTables2));
        System.assert(licenseExtraInfoTables2.equals(licenseExtraInfoTables1));
        System.assert(licenseExtraInfoTables3.equals(licenseExtraInfoTables4));
        System.assert(licenseExtraInfoTables4.equals(licenseExtraInfoTables3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerLicenseExtraInfoTables licenseExtraInfoTables1 = IntServerLicenseExtraInfoTables.getExample();
        IntServerLicenseExtraInfoTables licenseExtraInfoTables2 = new IntServerLicenseExtraInfoTables();

        System.assertEquals(false, licenseExtraInfoTables1.equals('foo'));
        System.assertEquals(false, licenseExtraInfoTables2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerLicenseExtraInfoTables licenseExtraInfoTables1 = IntServerLicenseExtraInfoTables.getExample();
        IntServerLicenseExtraInfoTables licenseExtraInfoTables2 = new IntServerLicenseExtraInfoTables();
        IntServerLicenseExtraInfoTables licenseExtraInfoTables3;

        System.assertEquals(false, licenseExtraInfoTables1.equals(licenseExtraInfoTables3));
        System.assertEquals(false, licenseExtraInfoTables2.equals(licenseExtraInfoTables3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerLicenseExtraInfoTables licenseExtraInfoTables1 = IntServerLicenseExtraInfoTables.getExample();
        IntServerLicenseExtraInfoTables licenseExtraInfoTables2 = new IntServerLicenseExtraInfoTables();

        System.assertEquals(licenseExtraInfoTables1.hashCode(), licenseExtraInfoTables1.hashCode());
        System.assertEquals(licenseExtraInfoTables2.hashCode(), licenseExtraInfoTables2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerLicenseExtraInfoTables licenseExtraInfoTables1 = IntServerLicenseExtraInfoTables.getExample();
        IntServerLicenseExtraInfoTables licenseExtraInfoTables2 = IntServerLicenseExtraInfoTables.getExample();
        IntServerLicenseExtraInfoTables licenseExtraInfoTables3 = new IntServerLicenseExtraInfoTables();
        IntServerLicenseExtraInfoTables licenseExtraInfoTables4 = new IntServerLicenseExtraInfoTables();

        System.assert(licenseExtraInfoTables1.equals(licenseExtraInfoTables2));
        System.assert(licenseExtraInfoTables3.equals(licenseExtraInfoTables4));
        System.assertEquals(licenseExtraInfoTables1.hashCode(), licenseExtraInfoTables2.hashCode());
        System.assertEquals(licenseExtraInfoTables3.hashCode(), licenseExtraInfoTables4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerLicenseExtraInfoTables licenseExtraInfoTables = new IntServerLicenseExtraInfoTables();
        Map<String, String> x-property-mappings = licenseExtraInfoTables.getx-property-mappings();
        System.assertEquals('ipInfo', x-property-mappings.get('ip_info'));
    }
}
