@isTest
private class IntServerBackupIPInfoTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerBackupIPInfo backupIPInfo1 = IntServerBackupIPInfo.getExample();
        IntServerBackupIPInfo backupIPInfo2 = backupIPInfo1;
        IntServerBackupIPInfo backupIPInfo3 = new IntServerBackupIPInfo();
        IntServerBackupIPInfo backupIPInfo4 = backupIPInfo3;

        System.assert(backupIPInfo1.equals(backupIPInfo2));
        System.assert(backupIPInfo2.equals(backupIPInfo1));
        System.assert(backupIPInfo1.equals(backupIPInfo1));
        System.assert(backupIPInfo3.equals(backupIPInfo4));
        System.assert(backupIPInfo4.equals(backupIPInfo3));
        System.assert(backupIPInfo3.equals(backupIPInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerBackupIPInfo backupIPInfo1 = IntServerBackupIPInfo.getExample();
        IntServerBackupIPInfo backupIPInfo2 = IntServerBackupIPInfo.getExample();
        IntServerBackupIPInfo backupIPInfo3 = new IntServerBackupIPInfo();
        IntServerBackupIPInfo backupIPInfo4 = new IntServerBackupIPInfo();

        System.assert(backupIPInfo1.equals(backupIPInfo2));
        System.assert(backupIPInfo2.equals(backupIPInfo1));
        System.assert(backupIPInfo3.equals(backupIPInfo4));
        System.assert(backupIPInfo4.equals(backupIPInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerBackupIPInfo backupIPInfo1 = IntServerBackupIPInfo.getExample();
        IntServerBackupIPInfo backupIPInfo2 = new IntServerBackupIPInfo();

        System.assertEquals(false, backupIPInfo1.equals('foo'));
        System.assertEquals(false, backupIPInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerBackupIPInfo backupIPInfo1 = IntServerBackupIPInfo.getExample();
        IntServerBackupIPInfo backupIPInfo2 = new IntServerBackupIPInfo();
        IntServerBackupIPInfo backupIPInfo3;

        System.assertEquals(false, backupIPInfo1.equals(backupIPInfo3));
        System.assertEquals(false, backupIPInfo2.equals(backupIPInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerBackupIPInfo backupIPInfo1 = IntServerBackupIPInfo.getExample();
        IntServerBackupIPInfo backupIPInfo2 = new IntServerBackupIPInfo();

        System.assertEquals(backupIPInfo1.hashCode(), backupIPInfo1.hashCode());
        System.assertEquals(backupIPInfo2.hashCode(), backupIPInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerBackupIPInfo backupIPInfo1 = IntServerBackupIPInfo.getExample();
        IntServerBackupIPInfo backupIPInfo2 = IntServerBackupIPInfo.getExample();
        IntServerBackupIPInfo backupIPInfo3 = new IntServerBackupIPInfo();
        IntServerBackupIPInfo backupIPInfo4 = new IntServerBackupIPInfo();

        System.assert(backupIPInfo1.equals(backupIPInfo2));
        System.assert(backupIPInfo3.equals(backupIPInfo4));
        System.assertEquals(backupIPInfo1.hashCode(), backupIPInfo2.hashCode());
        System.assertEquals(backupIPInfo3.hashCode(), backupIPInfo4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerBackupIPInfo backupIPInfo = new IntServerBackupIPInfo();
        System.assertEquals(new List<IntServerBackupIPInfoRow>(), backupIPInfo.rows);
        System.assertEquals(null, backupIPInfo.title);
    }
}
