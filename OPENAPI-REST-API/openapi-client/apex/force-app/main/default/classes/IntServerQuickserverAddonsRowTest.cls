@isTest
private class IntServerQuickserverAddonsRowTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerQuickserverAddonsRow quickserverAddonsRow1 = IntServerQuickserverAddonsRow.getExample();
        IntServerQuickserverAddonsRow quickserverAddonsRow2 = quickserverAddonsRow1;
        IntServerQuickserverAddonsRow quickserverAddonsRow3 = new IntServerQuickserverAddonsRow();
        IntServerQuickserverAddonsRow quickserverAddonsRow4 = quickserverAddonsRow3;

        System.assert(quickserverAddonsRow1.equals(quickserverAddonsRow2));
        System.assert(quickserverAddonsRow2.equals(quickserverAddonsRow1));
        System.assert(quickserverAddonsRow1.equals(quickserverAddonsRow1));
        System.assert(quickserverAddonsRow3.equals(quickserverAddonsRow4));
        System.assert(quickserverAddonsRow4.equals(quickserverAddonsRow3));
        System.assert(quickserverAddonsRow3.equals(quickserverAddonsRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerQuickserverAddonsRow quickserverAddonsRow1 = IntServerQuickserverAddonsRow.getExample();
        IntServerQuickserverAddonsRow quickserverAddonsRow2 = IntServerQuickserverAddonsRow.getExample();
        IntServerQuickserverAddonsRow quickserverAddonsRow3 = new IntServerQuickserverAddonsRow();
        IntServerQuickserverAddonsRow quickserverAddonsRow4 = new IntServerQuickserverAddonsRow();

        System.assert(quickserverAddonsRow1.equals(quickserverAddonsRow2));
        System.assert(quickserverAddonsRow2.equals(quickserverAddonsRow1));
        System.assert(quickserverAddonsRow3.equals(quickserverAddonsRow4));
        System.assert(quickserverAddonsRow4.equals(quickserverAddonsRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerQuickserverAddonsRow quickserverAddonsRow1 = IntServerQuickserverAddonsRow.getExample();
        IntServerQuickserverAddonsRow quickserverAddonsRow2 = new IntServerQuickserverAddonsRow();

        System.assertEquals(false, quickserverAddonsRow1.equals('foo'));
        System.assertEquals(false, quickserverAddonsRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerQuickserverAddonsRow quickserverAddonsRow1 = IntServerQuickserverAddonsRow.getExample();
        IntServerQuickserverAddonsRow quickserverAddonsRow2 = new IntServerQuickserverAddonsRow();
        IntServerQuickserverAddonsRow quickserverAddonsRow3;

        System.assertEquals(false, quickserverAddonsRow1.equals(quickserverAddonsRow3));
        System.assertEquals(false, quickserverAddonsRow2.equals(quickserverAddonsRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerQuickserverAddonsRow quickserverAddonsRow1 = IntServerQuickserverAddonsRow.getExample();
        IntServerQuickserverAddonsRow quickserverAddonsRow2 = new IntServerQuickserverAddonsRow();

        System.assertEquals(quickserverAddonsRow1.hashCode(), quickserverAddonsRow1.hashCode());
        System.assertEquals(quickserverAddonsRow2.hashCode(), quickserverAddonsRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerQuickserverAddonsRow quickserverAddonsRow1 = IntServerQuickserverAddonsRow.getExample();
        IntServerQuickserverAddonsRow quickserverAddonsRow2 = IntServerQuickserverAddonsRow.getExample();
        IntServerQuickserverAddonsRow quickserverAddonsRow3 = new IntServerQuickserverAddonsRow();
        IntServerQuickserverAddonsRow quickserverAddonsRow4 = new IntServerQuickserverAddonsRow();

        System.assert(quickserverAddonsRow1.equals(quickserverAddonsRow2));
        System.assert(quickserverAddonsRow3.equals(quickserverAddonsRow4));
        System.assertEquals(quickserverAddonsRow1.hashCode(), quickserverAddonsRow2.hashCode());
        System.assertEquals(quickserverAddonsRow3.hashCode(), quickserverAddonsRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerQuickserverAddonsRow quickserverAddonsRow = new IntServerQuickserverAddonsRow();
        Map<String, String> x-property-mappings = quickserverAddonsRow.getx-property-mappings();
        System.assertEquals('r_desc', x-property-mappings.get('desc'));
    }
}
