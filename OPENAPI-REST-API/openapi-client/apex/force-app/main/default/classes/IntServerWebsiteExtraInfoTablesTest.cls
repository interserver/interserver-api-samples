@isTest
private class IntServerWebsiteExtraInfoTablesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerWebsiteExtraInfoTables websiteExtraInfoTables1 = IntServerWebsiteExtraInfoTables.getExample();
        IntServerWebsiteExtraInfoTables websiteExtraInfoTables2 = websiteExtraInfoTables1;
        IntServerWebsiteExtraInfoTables websiteExtraInfoTables3 = new IntServerWebsiteExtraInfoTables();
        IntServerWebsiteExtraInfoTables websiteExtraInfoTables4 = websiteExtraInfoTables3;

        System.assert(websiteExtraInfoTables1.equals(websiteExtraInfoTables2));
        System.assert(websiteExtraInfoTables2.equals(websiteExtraInfoTables1));
        System.assert(websiteExtraInfoTables1.equals(websiteExtraInfoTables1));
        System.assert(websiteExtraInfoTables3.equals(websiteExtraInfoTables4));
        System.assert(websiteExtraInfoTables4.equals(websiteExtraInfoTables3));
        System.assert(websiteExtraInfoTables3.equals(websiteExtraInfoTables3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerWebsiteExtraInfoTables websiteExtraInfoTables1 = IntServerWebsiteExtraInfoTables.getExample();
        IntServerWebsiteExtraInfoTables websiteExtraInfoTables2 = IntServerWebsiteExtraInfoTables.getExample();
        IntServerWebsiteExtraInfoTables websiteExtraInfoTables3 = new IntServerWebsiteExtraInfoTables();
        IntServerWebsiteExtraInfoTables websiteExtraInfoTables4 = new IntServerWebsiteExtraInfoTables();

        System.assert(websiteExtraInfoTables1.equals(websiteExtraInfoTables2));
        System.assert(websiteExtraInfoTables2.equals(websiteExtraInfoTables1));
        System.assert(websiteExtraInfoTables3.equals(websiteExtraInfoTables4));
        System.assert(websiteExtraInfoTables4.equals(websiteExtraInfoTables3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerWebsiteExtraInfoTables websiteExtraInfoTables1 = IntServerWebsiteExtraInfoTables.getExample();
        IntServerWebsiteExtraInfoTables websiteExtraInfoTables2 = new IntServerWebsiteExtraInfoTables();

        System.assertEquals(false, websiteExtraInfoTables1.equals('foo'));
        System.assertEquals(false, websiteExtraInfoTables2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerWebsiteExtraInfoTables websiteExtraInfoTables1 = IntServerWebsiteExtraInfoTables.getExample();
        IntServerWebsiteExtraInfoTables websiteExtraInfoTables2 = new IntServerWebsiteExtraInfoTables();
        IntServerWebsiteExtraInfoTables websiteExtraInfoTables3;

        System.assertEquals(false, websiteExtraInfoTables1.equals(websiteExtraInfoTables3));
        System.assertEquals(false, websiteExtraInfoTables2.equals(websiteExtraInfoTables3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerWebsiteExtraInfoTables websiteExtraInfoTables1 = IntServerWebsiteExtraInfoTables.getExample();
        IntServerWebsiteExtraInfoTables websiteExtraInfoTables2 = new IntServerWebsiteExtraInfoTables();

        System.assertEquals(websiteExtraInfoTables1.hashCode(), websiteExtraInfoTables1.hashCode());
        System.assertEquals(websiteExtraInfoTables2.hashCode(), websiteExtraInfoTables2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerWebsiteExtraInfoTables websiteExtraInfoTables1 = IntServerWebsiteExtraInfoTables.getExample();
        IntServerWebsiteExtraInfoTables websiteExtraInfoTables2 = IntServerWebsiteExtraInfoTables.getExample();
        IntServerWebsiteExtraInfoTables websiteExtraInfoTables3 = new IntServerWebsiteExtraInfoTables();
        IntServerWebsiteExtraInfoTables websiteExtraInfoTables4 = new IntServerWebsiteExtraInfoTables();

        System.assert(websiteExtraInfoTables1.equals(websiteExtraInfoTables2));
        System.assert(websiteExtraInfoTables3.equals(websiteExtraInfoTables4));
        System.assertEquals(websiteExtraInfoTables1.hashCode(), websiteExtraInfoTables2.hashCode());
        System.assertEquals(websiteExtraInfoTables3.hashCode(), websiteExtraInfoTables4.hashCode());
    }
}
