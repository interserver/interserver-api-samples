@isTest
private class IntServerServerOrderFieldLabelsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerOrderFieldLabels serverOrderFieldLabels1 = IntServerServerOrderFieldLabels.getExample();
        IntServerServerOrderFieldLabels serverOrderFieldLabels2 = serverOrderFieldLabels1;
        IntServerServerOrderFieldLabels serverOrderFieldLabels3 = new IntServerServerOrderFieldLabels();
        IntServerServerOrderFieldLabels serverOrderFieldLabels4 = serverOrderFieldLabels3;

        System.assert(serverOrderFieldLabels1.equals(serverOrderFieldLabels2));
        System.assert(serverOrderFieldLabels2.equals(serverOrderFieldLabels1));
        System.assert(serverOrderFieldLabels1.equals(serverOrderFieldLabels1));
        System.assert(serverOrderFieldLabels3.equals(serverOrderFieldLabels4));
        System.assert(serverOrderFieldLabels4.equals(serverOrderFieldLabels3));
        System.assert(serverOrderFieldLabels3.equals(serverOrderFieldLabels3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerOrderFieldLabels serverOrderFieldLabels1 = IntServerServerOrderFieldLabels.getExample();
        IntServerServerOrderFieldLabels serverOrderFieldLabels2 = IntServerServerOrderFieldLabels.getExample();
        IntServerServerOrderFieldLabels serverOrderFieldLabels3 = new IntServerServerOrderFieldLabels();
        IntServerServerOrderFieldLabels serverOrderFieldLabels4 = new IntServerServerOrderFieldLabels();

        System.assert(serverOrderFieldLabels1.equals(serverOrderFieldLabels2));
        System.assert(serverOrderFieldLabels2.equals(serverOrderFieldLabels1));
        System.assert(serverOrderFieldLabels3.equals(serverOrderFieldLabels4));
        System.assert(serverOrderFieldLabels4.equals(serverOrderFieldLabels3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerOrderFieldLabels serverOrderFieldLabels1 = IntServerServerOrderFieldLabels.getExample();
        IntServerServerOrderFieldLabels serverOrderFieldLabels2 = new IntServerServerOrderFieldLabels();

        System.assertEquals(false, serverOrderFieldLabels1.equals('foo'));
        System.assertEquals(false, serverOrderFieldLabels2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerOrderFieldLabels serverOrderFieldLabels1 = IntServerServerOrderFieldLabels.getExample();
        IntServerServerOrderFieldLabels serverOrderFieldLabels2 = new IntServerServerOrderFieldLabels();
        IntServerServerOrderFieldLabels serverOrderFieldLabels3;

        System.assertEquals(false, serverOrderFieldLabels1.equals(serverOrderFieldLabels3));
        System.assertEquals(false, serverOrderFieldLabels2.equals(serverOrderFieldLabels3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerOrderFieldLabels serverOrderFieldLabels1 = IntServerServerOrderFieldLabels.getExample();
        IntServerServerOrderFieldLabels serverOrderFieldLabels2 = new IntServerServerOrderFieldLabels();

        System.assertEquals(serverOrderFieldLabels1.hashCode(), serverOrderFieldLabels1.hashCode());
        System.assertEquals(serverOrderFieldLabels2.hashCode(), serverOrderFieldLabels2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerOrderFieldLabels serverOrderFieldLabels1 = IntServerServerOrderFieldLabels.getExample();
        IntServerServerOrderFieldLabels serverOrderFieldLabels2 = IntServerServerOrderFieldLabels.getExample();
        IntServerServerOrderFieldLabels serverOrderFieldLabels3 = new IntServerServerOrderFieldLabels();
        IntServerServerOrderFieldLabels serverOrderFieldLabels4 = new IntServerServerOrderFieldLabels();

        System.assert(serverOrderFieldLabels1.equals(serverOrderFieldLabels2));
        System.assert(serverOrderFieldLabels3.equals(serverOrderFieldLabels4));
        System.assertEquals(serverOrderFieldLabels1.hashCode(), serverOrderFieldLabels2.hashCode());
        System.assertEquals(serverOrderFieldLabels3.hashCode(), serverOrderFieldLabels4.hashCode());
    }
}
