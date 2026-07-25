@isTest
private class IntServerLicensesOrderServiceTypesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerLicensesOrderServiceTypes licensesOrderServiceTypes1 = IntServerLicensesOrderServiceTypes.getExample();
        IntServerLicensesOrderServiceTypes licensesOrderServiceTypes2 = licensesOrderServiceTypes1;
        IntServerLicensesOrderServiceTypes licensesOrderServiceTypes3 = new IntServerLicensesOrderServiceTypes();
        IntServerLicensesOrderServiceTypes licensesOrderServiceTypes4 = licensesOrderServiceTypes3;

        System.assert(licensesOrderServiceTypes1.equals(licensesOrderServiceTypes2));
        System.assert(licensesOrderServiceTypes2.equals(licensesOrderServiceTypes1));
        System.assert(licensesOrderServiceTypes1.equals(licensesOrderServiceTypes1));
        System.assert(licensesOrderServiceTypes3.equals(licensesOrderServiceTypes4));
        System.assert(licensesOrderServiceTypes4.equals(licensesOrderServiceTypes3));
        System.assert(licensesOrderServiceTypes3.equals(licensesOrderServiceTypes3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerLicensesOrderServiceTypes licensesOrderServiceTypes1 = IntServerLicensesOrderServiceTypes.getExample();
        IntServerLicensesOrderServiceTypes licensesOrderServiceTypes2 = IntServerLicensesOrderServiceTypes.getExample();
        IntServerLicensesOrderServiceTypes licensesOrderServiceTypes3 = new IntServerLicensesOrderServiceTypes();
        IntServerLicensesOrderServiceTypes licensesOrderServiceTypes4 = new IntServerLicensesOrderServiceTypes();

        System.assert(licensesOrderServiceTypes1.equals(licensesOrderServiceTypes2));
        System.assert(licensesOrderServiceTypes2.equals(licensesOrderServiceTypes1));
        System.assert(licensesOrderServiceTypes3.equals(licensesOrderServiceTypes4));
        System.assert(licensesOrderServiceTypes4.equals(licensesOrderServiceTypes3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerLicensesOrderServiceTypes licensesOrderServiceTypes1 = IntServerLicensesOrderServiceTypes.getExample();
        IntServerLicensesOrderServiceTypes licensesOrderServiceTypes2 = new IntServerLicensesOrderServiceTypes();

        System.assertEquals(false, licensesOrderServiceTypes1.equals('foo'));
        System.assertEquals(false, licensesOrderServiceTypes2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerLicensesOrderServiceTypes licensesOrderServiceTypes1 = IntServerLicensesOrderServiceTypes.getExample();
        IntServerLicensesOrderServiceTypes licensesOrderServiceTypes2 = new IntServerLicensesOrderServiceTypes();
        IntServerLicensesOrderServiceTypes licensesOrderServiceTypes3;

        System.assertEquals(false, licensesOrderServiceTypes1.equals(licensesOrderServiceTypes3));
        System.assertEquals(false, licensesOrderServiceTypes2.equals(licensesOrderServiceTypes3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerLicensesOrderServiceTypes licensesOrderServiceTypes1 = IntServerLicensesOrderServiceTypes.getExample();
        IntServerLicensesOrderServiceTypes licensesOrderServiceTypes2 = new IntServerLicensesOrderServiceTypes();

        System.assertEquals(licensesOrderServiceTypes1.hashCode(), licensesOrderServiceTypes1.hashCode());
        System.assertEquals(licensesOrderServiceTypes2.hashCode(), licensesOrderServiceTypes2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerLicensesOrderServiceTypes licensesOrderServiceTypes1 = IntServerLicensesOrderServiceTypes.getExample();
        IntServerLicensesOrderServiceTypes licensesOrderServiceTypes2 = IntServerLicensesOrderServiceTypes.getExample();
        IntServerLicensesOrderServiceTypes licensesOrderServiceTypes3 = new IntServerLicensesOrderServiceTypes();
        IntServerLicensesOrderServiceTypes licensesOrderServiceTypes4 = new IntServerLicensesOrderServiceTypes();

        System.assert(licensesOrderServiceTypes1.equals(licensesOrderServiceTypes2));
        System.assert(licensesOrderServiceTypes3.equals(licensesOrderServiceTypes4));
        System.assertEquals(licensesOrderServiceTypes1.hashCode(), licensesOrderServiceTypes2.hashCode());
        System.assertEquals(licensesOrderServiceTypes3.hashCode(), licensesOrderServiceTypes4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerLicensesOrderServiceTypes licensesOrderServiceTypes = new IntServerLicensesOrderServiceTypes();
        Map<String, String> x-property-mappings = licensesOrderServiceTypes.getx-property-mappings();
        System.assertEquals('licensesOrderServiceTypes11482', x-property-mappings.get('LicensesOrderServiceTypes11482'));
    }
}
