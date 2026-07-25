@isTest
private class IntServerQuickserverIpTableRowTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerQuickserverIpTableRow quickserverIpTableRow1 = IntServerQuickserverIpTableRow.getExample();
        IntServerQuickserverIpTableRow quickserverIpTableRow2 = quickserverIpTableRow1;
        IntServerQuickserverIpTableRow quickserverIpTableRow3 = new IntServerQuickserverIpTableRow();
        IntServerQuickserverIpTableRow quickserverIpTableRow4 = quickserverIpTableRow3;

        System.assert(quickserverIpTableRow1.equals(quickserverIpTableRow2));
        System.assert(quickserverIpTableRow2.equals(quickserverIpTableRow1));
        System.assert(quickserverIpTableRow1.equals(quickserverIpTableRow1));
        System.assert(quickserverIpTableRow3.equals(quickserverIpTableRow4));
        System.assert(quickserverIpTableRow4.equals(quickserverIpTableRow3));
        System.assert(quickserverIpTableRow3.equals(quickserverIpTableRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerQuickserverIpTableRow quickserverIpTableRow1 = IntServerQuickserverIpTableRow.getExample();
        IntServerQuickserverIpTableRow quickserverIpTableRow2 = IntServerQuickserverIpTableRow.getExample();
        IntServerQuickserverIpTableRow quickserverIpTableRow3 = new IntServerQuickserverIpTableRow();
        IntServerQuickserverIpTableRow quickserverIpTableRow4 = new IntServerQuickserverIpTableRow();

        System.assert(quickserverIpTableRow1.equals(quickserverIpTableRow2));
        System.assert(quickserverIpTableRow2.equals(quickserverIpTableRow1));
        System.assert(quickserverIpTableRow3.equals(quickserverIpTableRow4));
        System.assert(quickserverIpTableRow4.equals(quickserverIpTableRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerQuickserverIpTableRow quickserverIpTableRow1 = IntServerQuickserverIpTableRow.getExample();
        IntServerQuickserverIpTableRow quickserverIpTableRow2 = new IntServerQuickserverIpTableRow();

        System.assertEquals(false, quickserverIpTableRow1.equals('foo'));
        System.assertEquals(false, quickserverIpTableRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerQuickserverIpTableRow quickserverIpTableRow1 = IntServerQuickserverIpTableRow.getExample();
        IntServerQuickserverIpTableRow quickserverIpTableRow2 = new IntServerQuickserverIpTableRow();
        IntServerQuickserverIpTableRow quickserverIpTableRow3;

        System.assertEquals(false, quickserverIpTableRow1.equals(quickserverIpTableRow3));
        System.assertEquals(false, quickserverIpTableRow2.equals(quickserverIpTableRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerQuickserverIpTableRow quickserverIpTableRow1 = IntServerQuickserverIpTableRow.getExample();
        IntServerQuickserverIpTableRow quickserverIpTableRow2 = new IntServerQuickserverIpTableRow();

        System.assertEquals(quickserverIpTableRow1.hashCode(), quickserverIpTableRow1.hashCode());
        System.assertEquals(quickserverIpTableRow2.hashCode(), quickserverIpTableRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerQuickserverIpTableRow quickserverIpTableRow1 = IntServerQuickserverIpTableRow.getExample();
        IntServerQuickserverIpTableRow quickserverIpTableRow2 = IntServerQuickserverIpTableRow.getExample();
        IntServerQuickserverIpTableRow quickserverIpTableRow3 = new IntServerQuickserverIpTableRow();
        IntServerQuickserverIpTableRow quickserverIpTableRow4 = new IntServerQuickserverIpTableRow();

        System.assert(quickserverIpTableRow1.equals(quickserverIpTableRow2));
        System.assert(quickserverIpTableRow3.equals(quickserverIpTableRow4));
        System.assertEquals(quickserverIpTableRow1.hashCode(), quickserverIpTableRow2.hashCode());
        System.assertEquals(quickserverIpTableRow3.hashCode(), quickserverIpTableRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerQuickserverIpTableRow quickserverIpTableRow = new IntServerQuickserverIpTableRow();
        Map<String, String> x-property-mappings = quickserverIpTableRow.getx-property-mappings();
        System.assertEquals('r_desc', x-property-mappings.get('desc'));
    }
}
