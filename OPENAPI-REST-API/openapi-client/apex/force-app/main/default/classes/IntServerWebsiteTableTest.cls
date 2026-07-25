@isTest
private class IntServerWebsiteTableTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerWebsiteTable websiteTable1 = IntServerWebsiteTable.getExample();
        IntServerWebsiteTable websiteTable2 = websiteTable1;
        IntServerWebsiteTable websiteTable3 = new IntServerWebsiteTable();
        IntServerWebsiteTable websiteTable4 = websiteTable3;

        System.assert(websiteTable1.equals(websiteTable2));
        System.assert(websiteTable2.equals(websiteTable1));
        System.assert(websiteTable1.equals(websiteTable1));
        System.assert(websiteTable3.equals(websiteTable4));
        System.assert(websiteTable4.equals(websiteTable3));
        System.assert(websiteTable3.equals(websiteTable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerWebsiteTable websiteTable1 = IntServerWebsiteTable.getExample();
        IntServerWebsiteTable websiteTable2 = IntServerWebsiteTable.getExample();
        IntServerWebsiteTable websiteTable3 = new IntServerWebsiteTable();
        IntServerWebsiteTable websiteTable4 = new IntServerWebsiteTable();

        System.assert(websiteTable1.equals(websiteTable2));
        System.assert(websiteTable2.equals(websiteTable1));
        System.assert(websiteTable3.equals(websiteTable4));
        System.assert(websiteTable4.equals(websiteTable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerWebsiteTable websiteTable1 = IntServerWebsiteTable.getExample();
        IntServerWebsiteTable websiteTable2 = new IntServerWebsiteTable();

        System.assertEquals(false, websiteTable1.equals('foo'));
        System.assertEquals(false, websiteTable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerWebsiteTable websiteTable1 = IntServerWebsiteTable.getExample();
        IntServerWebsiteTable websiteTable2 = new IntServerWebsiteTable();
        IntServerWebsiteTable websiteTable3;

        System.assertEquals(false, websiteTable1.equals(websiteTable3));
        System.assertEquals(false, websiteTable2.equals(websiteTable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerWebsiteTable websiteTable1 = IntServerWebsiteTable.getExample();
        IntServerWebsiteTable websiteTable2 = new IntServerWebsiteTable();

        System.assertEquals(websiteTable1.hashCode(), websiteTable1.hashCode());
        System.assertEquals(websiteTable2.hashCode(), websiteTable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerWebsiteTable websiteTable1 = IntServerWebsiteTable.getExample();
        IntServerWebsiteTable websiteTable2 = IntServerWebsiteTable.getExample();
        IntServerWebsiteTable websiteTable3 = new IntServerWebsiteTable();
        IntServerWebsiteTable websiteTable4 = new IntServerWebsiteTable();

        System.assert(websiteTable1.equals(websiteTable2));
        System.assert(websiteTable3.equals(websiteTable4));
        System.assertEquals(websiteTable1.hashCode(), websiteTable2.hashCode());
        System.assertEquals(websiteTable3.hashCode(), websiteTable4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerWebsiteTable websiteTable = new IntServerWebsiteTable();
        System.assertEquals(new List<IntServerWebsiteTableRow>(), websiteTable.rows);
        System.assertEquals(null, websiteTable.title);
    }
}
