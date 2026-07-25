@isTest
private class IntServerMailExtraInfoTableTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailExtraInfoTable mailExtraInfoTable1 = IntServerMailExtraInfoTable.getExample();
        IntServerMailExtraInfoTable mailExtraInfoTable2 = mailExtraInfoTable1;
        IntServerMailExtraInfoTable mailExtraInfoTable3 = new IntServerMailExtraInfoTable();
        IntServerMailExtraInfoTable mailExtraInfoTable4 = mailExtraInfoTable3;

        System.assert(mailExtraInfoTable1.equals(mailExtraInfoTable2));
        System.assert(mailExtraInfoTable2.equals(mailExtraInfoTable1));
        System.assert(mailExtraInfoTable1.equals(mailExtraInfoTable1));
        System.assert(mailExtraInfoTable3.equals(mailExtraInfoTable4));
        System.assert(mailExtraInfoTable4.equals(mailExtraInfoTable3));
        System.assert(mailExtraInfoTable3.equals(mailExtraInfoTable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailExtraInfoTable mailExtraInfoTable1 = IntServerMailExtraInfoTable.getExample();
        IntServerMailExtraInfoTable mailExtraInfoTable2 = IntServerMailExtraInfoTable.getExample();
        IntServerMailExtraInfoTable mailExtraInfoTable3 = new IntServerMailExtraInfoTable();
        IntServerMailExtraInfoTable mailExtraInfoTable4 = new IntServerMailExtraInfoTable();

        System.assert(mailExtraInfoTable1.equals(mailExtraInfoTable2));
        System.assert(mailExtraInfoTable2.equals(mailExtraInfoTable1));
        System.assert(mailExtraInfoTable3.equals(mailExtraInfoTable4));
        System.assert(mailExtraInfoTable4.equals(mailExtraInfoTable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailExtraInfoTable mailExtraInfoTable1 = IntServerMailExtraInfoTable.getExample();
        IntServerMailExtraInfoTable mailExtraInfoTable2 = new IntServerMailExtraInfoTable();

        System.assertEquals(false, mailExtraInfoTable1.equals('foo'));
        System.assertEquals(false, mailExtraInfoTable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailExtraInfoTable mailExtraInfoTable1 = IntServerMailExtraInfoTable.getExample();
        IntServerMailExtraInfoTable mailExtraInfoTable2 = new IntServerMailExtraInfoTable();
        IntServerMailExtraInfoTable mailExtraInfoTable3;

        System.assertEquals(false, mailExtraInfoTable1.equals(mailExtraInfoTable3));
        System.assertEquals(false, mailExtraInfoTable2.equals(mailExtraInfoTable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailExtraInfoTable mailExtraInfoTable1 = IntServerMailExtraInfoTable.getExample();
        IntServerMailExtraInfoTable mailExtraInfoTable2 = new IntServerMailExtraInfoTable();

        System.assertEquals(mailExtraInfoTable1.hashCode(), mailExtraInfoTable1.hashCode());
        System.assertEquals(mailExtraInfoTable2.hashCode(), mailExtraInfoTable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailExtraInfoTable mailExtraInfoTable1 = IntServerMailExtraInfoTable.getExample();
        IntServerMailExtraInfoTable mailExtraInfoTable2 = IntServerMailExtraInfoTable.getExample();
        IntServerMailExtraInfoTable mailExtraInfoTable3 = new IntServerMailExtraInfoTable();
        IntServerMailExtraInfoTable mailExtraInfoTable4 = new IntServerMailExtraInfoTable();

        System.assert(mailExtraInfoTable1.equals(mailExtraInfoTable2));
        System.assert(mailExtraInfoTable3.equals(mailExtraInfoTable4));
        System.assertEquals(mailExtraInfoTable1.hashCode(), mailExtraInfoTable2.hashCode());
        System.assertEquals(mailExtraInfoTable3.hashCode(), mailExtraInfoTable4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerMailExtraInfoTable mailExtraInfoTable = new IntServerMailExtraInfoTable();
        System.assertEquals(new List<IntServerMailExtraInfoTableRow>(), mailExtraInfoTable.rows);
        System.assertEquals(null, mailExtraInfoTable.title);
    }
}
