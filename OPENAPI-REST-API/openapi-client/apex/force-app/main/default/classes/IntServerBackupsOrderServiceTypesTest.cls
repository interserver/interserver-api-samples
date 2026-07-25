@isTest
private class IntServerBackupsOrderServiceTypesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerBackupsOrderServiceTypes backupsOrderServiceTypes1 = IntServerBackupsOrderServiceTypes.getExample();
        IntServerBackupsOrderServiceTypes backupsOrderServiceTypes2 = backupsOrderServiceTypes1;
        IntServerBackupsOrderServiceTypes backupsOrderServiceTypes3 = new IntServerBackupsOrderServiceTypes();
        IntServerBackupsOrderServiceTypes backupsOrderServiceTypes4 = backupsOrderServiceTypes3;

        System.assert(backupsOrderServiceTypes1.equals(backupsOrderServiceTypes2));
        System.assert(backupsOrderServiceTypes2.equals(backupsOrderServiceTypes1));
        System.assert(backupsOrderServiceTypes1.equals(backupsOrderServiceTypes1));
        System.assert(backupsOrderServiceTypes3.equals(backupsOrderServiceTypes4));
        System.assert(backupsOrderServiceTypes4.equals(backupsOrderServiceTypes3));
        System.assert(backupsOrderServiceTypes3.equals(backupsOrderServiceTypes3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerBackupsOrderServiceTypes backupsOrderServiceTypes1 = IntServerBackupsOrderServiceTypes.getExample();
        IntServerBackupsOrderServiceTypes backupsOrderServiceTypes2 = IntServerBackupsOrderServiceTypes.getExample();
        IntServerBackupsOrderServiceTypes backupsOrderServiceTypes3 = new IntServerBackupsOrderServiceTypes();
        IntServerBackupsOrderServiceTypes backupsOrderServiceTypes4 = new IntServerBackupsOrderServiceTypes();

        System.assert(backupsOrderServiceTypes1.equals(backupsOrderServiceTypes2));
        System.assert(backupsOrderServiceTypes2.equals(backupsOrderServiceTypes1));
        System.assert(backupsOrderServiceTypes3.equals(backupsOrderServiceTypes4));
        System.assert(backupsOrderServiceTypes4.equals(backupsOrderServiceTypes3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerBackupsOrderServiceTypes backupsOrderServiceTypes1 = IntServerBackupsOrderServiceTypes.getExample();
        IntServerBackupsOrderServiceTypes backupsOrderServiceTypes2 = new IntServerBackupsOrderServiceTypes();

        System.assertEquals(false, backupsOrderServiceTypes1.equals('foo'));
        System.assertEquals(false, backupsOrderServiceTypes2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerBackupsOrderServiceTypes backupsOrderServiceTypes1 = IntServerBackupsOrderServiceTypes.getExample();
        IntServerBackupsOrderServiceTypes backupsOrderServiceTypes2 = new IntServerBackupsOrderServiceTypes();
        IntServerBackupsOrderServiceTypes backupsOrderServiceTypes3;

        System.assertEquals(false, backupsOrderServiceTypes1.equals(backupsOrderServiceTypes3));
        System.assertEquals(false, backupsOrderServiceTypes2.equals(backupsOrderServiceTypes3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerBackupsOrderServiceTypes backupsOrderServiceTypes1 = IntServerBackupsOrderServiceTypes.getExample();
        IntServerBackupsOrderServiceTypes backupsOrderServiceTypes2 = new IntServerBackupsOrderServiceTypes();

        System.assertEquals(backupsOrderServiceTypes1.hashCode(), backupsOrderServiceTypes1.hashCode());
        System.assertEquals(backupsOrderServiceTypes2.hashCode(), backupsOrderServiceTypes2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerBackupsOrderServiceTypes backupsOrderServiceTypes1 = IntServerBackupsOrderServiceTypes.getExample();
        IntServerBackupsOrderServiceTypes backupsOrderServiceTypes2 = IntServerBackupsOrderServiceTypes.getExample();
        IntServerBackupsOrderServiceTypes backupsOrderServiceTypes3 = new IntServerBackupsOrderServiceTypes();
        IntServerBackupsOrderServiceTypes backupsOrderServiceTypes4 = new IntServerBackupsOrderServiceTypes();

        System.assert(backupsOrderServiceTypes1.equals(backupsOrderServiceTypes2));
        System.assert(backupsOrderServiceTypes3.equals(backupsOrderServiceTypes4));
        System.assertEquals(backupsOrderServiceTypes1.hashCode(), backupsOrderServiceTypes2.hashCode());
        System.assertEquals(backupsOrderServiceTypes3.hashCode(), backupsOrderServiceTypes4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerBackupsOrderServiceTypes backupsOrderServiceTypes = new IntServerBackupsOrderServiceTypes();
        Map<String, String> x-property-mappings = backupsOrderServiceTypes.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('11006'));
    }
}
