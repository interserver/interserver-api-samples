@isTest
private class IntServerMailOrderTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailOrder mailOrder1 = IntServerMailOrder.getExample();
        IntServerMailOrder mailOrder2 = mailOrder1;
        IntServerMailOrder mailOrder3 = new IntServerMailOrder();
        IntServerMailOrder mailOrder4 = mailOrder3;

        System.assert(mailOrder1.equals(mailOrder2));
        System.assert(mailOrder2.equals(mailOrder1));
        System.assert(mailOrder1.equals(mailOrder1));
        System.assert(mailOrder3.equals(mailOrder4));
        System.assert(mailOrder4.equals(mailOrder3));
        System.assert(mailOrder3.equals(mailOrder3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailOrder mailOrder1 = IntServerMailOrder.getExample();
        IntServerMailOrder mailOrder2 = IntServerMailOrder.getExample();
        IntServerMailOrder mailOrder3 = new IntServerMailOrder();
        IntServerMailOrder mailOrder4 = new IntServerMailOrder();

        System.assert(mailOrder1.equals(mailOrder2));
        System.assert(mailOrder2.equals(mailOrder1));
        System.assert(mailOrder3.equals(mailOrder4));
        System.assert(mailOrder4.equals(mailOrder3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailOrder mailOrder1 = IntServerMailOrder.getExample();
        IntServerMailOrder mailOrder2 = new IntServerMailOrder();

        System.assertEquals(false, mailOrder1.equals('foo'));
        System.assertEquals(false, mailOrder2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailOrder mailOrder1 = IntServerMailOrder.getExample();
        IntServerMailOrder mailOrder2 = new IntServerMailOrder();
        IntServerMailOrder mailOrder3;

        System.assertEquals(false, mailOrder1.equals(mailOrder3));
        System.assertEquals(false, mailOrder2.equals(mailOrder3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailOrder mailOrder1 = IntServerMailOrder.getExample();
        IntServerMailOrder mailOrder2 = new IntServerMailOrder();

        System.assertEquals(mailOrder1.hashCode(), mailOrder1.hashCode());
        System.assertEquals(mailOrder2.hashCode(), mailOrder2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailOrder mailOrder1 = IntServerMailOrder.getExample();
        IntServerMailOrder mailOrder2 = IntServerMailOrder.getExample();
        IntServerMailOrder mailOrder3 = new IntServerMailOrder();
        IntServerMailOrder mailOrder4 = new IntServerMailOrder();

        System.assert(mailOrder1.equals(mailOrder2));
        System.assert(mailOrder3.equals(mailOrder4));
        System.assertEquals(mailOrder1.hashCode(), mailOrder2.hashCode());
        System.assertEquals(mailOrder3.hashCode(), mailOrder4.hashCode());
    }
}
