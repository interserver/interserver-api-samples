@isTest
private class IntServerQuickserverOrderTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerQuickserverOrder quickserverOrder1 = IntServerQuickserverOrder.getExample();
        IntServerQuickserverOrder quickserverOrder2 = quickserverOrder1;
        IntServerQuickserverOrder quickserverOrder3 = new IntServerQuickserverOrder();
        IntServerQuickserverOrder quickserverOrder4 = quickserverOrder3;

        System.assert(quickserverOrder1.equals(quickserverOrder2));
        System.assert(quickserverOrder2.equals(quickserverOrder1));
        System.assert(quickserverOrder1.equals(quickserverOrder1));
        System.assert(quickserverOrder3.equals(quickserverOrder4));
        System.assert(quickserverOrder4.equals(quickserverOrder3));
        System.assert(quickserverOrder3.equals(quickserverOrder3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerQuickserverOrder quickserverOrder1 = IntServerQuickserverOrder.getExample();
        IntServerQuickserverOrder quickserverOrder2 = IntServerQuickserverOrder.getExample();
        IntServerQuickserverOrder quickserverOrder3 = new IntServerQuickserverOrder();
        IntServerQuickserverOrder quickserverOrder4 = new IntServerQuickserverOrder();

        System.assert(quickserverOrder1.equals(quickserverOrder2));
        System.assert(quickserverOrder2.equals(quickserverOrder1));
        System.assert(quickserverOrder3.equals(quickserverOrder4));
        System.assert(quickserverOrder4.equals(quickserverOrder3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerQuickserverOrder quickserverOrder1 = IntServerQuickserverOrder.getExample();
        IntServerQuickserverOrder quickserverOrder2 = new IntServerQuickserverOrder();

        System.assertEquals(false, quickserverOrder1.equals('foo'));
        System.assertEquals(false, quickserverOrder2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerQuickserverOrder quickserverOrder1 = IntServerQuickserverOrder.getExample();
        IntServerQuickserverOrder quickserverOrder2 = new IntServerQuickserverOrder();
        IntServerQuickserverOrder quickserverOrder3;

        System.assertEquals(false, quickserverOrder1.equals(quickserverOrder3));
        System.assertEquals(false, quickserverOrder2.equals(quickserverOrder3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerQuickserverOrder quickserverOrder1 = IntServerQuickserverOrder.getExample();
        IntServerQuickserverOrder quickserverOrder2 = new IntServerQuickserverOrder();

        System.assertEquals(quickserverOrder1.hashCode(), quickserverOrder1.hashCode());
        System.assertEquals(quickserverOrder2.hashCode(), quickserverOrder2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerQuickserverOrder quickserverOrder1 = IntServerQuickserverOrder.getExample();
        IntServerQuickserverOrder quickserverOrder2 = IntServerQuickserverOrder.getExample();
        IntServerQuickserverOrder quickserverOrder3 = new IntServerQuickserverOrder();
        IntServerQuickserverOrder quickserverOrder4 = new IntServerQuickserverOrder();

        System.assert(quickserverOrder1.equals(quickserverOrder2));
        System.assert(quickserverOrder3.equals(quickserverOrder4));
        System.assertEquals(quickserverOrder1.hashCode(), quickserverOrder2.hashCode());
        System.assertEquals(quickserverOrder3.hashCode(), quickserverOrder4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerQuickserverOrder quickserverOrder = new IntServerQuickserverOrder();
        Map<String, String> x-property-mappings = quickserverOrder.getx-property-mappings();
        System.assertEquals('qsId', x-property-mappings.get('qs_id'));
        System.assertEquals('serverDetails', x-property-mappings.get('server_details'));
        System.assertEquals('distroSel', x-property-mappings.get('distro_sel'));
    }
}
