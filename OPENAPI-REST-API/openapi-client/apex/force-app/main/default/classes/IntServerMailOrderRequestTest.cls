@isTest
private class IntServerMailOrderRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailOrderRequest mailOrderRequest1 = IntServerMailOrderRequest.getExample();
        IntServerMailOrderRequest mailOrderRequest2 = mailOrderRequest1;
        IntServerMailOrderRequest mailOrderRequest3 = new IntServerMailOrderRequest();
        IntServerMailOrderRequest mailOrderRequest4 = mailOrderRequest3;

        System.assert(mailOrderRequest1.equals(mailOrderRequest2));
        System.assert(mailOrderRequest2.equals(mailOrderRequest1));
        System.assert(mailOrderRequest1.equals(mailOrderRequest1));
        System.assert(mailOrderRequest3.equals(mailOrderRequest4));
        System.assert(mailOrderRequest4.equals(mailOrderRequest3));
        System.assert(mailOrderRequest3.equals(mailOrderRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailOrderRequest mailOrderRequest1 = IntServerMailOrderRequest.getExample();
        IntServerMailOrderRequest mailOrderRequest2 = IntServerMailOrderRequest.getExample();
        IntServerMailOrderRequest mailOrderRequest3 = new IntServerMailOrderRequest();
        IntServerMailOrderRequest mailOrderRequest4 = new IntServerMailOrderRequest();

        System.assert(mailOrderRequest1.equals(mailOrderRequest2));
        System.assert(mailOrderRequest2.equals(mailOrderRequest1));
        System.assert(mailOrderRequest3.equals(mailOrderRequest4));
        System.assert(mailOrderRequest4.equals(mailOrderRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailOrderRequest mailOrderRequest1 = IntServerMailOrderRequest.getExample();
        IntServerMailOrderRequest mailOrderRequest2 = new IntServerMailOrderRequest();

        System.assertEquals(false, mailOrderRequest1.equals('foo'));
        System.assertEquals(false, mailOrderRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailOrderRequest mailOrderRequest1 = IntServerMailOrderRequest.getExample();
        IntServerMailOrderRequest mailOrderRequest2 = new IntServerMailOrderRequest();
        IntServerMailOrderRequest mailOrderRequest3;

        System.assertEquals(false, mailOrderRequest1.equals(mailOrderRequest3));
        System.assertEquals(false, mailOrderRequest2.equals(mailOrderRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailOrderRequest mailOrderRequest1 = IntServerMailOrderRequest.getExample();
        IntServerMailOrderRequest mailOrderRequest2 = new IntServerMailOrderRequest();

        System.assertEquals(mailOrderRequest1.hashCode(), mailOrderRequest1.hashCode());
        System.assertEquals(mailOrderRequest2.hashCode(), mailOrderRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailOrderRequest mailOrderRequest1 = IntServerMailOrderRequest.getExample();
        IntServerMailOrderRequest mailOrderRequest2 = IntServerMailOrderRequest.getExample();
        IntServerMailOrderRequest mailOrderRequest3 = new IntServerMailOrderRequest();
        IntServerMailOrderRequest mailOrderRequest4 = new IntServerMailOrderRequest();

        System.assert(mailOrderRequest1.equals(mailOrderRequest2));
        System.assert(mailOrderRequest3.equals(mailOrderRequest4));
        System.assertEquals(mailOrderRequest1.hashCode(), mailOrderRequest2.hashCode());
        System.assertEquals(mailOrderRequest3.hashCode(), mailOrderRequest4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerMailOrderRequest mailOrderRequest = new IntServerMailOrderRequest();
        System.assertEquals('', mailOrderRequest.coupon);
        System.assertEquals('', mailOrderRequest.comment);
        System.assertEquals(null, mailOrderRequest.serviceType);
    }
}
