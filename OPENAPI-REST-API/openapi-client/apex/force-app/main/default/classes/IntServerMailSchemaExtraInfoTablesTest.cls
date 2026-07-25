@isTest
private class IntServerMailSchemaExtraInfoTablesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailSchemaExtraInfoTables mailSchemaExtraInfoTables1 = IntServerMailSchemaExtraInfoTables.getExample();
        IntServerMailSchemaExtraInfoTables mailSchemaExtraInfoTables2 = mailSchemaExtraInfoTables1;
        IntServerMailSchemaExtraInfoTables mailSchemaExtraInfoTables3 = new IntServerMailSchemaExtraInfoTables();
        IntServerMailSchemaExtraInfoTables mailSchemaExtraInfoTables4 = mailSchemaExtraInfoTables3;

        System.assert(mailSchemaExtraInfoTables1.equals(mailSchemaExtraInfoTables2));
        System.assert(mailSchemaExtraInfoTables2.equals(mailSchemaExtraInfoTables1));
        System.assert(mailSchemaExtraInfoTables1.equals(mailSchemaExtraInfoTables1));
        System.assert(mailSchemaExtraInfoTables3.equals(mailSchemaExtraInfoTables4));
        System.assert(mailSchemaExtraInfoTables4.equals(mailSchemaExtraInfoTables3));
        System.assert(mailSchemaExtraInfoTables3.equals(mailSchemaExtraInfoTables3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailSchemaExtraInfoTables mailSchemaExtraInfoTables1 = IntServerMailSchemaExtraInfoTables.getExample();
        IntServerMailSchemaExtraInfoTables mailSchemaExtraInfoTables2 = IntServerMailSchemaExtraInfoTables.getExample();
        IntServerMailSchemaExtraInfoTables mailSchemaExtraInfoTables3 = new IntServerMailSchemaExtraInfoTables();
        IntServerMailSchemaExtraInfoTables mailSchemaExtraInfoTables4 = new IntServerMailSchemaExtraInfoTables();

        System.assert(mailSchemaExtraInfoTables1.equals(mailSchemaExtraInfoTables2));
        System.assert(mailSchemaExtraInfoTables2.equals(mailSchemaExtraInfoTables1));
        System.assert(mailSchemaExtraInfoTables3.equals(mailSchemaExtraInfoTables4));
        System.assert(mailSchemaExtraInfoTables4.equals(mailSchemaExtraInfoTables3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailSchemaExtraInfoTables mailSchemaExtraInfoTables1 = IntServerMailSchemaExtraInfoTables.getExample();
        IntServerMailSchemaExtraInfoTables mailSchemaExtraInfoTables2 = new IntServerMailSchemaExtraInfoTables();

        System.assertEquals(false, mailSchemaExtraInfoTables1.equals('foo'));
        System.assertEquals(false, mailSchemaExtraInfoTables2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailSchemaExtraInfoTables mailSchemaExtraInfoTables1 = IntServerMailSchemaExtraInfoTables.getExample();
        IntServerMailSchemaExtraInfoTables mailSchemaExtraInfoTables2 = new IntServerMailSchemaExtraInfoTables();
        IntServerMailSchemaExtraInfoTables mailSchemaExtraInfoTables3;

        System.assertEquals(false, mailSchemaExtraInfoTables1.equals(mailSchemaExtraInfoTables3));
        System.assertEquals(false, mailSchemaExtraInfoTables2.equals(mailSchemaExtraInfoTables3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailSchemaExtraInfoTables mailSchemaExtraInfoTables1 = IntServerMailSchemaExtraInfoTables.getExample();
        IntServerMailSchemaExtraInfoTables mailSchemaExtraInfoTables2 = new IntServerMailSchemaExtraInfoTables();

        System.assertEquals(mailSchemaExtraInfoTables1.hashCode(), mailSchemaExtraInfoTables1.hashCode());
        System.assertEquals(mailSchemaExtraInfoTables2.hashCode(), mailSchemaExtraInfoTables2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailSchemaExtraInfoTables mailSchemaExtraInfoTables1 = IntServerMailSchemaExtraInfoTables.getExample();
        IntServerMailSchemaExtraInfoTables mailSchemaExtraInfoTables2 = IntServerMailSchemaExtraInfoTables.getExample();
        IntServerMailSchemaExtraInfoTables mailSchemaExtraInfoTables3 = new IntServerMailSchemaExtraInfoTables();
        IntServerMailSchemaExtraInfoTables mailSchemaExtraInfoTables4 = new IntServerMailSchemaExtraInfoTables();

        System.assert(mailSchemaExtraInfoTables1.equals(mailSchemaExtraInfoTables2));
        System.assert(mailSchemaExtraInfoTables3.equals(mailSchemaExtraInfoTables4));
        System.assertEquals(mailSchemaExtraInfoTables1.hashCode(), mailSchemaExtraInfoTables2.hashCode());
        System.assertEquals(mailSchemaExtraInfoTables3.hashCode(), mailSchemaExtraInfoTables4.hashCode());
    }
}
