@isTest
private class IntServerServerExtraInfoTablesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerExtraInfoTables serverExtraInfoTables1 = IntServerServerExtraInfoTables.getExample();
        IntServerServerExtraInfoTables serverExtraInfoTables2 = serverExtraInfoTables1;
        IntServerServerExtraInfoTables serverExtraInfoTables3 = new IntServerServerExtraInfoTables();
        IntServerServerExtraInfoTables serverExtraInfoTables4 = serverExtraInfoTables3;

        System.assert(serverExtraInfoTables1.equals(serverExtraInfoTables2));
        System.assert(serverExtraInfoTables2.equals(serverExtraInfoTables1));
        System.assert(serverExtraInfoTables1.equals(serverExtraInfoTables1));
        System.assert(serverExtraInfoTables3.equals(serverExtraInfoTables4));
        System.assert(serverExtraInfoTables4.equals(serverExtraInfoTables3));
        System.assert(serverExtraInfoTables3.equals(serverExtraInfoTables3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerExtraInfoTables serverExtraInfoTables1 = IntServerServerExtraInfoTables.getExample();
        IntServerServerExtraInfoTables serverExtraInfoTables2 = IntServerServerExtraInfoTables.getExample();
        IntServerServerExtraInfoTables serverExtraInfoTables3 = new IntServerServerExtraInfoTables();
        IntServerServerExtraInfoTables serverExtraInfoTables4 = new IntServerServerExtraInfoTables();

        System.assert(serverExtraInfoTables1.equals(serverExtraInfoTables2));
        System.assert(serverExtraInfoTables2.equals(serverExtraInfoTables1));
        System.assert(serverExtraInfoTables3.equals(serverExtraInfoTables4));
        System.assert(serverExtraInfoTables4.equals(serverExtraInfoTables3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerExtraInfoTables serverExtraInfoTables1 = IntServerServerExtraInfoTables.getExample();
        IntServerServerExtraInfoTables serverExtraInfoTables2 = new IntServerServerExtraInfoTables();

        System.assertEquals(false, serverExtraInfoTables1.equals('foo'));
        System.assertEquals(false, serverExtraInfoTables2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerExtraInfoTables serverExtraInfoTables1 = IntServerServerExtraInfoTables.getExample();
        IntServerServerExtraInfoTables serverExtraInfoTables2 = new IntServerServerExtraInfoTables();
        IntServerServerExtraInfoTables serverExtraInfoTables3;

        System.assertEquals(false, serverExtraInfoTables1.equals(serverExtraInfoTables3));
        System.assertEquals(false, serverExtraInfoTables2.equals(serverExtraInfoTables3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerExtraInfoTables serverExtraInfoTables1 = IntServerServerExtraInfoTables.getExample();
        IntServerServerExtraInfoTables serverExtraInfoTables2 = new IntServerServerExtraInfoTables();

        System.assertEquals(serverExtraInfoTables1.hashCode(), serverExtraInfoTables1.hashCode());
        System.assertEquals(serverExtraInfoTables2.hashCode(), serverExtraInfoTables2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerExtraInfoTables serverExtraInfoTables1 = IntServerServerExtraInfoTables.getExample();
        IntServerServerExtraInfoTables serverExtraInfoTables2 = IntServerServerExtraInfoTables.getExample();
        IntServerServerExtraInfoTables serverExtraInfoTables3 = new IntServerServerExtraInfoTables();
        IntServerServerExtraInfoTables serverExtraInfoTables4 = new IntServerServerExtraInfoTables();

        System.assert(serverExtraInfoTables1.equals(serverExtraInfoTables2));
        System.assert(serverExtraInfoTables3.equals(serverExtraInfoTables4));
        System.assertEquals(serverExtraInfoTables1.hashCode(), serverExtraInfoTables2.hashCode());
        System.assertEquals(serverExtraInfoTables3.hashCode(), serverExtraInfoTables4.hashCode());
    }
}
