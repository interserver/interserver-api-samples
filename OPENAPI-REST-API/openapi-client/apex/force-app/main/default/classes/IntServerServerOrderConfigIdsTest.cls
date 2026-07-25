@isTest
private class IntServerServerOrderConfigIdsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerOrderConfigIds serverOrderConfigIds1 = IntServerServerOrderConfigIds.getExample();
        IntServerServerOrderConfigIds serverOrderConfigIds2 = serverOrderConfigIds1;
        IntServerServerOrderConfigIds serverOrderConfigIds3 = new IntServerServerOrderConfigIds();
        IntServerServerOrderConfigIds serverOrderConfigIds4 = serverOrderConfigIds3;

        System.assert(serverOrderConfigIds1.equals(serverOrderConfigIds2));
        System.assert(serverOrderConfigIds2.equals(serverOrderConfigIds1));
        System.assert(serverOrderConfigIds1.equals(serverOrderConfigIds1));
        System.assert(serverOrderConfigIds3.equals(serverOrderConfigIds4));
        System.assert(serverOrderConfigIds4.equals(serverOrderConfigIds3));
        System.assert(serverOrderConfigIds3.equals(serverOrderConfigIds3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerOrderConfigIds serverOrderConfigIds1 = IntServerServerOrderConfigIds.getExample();
        IntServerServerOrderConfigIds serverOrderConfigIds2 = IntServerServerOrderConfigIds.getExample();
        IntServerServerOrderConfigIds serverOrderConfigIds3 = new IntServerServerOrderConfigIds();
        IntServerServerOrderConfigIds serverOrderConfigIds4 = new IntServerServerOrderConfigIds();

        System.assert(serverOrderConfigIds1.equals(serverOrderConfigIds2));
        System.assert(serverOrderConfigIds2.equals(serverOrderConfigIds1));
        System.assert(serverOrderConfigIds3.equals(serverOrderConfigIds4));
        System.assert(serverOrderConfigIds4.equals(serverOrderConfigIds3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerOrderConfigIds serverOrderConfigIds1 = IntServerServerOrderConfigIds.getExample();
        IntServerServerOrderConfigIds serverOrderConfigIds2 = new IntServerServerOrderConfigIds();

        System.assertEquals(false, serverOrderConfigIds1.equals('foo'));
        System.assertEquals(false, serverOrderConfigIds2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerOrderConfigIds serverOrderConfigIds1 = IntServerServerOrderConfigIds.getExample();
        IntServerServerOrderConfigIds serverOrderConfigIds2 = new IntServerServerOrderConfigIds();
        IntServerServerOrderConfigIds serverOrderConfigIds3;

        System.assertEquals(false, serverOrderConfigIds1.equals(serverOrderConfigIds3));
        System.assertEquals(false, serverOrderConfigIds2.equals(serverOrderConfigIds3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerOrderConfigIds serverOrderConfigIds1 = IntServerServerOrderConfigIds.getExample();
        IntServerServerOrderConfigIds serverOrderConfigIds2 = new IntServerServerOrderConfigIds();

        System.assertEquals(serverOrderConfigIds1.hashCode(), serverOrderConfigIds1.hashCode());
        System.assertEquals(serverOrderConfigIds2.hashCode(), serverOrderConfigIds2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerOrderConfigIds serverOrderConfigIds1 = IntServerServerOrderConfigIds.getExample();
        IntServerServerOrderConfigIds serverOrderConfigIds2 = IntServerServerOrderConfigIds.getExample();
        IntServerServerOrderConfigIds serverOrderConfigIds3 = new IntServerServerOrderConfigIds();
        IntServerServerOrderConfigIds serverOrderConfigIds4 = new IntServerServerOrderConfigIds();

        System.assert(serverOrderConfigIds1.equals(serverOrderConfigIds2));
        System.assert(serverOrderConfigIds3.equals(serverOrderConfigIds4));
        System.assertEquals(serverOrderConfigIds1.hashCode(), serverOrderConfigIds2.hashCode());
        System.assertEquals(serverOrderConfigIds3.hashCode(), serverOrderConfigIds4.hashCode());
    }
}
