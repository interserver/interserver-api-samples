@isTest
private class IntServerLicensesOrderServiceCategorTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerLicensesOrderServiceCategor licensesOrderServiceCategories1 = IntServerLicensesOrderServiceCategor.getExample();
        IntServerLicensesOrderServiceCategor licensesOrderServiceCategories2 = licensesOrderServiceCategories1;
        IntServerLicensesOrderServiceCategor licensesOrderServiceCategories3 = new IntServerLicensesOrderServiceCategor();
        IntServerLicensesOrderServiceCategor licensesOrderServiceCategories4 = licensesOrderServiceCategories3;

        System.assert(licensesOrderServiceCategories1.equals(licensesOrderServiceCategories2));
        System.assert(licensesOrderServiceCategories2.equals(licensesOrderServiceCategories1));
        System.assert(licensesOrderServiceCategories1.equals(licensesOrderServiceCategories1));
        System.assert(licensesOrderServiceCategories3.equals(licensesOrderServiceCategories4));
        System.assert(licensesOrderServiceCategories4.equals(licensesOrderServiceCategories3));
        System.assert(licensesOrderServiceCategories3.equals(licensesOrderServiceCategories3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerLicensesOrderServiceCategor licensesOrderServiceCategories1 = IntServerLicensesOrderServiceCategor.getExample();
        IntServerLicensesOrderServiceCategor licensesOrderServiceCategories2 = IntServerLicensesOrderServiceCategor.getExample();
        IntServerLicensesOrderServiceCategor licensesOrderServiceCategories3 = new IntServerLicensesOrderServiceCategor();
        IntServerLicensesOrderServiceCategor licensesOrderServiceCategories4 = new IntServerLicensesOrderServiceCategor();

        System.assert(licensesOrderServiceCategories1.equals(licensesOrderServiceCategories2));
        System.assert(licensesOrderServiceCategories2.equals(licensesOrderServiceCategories1));
        System.assert(licensesOrderServiceCategories3.equals(licensesOrderServiceCategories4));
        System.assert(licensesOrderServiceCategories4.equals(licensesOrderServiceCategories3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerLicensesOrderServiceCategor licensesOrderServiceCategories1 = IntServerLicensesOrderServiceCategor.getExample();
        IntServerLicensesOrderServiceCategor licensesOrderServiceCategories2 = new IntServerLicensesOrderServiceCategor();

        System.assertEquals(false, licensesOrderServiceCategories1.equals('foo'));
        System.assertEquals(false, licensesOrderServiceCategories2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerLicensesOrderServiceCategor licensesOrderServiceCategories1 = IntServerLicensesOrderServiceCategor.getExample();
        IntServerLicensesOrderServiceCategor licensesOrderServiceCategories2 = new IntServerLicensesOrderServiceCategor();
        IntServerLicensesOrderServiceCategor licensesOrderServiceCategories3;

        System.assertEquals(false, licensesOrderServiceCategories1.equals(licensesOrderServiceCategories3));
        System.assertEquals(false, licensesOrderServiceCategories2.equals(licensesOrderServiceCategories3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerLicensesOrderServiceCategor licensesOrderServiceCategories1 = IntServerLicensesOrderServiceCategor.getExample();
        IntServerLicensesOrderServiceCategor licensesOrderServiceCategories2 = new IntServerLicensesOrderServiceCategor();

        System.assertEquals(licensesOrderServiceCategories1.hashCode(), licensesOrderServiceCategories1.hashCode());
        System.assertEquals(licensesOrderServiceCategories2.hashCode(), licensesOrderServiceCategories2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerLicensesOrderServiceCategor licensesOrderServiceCategories1 = IntServerLicensesOrderServiceCategor.getExample();
        IntServerLicensesOrderServiceCategor licensesOrderServiceCategories2 = IntServerLicensesOrderServiceCategor.getExample();
        IntServerLicensesOrderServiceCategor licensesOrderServiceCategories3 = new IntServerLicensesOrderServiceCategor();
        IntServerLicensesOrderServiceCategor licensesOrderServiceCategories4 = new IntServerLicensesOrderServiceCategor();

        System.assert(licensesOrderServiceCategories1.equals(licensesOrderServiceCategories2));
        System.assert(licensesOrderServiceCategories3.equals(licensesOrderServiceCategories4));
        System.assertEquals(licensesOrderServiceCategories1.hashCode(), licensesOrderServiceCategories2.hashCode());
        System.assertEquals(licensesOrderServiceCategories3.hashCode(), licensesOrderServiceCategories4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerLicensesOrderServiceCategor licensesOrderServiceCategories = new IntServerLicensesOrderServiceCategor();
        Map<String, String> x-property-mappings = licensesOrderServiceCategories.getx-property-mappings();
        System.assertEquals('licensesOrderServiceCategories509', x-property-mappings.get('LicensesOrderServiceCategories509'));
    }
}
