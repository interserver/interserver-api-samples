@isTest
private class IntServerMailTutorialsTableRowTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailTutorialsTableRow mailTutorialsTableRow1 = IntServerMailTutorialsTableRow.getExample();
        IntServerMailTutorialsTableRow mailTutorialsTableRow2 = mailTutorialsTableRow1;
        IntServerMailTutorialsTableRow mailTutorialsTableRow3 = new IntServerMailTutorialsTableRow();
        IntServerMailTutorialsTableRow mailTutorialsTableRow4 = mailTutorialsTableRow3;

        System.assert(mailTutorialsTableRow1.equals(mailTutorialsTableRow2));
        System.assert(mailTutorialsTableRow2.equals(mailTutorialsTableRow1));
        System.assert(mailTutorialsTableRow1.equals(mailTutorialsTableRow1));
        System.assert(mailTutorialsTableRow3.equals(mailTutorialsTableRow4));
        System.assert(mailTutorialsTableRow4.equals(mailTutorialsTableRow3));
        System.assert(mailTutorialsTableRow3.equals(mailTutorialsTableRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailTutorialsTableRow mailTutorialsTableRow1 = IntServerMailTutorialsTableRow.getExample();
        IntServerMailTutorialsTableRow mailTutorialsTableRow2 = IntServerMailTutorialsTableRow.getExample();
        IntServerMailTutorialsTableRow mailTutorialsTableRow3 = new IntServerMailTutorialsTableRow();
        IntServerMailTutorialsTableRow mailTutorialsTableRow4 = new IntServerMailTutorialsTableRow();

        System.assert(mailTutorialsTableRow1.equals(mailTutorialsTableRow2));
        System.assert(mailTutorialsTableRow2.equals(mailTutorialsTableRow1));
        System.assert(mailTutorialsTableRow3.equals(mailTutorialsTableRow4));
        System.assert(mailTutorialsTableRow4.equals(mailTutorialsTableRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailTutorialsTableRow mailTutorialsTableRow1 = IntServerMailTutorialsTableRow.getExample();
        IntServerMailTutorialsTableRow mailTutorialsTableRow2 = new IntServerMailTutorialsTableRow();

        System.assertEquals(false, mailTutorialsTableRow1.equals('foo'));
        System.assertEquals(false, mailTutorialsTableRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailTutorialsTableRow mailTutorialsTableRow1 = IntServerMailTutorialsTableRow.getExample();
        IntServerMailTutorialsTableRow mailTutorialsTableRow2 = new IntServerMailTutorialsTableRow();
        IntServerMailTutorialsTableRow mailTutorialsTableRow3;

        System.assertEquals(false, mailTutorialsTableRow1.equals(mailTutorialsTableRow3));
        System.assertEquals(false, mailTutorialsTableRow2.equals(mailTutorialsTableRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailTutorialsTableRow mailTutorialsTableRow1 = IntServerMailTutorialsTableRow.getExample();
        IntServerMailTutorialsTableRow mailTutorialsTableRow2 = new IntServerMailTutorialsTableRow();

        System.assertEquals(mailTutorialsTableRow1.hashCode(), mailTutorialsTableRow1.hashCode());
        System.assertEquals(mailTutorialsTableRow2.hashCode(), mailTutorialsTableRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailTutorialsTableRow mailTutorialsTableRow1 = IntServerMailTutorialsTableRow.getExample();
        IntServerMailTutorialsTableRow mailTutorialsTableRow2 = IntServerMailTutorialsTableRow.getExample();
        IntServerMailTutorialsTableRow mailTutorialsTableRow3 = new IntServerMailTutorialsTableRow();
        IntServerMailTutorialsTableRow mailTutorialsTableRow4 = new IntServerMailTutorialsTableRow();

        System.assert(mailTutorialsTableRow1.equals(mailTutorialsTableRow2));
        System.assert(mailTutorialsTableRow3.equals(mailTutorialsTableRow4));
        System.assertEquals(mailTutorialsTableRow1.hashCode(), mailTutorialsTableRow2.hashCode());
        System.assertEquals(mailTutorialsTableRow3.hashCode(), mailTutorialsTableRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerMailTutorialsTableRow mailTutorialsTableRow = new IntServerMailTutorialsTableRow();
        Map<String, String> x-property-mappings = mailTutorialsTableRow.getx-property-mappings();
        System.assertEquals('r_desc', x-property-mappings.get('desc'));
    }
}
