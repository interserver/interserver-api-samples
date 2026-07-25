@isTest
private class IntServerQuickserverExtraInfoTablesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerQuickserverExtraInfoTables quickserverExtraInfoTables1 = IntServerQuickserverExtraInfoTables.getExample();
        IntServerQuickserverExtraInfoTables quickserverExtraInfoTables2 = quickserverExtraInfoTables1;
        IntServerQuickserverExtraInfoTables quickserverExtraInfoTables3 = new IntServerQuickserverExtraInfoTables();
        IntServerQuickserverExtraInfoTables quickserverExtraInfoTables4 = quickserverExtraInfoTables3;

        System.assert(quickserverExtraInfoTables1.equals(quickserverExtraInfoTables2));
        System.assert(quickserverExtraInfoTables2.equals(quickserverExtraInfoTables1));
        System.assert(quickserverExtraInfoTables1.equals(quickserverExtraInfoTables1));
        System.assert(quickserverExtraInfoTables3.equals(quickserverExtraInfoTables4));
        System.assert(quickserverExtraInfoTables4.equals(quickserverExtraInfoTables3));
        System.assert(quickserverExtraInfoTables3.equals(quickserverExtraInfoTables3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerQuickserverExtraInfoTables quickserverExtraInfoTables1 = IntServerQuickserverExtraInfoTables.getExample();
        IntServerQuickserverExtraInfoTables quickserverExtraInfoTables2 = IntServerQuickserverExtraInfoTables.getExample();
        IntServerQuickserverExtraInfoTables quickserverExtraInfoTables3 = new IntServerQuickserverExtraInfoTables();
        IntServerQuickserverExtraInfoTables quickserverExtraInfoTables4 = new IntServerQuickserverExtraInfoTables();

        System.assert(quickserverExtraInfoTables1.equals(quickserverExtraInfoTables2));
        System.assert(quickserverExtraInfoTables2.equals(quickserverExtraInfoTables1));
        System.assert(quickserverExtraInfoTables3.equals(quickserverExtraInfoTables4));
        System.assert(quickserverExtraInfoTables4.equals(quickserverExtraInfoTables3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerQuickserverExtraInfoTables quickserverExtraInfoTables1 = IntServerQuickserverExtraInfoTables.getExample();
        IntServerQuickserverExtraInfoTables quickserverExtraInfoTables2 = new IntServerQuickserverExtraInfoTables();

        System.assertEquals(false, quickserverExtraInfoTables1.equals('foo'));
        System.assertEquals(false, quickserverExtraInfoTables2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerQuickserverExtraInfoTables quickserverExtraInfoTables1 = IntServerQuickserverExtraInfoTables.getExample();
        IntServerQuickserverExtraInfoTables quickserverExtraInfoTables2 = new IntServerQuickserverExtraInfoTables();
        IntServerQuickserverExtraInfoTables quickserverExtraInfoTables3;

        System.assertEquals(false, quickserverExtraInfoTables1.equals(quickserverExtraInfoTables3));
        System.assertEquals(false, quickserverExtraInfoTables2.equals(quickserverExtraInfoTables3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerQuickserverExtraInfoTables quickserverExtraInfoTables1 = IntServerQuickserverExtraInfoTables.getExample();
        IntServerQuickserverExtraInfoTables quickserverExtraInfoTables2 = new IntServerQuickserverExtraInfoTables();

        System.assertEquals(quickserverExtraInfoTables1.hashCode(), quickserverExtraInfoTables1.hashCode());
        System.assertEquals(quickserverExtraInfoTables2.hashCode(), quickserverExtraInfoTables2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerQuickserverExtraInfoTables quickserverExtraInfoTables1 = IntServerQuickserverExtraInfoTables.getExample();
        IntServerQuickserverExtraInfoTables quickserverExtraInfoTables2 = IntServerQuickserverExtraInfoTables.getExample();
        IntServerQuickserverExtraInfoTables quickserverExtraInfoTables3 = new IntServerQuickserverExtraInfoTables();
        IntServerQuickserverExtraInfoTables quickserverExtraInfoTables4 = new IntServerQuickserverExtraInfoTables();

        System.assert(quickserverExtraInfoTables1.equals(quickserverExtraInfoTables2));
        System.assert(quickserverExtraInfoTables3.equals(quickserverExtraInfoTables4));
        System.assertEquals(quickserverExtraInfoTables1.hashCode(), quickserverExtraInfoTables2.hashCode());
        System.assertEquals(quickserverExtraInfoTables3.hashCode(), quickserverExtraInfoTables4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerQuickserverExtraInfoTables quickserverExtraInfoTables = new IntServerQuickserverExtraInfoTables();
        Map<String, String> x-property-mappings = quickserverExtraInfoTables.getx-property-mappings();
        System.assertEquals('ipInfo', x-property-mappings.get('ip_info'));
    }
}
