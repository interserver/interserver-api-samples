@isTest
private class IntServerVpsOrderTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsOrder vpsOrder1 = IntServerVpsOrder.getExample();
        IntServerVpsOrder vpsOrder2 = vpsOrder1;
        IntServerVpsOrder vpsOrder3 = new IntServerVpsOrder();
        IntServerVpsOrder vpsOrder4 = vpsOrder3;

        System.assert(vpsOrder1.equals(vpsOrder2));
        System.assert(vpsOrder2.equals(vpsOrder1));
        System.assert(vpsOrder1.equals(vpsOrder1));
        System.assert(vpsOrder3.equals(vpsOrder4));
        System.assert(vpsOrder4.equals(vpsOrder3));
        System.assert(vpsOrder3.equals(vpsOrder3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsOrder vpsOrder1 = IntServerVpsOrder.getExample();
        IntServerVpsOrder vpsOrder2 = IntServerVpsOrder.getExample();
        IntServerVpsOrder vpsOrder3 = new IntServerVpsOrder();
        IntServerVpsOrder vpsOrder4 = new IntServerVpsOrder();

        System.assert(vpsOrder1.equals(vpsOrder2));
        System.assert(vpsOrder2.equals(vpsOrder1));
        System.assert(vpsOrder3.equals(vpsOrder4));
        System.assert(vpsOrder4.equals(vpsOrder3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsOrder vpsOrder1 = IntServerVpsOrder.getExample();
        IntServerVpsOrder vpsOrder2 = new IntServerVpsOrder();

        System.assertEquals(false, vpsOrder1.equals('foo'));
        System.assertEquals(false, vpsOrder2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsOrder vpsOrder1 = IntServerVpsOrder.getExample();
        IntServerVpsOrder vpsOrder2 = new IntServerVpsOrder();
        IntServerVpsOrder vpsOrder3;

        System.assertEquals(false, vpsOrder1.equals(vpsOrder3));
        System.assertEquals(false, vpsOrder2.equals(vpsOrder3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsOrder vpsOrder1 = IntServerVpsOrder.getExample();
        IntServerVpsOrder vpsOrder2 = new IntServerVpsOrder();

        System.assertEquals(vpsOrder1.hashCode(), vpsOrder1.hashCode());
        System.assertEquals(vpsOrder2.hashCode(), vpsOrder2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsOrder vpsOrder1 = IntServerVpsOrder.getExample();
        IntServerVpsOrder vpsOrder2 = IntServerVpsOrder.getExample();
        IntServerVpsOrder vpsOrder3 = new IntServerVpsOrder();
        IntServerVpsOrder vpsOrder4 = new IntServerVpsOrder();

        System.assert(vpsOrder1.equals(vpsOrder2));
        System.assert(vpsOrder3.equals(vpsOrder4));
        System.assertEquals(vpsOrder1.hashCode(), vpsOrder2.hashCode());
        System.assertEquals(vpsOrder3.hashCode(), vpsOrder4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerVpsOrder vpsOrder = new IntServerVpsOrder();
        Map<String, String> x-property-mappings = vpsOrder.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
