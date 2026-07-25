@isTest
private class IntServerQsOrderRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerQsOrderRequest qsOrderRequest1 = IntServerQsOrderRequest.getExample();
        IntServerQsOrderRequest qsOrderRequest2 = qsOrderRequest1;
        IntServerQsOrderRequest qsOrderRequest3 = new IntServerQsOrderRequest();
        IntServerQsOrderRequest qsOrderRequest4 = qsOrderRequest3;

        System.assert(qsOrderRequest1.equals(qsOrderRequest2));
        System.assert(qsOrderRequest2.equals(qsOrderRequest1));
        System.assert(qsOrderRequest1.equals(qsOrderRequest1));
        System.assert(qsOrderRequest3.equals(qsOrderRequest4));
        System.assert(qsOrderRequest4.equals(qsOrderRequest3));
        System.assert(qsOrderRequest3.equals(qsOrderRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerQsOrderRequest qsOrderRequest1 = IntServerQsOrderRequest.getExample();
        IntServerQsOrderRequest qsOrderRequest2 = IntServerQsOrderRequest.getExample();
        IntServerQsOrderRequest qsOrderRequest3 = new IntServerQsOrderRequest();
        IntServerQsOrderRequest qsOrderRequest4 = new IntServerQsOrderRequest();

        System.assert(qsOrderRequest1.equals(qsOrderRequest2));
        System.assert(qsOrderRequest2.equals(qsOrderRequest1));
        System.assert(qsOrderRequest3.equals(qsOrderRequest4));
        System.assert(qsOrderRequest4.equals(qsOrderRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerQsOrderRequest qsOrderRequest1 = IntServerQsOrderRequest.getExample();
        IntServerQsOrderRequest qsOrderRequest2 = new IntServerQsOrderRequest();

        System.assertEquals(false, qsOrderRequest1.equals('foo'));
        System.assertEquals(false, qsOrderRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerQsOrderRequest qsOrderRequest1 = IntServerQsOrderRequest.getExample();
        IntServerQsOrderRequest qsOrderRequest2 = new IntServerQsOrderRequest();
        IntServerQsOrderRequest qsOrderRequest3;

        System.assertEquals(false, qsOrderRequest1.equals(qsOrderRequest3));
        System.assertEquals(false, qsOrderRequest2.equals(qsOrderRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerQsOrderRequest qsOrderRequest1 = IntServerQsOrderRequest.getExample();
        IntServerQsOrderRequest qsOrderRequest2 = new IntServerQsOrderRequest();

        System.assertEquals(qsOrderRequest1.hashCode(), qsOrderRequest1.hashCode());
        System.assertEquals(qsOrderRequest2.hashCode(), qsOrderRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerQsOrderRequest qsOrderRequest1 = IntServerQsOrderRequest.getExample();
        IntServerQsOrderRequest qsOrderRequest2 = IntServerQsOrderRequest.getExample();
        IntServerQsOrderRequest qsOrderRequest3 = new IntServerQsOrderRequest();
        IntServerQsOrderRequest qsOrderRequest4 = new IntServerQsOrderRequest();

        System.assert(qsOrderRequest1.equals(qsOrderRequest2));
        System.assert(qsOrderRequest3.equals(qsOrderRequest4));
        System.assertEquals(qsOrderRequest1.hashCode(), qsOrderRequest2.hashCode());
        System.assertEquals(qsOrderRequest3.hashCode(), qsOrderRequest4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerQsOrderRequest qsOrderRequest = new IntServerQsOrderRequest();
        System.assertEquals('', qsOrderRequest.os);
        System.assertEquals('', qsOrderRequest.comment);
        System.assertEquals(null, qsOrderRequest.server);
        System.assertEquals(null, qsOrderRequest.password);
        System.assertEquals(null, qsOrderRequest.tos);
    }
}
