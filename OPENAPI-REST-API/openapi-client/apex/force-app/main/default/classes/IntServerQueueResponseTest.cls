@isTest
private class IntServerQueueResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerQueueResponse queueResponse1 = IntServerQueueResponse.getExample();
        IntServerQueueResponse queueResponse2 = queueResponse1;
        IntServerQueueResponse queueResponse3 = new IntServerQueueResponse();
        IntServerQueueResponse queueResponse4 = queueResponse3;

        System.assert(queueResponse1.equals(queueResponse2));
        System.assert(queueResponse2.equals(queueResponse1));
        System.assert(queueResponse1.equals(queueResponse1));
        System.assert(queueResponse3.equals(queueResponse4));
        System.assert(queueResponse4.equals(queueResponse3));
        System.assert(queueResponse3.equals(queueResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerQueueResponse queueResponse1 = IntServerQueueResponse.getExample();
        IntServerQueueResponse queueResponse2 = IntServerQueueResponse.getExample();
        IntServerQueueResponse queueResponse3 = new IntServerQueueResponse();
        IntServerQueueResponse queueResponse4 = new IntServerQueueResponse();

        System.assert(queueResponse1.equals(queueResponse2));
        System.assert(queueResponse2.equals(queueResponse1));
        System.assert(queueResponse3.equals(queueResponse4));
        System.assert(queueResponse4.equals(queueResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerQueueResponse queueResponse1 = IntServerQueueResponse.getExample();
        IntServerQueueResponse queueResponse2 = new IntServerQueueResponse();

        System.assertEquals(false, queueResponse1.equals('foo'));
        System.assertEquals(false, queueResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerQueueResponse queueResponse1 = IntServerQueueResponse.getExample();
        IntServerQueueResponse queueResponse2 = new IntServerQueueResponse();
        IntServerQueueResponse queueResponse3;

        System.assertEquals(false, queueResponse1.equals(queueResponse3));
        System.assertEquals(false, queueResponse2.equals(queueResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerQueueResponse queueResponse1 = IntServerQueueResponse.getExample();
        IntServerQueueResponse queueResponse2 = new IntServerQueueResponse();

        System.assertEquals(queueResponse1.hashCode(), queueResponse1.hashCode());
        System.assertEquals(queueResponse2.hashCode(), queueResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerQueueResponse queueResponse1 = IntServerQueueResponse.getExample();
        IntServerQueueResponse queueResponse2 = IntServerQueueResponse.getExample();
        IntServerQueueResponse queueResponse3 = new IntServerQueueResponse();
        IntServerQueueResponse queueResponse4 = new IntServerQueueResponse();

        System.assert(queueResponse1.equals(queueResponse2));
        System.assert(queueResponse3.equals(queueResponse4));
        System.assertEquals(queueResponse1.hashCode(), queueResponse2.hashCode());
        System.assertEquals(queueResponse3.hashCode(), queueResponse4.hashCode());
    }
}
