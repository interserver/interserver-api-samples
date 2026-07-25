@isTest
private class IntServerWebsitesOrderTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerWebsitesOrder websitesOrder1 = IntServerWebsitesOrder.getExample();
        IntServerWebsitesOrder websitesOrder2 = websitesOrder1;
        IntServerWebsitesOrder websitesOrder3 = new IntServerWebsitesOrder();
        IntServerWebsitesOrder websitesOrder4 = websitesOrder3;

        System.assert(websitesOrder1.equals(websitesOrder2));
        System.assert(websitesOrder2.equals(websitesOrder1));
        System.assert(websitesOrder1.equals(websitesOrder1));
        System.assert(websitesOrder3.equals(websitesOrder4));
        System.assert(websitesOrder4.equals(websitesOrder3));
        System.assert(websitesOrder3.equals(websitesOrder3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerWebsitesOrder websitesOrder1 = IntServerWebsitesOrder.getExample();
        IntServerWebsitesOrder websitesOrder2 = IntServerWebsitesOrder.getExample();
        IntServerWebsitesOrder websitesOrder3 = new IntServerWebsitesOrder();
        IntServerWebsitesOrder websitesOrder4 = new IntServerWebsitesOrder();

        System.assert(websitesOrder1.equals(websitesOrder2));
        System.assert(websitesOrder2.equals(websitesOrder1));
        System.assert(websitesOrder3.equals(websitesOrder4));
        System.assert(websitesOrder4.equals(websitesOrder3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerWebsitesOrder websitesOrder1 = IntServerWebsitesOrder.getExample();
        IntServerWebsitesOrder websitesOrder2 = new IntServerWebsitesOrder();

        System.assertEquals(false, websitesOrder1.equals('foo'));
        System.assertEquals(false, websitesOrder2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerWebsitesOrder websitesOrder1 = IntServerWebsitesOrder.getExample();
        IntServerWebsitesOrder websitesOrder2 = new IntServerWebsitesOrder();
        IntServerWebsitesOrder websitesOrder3;

        System.assertEquals(false, websitesOrder1.equals(websitesOrder3));
        System.assertEquals(false, websitesOrder2.equals(websitesOrder3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerWebsitesOrder websitesOrder1 = IntServerWebsitesOrder.getExample();
        IntServerWebsitesOrder websitesOrder2 = new IntServerWebsitesOrder();

        System.assertEquals(websitesOrder1.hashCode(), websitesOrder1.hashCode());
        System.assertEquals(websitesOrder2.hashCode(), websitesOrder2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerWebsitesOrder websitesOrder1 = IntServerWebsitesOrder.getExample();
        IntServerWebsitesOrder websitesOrder2 = IntServerWebsitesOrder.getExample();
        IntServerWebsitesOrder websitesOrder3 = new IntServerWebsitesOrder();
        IntServerWebsitesOrder websitesOrder4 = new IntServerWebsitesOrder();

        System.assert(websitesOrder1.equals(websitesOrder2));
        System.assert(websitesOrder3.equals(websitesOrder4));
        System.assertEquals(websitesOrder1.hashCode(), websitesOrder2.hashCode());
        System.assertEquals(websitesOrder3.hashCode(), websitesOrder4.hashCode());
    }
}
