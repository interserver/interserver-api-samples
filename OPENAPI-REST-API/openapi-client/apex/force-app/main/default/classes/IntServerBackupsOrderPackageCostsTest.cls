@isTest
private class IntServerBackupsOrderPackageCostsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerBackupsOrderPackageCosts backupsOrderPackageCosts1 = IntServerBackupsOrderPackageCosts.getExample();
        IntServerBackupsOrderPackageCosts backupsOrderPackageCosts2 = backupsOrderPackageCosts1;
        IntServerBackupsOrderPackageCosts backupsOrderPackageCosts3 = new IntServerBackupsOrderPackageCosts();
        IntServerBackupsOrderPackageCosts backupsOrderPackageCosts4 = backupsOrderPackageCosts3;

        System.assert(backupsOrderPackageCosts1.equals(backupsOrderPackageCosts2));
        System.assert(backupsOrderPackageCosts2.equals(backupsOrderPackageCosts1));
        System.assert(backupsOrderPackageCosts1.equals(backupsOrderPackageCosts1));
        System.assert(backupsOrderPackageCosts3.equals(backupsOrderPackageCosts4));
        System.assert(backupsOrderPackageCosts4.equals(backupsOrderPackageCosts3));
        System.assert(backupsOrderPackageCosts3.equals(backupsOrderPackageCosts3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerBackupsOrderPackageCosts backupsOrderPackageCosts1 = IntServerBackupsOrderPackageCosts.getExample();
        IntServerBackupsOrderPackageCosts backupsOrderPackageCosts2 = IntServerBackupsOrderPackageCosts.getExample();
        IntServerBackupsOrderPackageCosts backupsOrderPackageCosts3 = new IntServerBackupsOrderPackageCosts();
        IntServerBackupsOrderPackageCosts backupsOrderPackageCosts4 = new IntServerBackupsOrderPackageCosts();

        System.assert(backupsOrderPackageCosts1.equals(backupsOrderPackageCosts2));
        System.assert(backupsOrderPackageCosts2.equals(backupsOrderPackageCosts1));
        System.assert(backupsOrderPackageCosts3.equals(backupsOrderPackageCosts4));
        System.assert(backupsOrderPackageCosts4.equals(backupsOrderPackageCosts3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerBackupsOrderPackageCosts backupsOrderPackageCosts1 = IntServerBackupsOrderPackageCosts.getExample();
        IntServerBackupsOrderPackageCosts backupsOrderPackageCosts2 = new IntServerBackupsOrderPackageCosts();

        System.assertEquals(false, backupsOrderPackageCosts1.equals('foo'));
        System.assertEquals(false, backupsOrderPackageCosts2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerBackupsOrderPackageCosts backupsOrderPackageCosts1 = IntServerBackupsOrderPackageCosts.getExample();
        IntServerBackupsOrderPackageCosts backupsOrderPackageCosts2 = new IntServerBackupsOrderPackageCosts();
        IntServerBackupsOrderPackageCosts backupsOrderPackageCosts3;

        System.assertEquals(false, backupsOrderPackageCosts1.equals(backupsOrderPackageCosts3));
        System.assertEquals(false, backupsOrderPackageCosts2.equals(backupsOrderPackageCosts3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerBackupsOrderPackageCosts backupsOrderPackageCosts1 = IntServerBackupsOrderPackageCosts.getExample();
        IntServerBackupsOrderPackageCosts backupsOrderPackageCosts2 = new IntServerBackupsOrderPackageCosts();

        System.assertEquals(backupsOrderPackageCosts1.hashCode(), backupsOrderPackageCosts1.hashCode());
        System.assertEquals(backupsOrderPackageCosts2.hashCode(), backupsOrderPackageCosts2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerBackupsOrderPackageCosts backupsOrderPackageCosts1 = IntServerBackupsOrderPackageCosts.getExample();
        IntServerBackupsOrderPackageCosts backupsOrderPackageCosts2 = IntServerBackupsOrderPackageCosts.getExample();
        IntServerBackupsOrderPackageCosts backupsOrderPackageCosts3 = new IntServerBackupsOrderPackageCosts();
        IntServerBackupsOrderPackageCosts backupsOrderPackageCosts4 = new IntServerBackupsOrderPackageCosts();

        System.assert(backupsOrderPackageCosts1.equals(backupsOrderPackageCosts2));
        System.assert(backupsOrderPackageCosts3.equals(backupsOrderPackageCosts4));
        System.assertEquals(backupsOrderPackageCosts1.hashCode(), backupsOrderPackageCosts2.hashCode());
        System.assertEquals(backupsOrderPackageCosts3.hashCode(), backupsOrderPackageCosts4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerBackupsOrderPackageCosts backupsOrderPackageCosts = new IntServerBackupsOrderPackageCosts();
        Map<String, String> x-property-mappings = backupsOrderPackageCosts.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('11006'));
    }
}
