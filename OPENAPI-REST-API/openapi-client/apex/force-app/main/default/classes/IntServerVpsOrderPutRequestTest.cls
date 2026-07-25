@isTest
private class IntServerVpsOrderPutRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsOrderPutRequest vpsOrderPutRequest1 = IntServerVpsOrderPutRequest.getExample();
        IntServerVpsOrderPutRequest vpsOrderPutRequest2 = vpsOrderPutRequest1;
        IntServerVpsOrderPutRequest vpsOrderPutRequest3 = new IntServerVpsOrderPutRequest();
        IntServerVpsOrderPutRequest vpsOrderPutRequest4 = vpsOrderPutRequest3;

        System.assert(vpsOrderPutRequest1.equals(vpsOrderPutRequest2));
        System.assert(vpsOrderPutRequest2.equals(vpsOrderPutRequest1));
        System.assert(vpsOrderPutRequest1.equals(vpsOrderPutRequest1));
        System.assert(vpsOrderPutRequest3.equals(vpsOrderPutRequest4));
        System.assert(vpsOrderPutRequest4.equals(vpsOrderPutRequest3));
        System.assert(vpsOrderPutRequest3.equals(vpsOrderPutRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsOrderPutRequest vpsOrderPutRequest1 = IntServerVpsOrderPutRequest.getExample();
        IntServerVpsOrderPutRequest vpsOrderPutRequest2 = IntServerVpsOrderPutRequest.getExample();
        IntServerVpsOrderPutRequest vpsOrderPutRequest3 = new IntServerVpsOrderPutRequest();
        IntServerVpsOrderPutRequest vpsOrderPutRequest4 = new IntServerVpsOrderPutRequest();

        System.assert(vpsOrderPutRequest1.equals(vpsOrderPutRequest2));
        System.assert(vpsOrderPutRequest2.equals(vpsOrderPutRequest1));
        System.assert(vpsOrderPutRequest3.equals(vpsOrderPutRequest4));
        System.assert(vpsOrderPutRequest4.equals(vpsOrderPutRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsOrderPutRequest vpsOrderPutRequest1 = IntServerVpsOrderPutRequest.getExample();
        IntServerVpsOrderPutRequest vpsOrderPutRequest2 = new IntServerVpsOrderPutRequest();

        System.assertEquals(false, vpsOrderPutRequest1.equals('foo'));
        System.assertEquals(false, vpsOrderPutRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsOrderPutRequest vpsOrderPutRequest1 = IntServerVpsOrderPutRequest.getExample();
        IntServerVpsOrderPutRequest vpsOrderPutRequest2 = new IntServerVpsOrderPutRequest();
        IntServerVpsOrderPutRequest vpsOrderPutRequest3;

        System.assertEquals(false, vpsOrderPutRequest1.equals(vpsOrderPutRequest3));
        System.assertEquals(false, vpsOrderPutRequest2.equals(vpsOrderPutRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsOrderPutRequest vpsOrderPutRequest1 = IntServerVpsOrderPutRequest.getExample();
        IntServerVpsOrderPutRequest vpsOrderPutRequest2 = new IntServerVpsOrderPutRequest();

        System.assertEquals(vpsOrderPutRequest1.hashCode(), vpsOrderPutRequest1.hashCode());
        System.assertEquals(vpsOrderPutRequest2.hashCode(), vpsOrderPutRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsOrderPutRequest vpsOrderPutRequest1 = IntServerVpsOrderPutRequest.getExample();
        IntServerVpsOrderPutRequest vpsOrderPutRequest2 = IntServerVpsOrderPutRequest.getExample();
        IntServerVpsOrderPutRequest vpsOrderPutRequest3 = new IntServerVpsOrderPutRequest();
        IntServerVpsOrderPutRequest vpsOrderPutRequest4 = new IntServerVpsOrderPutRequest();

        System.assert(vpsOrderPutRequest1.equals(vpsOrderPutRequest2));
        System.assert(vpsOrderPutRequest3.equals(vpsOrderPutRequest4));
        System.assertEquals(vpsOrderPutRequest1.hashCode(), vpsOrderPutRequest2.hashCode());
        System.assertEquals(vpsOrderPutRequest3.hashCode(), vpsOrderPutRequest4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerVpsOrderPutRequest vpsOrderPutRequest = new IntServerVpsOrderPutRequest();
        System.assertEquals(1, vpsOrderPutRequest.slices);
        System.assertEquals(1, vpsOrderPutRequest.period);
        System.assertEquals(1, vpsOrderPutRequest.location);
        System.assertEquals('', vpsOrderPutRequest.hostname);
        System.assertEquals('', vpsOrderPutRequest.coupon);
        System.assertEquals('', vpsOrderPutRequest.comment);
        System.assertEquals(null, vpsOrderPutRequest.osDistro);
        System.assertEquals(null, vpsOrderPutRequest.vpsPlatform);
        System.assertEquals(null, vpsOrderPutRequest.osVersion);
        System.assertEquals(null, vpsOrderPutRequest.rootpass);
        System.assertEquals(null, vpsOrderPutRequest.controlpanel);
    }
}
