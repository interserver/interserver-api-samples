@isTest
private class IntServerBackupOrderPostResponseCjPaTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerBackupOrderPostResponseCjPa backupOrderPostResponseCjParams1 = IntServerBackupOrderPostResponseCjPa.getExample();
        IntServerBackupOrderPostResponseCjPa backupOrderPostResponseCjParams2 = backupOrderPostResponseCjParams1;
        IntServerBackupOrderPostResponseCjPa backupOrderPostResponseCjParams3 = new IntServerBackupOrderPostResponseCjPa();
        IntServerBackupOrderPostResponseCjPa backupOrderPostResponseCjParams4 = backupOrderPostResponseCjParams3;

        System.assert(backupOrderPostResponseCjParams1.equals(backupOrderPostResponseCjParams2));
        System.assert(backupOrderPostResponseCjParams2.equals(backupOrderPostResponseCjParams1));
        System.assert(backupOrderPostResponseCjParams1.equals(backupOrderPostResponseCjParams1));
        System.assert(backupOrderPostResponseCjParams3.equals(backupOrderPostResponseCjParams4));
        System.assert(backupOrderPostResponseCjParams4.equals(backupOrderPostResponseCjParams3));
        System.assert(backupOrderPostResponseCjParams3.equals(backupOrderPostResponseCjParams3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerBackupOrderPostResponseCjPa backupOrderPostResponseCjParams1 = IntServerBackupOrderPostResponseCjPa.getExample();
        IntServerBackupOrderPostResponseCjPa backupOrderPostResponseCjParams2 = IntServerBackupOrderPostResponseCjPa.getExample();
        IntServerBackupOrderPostResponseCjPa backupOrderPostResponseCjParams3 = new IntServerBackupOrderPostResponseCjPa();
        IntServerBackupOrderPostResponseCjPa backupOrderPostResponseCjParams4 = new IntServerBackupOrderPostResponseCjPa();

        System.assert(backupOrderPostResponseCjParams1.equals(backupOrderPostResponseCjParams2));
        System.assert(backupOrderPostResponseCjParams2.equals(backupOrderPostResponseCjParams1));
        System.assert(backupOrderPostResponseCjParams3.equals(backupOrderPostResponseCjParams4));
        System.assert(backupOrderPostResponseCjParams4.equals(backupOrderPostResponseCjParams3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerBackupOrderPostResponseCjPa backupOrderPostResponseCjParams1 = IntServerBackupOrderPostResponseCjPa.getExample();
        IntServerBackupOrderPostResponseCjPa backupOrderPostResponseCjParams2 = new IntServerBackupOrderPostResponseCjPa();

        System.assertEquals(false, backupOrderPostResponseCjParams1.equals('foo'));
        System.assertEquals(false, backupOrderPostResponseCjParams2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerBackupOrderPostResponseCjPa backupOrderPostResponseCjParams1 = IntServerBackupOrderPostResponseCjPa.getExample();
        IntServerBackupOrderPostResponseCjPa backupOrderPostResponseCjParams2 = new IntServerBackupOrderPostResponseCjPa();
        IntServerBackupOrderPostResponseCjPa backupOrderPostResponseCjParams3;

        System.assertEquals(false, backupOrderPostResponseCjParams1.equals(backupOrderPostResponseCjParams3));
        System.assertEquals(false, backupOrderPostResponseCjParams2.equals(backupOrderPostResponseCjParams3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerBackupOrderPostResponseCjPa backupOrderPostResponseCjParams1 = IntServerBackupOrderPostResponseCjPa.getExample();
        IntServerBackupOrderPostResponseCjPa backupOrderPostResponseCjParams2 = new IntServerBackupOrderPostResponseCjPa();

        System.assertEquals(backupOrderPostResponseCjParams1.hashCode(), backupOrderPostResponseCjParams1.hashCode());
        System.assertEquals(backupOrderPostResponseCjParams2.hashCode(), backupOrderPostResponseCjParams2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerBackupOrderPostResponseCjPa backupOrderPostResponseCjParams1 = IntServerBackupOrderPostResponseCjPa.getExample();
        IntServerBackupOrderPostResponseCjPa backupOrderPostResponseCjParams2 = IntServerBackupOrderPostResponseCjPa.getExample();
        IntServerBackupOrderPostResponseCjPa backupOrderPostResponseCjParams3 = new IntServerBackupOrderPostResponseCjPa();
        IntServerBackupOrderPostResponseCjPa backupOrderPostResponseCjParams4 = new IntServerBackupOrderPostResponseCjPa();

        System.assert(backupOrderPostResponseCjParams1.equals(backupOrderPostResponseCjParams2));
        System.assert(backupOrderPostResponseCjParams3.equals(backupOrderPostResponseCjParams4));
        System.assertEquals(backupOrderPostResponseCjParams1.hashCode(), backupOrderPostResponseCjParams2.hashCode());
        System.assertEquals(backupOrderPostResponseCjParams3.hashCode(), backupOrderPostResponseCjParams4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerBackupOrderPostResponseCjPa backupOrderPostResponseCjParams = new IntServerBackupOrderPostResponseCjPa();
        Map<String, String> x-property-mappings = backupOrderPostResponseCjParams.getx-property-mappings();
        System.assertEquals('itEM1', x-property-mappings.get('ITEM1'));
        System.assertEquals('amT1', x-property-mappings.get('AMT1'));
        System.assertEquals('qtY1', x-property-mappings.get('QTY1'));
        System.assertEquals('r_CURRENCY', x-property-mappings.get('CURRENCY'));
    }
}
