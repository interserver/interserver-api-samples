@isTest
private class IntServerBackupTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerBackup backup1 = IntServerBackup.getExample();
        IntServerBackup backup2 = backup1;
        IntServerBackup backup3 = new IntServerBackup();
        IntServerBackup backup4 = backup3;

        System.assert(backup1.equals(backup2));
        System.assert(backup2.equals(backup1));
        System.assert(backup1.equals(backup1));
        System.assert(backup3.equals(backup4));
        System.assert(backup4.equals(backup3));
        System.assert(backup3.equals(backup3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerBackup backup1 = IntServerBackup.getExample();
        IntServerBackup backup2 = IntServerBackup.getExample();
        IntServerBackup backup3 = new IntServerBackup();
        IntServerBackup backup4 = new IntServerBackup();

        System.assert(backup1.equals(backup2));
        System.assert(backup2.equals(backup1));
        System.assert(backup3.equals(backup4));
        System.assert(backup4.equals(backup3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerBackup backup1 = IntServerBackup.getExample();
        IntServerBackup backup2 = new IntServerBackup();

        System.assertEquals(false, backup1.equals('foo'));
        System.assertEquals(false, backup2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerBackup backup1 = IntServerBackup.getExample();
        IntServerBackup backup2 = new IntServerBackup();
        IntServerBackup backup3;

        System.assertEquals(false, backup1.equals(backup3));
        System.assertEquals(false, backup2.equals(backup3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerBackup backup1 = IntServerBackup.getExample();
        IntServerBackup backup2 = new IntServerBackup();

        System.assertEquals(backup1.hashCode(), backup1.hashCode());
        System.assertEquals(backup2.hashCode(), backup2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerBackup backup1 = IntServerBackup.getExample();
        IntServerBackup backup2 = IntServerBackup.getExample();
        IntServerBackup backup3 = new IntServerBackup();
        IntServerBackup backup4 = new IntServerBackup();

        System.assert(backup1.equals(backup2));
        System.assert(backup3.equals(backup4));
        System.assertEquals(backup1.hashCode(), backup2.hashCode());
        System.assertEquals(backup3.hashCode(), backup4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerBackup backup = new IntServerBackup();
        Map<String, String> x-property-mappings = backup.getx-property-mappings();
        System.assertEquals('clientLinks', x-property-mappings.get('client_links'));
        System.assertEquals('r_package', x-property-mappings.get('package'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerBackup backup = new IntServerBackup();
        System.assertEquals(new List<IntServerBackupClientLink>(), backup.clientLinks);
        System.assertEquals(null, backup.serviceInfo);
        System.assertEquals(null, backup.billingDetails);
        System.assertEquals(null, backup.custCurrency);
        System.assertEquals(null, backup.custCurrencySymbol);
        System.assertEquals(null, backup.serviceMaster);
        System.assertEquals(null, backup.r_package);
        System.assertEquals(null, backup.serviceExtra);
        System.assertEquals(null, backup.extraInfoTables);
    }
}
