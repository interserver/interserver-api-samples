@isTest
private class IntServerPostWebsiteBuyIpRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerPostWebsiteBuyIpRequest postWebsiteBuyIpRequest1 = IntServerPostWebsiteBuyIpRequest.getExample();
        IntServerPostWebsiteBuyIpRequest postWebsiteBuyIpRequest2 = postWebsiteBuyIpRequest1;
        IntServerPostWebsiteBuyIpRequest postWebsiteBuyIpRequest3 = new IntServerPostWebsiteBuyIpRequest();
        IntServerPostWebsiteBuyIpRequest postWebsiteBuyIpRequest4 = postWebsiteBuyIpRequest3;

        System.assert(postWebsiteBuyIpRequest1.equals(postWebsiteBuyIpRequest2));
        System.assert(postWebsiteBuyIpRequest2.equals(postWebsiteBuyIpRequest1));
        System.assert(postWebsiteBuyIpRequest1.equals(postWebsiteBuyIpRequest1));
        System.assert(postWebsiteBuyIpRequest3.equals(postWebsiteBuyIpRequest4));
        System.assert(postWebsiteBuyIpRequest4.equals(postWebsiteBuyIpRequest3));
        System.assert(postWebsiteBuyIpRequest3.equals(postWebsiteBuyIpRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerPostWebsiteBuyIpRequest postWebsiteBuyIpRequest1 = IntServerPostWebsiteBuyIpRequest.getExample();
        IntServerPostWebsiteBuyIpRequest postWebsiteBuyIpRequest2 = IntServerPostWebsiteBuyIpRequest.getExample();
        IntServerPostWebsiteBuyIpRequest postWebsiteBuyIpRequest3 = new IntServerPostWebsiteBuyIpRequest();
        IntServerPostWebsiteBuyIpRequest postWebsiteBuyIpRequest4 = new IntServerPostWebsiteBuyIpRequest();

        System.assert(postWebsiteBuyIpRequest1.equals(postWebsiteBuyIpRequest2));
        System.assert(postWebsiteBuyIpRequest2.equals(postWebsiteBuyIpRequest1));
        System.assert(postWebsiteBuyIpRequest3.equals(postWebsiteBuyIpRequest4));
        System.assert(postWebsiteBuyIpRequest4.equals(postWebsiteBuyIpRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerPostWebsiteBuyIpRequest postWebsiteBuyIpRequest1 = IntServerPostWebsiteBuyIpRequest.getExample();
        IntServerPostWebsiteBuyIpRequest postWebsiteBuyIpRequest2 = new IntServerPostWebsiteBuyIpRequest();

        System.assertEquals(false, postWebsiteBuyIpRequest1.equals('foo'));
        System.assertEquals(false, postWebsiteBuyIpRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerPostWebsiteBuyIpRequest postWebsiteBuyIpRequest1 = IntServerPostWebsiteBuyIpRequest.getExample();
        IntServerPostWebsiteBuyIpRequest postWebsiteBuyIpRequest2 = new IntServerPostWebsiteBuyIpRequest();
        IntServerPostWebsiteBuyIpRequest postWebsiteBuyIpRequest3;

        System.assertEquals(false, postWebsiteBuyIpRequest1.equals(postWebsiteBuyIpRequest3));
        System.assertEquals(false, postWebsiteBuyIpRequest2.equals(postWebsiteBuyIpRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerPostWebsiteBuyIpRequest postWebsiteBuyIpRequest1 = IntServerPostWebsiteBuyIpRequest.getExample();
        IntServerPostWebsiteBuyIpRequest postWebsiteBuyIpRequest2 = new IntServerPostWebsiteBuyIpRequest();

        System.assertEquals(postWebsiteBuyIpRequest1.hashCode(), postWebsiteBuyIpRequest1.hashCode());
        System.assertEquals(postWebsiteBuyIpRequest2.hashCode(), postWebsiteBuyIpRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerPostWebsiteBuyIpRequest postWebsiteBuyIpRequest1 = IntServerPostWebsiteBuyIpRequest.getExample();
        IntServerPostWebsiteBuyIpRequest postWebsiteBuyIpRequest2 = IntServerPostWebsiteBuyIpRequest.getExample();
        IntServerPostWebsiteBuyIpRequest postWebsiteBuyIpRequest3 = new IntServerPostWebsiteBuyIpRequest();
        IntServerPostWebsiteBuyIpRequest postWebsiteBuyIpRequest4 = new IntServerPostWebsiteBuyIpRequest();

        System.assert(postWebsiteBuyIpRequest1.equals(postWebsiteBuyIpRequest2));
        System.assert(postWebsiteBuyIpRequest3.equals(postWebsiteBuyIpRequest4));
        System.assertEquals(postWebsiteBuyIpRequest1.hashCode(), postWebsiteBuyIpRequest2.hashCode());
        System.assertEquals(postWebsiteBuyIpRequest3.hashCode(), postWebsiteBuyIpRequest4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerPostWebsiteBuyIpRequest postWebsiteBuyIpRequest = new IntServerPostWebsiteBuyIpRequest();
        System.assertEquals(new Map<String, String>(), postWebsiteBuyIpRequest.ips);
    }
}
