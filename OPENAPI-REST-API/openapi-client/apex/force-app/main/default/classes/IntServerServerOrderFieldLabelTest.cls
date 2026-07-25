@isTest
private class IntServerServerOrderFieldLabelTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerOrderFieldLabel serverOrderFieldLabel1 = IntServerServerOrderFieldLabel.getExample();
        IntServerServerOrderFieldLabel serverOrderFieldLabel2 = serverOrderFieldLabel1;
        IntServerServerOrderFieldLabel serverOrderFieldLabel3 = new IntServerServerOrderFieldLabel();
        IntServerServerOrderFieldLabel serverOrderFieldLabel4 = serverOrderFieldLabel3;

        System.assert(serverOrderFieldLabel1.equals(serverOrderFieldLabel2));
        System.assert(serverOrderFieldLabel2.equals(serverOrderFieldLabel1));
        System.assert(serverOrderFieldLabel1.equals(serverOrderFieldLabel1));
        System.assert(serverOrderFieldLabel3.equals(serverOrderFieldLabel4));
        System.assert(serverOrderFieldLabel4.equals(serverOrderFieldLabel3));
        System.assert(serverOrderFieldLabel3.equals(serverOrderFieldLabel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerOrderFieldLabel serverOrderFieldLabel1 = IntServerServerOrderFieldLabel.getExample();
        IntServerServerOrderFieldLabel serverOrderFieldLabel2 = IntServerServerOrderFieldLabel.getExample();
        IntServerServerOrderFieldLabel serverOrderFieldLabel3 = new IntServerServerOrderFieldLabel();
        IntServerServerOrderFieldLabel serverOrderFieldLabel4 = new IntServerServerOrderFieldLabel();

        System.assert(serverOrderFieldLabel1.equals(serverOrderFieldLabel2));
        System.assert(serverOrderFieldLabel2.equals(serverOrderFieldLabel1));
        System.assert(serverOrderFieldLabel3.equals(serverOrderFieldLabel4));
        System.assert(serverOrderFieldLabel4.equals(serverOrderFieldLabel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerOrderFieldLabel serverOrderFieldLabel1 = IntServerServerOrderFieldLabel.getExample();
        IntServerServerOrderFieldLabel serverOrderFieldLabel2 = new IntServerServerOrderFieldLabel();

        System.assertEquals(false, serverOrderFieldLabel1.equals('foo'));
        System.assertEquals(false, serverOrderFieldLabel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerOrderFieldLabel serverOrderFieldLabel1 = IntServerServerOrderFieldLabel.getExample();
        IntServerServerOrderFieldLabel serverOrderFieldLabel2 = new IntServerServerOrderFieldLabel();
        IntServerServerOrderFieldLabel serverOrderFieldLabel3;

        System.assertEquals(false, serverOrderFieldLabel1.equals(serverOrderFieldLabel3));
        System.assertEquals(false, serverOrderFieldLabel2.equals(serverOrderFieldLabel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerOrderFieldLabel serverOrderFieldLabel1 = IntServerServerOrderFieldLabel.getExample();
        IntServerServerOrderFieldLabel serverOrderFieldLabel2 = new IntServerServerOrderFieldLabel();

        System.assertEquals(serverOrderFieldLabel1.hashCode(), serverOrderFieldLabel1.hashCode());
        System.assertEquals(serverOrderFieldLabel2.hashCode(), serverOrderFieldLabel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerOrderFieldLabel serverOrderFieldLabel1 = IntServerServerOrderFieldLabel.getExample();
        IntServerServerOrderFieldLabel serverOrderFieldLabel2 = IntServerServerOrderFieldLabel.getExample();
        IntServerServerOrderFieldLabel serverOrderFieldLabel3 = new IntServerServerOrderFieldLabel();
        IntServerServerOrderFieldLabel serverOrderFieldLabel4 = new IntServerServerOrderFieldLabel();

        System.assert(serverOrderFieldLabel1.equals(serverOrderFieldLabel2));
        System.assert(serverOrderFieldLabel3.equals(serverOrderFieldLabel4));
        System.assertEquals(serverOrderFieldLabel1.hashCode(), serverOrderFieldLabel2.hashCode());
        System.assertEquals(serverOrderFieldLabel3.hashCode(), serverOrderFieldLabel4.hashCode());
    }
}
