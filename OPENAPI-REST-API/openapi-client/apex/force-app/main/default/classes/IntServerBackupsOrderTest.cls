@isTest
private class IntServerBackupsOrderTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerBackupsOrder backupsOrder1 = IntServerBackupsOrder.getExample();
        IntServerBackupsOrder backupsOrder2 = backupsOrder1;
        IntServerBackupsOrder backupsOrder3 = new IntServerBackupsOrder();
        IntServerBackupsOrder backupsOrder4 = backupsOrder3;

        System.assert(backupsOrder1.equals(backupsOrder2));
        System.assert(backupsOrder2.equals(backupsOrder1));
        System.assert(backupsOrder1.equals(backupsOrder1));
        System.assert(backupsOrder3.equals(backupsOrder4));
        System.assert(backupsOrder4.equals(backupsOrder3));
        System.assert(backupsOrder3.equals(backupsOrder3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerBackupsOrder backupsOrder1 = IntServerBackupsOrder.getExample();
        IntServerBackupsOrder backupsOrder2 = IntServerBackupsOrder.getExample();
        IntServerBackupsOrder backupsOrder3 = new IntServerBackupsOrder();
        IntServerBackupsOrder backupsOrder4 = new IntServerBackupsOrder();

        System.assert(backupsOrder1.equals(backupsOrder2));
        System.assert(backupsOrder2.equals(backupsOrder1));
        System.assert(backupsOrder3.equals(backupsOrder4));
        System.assert(backupsOrder4.equals(backupsOrder3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerBackupsOrder backupsOrder1 = IntServerBackupsOrder.getExample();
        IntServerBackupsOrder backupsOrder2 = new IntServerBackupsOrder();

        System.assertEquals(false, backupsOrder1.equals('foo'));
        System.assertEquals(false, backupsOrder2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerBackupsOrder backupsOrder1 = IntServerBackupsOrder.getExample();
        IntServerBackupsOrder backupsOrder2 = new IntServerBackupsOrder();
        IntServerBackupsOrder backupsOrder3;

        System.assertEquals(false, backupsOrder1.equals(backupsOrder3));
        System.assertEquals(false, backupsOrder2.equals(backupsOrder3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerBackupsOrder backupsOrder1 = IntServerBackupsOrder.getExample();
        IntServerBackupsOrder backupsOrder2 = new IntServerBackupsOrder();

        System.assertEquals(backupsOrder1.hashCode(), backupsOrder1.hashCode());
        System.assertEquals(backupsOrder2.hashCode(), backupsOrder2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerBackupsOrder backupsOrder1 = IntServerBackupsOrder.getExample();
        IntServerBackupsOrder backupsOrder2 = IntServerBackupsOrder.getExample();
        IntServerBackupsOrder backupsOrder3 = new IntServerBackupsOrder();
        IntServerBackupsOrder backupsOrder4 = new IntServerBackupsOrder();

        System.assert(backupsOrder1.equals(backupsOrder2));
        System.assert(backupsOrder3.equals(backupsOrder4));
        System.assertEquals(backupsOrder1.hashCode(), backupsOrder2.hashCode());
        System.assertEquals(backupsOrder3.hashCode(), backupsOrder4.hashCode());
    }
}
