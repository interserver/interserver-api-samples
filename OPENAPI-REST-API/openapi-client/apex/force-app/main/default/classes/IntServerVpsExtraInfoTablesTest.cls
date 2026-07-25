@isTest
private class IntServerVpsExtraInfoTablesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsExtraInfoTables vpsExtraInfoTables1 = IntServerVpsExtraInfoTables.getExample();
        IntServerVpsExtraInfoTables vpsExtraInfoTables2 = vpsExtraInfoTables1;
        IntServerVpsExtraInfoTables vpsExtraInfoTables3 = new IntServerVpsExtraInfoTables();
        IntServerVpsExtraInfoTables vpsExtraInfoTables4 = vpsExtraInfoTables3;

        System.assert(vpsExtraInfoTables1.equals(vpsExtraInfoTables2));
        System.assert(vpsExtraInfoTables2.equals(vpsExtraInfoTables1));
        System.assert(vpsExtraInfoTables1.equals(vpsExtraInfoTables1));
        System.assert(vpsExtraInfoTables3.equals(vpsExtraInfoTables4));
        System.assert(vpsExtraInfoTables4.equals(vpsExtraInfoTables3));
        System.assert(vpsExtraInfoTables3.equals(vpsExtraInfoTables3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsExtraInfoTables vpsExtraInfoTables1 = IntServerVpsExtraInfoTables.getExample();
        IntServerVpsExtraInfoTables vpsExtraInfoTables2 = IntServerVpsExtraInfoTables.getExample();
        IntServerVpsExtraInfoTables vpsExtraInfoTables3 = new IntServerVpsExtraInfoTables();
        IntServerVpsExtraInfoTables vpsExtraInfoTables4 = new IntServerVpsExtraInfoTables();

        System.assert(vpsExtraInfoTables1.equals(vpsExtraInfoTables2));
        System.assert(vpsExtraInfoTables2.equals(vpsExtraInfoTables1));
        System.assert(vpsExtraInfoTables3.equals(vpsExtraInfoTables4));
        System.assert(vpsExtraInfoTables4.equals(vpsExtraInfoTables3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsExtraInfoTables vpsExtraInfoTables1 = IntServerVpsExtraInfoTables.getExample();
        IntServerVpsExtraInfoTables vpsExtraInfoTables2 = new IntServerVpsExtraInfoTables();

        System.assertEquals(false, vpsExtraInfoTables1.equals('foo'));
        System.assertEquals(false, vpsExtraInfoTables2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsExtraInfoTables vpsExtraInfoTables1 = IntServerVpsExtraInfoTables.getExample();
        IntServerVpsExtraInfoTables vpsExtraInfoTables2 = new IntServerVpsExtraInfoTables();
        IntServerVpsExtraInfoTables vpsExtraInfoTables3;

        System.assertEquals(false, vpsExtraInfoTables1.equals(vpsExtraInfoTables3));
        System.assertEquals(false, vpsExtraInfoTables2.equals(vpsExtraInfoTables3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsExtraInfoTables vpsExtraInfoTables1 = IntServerVpsExtraInfoTables.getExample();
        IntServerVpsExtraInfoTables vpsExtraInfoTables2 = new IntServerVpsExtraInfoTables();

        System.assertEquals(vpsExtraInfoTables1.hashCode(), vpsExtraInfoTables1.hashCode());
        System.assertEquals(vpsExtraInfoTables2.hashCode(), vpsExtraInfoTables2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsExtraInfoTables vpsExtraInfoTables1 = IntServerVpsExtraInfoTables.getExample();
        IntServerVpsExtraInfoTables vpsExtraInfoTables2 = IntServerVpsExtraInfoTables.getExample();
        IntServerVpsExtraInfoTables vpsExtraInfoTables3 = new IntServerVpsExtraInfoTables();
        IntServerVpsExtraInfoTables vpsExtraInfoTables4 = new IntServerVpsExtraInfoTables();

        System.assert(vpsExtraInfoTables1.equals(vpsExtraInfoTables2));
        System.assert(vpsExtraInfoTables3.equals(vpsExtraInfoTables4));
        System.assertEquals(vpsExtraInfoTables1.hashCode(), vpsExtraInfoTables2.hashCode());
        System.assertEquals(vpsExtraInfoTables3.hashCode(), vpsExtraInfoTables4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerVpsExtraInfoTables vpsExtraInfoTables = new IntServerVpsExtraInfoTables();
        Map<String, String> x-property-mappings = vpsExtraInfoTables.getx-property-mappings();
        System.assertEquals('ipInfo', x-property-mappings.get('ip_info'));
    }
}
