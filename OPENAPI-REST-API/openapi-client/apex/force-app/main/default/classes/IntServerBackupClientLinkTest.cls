@isTest
private class IntServerBackupClientLinkTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerBackupClientLink backupClientLink1 = IntServerBackupClientLink.getExample();
        IntServerBackupClientLink backupClientLink2 = backupClientLink1;
        IntServerBackupClientLink backupClientLink3 = new IntServerBackupClientLink();
        IntServerBackupClientLink backupClientLink4 = backupClientLink3;

        System.assert(backupClientLink1.equals(backupClientLink2));
        System.assert(backupClientLink2.equals(backupClientLink1));
        System.assert(backupClientLink1.equals(backupClientLink1));
        System.assert(backupClientLink3.equals(backupClientLink4));
        System.assert(backupClientLink4.equals(backupClientLink3));
        System.assert(backupClientLink3.equals(backupClientLink3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerBackupClientLink backupClientLink1 = IntServerBackupClientLink.getExample();
        IntServerBackupClientLink backupClientLink2 = IntServerBackupClientLink.getExample();
        IntServerBackupClientLink backupClientLink3 = new IntServerBackupClientLink();
        IntServerBackupClientLink backupClientLink4 = new IntServerBackupClientLink();

        System.assert(backupClientLink1.equals(backupClientLink2));
        System.assert(backupClientLink2.equals(backupClientLink1));
        System.assert(backupClientLink3.equals(backupClientLink4));
        System.assert(backupClientLink4.equals(backupClientLink3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerBackupClientLink backupClientLink1 = IntServerBackupClientLink.getExample();
        IntServerBackupClientLink backupClientLink2 = new IntServerBackupClientLink();

        System.assertEquals(false, backupClientLink1.equals('foo'));
        System.assertEquals(false, backupClientLink2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerBackupClientLink backupClientLink1 = IntServerBackupClientLink.getExample();
        IntServerBackupClientLink backupClientLink2 = new IntServerBackupClientLink();
        IntServerBackupClientLink backupClientLink3;

        System.assertEquals(false, backupClientLink1.equals(backupClientLink3));
        System.assertEquals(false, backupClientLink2.equals(backupClientLink3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerBackupClientLink backupClientLink1 = IntServerBackupClientLink.getExample();
        IntServerBackupClientLink backupClientLink2 = new IntServerBackupClientLink();

        System.assertEquals(backupClientLink1.hashCode(), backupClientLink1.hashCode());
        System.assertEquals(backupClientLink2.hashCode(), backupClientLink2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerBackupClientLink backupClientLink1 = IntServerBackupClientLink.getExample();
        IntServerBackupClientLink backupClientLink2 = IntServerBackupClientLink.getExample();
        IntServerBackupClientLink backupClientLink3 = new IntServerBackupClientLink();
        IntServerBackupClientLink backupClientLink4 = new IntServerBackupClientLink();

        System.assert(backupClientLink1.equals(backupClientLink2));
        System.assert(backupClientLink3.equals(backupClientLink4));
        System.assertEquals(backupClientLink1.hashCode(), backupClientLink2.hashCode());
        System.assertEquals(backupClientLink3.hashCode(), backupClientLink4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerBackupClientLink backupClientLink = new IntServerBackupClientLink();
        Map<String, String> x-property-mappings = backupClientLink.getx-property-mappings();
        System.assertEquals('iconText', x-property-mappings.get('icon_text'));
        System.assertEquals('helpText', x-property-mappings.get('help_text'));
        System.assertEquals('otherAttr', x-property-mappings.get('other_attr'));
    }
}
