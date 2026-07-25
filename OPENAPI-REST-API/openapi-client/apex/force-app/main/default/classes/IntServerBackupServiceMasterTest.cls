@isTest
private class IntServerBackupServiceMasterTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerBackupServiceMaster backupServiceMaster1 = IntServerBackupServiceMaster.getExample();
        IntServerBackupServiceMaster backupServiceMaster2 = backupServiceMaster1;
        IntServerBackupServiceMaster backupServiceMaster3 = new IntServerBackupServiceMaster();
        IntServerBackupServiceMaster backupServiceMaster4 = backupServiceMaster3;

        System.assert(backupServiceMaster1.equals(backupServiceMaster2));
        System.assert(backupServiceMaster2.equals(backupServiceMaster1));
        System.assert(backupServiceMaster1.equals(backupServiceMaster1));
        System.assert(backupServiceMaster3.equals(backupServiceMaster4));
        System.assert(backupServiceMaster4.equals(backupServiceMaster3));
        System.assert(backupServiceMaster3.equals(backupServiceMaster3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerBackupServiceMaster backupServiceMaster1 = IntServerBackupServiceMaster.getExample();
        IntServerBackupServiceMaster backupServiceMaster2 = IntServerBackupServiceMaster.getExample();
        IntServerBackupServiceMaster backupServiceMaster3 = new IntServerBackupServiceMaster();
        IntServerBackupServiceMaster backupServiceMaster4 = new IntServerBackupServiceMaster();

        System.assert(backupServiceMaster1.equals(backupServiceMaster2));
        System.assert(backupServiceMaster2.equals(backupServiceMaster1));
        System.assert(backupServiceMaster3.equals(backupServiceMaster4));
        System.assert(backupServiceMaster4.equals(backupServiceMaster3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerBackupServiceMaster backupServiceMaster1 = IntServerBackupServiceMaster.getExample();
        IntServerBackupServiceMaster backupServiceMaster2 = new IntServerBackupServiceMaster();

        System.assertEquals(false, backupServiceMaster1.equals('foo'));
        System.assertEquals(false, backupServiceMaster2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerBackupServiceMaster backupServiceMaster1 = IntServerBackupServiceMaster.getExample();
        IntServerBackupServiceMaster backupServiceMaster2 = new IntServerBackupServiceMaster();
        IntServerBackupServiceMaster backupServiceMaster3;

        System.assertEquals(false, backupServiceMaster1.equals(backupServiceMaster3));
        System.assertEquals(false, backupServiceMaster2.equals(backupServiceMaster3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerBackupServiceMaster backupServiceMaster1 = IntServerBackupServiceMaster.getExample();
        IntServerBackupServiceMaster backupServiceMaster2 = new IntServerBackupServiceMaster();

        System.assertEquals(backupServiceMaster1.hashCode(), backupServiceMaster1.hashCode());
        System.assertEquals(backupServiceMaster2.hashCode(), backupServiceMaster2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerBackupServiceMaster backupServiceMaster1 = IntServerBackupServiceMaster.getExample();
        IntServerBackupServiceMaster backupServiceMaster2 = IntServerBackupServiceMaster.getExample();
        IntServerBackupServiceMaster backupServiceMaster3 = new IntServerBackupServiceMaster();
        IntServerBackupServiceMaster backupServiceMaster4 = new IntServerBackupServiceMaster();

        System.assert(backupServiceMaster1.equals(backupServiceMaster2));
        System.assert(backupServiceMaster3.equals(backupServiceMaster4));
        System.assertEquals(backupServiceMaster1.hashCode(), backupServiceMaster2.hashCode());
        System.assertEquals(backupServiceMaster3.hashCode(), backupServiceMaster4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerBackupServiceMaster backupServiceMaster = new IntServerBackupServiceMaster();
        Map<String, String> x-property-mappings = backupServiceMaster.getx-property-mappings();
        System.assertEquals('backupId', x-property-mappings.get('backup_id'));
        System.assertEquals('backupName', x-property-mappings.get('backup_name'));
        System.assertEquals('backupIp', x-property-mappings.get('backup_ip'));
        System.assertEquals('backupType', x-property-mappings.get('backup_type'));
        System.assertEquals('backupHdsize', x-property-mappings.get('backup_hdsize'));
        System.assertEquals('backupHdfree', x-property-mappings.get('backup_hdfree'));
        System.assertEquals('backupLastUpdate', x-property-mappings.get('backup_last_update'));
        System.assertEquals('backupAvailable', x-property-mappings.get('backup_available'));
        System.assertEquals('backupIowait', x-property-mappings.get('backup_iowait'));
        System.assertEquals('backupOrder', x-property-mappings.get('backup_order'));
    }
}
