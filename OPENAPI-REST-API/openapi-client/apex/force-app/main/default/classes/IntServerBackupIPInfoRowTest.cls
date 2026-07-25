@isTest
private class IntServerBackupIPInfoRowTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerBackupIPInfoRow backupIPInfoRow1 = IntServerBackupIPInfoRow.getExample();
        IntServerBackupIPInfoRow backupIPInfoRow2 = backupIPInfoRow1;
        IntServerBackupIPInfoRow backupIPInfoRow3 = new IntServerBackupIPInfoRow();
        IntServerBackupIPInfoRow backupIPInfoRow4 = backupIPInfoRow3;

        System.assert(backupIPInfoRow1.equals(backupIPInfoRow2));
        System.assert(backupIPInfoRow2.equals(backupIPInfoRow1));
        System.assert(backupIPInfoRow1.equals(backupIPInfoRow1));
        System.assert(backupIPInfoRow3.equals(backupIPInfoRow4));
        System.assert(backupIPInfoRow4.equals(backupIPInfoRow3));
        System.assert(backupIPInfoRow3.equals(backupIPInfoRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerBackupIPInfoRow backupIPInfoRow1 = IntServerBackupIPInfoRow.getExample();
        IntServerBackupIPInfoRow backupIPInfoRow2 = IntServerBackupIPInfoRow.getExample();
        IntServerBackupIPInfoRow backupIPInfoRow3 = new IntServerBackupIPInfoRow();
        IntServerBackupIPInfoRow backupIPInfoRow4 = new IntServerBackupIPInfoRow();

        System.assert(backupIPInfoRow1.equals(backupIPInfoRow2));
        System.assert(backupIPInfoRow2.equals(backupIPInfoRow1));
        System.assert(backupIPInfoRow3.equals(backupIPInfoRow4));
        System.assert(backupIPInfoRow4.equals(backupIPInfoRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerBackupIPInfoRow backupIPInfoRow1 = IntServerBackupIPInfoRow.getExample();
        IntServerBackupIPInfoRow backupIPInfoRow2 = new IntServerBackupIPInfoRow();

        System.assertEquals(false, backupIPInfoRow1.equals('foo'));
        System.assertEquals(false, backupIPInfoRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerBackupIPInfoRow backupIPInfoRow1 = IntServerBackupIPInfoRow.getExample();
        IntServerBackupIPInfoRow backupIPInfoRow2 = new IntServerBackupIPInfoRow();
        IntServerBackupIPInfoRow backupIPInfoRow3;

        System.assertEquals(false, backupIPInfoRow1.equals(backupIPInfoRow3));
        System.assertEquals(false, backupIPInfoRow2.equals(backupIPInfoRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerBackupIPInfoRow backupIPInfoRow1 = IntServerBackupIPInfoRow.getExample();
        IntServerBackupIPInfoRow backupIPInfoRow2 = new IntServerBackupIPInfoRow();

        System.assertEquals(backupIPInfoRow1.hashCode(), backupIPInfoRow1.hashCode());
        System.assertEquals(backupIPInfoRow2.hashCode(), backupIPInfoRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerBackupIPInfoRow backupIPInfoRow1 = IntServerBackupIPInfoRow.getExample();
        IntServerBackupIPInfoRow backupIPInfoRow2 = IntServerBackupIPInfoRow.getExample();
        IntServerBackupIPInfoRow backupIPInfoRow3 = new IntServerBackupIPInfoRow();
        IntServerBackupIPInfoRow backupIPInfoRow4 = new IntServerBackupIPInfoRow();

        System.assert(backupIPInfoRow1.equals(backupIPInfoRow2));
        System.assert(backupIPInfoRow3.equals(backupIPInfoRow4));
        System.assertEquals(backupIPInfoRow1.hashCode(), backupIPInfoRow2.hashCode());
        System.assertEquals(backupIPInfoRow3.hashCode(), backupIPInfoRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerBackupIPInfoRow backupIPInfoRow = new IntServerBackupIPInfoRow();
        Map<String, String> x-property-mappings = backupIPInfoRow.getx-property-mappings();
        System.assertEquals('r_desc', x-property-mappings.get('desc'));
    }
}
