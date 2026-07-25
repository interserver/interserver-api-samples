@isTest
private class IntServerVpsOrderPostRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsOrderPostRequest vpsOrderPostRequest1 = IntServerVpsOrderPostRequest.getExample();
        IntServerVpsOrderPostRequest vpsOrderPostRequest2 = vpsOrderPostRequest1;
        IntServerVpsOrderPostRequest vpsOrderPostRequest3 = new IntServerVpsOrderPostRequest();
        IntServerVpsOrderPostRequest vpsOrderPostRequest4 = vpsOrderPostRequest3;

        System.assert(vpsOrderPostRequest1.equals(vpsOrderPostRequest2));
        System.assert(vpsOrderPostRequest2.equals(vpsOrderPostRequest1));
        System.assert(vpsOrderPostRequest1.equals(vpsOrderPostRequest1));
        System.assert(vpsOrderPostRequest3.equals(vpsOrderPostRequest4));
        System.assert(vpsOrderPostRequest4.equals(vpsOrderPostRequest3));
        System.assert(vpsOrderPostRequest3.equals(vpsOrderPostRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsOrderPostRequest vpsOrderPostRequest1 = IntServerVpsOrderPostRequest.getExample();
        IntServerVpsOrderPostRequest vpsOrderPostRequest2 = IntServerVpsOrderPostRequest.getExample();
        IntServerVpsOrderPostRequest vpsOrderPostRequest3 = new IntServerVpsOrderPostRequest();
        IntServerVpsOrderPostRequest vpsOrderPostRequest4 = new IntServerVpsOrderPostRequest();

        System.assert(vpsOrderPostRequest1.equals(vpsOrderPostRequest2));
        System.assert(vpsOrderPostRequest2.equals(vpsOrderPostRequest1));
        System.assert(vpsOrderPostRequest3.equals(vpsOrderPostRequest4));
        System.assert(vpsOrderPostRequest4.equals(vpsOrderPostRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsOrderPostRequest vpsOrderPostRequest1 = IntServerVpsOrderPostRequest.getExample();
        IntServerVpsOrderPostRequest vpsOrderPostRequest2 = new IntServerVpsOrderPostRequest();

        System.assertEquals(false, vpsOrderPostRequest1.equals('foo'));
        System.assertEquals(false, vpsOrderPostRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsOrderPostRequest vpsOrderPostRequest1 = IntServerVpsOrderPostRequest.getExample();
        IntServerVpsOrderPostRequest vpsOrderPostRequest2 = new IntServerVpsOrderPostRequest();
        IntServerVpsOrderPostRequest vpsOrderPostRequest3;

        System.assertEquals(false, vpsOrderPostRequest1.equals(vpsOrderPostRequest3));
        System.assertEquals(false, vpsOrderPostRequest2.equals(vpsOrderPostRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsOrderPostRequest vpsOrderPostRequest1 = IntServerVpsOrderPostRequest.getExample();
        IntServerVpsOrderPostRequest vpsOrderPostRequest2 = new IntServerVpsOrderPostRequest();

        System.assertEquals(vpsOrderPostRequest1.hashCode(), vpsOrderPostRequest1.hashCode());
        System.assertEquals(vpsOrderPostRequest2.hashCode(), vpsOrderPostRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsOrderPostRequest vpsOrderPostRequest1 = IntServerVpsOrderPostRequest.getExample();
        IntServerVpsOrderPostRequest vpsOrderPostRequest2 = IntServerVpsOrderPostRequest.getExample();
        IntServerVpsOrderPostRequest vpsOrderPostRequest3 = new IntServerVpsOrderPostRequest();
        IntServerVpsOrderPostRequest vpsOrderPostRequest4 = new IntServerVpsOrderPostRequest();

        System.assert(vpsOrderPostRequest1.equals(vpsOrderPostRequest2));
        System.assert(vpsOrderPostRequest3.equals(vpsOrderPostRequest4));
        System.assertEquals(vpsOrderPostRequest1.hashCode(), vpsOrderPostRequest2.hashCode());
        System.assertEquals(vpsOrderPostRequest3.hashCode(), vpsOrderPostRequest4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerVpsOrderPostRequest vpsOrderPostRequest = new IntServerVpsOrderPostRequest();
        System.assertEquals(1, vpsOrderPostRequest.slices);
        System.assertEquals(1, vpsOrderPostRequest.period);
        System.assertEquals(1, vpsOrderPostRequest.location);
        System.assertEquals('', vpsOrderPostRequest.hostname);
        System.assertEquals('', vpsOrderPostRequest.coupon);
        System.assertEquals('', vpsOrderPostRequest.comment);
        System.assertEquals(null, vpsOrderPostRequest.osDistro);
        System.assertEquals(null, vpsOrderPostRequest.vpsPlatform);
        System.assertEquals(null, vpsOrderPostRequest.osVersion);
        System.assertEquals(null, vpsOrderPostRequest.rootpass);
        System.assertEquals(null, vpsOrderPostRequest.controlpanel);
    }
}
