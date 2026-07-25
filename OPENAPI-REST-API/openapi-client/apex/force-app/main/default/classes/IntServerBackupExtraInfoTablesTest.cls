@isTest
private class IntServerBackupExtraInfoTablesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerBackupExtraInfoTables backupExtraInfoTables1 = IntServerBackupExtraInfoTables.getExample();
        IntServerBackupExtraInfoTables backupExtraInfoTables2 = backupExtraInfoTables1;
        IntServerBackupExtraInfoTables backupExtraInfoTables3 = new IntServerBackupExtraInfoTables();
        IntServerBackupExtraInfoTables backupExtraInfoTables4 = backupExtraInfoTables3;

        System.assert(backupExtraInfoTables1.equals(backupExtraInfoTables2));
        System.assert(backupExtraInfoTables2.equals(backupExtraInfoTables1));
        System.assert(backupExtraInfoTables1.equals(backupExtraInfoTables1));
        System.assert(backupExtraInfoTables3.equals(backupExtraInfoTables4));
        System.assert(backupExtraInfoTables4.equals(backupExtraInfoTables3));
        System.assert(backupExtraInfoTables3.equals(backupExtraInfoTables3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerBackupExtraInfoTables backupExtraInfoTables1 = IntServerBackupExtraInfoTables.getExample();
        IntServerBackupExtraInfoTables backupExtraInfoTables2 = IntServerBackupExtraInfoTables.getExample();
        IntServerBackupExtraInfoTables backupExtraInfoTables3 = new IntServerBackupExtraInfoTables();
        IntServerBackupExtraInfoTables backupExtraInfoTables4 = new IntServerBackupExtraInfoTables();

        System.assert(backupExtraInfoTables1.equals(backupExtraInfoTables2));
        System.assert(backupExtraInfoTables2.equals(backupExtraInfoTables1));
        System.assert(backupExtraInfoTables3.equals(backupExtraInfoTables4));
        System.assert(backupExtraInfoTables4.equals(backupExtraInfoTables3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerBackupExtraInfoTables backupExtraInfoTables1 = IntServerBackupExtraInfoTables.getExample();
        IntServerBackupExtraInfoTables backupExtraInfoTables2 = new IntServerBackupExtraInfoTables();

        System.assertEquals(false, backupExtraInfoTables1.equals('foo'));
        System.assertEquals(false, backupExtraInfoTables2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerBackupExtraInfoTables backupExtraInfoTables1 = IntServerBackupExtraInfoTables.getExample();
        IntServerBackupExtraInfoTables backupExtraInfoTables2 = new IntServerBackupExtraInfoTables();
        IntServerBackupExtraInfoTables backupExtraInfoTables3;

        System.assertEquals(false, backupExtraInfoTables1.equals(backupExtraInfoTables3));
        System.assertEquals(false, backupExtraInfoTables2.equals(backupExtraInfoTables3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerBackupExtraInfoTables backupExtraInfoTables1 = IntServerBackupExtraInfoTables.getExample();
        IntServerBackupExtraInfoTables backupExtraInfoTables2 = new IntServerBackupExtraInfoTables();

        System.assertEquals(backupExtraInfoTables1.hashCode(), backupExtraInfoTables1.hashCode());
        System.assertEquals(backupExtraInfoTables2.hashCode(), backupExtraInfoTables2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerBackupExtraInfoTables backupExtraInfoTables1 = IntServerBackupExtraInfoTables.getExample();
        IntServerBackupExtraInfoTables backupExtraInfoTables2 = IntServerBackupExtraInfoTables.getExample();
        IntServerBackupExtraInfoTables backupExtraInfoTables3 = new IntServerBackupExtraInfoTables();
        IntServerBackupExtraInfoTables backupExtraInfoTables4 = new IntServerBackupExtraInfoTables();

        System.assert(backupExtraInfoTables1.equals(backupExtraInfoTables2));
        System.assert(backupExtraInfoTables3.equals(backupExtraInfoTables4));
        System.assertEquals(backupExtraInfoTables1.hashCode(), backupExtraInfoTables2.hashCode());
        System.assertEquals(backupExtraInfoTables3.hashCode(), backupExtraInfoTables4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerBackupExtraInfoTables backupExtraInfoTables = new IntServerBackupExtraInfoTables();
        Map<String, String> x-property-mappings = backupExtraInfoTables.getx-property-mappings();
        System.assertEquals('ipInfo', x-property-mappings.get('ip_info'));
    }
}
