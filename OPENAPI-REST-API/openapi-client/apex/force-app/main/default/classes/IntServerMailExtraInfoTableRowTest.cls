@isTest
private class IntServerMailExtraInfoTableRowTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailExtraInfoTableRow mailExtraInfoTableRow1 = IntServerMailExtraInfoTableRow.getExample();
        IntServerMailExtraInfoTableRow mailExtraInfoTableRow2 = mailExtraInfoTableRow1;
        IntServerMailExtraInfoTableRow mailExtraInfoTableRow3 = new IntServerMailExtraInfoTableRow();
        IntServerMailExtraInfoTableRow mailExtraInfoTableRow4 = mailExtraInfoTableRow3;

        System.assert(mailExtraInfoTableRow1.equals(mailExtraInfoTableRow2));
        System.assert(mailExtraInfoTableRow2.equals(mailExtraInfoTableRow1));
        System.assert(mailExtraInfoTableRow1.equals(mailExtraInfoTableRow1));
        System.assert(mailExtraInfoTableRow3.equals(mailExtraInfoTableRow4));
        System.assert(mailExtraInfoTableRow4.equals(mailExtraInfoTableRow3));
        System.assert(mailExtraInfoTableRow3.equals(mailExtraInfoTableRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailExtraInfoTableRow mailExtraInfoTableRow1 = IntServerMailExtraInfoTableRow.getExample();
        IntServerMailExtraInfoTableRow mailExtraInfoTableRow2 = IntServerMailExtraInfoTableRow.getExample();
        IntServerMailExtraInfoTableRow mailExtraInfoTableRow3 = new IntServerMailExtraInfoTableRow();
        IntServerMailExtraInfoTableRow mailExtraInfoTableRow4 = new IntServerMailExtraInfoTableRow();

        System.assert(mailExtraInfoTableRow1.equals(mailExtraInfoTableRow2));
        System.assert(mailExtraInfoTableRow2.equals(mailExtraInfoTableRow1));
        System.assert(mailExtraInfoTableRow3.equals(mailExtraInfoTableRow4));
        System.assert(mailExtraInfoTableRow4.equals(mailExtraInfoTableRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailExtraInfoTableRow mailExtraInfoTableRow1 = IntServerMailExtraInfoTableRow.getExample();
        IntServerMailExtraInfoTableRow mailExtraInfoTableRow2 = new IntServerMailExtraInfoTableRow();

        System.assertEquals(false, mailExtraInfoTableRow1.equals('foo'));
        System.assertEquals(false, mailExtraInfoTableRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailExtraInfoTableRow mailExtraInfoTableRow1 = IntServerMailExtraInfoTableRow.getExample();
        IntServerMailExtraInfoTableRow mailExtraInfoTableRow2 = new IntServerMailExtraInfoTableRow();
        IntServerMailExtraInfoTableRow mailExtraInfoTableRow3;

        System.assertEquals(false, mailExtraInfoTableRow1.equals(mailExtraInfoTableRow3));
        System.assertEquals(false, mailExtraInfoTableRow2.equals(mailExtraInfoTableRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailExtraInfoTableRow mailExtraInfoTableRow1 = IntServerMailExtraInfoTableRow.getExample();
        IntServerMailExtraInfoTableRow mailExtraInfoTableRow2 = new IntServerMailExtraInfoTableRow();

        System.assertEquals(mailExtraInfoTableRow1.hashCode(), mailExtraInfoTableRow1.hashCode());
        System.assertEquals(mailExtraInfoTableRow2.hashCode(), mailExtraInfoTableRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailExtraInfoTableRow mailExtraInfoTableRow1 = IntServerMailExtraInfoTableRow.getExample();
        IntServerMailExtraInfoTableRow mailExtraInfoTableRow2 = IntServerMailExtraInfoTableRow.getExample();
        IntServerMailExtraInfoTableRow mailExtraInfoTableRow3 = new IntServerMailExtraInfoTableRow();
        IntServerMailExtraInfoTableRow mailExtraInfoTableRow4 = new IntServerMailExtraInfoTableRow();

        System.assert(mailExtraInfoTableRow1.equals(mailExtraInfoTableRow2));
        System.assert(mailExtraInfoTableRow3.equals(mailExtraInfoTableRow4));
        System.assertEquals(mailExtraInfoTableRow1.hashCode(), mailExtraInfoTableRow2.hashCode());
        System.assertEquals(mailExtraInfoTableRow3.hashCode(), mailExtraInfoTableRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerMailExtraInfoTableRow mailExtraInfoTableRow = new IntServerMailExtraInfoTableRow();
        Map<String, String> x-property-mappings = mailExtraInfoTableRow.getx-property-mappings();
        System.assertEquals('r_desc', x-property-mappings.get('desc'));
    }
}
