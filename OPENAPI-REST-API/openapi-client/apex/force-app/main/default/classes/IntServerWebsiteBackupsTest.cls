@isTest
private class IntServerWebsiteBackupsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerWebsiteBackups websiteBackups1 = IntServerWebsiteBackups.getExample();
        IntServerWebsiteBackups websiteBackups2 = websiteBackups1;
        IntServerWebsiteBackups websiteBackups3 = new IntServerWebsiteBackups();
        IntServerWebsiteBackups websiteBackups4 = websiteBackups3;

        System.assert(websiteBackups1.equals(websiteBackups2));
        System.assert(websiteBackups2.equals(websiteBackups1));
        System.assert(websiteBackups1.equals(websiteBackups1));
        System.assert(websiteBackups3.equals(websiteBackups4));
        System.assert(websiteBackups4.equals(websiteBackups3));
        System.assert(websiteBackups3.equals(websiteBackups3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerWebsiteBackups websiteBackups1 = IntServerWebsiteBackups.getExample();
        IntServerWebsiteBackups websiteBackups2 = IntServerWebsiteBackups.getExample();
        IntServerWebsiteBackups websiteBackups3 = new IntServerWebsiteBackups();
        IntServerWebsiteBackups websiteBackups4 = new IntServerWebsiteBackups();

        System.assert(websiteBackups1.equals(websiteBackups2));
        System.assert(websiteBackups2.equals(websiteBackups1));
        System.assert(websiteBackups3.equals(websiteBackups4));
        System.assert(websiteBackups4.equals(websiteBackups3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerWebsiteBackups websiteBackups1 = IntServerWebsiteBackups.getExample();
        IntServerWebsiteBackups websiteBackups2 = new IntServerWebsiteBackups();

        System.assertEquals(false, websiteBackups1.equals('foo'));
        System.assertEquals(false, websiteBackups2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerWebsiteBackups websiteBackups1 = IntServerWebsiteBackups.getExample();
        IntServerWebsiteBackups websiteBackups2 = new IntServerWebsiteBackups();
        IntServerWebsiteBackups websiteBackups3;

        System.assertEquals(false, websiteBackups1.equals(websiteBackups3));
        System.assertEquals(false, websiteBackups2.equals(websiteBackups3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerWebsiteBackups websiteBackups1 = IntServerWebsiteBackups.getExample();
        IntServerWebsiteBackups websiteBackups2 = new IntServerWebsiteBackups();

        System.assertEquals(websiteBackups1.hashCode(), websiteBackups1.hashCode());
        System.assertEquals(websiteBackups2.hashCode(), websiteBackups2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerWebsiteBackups websiteBackups1 = IntServerWebsiteBackups.getExample();
        IntServerWebsiteBackups websiteBackups2 = IntServerWebsiteBackups.getExample();
        IntServerWebsiteBackups websiteBackups3 = new IntServerWebsiteBackups();
        IntServerWebsiteBackups websiteBackups4 = new IntServerWebsiteBackups();

        System.assert(websiteBackups1.equals(websiteBackups2));
        System.assert(websiteBackups3.equals(websiteBackups4));
        System.assertEquals(websiteBackups1.hashCode(), websiteBackups2.hashCode());
        System.assertEquals(websiteBackups3.hashCode(), websiteBackups4.hashCode());
    }
}
