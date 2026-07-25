@isTest
private class IntServerWebsiteBackupsInnerTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerWebsiteBackupsInner websiteBackupsInner1 = IntServerWebsiteBackupsInner.getExample();
        IntServerWebsiteBackupsInner websiteBackupsInner2 = websiteBackupsInner1;
        IntServerWebsiteBackupsInner websiteBackupsInner3 = new IntServerWebsiteBackupsInner();
        IntServerWebsiteBackupsInner websiteBackupsInner4 = websiteBackupsInner3;

        System.assert(websiteBackupsInner1.equals(websiteBackupsInner2));
        System.assert(websiteBackupsInner2.equals(websiteBackupsInner1));
        System.assert(websiteBackupsInner1.equals(websiteBackupsInner1));
        System.assert(websiteBackupsInner3.equals(websiteBackupsInner4));
        System.assert(websiteBackupsInner4.equals(websiteBackupsInner3));
        System.assert(websiteBackupsInner3.equals(websiteBackupsInner3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerWebsiteBackupsInner websiteBackupsInner1 = IntServerWebsiteBackupsInner.getExample();
        IntServerWebsiteBackupsInner websiteBackupsInner2 = IntServerWebsiteBackupsInner.getExample();
        IntServerWebsiteBackupsInner websiteBackupsInner3 = new IntServerWebsiteBackupsInner();
        IntServerWebsiteBackupsInner websiteBackupsInner4 = new IntServerWebsiteBackupsInner();

        System.assert(websiteBackupsInner1.equals(websiteBackupsInner2));
        System.assert(websiteBackupsInner2.equals(websiteBackupsInner1));
        System.assert(websiteBackupsInner3.equals(websiteBackupsInner4));
        System.assert(websiteBackupsInner4.equals(websiteBackupsInner3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerWebsiteBackupsInner websiteBackupsInner1 = IntServerWebsiteBackupsInner.getExample();
        IntServerWebsiteBackupsInner websiteBackupsInner2 = new IntServerWebsiteBackupsInner();

        System.assertEquals(false, websiteBackupsInner1.equals('foo'));
        System.assertEquals(false, websiteBackupsInner2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerWebsiteBackupsInner websiteBackupsInner1 = IntServerWebsiteBackupsInner.getExample();
        IntServerWebsiteBackupsInner websiteBackupsInner2 = new IntServerWebsiteBackupsInner();
        IntServerWebsiteBackupsInner websiteBackupsInner3;

        System.assertEquals(false, websiteBackupsInner1.equals(websiteBackupsInner3));
        System.assertEquals(false, websiteBackupsInner2.equals(websiteBackupsInner3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerWebsiteBackupsInner websiteBackupsInner1 = IntServerWebsiteBackupsInner.getExample();
        IntServerWebsiteBackupsInner websiteBackupsInner2 = new IntServerWebsiteBackupsInner();

        System.assertEquals(websiteBackupsInner1.hashCode(), websiteBackupsInner1.hashCode());
        System.assertEquals(websiteBackupsInner2.hashCode(), websiteBackupsInner2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerWebsiteBackupsInner websiteBackupsInner1 = IntServerWebsiteBackupsInner.getExample();
        IntServerWebsiteBackupsInner websiteBackupsInner2 = IntServerWebsiteBackupsInner.getExample();
        IntServerWebsiteBackupsInner websiteBackupsInner3 = new IntServerWebsiteBackupsInner();
        IntServerWebsiteBackupsInner websiteBackupsInner4 = new IntServerWebsiteBackupsInner();

        System.assert(websiteBackupsInner1.equals(websiteBackupsInner2));
        System.assert(websiteBackupsInner3.equals(websiteBackupsInner4));
        System.assertEquals(websiteBackupsInner1.hashCode(), websiteBackupsInner2.hashCode());
        System.assertEquals(websiteBackupsInner3.hashCode(), websiteBackupsInner4.hashCode());
    }
}
