@isTest
private class IntServerWebsiteTableRowTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerWebsiteTableRow websiteTableRow1 = IntServerWebsiteTableRow.getExample();
        IntServerWebsiteTableRow websiteTableRow2 = websiteTableRow1;
        IntServerWebsiteTableRow websiteTableRow3 = new IntServerWebsiteTableRow();
        IntServerWebsiteTableRow websiteTableRow4 = websiteTableRow3;

        System.assert(websiteTableRow1.equals(websiteTableRow2));
        System.assert(websiteTableRow2.equals(websiteTableRow1));
        System.assert(websiteTableRow1.equals(websiteTableRow1));
        System.assert(websiteTableRow3.equals(websiteTableRow4));
        System.assert(websiteTableRow4.equals(websiteTableRow3));
        System.assert(websiteTableRow3.equals(websiteTableRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerWebsiteTableRow websiteTableRow1 = IntServerWebsiteTableRow.getExample();
        IntServerWebsiteTableRow websiteTableRow2 = IntServerWebsiteTableRow.getExample();
        IntServerWebsiteTableRow websiteTableRow3 = new IntServerWebsiteTableRow();
        IntServerWebsiteTableRow websiteTableRow4 = new IntServerWebsiteTableRow();

        System.assert(websiteTableRow1.equals(websiteTableRow2));
        System.assert(websiteTableRow2.equals(websiteTableRow1));
        System.assert(websiteTableRow3.equals(websiteTableRow4));
        System.assert(websiteTableRow4.equals(websiteTableRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerWebsiteTableRow websiteTableRow1 = IntServerWebsiteTableRow.getExample();
        IntServerWebsiteTableRow websiteTableRow2 = new IntServerWebsiteTableRow();

        System.assertEquals(false, websiteTableRow1.equals('foo'));
        System.assertEquals(false, websiteTableRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerWebsiteTableRow websiteTableRow1 = IntServerWebsiteTableRow.getExample();
        IntServerWebsiteTableRow websiteTableRow2 = new IntServerWebsiteTableRow();
        IntServerWebsiteTableRow websiteTableRow3;

        System.assertEquals(false, websiteTableRow1.equals(websiteTableRow3));
        System.assertEquals(false, websiteTableRow2.equals(websiteTableRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerWebsiteTableRow websiteTableRow1 = IntServerWebsiteTableRow.getExample();
        IntServerWebsiteTableRow websiteTableRow2 = new IntServerWebsiteTableRow();

        System.assertEquals(websiteTableRow1.hashCode(), websiteTableRow1.hashCode());
        System.assertEquals(websiteTableRow2.hashCode(), websiteTableRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerWebsiteTableRow websiteTableRow1 = IntServerWebsiteTableRow.getExample();
        IntServerWebsiteTableRow websiteTableRow2 = IntServerWebsiteTableRow.getExample();
        IntServerWebsiteTableRow websiteTableRow3 = new IntServerWebsiteTableRow();
        IntServerWebsiteTableRow websiteTableRow4 = new IntServerWebsiteTableRow();

        System.assert(websiteTableRow1.equals(websiteTableRow2));
        System.assert(websiteTableRow3.equals(websiteTableRow4));
        System.assertEquals(websiteTableRow1.hashCode(), websiteTableRow2.hashCode());
        System.assertEquals(websiteTableRow3.hashCode(), websiteTableRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerWebsiteTableRow websiteTableRow = new IntServerWebsiteTableRow();
        Map<String, String> x-property-mappings = websiteTableRow.getx-property-mappings();
        System.assertEquals('r_desc', x-property-mappings.get('desc'));
    }
}
