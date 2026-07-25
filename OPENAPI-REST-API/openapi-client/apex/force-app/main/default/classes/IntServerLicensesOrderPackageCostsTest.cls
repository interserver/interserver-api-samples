@isTest
private class IntServerLicensesOrderPackageCostsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerLicensesOrderPackageCosts licensesOrderPackageCosts1 = IntServerLicensesOrderPackageCosts.getExample();
        IntServerLicensesOrderPackageCosts licensesOrderPackageCosts2 = licensesOrderPackageCosts1;
        IntServerLicensesOrderPackageCosts licensesOrderPackageCosts3 = new IntServerLicensesOrderPackageCosts();
        IntServerLicensesOrderPackageCosts licensesOrderPackageCosts4 = licensesOrderPackageCosts3;

        System.assert(licensesOrderPackageCosts1.equals(licensesOrderPackageCosts2));
        System.assert(licensesOrderPackageCosts2.equals(licensesOrderPackageCosts1));
        System.assert(licensesOrderPackageCosts1.equals(licensesOrderPackageCosts1));
        System.assert(licensesOrderPackageCosts3.equals(licensesOrderPackageCosts4));
        System.assert(licensesOrderPackageCosts4.equals(licensesOrderPackageCosts3));
        System.assert(licensesOrderPackageCosts3.equals(licensesOrderPackageCosts3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerLicensesOrderPackageCosts licensesOrderPackageCosts1 = IntServerLicensesOrderPackageCosts.getExample();
        IntServerLicensesOrderPackageCosts licensesOrderPackageCosts2 = IntServerLicensesOrderPackageCosts.getExample();
        IntServerLicensesOrderPackageCosts licensesOrderPackageCosts3 = new IntServerLicensesOrderPackageCosts();
        IntServerLicensesOrderPackageCosts licensesOrderPackageCosts4 = new IntServerLicensesOrderPackageCosts();

        System.assert(licensesOrderPackageCosts1.equals(licensesOrderPackageCosts2));
        System.assert(licensesOrderPackageCosts2.equals(licensesOrderPackageCosts1));
        System.assert(licensesOrderPackageCosts3.equals(licensesOrderPackageCosts4));
        System.assert(licensesOrderPackageCosts4.equals(licensesOrderPackageCosts3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerLicensesOrderPackageCosts licensesOrderPackageCosts1 = IntServerLicensesOrderPackageCosts.getExample();
        IntServerLicensesOrderPackageCosts licensesOrderPackageCosts2 = new IntServerLicensesOrderPackageCosts();

        System.assertEquals(false, licensesOrderPackageCosts1.equals('foo'));
        System.assertEquals(false, licensesOrderPackageCosts2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerLicensesOrderPackageCosts licensesOrderPackageCosts1 = IntServerLicensesOrderPackageCosts.getExample();
        IntServerLicensesOrderPackageCosts licensesOrderPackageCosts2 = new IntServerLicensesOrderPackageCosts();
        IntServerLicensesOrderPackageCosts licensesOrderPackageCosts3;

        System.assertEquals(false, licensesOrderPackageCosts1.equals(licensesOrderPackageCosts3));
        System.assertEquals(false, licensesOrderPackageCosts2.equals(licensesOrderPackageCosts3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerLicensesOrderPackageCosts licensesOrderPackageCosts1 = IntServerLicensesOrderPackageCosts.getExample();
        IntServerLicensesOrderPackageCosts licensesOrderPackageCosts2 = new IntServerLicensesOrderPackageCosts();

        System.assertEquals(licensesOrderPackageCosts1.hashCode(), licensesOrderPackageCosts1.hashCode());
        System.assertEquals(licensesOrderPackageCosts2.hashCode(), licensesOrderPackageCosts2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerLicensesOrderPackageCosts licensesOrderPackageCosts1 = IntServerLicensesOrderPackageCosts.getExample();
        IntServerLicensesOrderPackageCosts licensesOrderPackageCosts2 = IntServerLicensesOrderPackageCosts.getExample();
        IntServerLicensesOrderPackageCosts licensesOrderPackageCosts3 = new IntServerLicensesOrderPackageCosts();
        IntServerLicensesOrderPackageCosts licensesOrderPackageCosts4 = new IntServerLicensesOrderPackageCosts();

        System.assert(licensesOrderPackageCosts1.equals(licensesOrderPackageCosts2));
        System.assert(licensesOrderPackageCosts3.equals(licensesOrderPackageCosts4));
        System.assertEquals(licensesOrderPackageCosts1.hashCode(), licensesOrderPackageCosts2.hashCode());
        System.assertEquals(licensesOrderPackageCosts3.hashCode(), licensesOrderPackageCosts4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerLicensesOrderPackageCosts licensesOrderPackageCosts = new IntServerLicensesOrderPackageCosts();
        Map<String, String> x-property-mappings = licensesOrderPackageCosts.getx-property-mappings();
        System.assertEquals('licensesOrderPackageCosts11468', x-property-mappings.get('LicensesOrderPackageCosts11468'));
    }
}
