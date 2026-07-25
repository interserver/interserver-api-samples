@isTest
private class IntServerVpsBackupRowsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsBackupRows vpsBackupRows1 = IntServerVpsBackupRows.getExample();
        IntServerVpsBackupRows vpsBackupRows2 = vpsBackupRows1;
        IntServerVpsBackupRows vpsBackupRows3 = new IntServerVpsBackupRows();
        IntServerVpsBackupRows vpsBackupRows4 = vpsBackupRows3;

        System.assert(vpsBackupRows1.equals(vpsBackupRows2));
        System.assert(vpsBackupRows2.equals(vpsBackupRows1));
        System.assert(vpsBackupRows1.equals(vpsBackupRows1));
        System.assert(vpsBackupRows3.equals(vpsBackupRows4));
        System.assert(vpsBackupRows4.equals(vpsBackupRows3));
        System.assert(vpsBackupRows3.equals(vpsBackupRows3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsBackupRows vpsBackupRows1 = IntServerVpsBackupRows.getExample();
        IntServerVpsBackupRows vpsBackupRows2 = IntServerVpsBackupRows.getExample();
        IntServerVpsBackupRows vpsBackupRows3 = new IntServerVpsBackupRows();
        IntServerVpsBackupRows vpsBackupRows4 = new IntServerVpsBackupRows();

        System.assert(vpsBackupRows1.equals(vpsBackupRows2));
        System.assert(vpsBackupRows2.equals(vpsBackupRows1));
        System.assert(vpsBackupRows3.equals(vpsBackupRows4));
        System.assert(vpsBackupRows4.equals(vpsBackupRows3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsBackupRows vpsBackupRows1 = IntServerVpsBackupRows.getExample();
        IntServerVpsBackupRows vpsBackupRows2 = new IntServerVpsBackupRows();

        System.assertEquals(false, vpsBackupRows1.equals('foo'));
        System.assertEquals(false, vpsBackupRows2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsBackupRows vpsBackupRows1 = IntServerVpsBackupRows.getExample();
        IntServerVpsBackupRows vpsBackupRows2 = new IntServerVpsBackupRows();
        IntServerVpsBackupRows vpsBackupRows3;

        System.assertEquals(false, vpsBackupRows1.equals(vpsBackupRows3));
        System.assertEquals(false, vpsBackupRows2.equals(vpsBackupRows3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsBackupRows vpsBackupRows1 = IntServerVpsBackupRows.getExample();
        IntServerVpsBackupRows vpsBackupRows2 = new IntServerVpsBackupRows();

        System.assertEquals(vpsBackupRows1.hashCode(), vpsBackupRows1.hashCode());
        System.assertEquals(vpsBackupRows2.hashCode(), vpsBackupRows2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsBackupRows vpsBackupRows1 = IntServerVpsBackupRows.getExample();
        IntServerVpsBackupRows vpsBackupRows2 = IntServerVpsBackupRows.getExample();
        IntServerVpsBackupRows vpsBackupRows3 = new IntServerVpsBackupRows();
        IntServerVpsBackupRows vpsBackupRows4 = new IntServerVpsBackupRows();

        System.assert(vpsBackupRows1.equals(vpsBackupRows2));
        System.assert(vpsBackupRows3.equals(vpsBackupRows4));
        System.assertEquals(vpsBackupRows1.hashCode(), vpsBackupRows2.hashCode());
        System.assertEquals(vpsBackupRows3.hashCode(), vpsBackupRows4.hashCode());
    }
}
