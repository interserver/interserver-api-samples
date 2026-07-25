@isTest
private class IntServerWebsiteOrderPutRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerWebsiteOrderPutRequest websiteOrderPutRequest1 = IntServerWebsiteOrderPutRequest.getExample();
        IntServerWebsiteOrderPutRequest websiteOrderPutRequest2 = websiteOrderPutRequest1;
        IntServerWebsiteOrderPutRequest websiteOrderPutRequest3 = new IntServerWebsiteOrderPutRequest();
        IntServerWebsiteOrderPutRequest websiteOrderPutRequest4 = websiteOrderPutRequest3;

        System.assert(websiteOrderPutRequest1.equals(websiteOrderPutRequest2));
        System.assert(websiteOrderPutRequest2.equals(websiteOrderPutRequest1));
        System.assert(websiteOrderPutRequest1.equals(websiteOrderPutRequest1));
        System.assert(websiteOrderPutRequest3.equals(websiteOrderPutRequest4));
        System.assert(websiteOrderPutRequest4.equals(websiteOrderPutRequest3));
        System.assert(websiteOrderPutRequest3.equals(websiteOrderPutRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerWebsiteOrderPutRequest websiteOrderPutRequest1 = IntServerWebsiteOrderPutRequest.getExample();
        IntServerWebsiteOrderPutRequest websiteOrderPutRequest2 = IntServerWebsiteOrderPutRequest.getExample();
        IntServerWebsiteOrderPutRequest websiteOrderPutRequest3 = new IntServerWebsiteOrderPutRequest();
        IntServerWebsiteOrderPutRequest websiteOrderPutRequest4 = new IntServerWebsiteOrderPutRequest();

        System.assert(websiteOrderPutRequest1.equals(websiteOrderPutRequest2));
        System.assert(websiteOrderPutRequest2.equals(websiteOrderPutRequest1));
        System.assert(websiteOrderPutRequest3.equals(websiteOrderPutRequest4));
        System.assert(websiteOrderPutRequest4.equals(websiteOrderPutRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerWebsiteOrderPutRequest websiteOrderPutRequest1 = IntServerWebsiteOrderPutRequest.getExample();
        IntServerWebsiteOrderPutRequest websiteOrderPutRequest2 = new IntServerWebsiteOrderPutRequest();

        System.assertEquals(false, websiteOrderPutRequest1.equals('foo'));
        System.assertEquals(false, websiteOrderPutRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerWebsiteOrderPutRequest websiteOrderPutRequest1 = IntServerWebsiteOrderPutRequest.getExample();
        IntServerWebsiteOrderPutRequest websiteOrderPutRequest2 = new IntServerWebsiteOrderPutRequest();
        IntServerWebsiteOrderPutRequest websiteOrderPutRequest3;

        System.assertEquals(false, websiteOrderPutRequest1.equals(websiteOrderPutRequest3));
        System.assertEquals(false, websiteOrderPutRequest2.equals(websiteOrderPutRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerWebsiteOrderPutRequest websiteOrderPutRequest1 = IntServerWebsiteOrderPutRequest.getExample();
        IntServerWebsiteOrderPutRequest websiteOrderPutRequest2 = new IntServerWebsiteOrderPutRequest();

        System.assertEquals(websiteOrderPutRequest1.hashCode(), websiteOrderPutRequest1.hashCode());
        System.assertEquals(websiteOrderPutRequest2.hashCode(), websiteOrderPutRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerWebsiteOrderPutRequest websiteOrderPutRequest1 = IntServerWebsiteOrderPutRequest.getExample();
        IntServerWebsiteOrderPutRequest websiteOrderPutRequest2 = IntServerWebsiteOrderPutRequest.getExample();
        IntServerWebsiteOrderPutRequest websiteOrderPutRequest3 = new IntServerWebsiteOrderPutRequest();
        IntServerWebsiteOrderPutRequest websiteOrderPutRequest4 = new IntServerWebsiteOrderPutRequest();

        System.assert(websiteOrderPutRequest1.equals(websiteOrderPutRequest2));
        System.assert(websiteOrderPutRequest3.equals(websiteOrderPutRequest4));
        System.assertEquals(websiteOrderPutRequest1.hashCode(), websiteOrderPutRequest2.hashCode());
        System.assertEquals(websiteOrderPutRequest3.hashCode(), websiteOrderPutRequest4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerWebsiteOrderPutRequest websiteOrderPutRequest = new IntServerWebsiteOrderPutRequest();
        System.assertEquals('', websiteOrderPutRequest.rootpass);
        System.assertEquals(1, websiteOrderPutRequest.period);
        System.assertEquals('', websiteOrderPutRequest.coupon);
        System.assertEquals(0, websiteOrderPutRequest.serviceOfferId);
        System.assertEquals(0, websiteOrderPutRequest.script);
        System.assertEquals('', websiteOrderPutRequest.comment);
        System.assertEquals(false, websiteOrderPutRequest.registerDomain);
        System.assertEquals(null, websiteOrderPutRequest.hostname);
        System.assertEquals(null, websiteOrderPutRequest.packageId);
    }
}
