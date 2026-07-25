@isTest
private class IntServerBackupServiceInfoTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerBackupServiceInfo backupServiceInfo1 = IntServerBackupServiceInfo.getExample();
        IntServerBackupServiceInfo backupServiceInfo2 = backupServiceInfo1;
        IntServerBackupServiceInfo backupServiceInfo3 = new IntServerBackupServiceInfo();
        IntServerBackupServiceInfo backupServiceInfo4 = backupServiceInfo3;

        System.assert(backupServiceInfo1.equals(backupServiceInfo2));
        System.assert(backupServiceInfo2.equals(backupServiceInfo1));
        System.assert(backupServiceInfo1.equals(backupServiceInfo1));
        System.assert(backupServiceInfo3.equals(backupServiceInfo4));
        System.assert(backupServiceInfo4.equals(backupServiceInfo3));
        System.assert(backupServiceInfo3.equals(backupServiceInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerBackupServiceInfo backupServiceInfo1 = IntServerBackupServiceInfo.getExample();
        IntServerBackupServiceInfo backupServiceInfo2 = IntServerBackupServiceInfo.getExample();
        IntServerBackupServiceInfo backupServiceInfo3 = new IntServerBackupServiceInfo();
        IntServerBackupServiceInfo backupServiceInfo4 = new IntServerBackupServiceInfo();

        System.assert(backupServiceInfo1.equals(backupServiceInfo2));
        System.assert(backupServiceInfo2.equals(backupServiceInfo1));
        System.assert(backupServiceInfo3.equals(backupServiceInfo4));
        System.assert(backupServiceInfo4.equals(backupServiceInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerBackupServiceInfo backupServiceInfo1 = IntServerBackupServiceInfo.getExample();
        IntServerBackupServiceInfo backupServiceInfo2 = new IntServerBackupServiceInfo();

        System.assertEquals(false, backupServiceInfo1.equals('foo'));
        System.assertEquals(false, backupServiceInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerBackupServiceInfo backupServiceInfo1 = IntServerBackupServiceInfo.getExample();
        IntServerBackupServiceInfo backupServiceInfo2 = new IntServerBackupServiceInfo();
        IntServerBackupServiceInfo backupServiceInfo3;

        System.assertEquals(false, backupServiceInfo1.equals(backupServiceInfo3));
        System.assertEquals(false, backupServiceInfo2.equals(backupServiceInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerBackupServiceInfo backupServiceInfo1 = IntServerBackupServiceInfo.getExample();
        IntServerBackupServiceInfo backupServiceInfo2 = new IntServerBackupServiceInfo();

        System.assertEquals(backupServiceInfo1.hashCode(), backupServiceInfo1.hashCode());
        System.assertEquals(backupServiceInfo2.hashCode(), backupServiceInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerBackupServiceInfo backupServiceInfo1 = IntServerBackupServiceInfo.getExample();
        IntServerBackupServiceInfo backupServiceInfo2 = IntServerBackupServiceInfo.getExample();
        IntServerBackupServiceInfo backupServiceInfo3 = new IntServerBackupServiceInfo();
        IntServerBackupServiceInfo backupServiceInfo4 = new IntServerBackupServiceInfo();

        System.assert(backupServiceInfo1.equals(backupServiceInfo2));
        System.assert(backupServiceInfo3.equals(backupServiceInfo4));
        System.assertEquals(backupServiceInfo1.hashCode(), backupServiceInfo2.hashCode());
        System.assertEquals(backupServiceInfo3.hashCode(), backupServiceInfo4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerBackupServiceInfo backupServiceInfo = new IntServerBackupServiceInfo();
        Map<String, String> x-property-mappings = backupServiceInfo.getx-property-mappings();
        System.assertEquals('backupId', x-property-mappings.get('backup_id'));
        System.assertEquals('backupServer', x-property-mappings.get('backup_server'));
        System.assertEquals('backupUsername', x-property-mappings.get('backup_username'));
        System.assertEquals('backupType', x-property-mappings.get('backup_type'));
        System.assertEquals('backupCurrency', x-property-mappings.get('backup_currency'));
        System.assertEquals('backupOrderDate', x-property-mappings.get('backup_order_date'));
        System.assertEquals('backupCustid', x-property-mappings.get('backup_custid'));
        System.assertEquals('backupQuota', x-property-mappings.get('backup_quota'));
        System.assertEquals('backupIp', x-property-mappings.get('backup_ip'));
        System.assertEquals('backupStatus', x-property-mappings.get('backup_status'));
        System.assertEquals('backupInvoice', x-property-mappings.get('backup_invoice'));
        System.assertEquals('backupCoupon', x-property-mappings.get('backup_coupon'));
        System.assertEquals('backupExtra', x-property-mappings.get('backup_extra'));
        System.assertEquals('backupServerStatus', x-property-mappings.get('backup_server_status'));
        System.assertEquals('backupComment', x-property-mappings.get('backup_comment'));
    }
}
