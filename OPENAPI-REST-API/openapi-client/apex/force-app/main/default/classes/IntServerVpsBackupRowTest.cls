@isTest
private class IntServerVpsBackupRowTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsBackupRow vpsBackupRow1 = IntServerVpsBackupRow.getExample();
        IntServerVpsBackupRow vpsBackupRow2 = vpsBackupRow1;
        IntServerVpsBackupRow vpsBackupRow3 = new IntServerVpsBackupRow();
        IntServerVpsBackupRow vpsBackupRow4 = vpsBackupRow3;

        System.assert(vpsBackupRow1.equals(vpsBackupRow2));
        System.assert(vpsBackupRow2.equals(vpsBackupRow1));
        System.assert(vpsBackupRow1.equals(vpsBackupRow1));
        System.assert(vpsBackupRow3.equals(vpsBackupRow4));
        System.assert(vpsBackupRow4.equals(vpsBackupRow3));
        System.assert(vpsBackupRow3.equals(vpsBackupRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsBackupRow vpsBackupRow1 = IntServerVpsBackupRow.getExample();
        IntServerVpsBackupRow vpsBackupRow2 = IntServerVpsBackupRow.getExample();
        IntServerVpsBackupRow vpsBackupRow3 = new IntServerVpsBackupRow();
        IntServerVpsBackupRow vpsBackupRow4 = new IntServerVpsBackupRow();

        System.assert(vpsBackupRow1.equals(vpsBackupRow2));
        System.assert(vpsBackupRow2.equals(vpsBackupRow1));
        System.assert(vpsBackupRow3.equals(vpsBackupRow4));
        System.assert(vpsBackupRow4.equals(vpsBackupRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsBackupRow vpsBackupRow1 = IntServerVpsBackupRow.getExample();
        IntServerVpsBackupRow vpsBackupRow2 = new IntServerVpsBackupRow();

        System.assertEquals(false, vpsBackupRow1.equals('foo'));
        System.assertEquals(false, vpsBackupRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsBackupRow vpsBackupRow1 = IntServerVpsBackupRow.getExample();
        IntServerVpsBackupRow vpsBackupRow2 = new IntServerVpsBackupRow();
        IntServerVpsBackupRow vpsBackupRow3;

        System.assertEquals(false, vpsBackupRow1.equals(vpsBackupRow3));
        System.assertEquals(false, vpsBackupRow2.equals(vpsBackupRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsBackupRow vpsBackupRow1 = IntServerVpsBackupRow.getExample();
        IntServerVpsBackupRow vpsBackupRow2 = new IntServerVpsBackupRow();

        System.assertEquals(vpsBackupRow1.hashCode(), vpsBackupRow1.hashCode());
        System.assertEquals(vpsBackupRow2.hashCode(), vpsBackupRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsBackupRow vpsBackupRow1 = IntServerVpsBackupRow.getExample();
        IntServerVpsBackupRow vpsBackupRow2 = IntServerVpsBackupRow.getExample();
        IntServerVpsBackupRow vpsBackupRow3 = new IntServerVpsBackupRow();
        IntServerVpsBackupRow vpsBackupRow4 = new IntServerVpsBackupRow();

        System.assert(vpsBackupRow1.equals(vpsBackupRow2));
        System.assert(vpsBackupRow3.equals(vpsBackupRow4));
        System.assertEquals(vpsBackupRow1.hashCode(), vpsBackupRow2.hashCode());
        System.assertEquals(vpsBackupRow3.hashCode(), vpsBackupRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerVpsBackupRow vpsBackupRow = new IntServerVpsBackupRow();
        Map<String, String> x-property-mappings = vpsBackupRow.getx-property-mappings();
        System.assertEquals('r_date', x-property-mappings.get('date'));
    }
}
