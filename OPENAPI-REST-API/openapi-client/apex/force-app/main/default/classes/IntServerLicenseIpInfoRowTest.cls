@isTest
private class IntServerLicenseIpInfoRowTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerLicenseIpInfoRow licenseIpInfoRow1 = IntServerLicenseIpInfoRow.getExample();
        IntServerLicenseIpInfoRow licenseIpInfoRow2 = licenseIpInfoRow1;
        IntServerLicenseIpInfoRow licenseIpInfoRow3 = new IntServerLicenseIpInfoRow();
        IntServerLicenseIpInfoRow licenseIpInfoRow4 = licenseIpInfoRow3;

        System.assert(licenseIpInfoRow1.equals(licenseIpInfoRow2));
        System.assert(licenseIpInfoRow2.equals(licenseIpInfoRow1));
        System.assert(licenseIpInfoRow1.equals(licenseIpInfoRow1));
        System.assert(licenseIpInfoRow3.equals(licenseIpInfoRow4));
        System.assert(licenseIpInfoRow4.equals(licenseIpInfoRow3));
        System.assert(licenseIpInfoRow3.equals(licenseIpInfoRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerLicenseIpInfoRow licenseIpInfoRow1 = IntServerLicenseIpInfoRow.getExample();
        IntServerLicenseIpInfoRow licenseIpInfoRow2 = IntServerLicenseIpInfoRow.getExample();
        IntServerLicenseIpInfoRow licenseIpInfoRow3 = new IntServerLicenseIpInfoRow();
        IntServerLicenseIpInfoRow licenseIpInfoRow4 = new IntServerLicenseIpInfoRow();

        System.assert(licenseIpInfoRow1.equals(licenseIpInfoRow2));
        System.assert(licenseIpInfoRow2.equals(licenseIpInfoRow1));
        System.assert(licenseIpInfoRow3.equals(licenseIpInfoRow4));
        System.assert(licenseIpInfoRow4.equals(licenseIpInfoRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerLicenseIpInfoRow licenseIpInfoRow1 = IntServerLicenseIpInfoRow.getExample();
        IntServerLicenseIpInfoRow licenseIpInfoRow2 = new IntServerLicenseIpInfoRow();

        System.assertEquals(false, licenseIpInfoRow1.equals('foo'));
        System.assertEquals(false, licenseIpInfoRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerLicenseIpInfoRow licenseIpInfoRow1 = IntServerLicenseIpInfoRow.getExample();
        IntServerLicenseIpInfoRow licenseIpInfoRow2 = new IntServerLicenseIpInfoRow();
        IntServerLicenseIpInfoRow licenseIpInfoRow3;

        System.assertEquals(false, licenseIpInfoRow1.equals(licenseIpInfoRow3));
        System.assertEquals(false, licenseIpInfoRow2.equals(licenseIpInfoRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerLicenseIpInfoRow licenseIpInfoRow1 = IntServerLicenseIpInfoRow.getExample();
        IntServerLicenseIpInfoRow licenseIpInfoRow2 = new IntServerLicenseIpInfoRow();

        System.assertEquals(licenseIpInfoRow1.hashCode(), licenseIpInfoRow1.hashCode());
        System.assertEquals(licenseIpInfoRow2.hashCode(), licenseIpInfoRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerLicenseIpInfoRow licenseIpInfoRow1 = IntServerLicenseIpInfoRow.getExample();
        IntServerLicenseIpInfoRow licenseIpInfoRow2 = IntServerLicenseIpInfoRow.getExample();
        IntServerLicenseIpInfoRow licenseIpInfoRow3 = new IntServerLicenseIpInfoRow();
        IntServerLicenseIpInfoRow licenseIpInfoRow4 = new IntServerLicenseIpInfoRow();

        System.assert(licenseIpInfoRow1.equals(licenseIpInfoRow2));
        System.assert(licenseIpInfoRow3.equals(licenseIpInfoRow4));
        System.assertEquals(licenseIpInfoRow1.hashCode(), licenseIpInfoRow2.hashCode());
        System.assertEquals(licenseIpInfoRow3.hashCode(), licenseIpInfoRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerLicenseIpInfoRow licenseIpInfoRow = new IntServerLicenseIpInfoRow();
        Map<String, String> x-property-mappings = licenseIpInfoRow.getx-property-mappings();
        System.assertEquals('r_desc', x-property-mappings.get('desc'));
    }
}
