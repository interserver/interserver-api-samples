@isTest
private class IntServerMailTutorialsTableTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailTutorialsTable mailTutorialsTable1 = IntServerMailTutorialsTable.getExample();
        IntServerMailTutorialsTable mailTutorialsTable2 = mailTutorialsTable1;
        IntServerMailTutorialsTable mailTutorialsTable3 = new IntServerMailTutorialsTable();
        IntServerMailTutorialsTable mailTutorialsTable4 = mailTutorialsTable3;

        System.assert(mailTutorialsTable1.equals(mailTutorialsTable2));
        System.assert(mailTutorialsTable2.equals(mailTutorialsTable1));
        System.assert(mailTutorialsTable1.equals(mailTutorialsTable1));
        System.assert(mailTutorialsTable3.equals(mailTutorialsTable4));
        System.assert(mailTutorialsTable4.equals(mailTutorialsTable3));
        System.assert(mailTutorialsTable3.equals(mailTutorialsTable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailTutorialsTable mailTutorialsTable1 = IntServerMailTutorialsTable.getExample();
        IntServerMailTutorialsTable mailTutorialsTable2 = IntServerMailTutorialsTable.getExample();
        IntServerMailTutorialsTable mailTutorialsTable3 = new IntServerMailTutorialsTable();
        IntServerMailTutorialsTable mailTutorialsTable4 = new IntServerMailTutorialsTable();

        System.assert(mailTutorialsTable1.equals(mailTutorialsTable2));
        System.assert(mailTutorialsTable2.equals(mailTutorialsTable1));
        System.assert(mailTutorialsTable3.equals(mailTutorialsTable4));
        System.assert(mailTutorialsTable4.equals(mailTutorialsTable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailTutorialsTable mailTutorialsTable1 = IntServerMailTutorialsTable.getExample();
        IntServerMailTutorialsTable mailTutorialsTable2 = new IntServerMailTutorialsTable();

        System.assertEquals(false, mailTutorialsTable1.equals('foo'));
        System.assertEquals(false, mailTutorialsTable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailTutorialsTable mailTutorialsTable1 = IntServerMailTutorialsTable.getExample();
        IntServerMailTutorialsTable mailTutorialsTable2 = new IntServerMailTutorialsTable();
        IntServerMailTutorialsTable mailTutorialsTable3;

        System.assertEquals(false, mailTutorialsTable1.equals(mailTutorialsTable3));
        System.assertEquals(false, mailTutorialsTable2.equals(mailTutorialsTable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailTutorialsTable mailTutorialsTable1 = IntServerMailTutorialsTable.getExample();
        IntServerMailTutorialsTable mailTutorialsTable2 = new IntServerMailTutorialsTable();

        System.assertEquals(mailTutorialsTable1.hashCode(), mailTutorialsTable1.hashCode());
        System.assertEquals(mailTutorialsTable2.hashCode(), mailTutorialsTable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailTutorialsTable mailTutorialsTable1 = IntServerMailTutorialsTable.getExample();
        IntServerMailTutorialsTable mailTutorialsTable2 = IntServerMailTutorialsTable.getExample();
        IntServerMailTutorialsTable mailTutorialsTable3 = new IntServerMailTutorialsTable();
        IntServerMailTutorialsTable mailTutorialsTable4 = new IntServerMailTutorialsTable();

        System.assert(mailTutorialsTable1.equals(mailTutorialsTable2));
        System.assert(mailTutorialsTable3.equals(mailTutorialsTable4));
        System.assertEquals(mailTutorialsTable1.hashCode(), mailTutorialsTable2.hashCode());
        System.assertEquals(mailTutorialsTable3.hashCode(), mailTutorialsTable4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerMailTutorialsTable mailTutorialsTable = new IntServerMailTutorialsTable();
        System.assertEquals(new List<IntServerMailTutorialsTableRow>(), mailTutorialsTable.rows);
        System.assertEquals(null, mailTutorialsTable.title);
    }
}
