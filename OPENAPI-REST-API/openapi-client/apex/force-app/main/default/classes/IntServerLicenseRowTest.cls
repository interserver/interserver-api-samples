@isTest
private class IntServerLicenseRowTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerLicenseRow licenseRow1 = IntServerLicenseRow.getExample();
        IntServerLicenseRow licenseRow2 = licenseRow1;
        IntServerLicenseRow licenseRow3 = new IntServerLicenseRow();
        IntServerLicenseRow licenseRow4 = licenseRow3;

        System.assert(licenseRow1.equals(licenseRow2));
        System.assert(licenseRow2.equals(licenseRow1));
        System.assert(licenseRow1.equals(licenseRow1));
        System.assert(licenseRow3.equals(licenseRow4));
        System.assert(licenseRow4.equals(licenseRow3));
        System.assert(licenseRow3.equals(licenseRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerLicenseRow licenseRow1 = IntServerLicenseRow.getExample();
        IntServerLicenseRow licenseRow2 = IntServerLicenseRow.getExample();
        IntServerLicenseRow licenseRow3 = new IntServerLicenseRow();
        IntServerLicenseRow licenseRow4 = new IntServerLicenseRow();

        System.assert(licenseRow1.equals(licenseRow2));
        System.assert(licenseRow2.equals(licenseRow1));
        System.assert(licenseRow3.equals(licenseRow4));
        System.assert(licenseRow4.equals(licenseRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerLicenseRow licenseRow1 = IntServerLicenseRow.getExample();
        IntServerLicenseRow licenseRow2 = new IntServerLicenseRow();

        System.assertEquals(false, licenseRow1.equals('foo'));
        System.assertEquals(false, licenseRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerLicenseRow licenseRow1 = IntServerLicenseRow.getExample();
        IntServerLicenseRow licenseRow2 = new IntServerLicenseRow();
        IntServerLicenseRow licenseRow3;

        System.assertEquals(false, licenseRow1.equals(licenseRow3));
        System.assertEquals(false, licenseRow2.equals(licenseRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerLicenseRow licenseRow1 = IntServerLicenseRow.getExample();
        IntServerLicenseRow licenseRow2 = new IntServerLicenseRow();

        System.assertEquals(licenseRow1.hashCode(), licenseRow1.hashCode());
        System.assertEquals(licenseRow2.hashCode(), licenseRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerLicenseRow licenseRow1 = IntServerLicenseRow.getExample();
        IntServerLicenseRow licenseRow2 = IntServerLicenseRow.getExample();
        IntServerLicenseRow licenseRow3 = new IntServerLicenseRow();
        IntServerLicenseRow licenseRow4 = new IntServerLicenseRow();

        System.assert(licenseRow1.equals(licenseRow2));
        System.assert(licenseRow3.equals(licenseRow4));
        System.assertEquals(licenseRow1.hashCode(), licenseRow2.hashCode());
        System.assertEquals(licenseRow3.hashCode(), licenseRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerLicenseRow licenseRow = new IntServerLicenseRow();
        Map<String, String> x-property-mappings = licenseRow.getx-property-mappings();
        System.assertEquals('licenseId', x-property-mappings.get('license_id'));
        System.assertEquals('licenseHostname', x-property-mappings.get('license_hostname'));
        System.assertEquals('licenseIp', x-property-mappings.get('license_ip'));
        System.assertEquals('servicesName', x-property-mappings.get('services_name'));
        System.assertEquals('licenseStatus', x-property-mappings.get('license_status'));
        System.assertEquals('invoicesPaid', x-property-mappings.get('invoices_paid'));
        System.assertEquals('invoicesDate', x-property-mappings.get('invoices_date'));
    }
}
