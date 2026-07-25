@isTest
private class IntServerWebsiteOrderPostRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerWebsiteOrderPostRequest websiteOrderPostRequest1 = IntServerWebsiteOrderPostRequest.getExample();
        IntServerWebsiteOrderPostRequest websiteOrderPostRequest2 = websiteOrderPostRequest1;
        IntServerWebsiteOrderPostRequest websiteOrderPostRequest3 = new IntServerWebsiteOrderPostRequest();
        IntServerWebsiteOrderPostRequest websiteOrderPostRequest4 = websiteOrderPostRequest3;

        System.assert(websiteOrderPostRequest1.equals(websiteOrderPostRequest2));
        System.assert(websiteOrderPostRequest2.equals(websiteOrderPostRequest1));
        System.assert(websiteOrderPostRequest1.equals(websiteOrderPostRequest1));
        System.assert(websiteOrderPostRequest3.equals(websiteOrderPostRequest4));
        System.assert(websiteOrderPostRequest4.equals(websiteOrderPostRequest3));
        System.assert(websiteOrderPostRequest3.equals(websiteOrderPostRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerWebsiteOrderPostRequest websiteOrderPostRequest1 = IntServerWebsiteOrderPostRequest.getExample();
        IntServerWebsiteOrderPostRequest websiteOrderPostRequest2 = IntServerWebsiteOrderPostRequest.getExample();
        IntServerWebsiteOrderPostRequest websiteOrderPostRequest3 = new IntServerWebsiteOrderPostRequest();
        IntServerWebsiteOrderPostRequest websiteOrderPostRequest4 = new IntServerWebsiteOrderPostRequest();

        System.assert(websiteOrderPostRequest1.equals(websiteOrderPostRequest2));
        System.assert(websiteOrderPostRequest2.equals(websiteOrderPostRequest1));
        System.assert(websiteOrderPostRequest3.equals(websiteOrderPostRequest4));
        System.assert(websiteOrderPostRequest4.equals(websiteOrderPostRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerWebsiteOrderPostRequest websiteOrderPostRequest1 = IntServerWebsiteOrderPostRequest.getExample();
        IntServerWebsiteOrderPostRequest websiteOrderPostRequest2 = new IntServerWebsiteOrderPostRequest();

        System.assertEquals(false, websiteOrderPostRequest1.equals('foo'));
        System.assertEquals(false, websiteOrderPostRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerWebsiteOrderPostRequest websiteOrderPostRequest1 = IntServerWebsiteOrderPostRequest.getExample();
        IntServerWebsiteOrderPostRequest websiteOrderPostRequest2 = new IntServerWebsiteOrderPostRequest();
        IntServerWebsiteOrderPostRequest websiteOrderPostRequest3;

        System.assertEquals(false, websiteOrderPostRequest1.equals(websiteOrderPostRequest3));
        System.assertEquals(false, websiteOrderPostRequest2.equals(websiteOrderPostRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerWebsiteOrderPostRequest websiteOrderPostRequest1 = IntServerWebsiteOrderPostRequest.getExample();
        IntServerWebsiteOrderPostRequest websiteOrderPostRequest2 = new IntServerWebsiteOrderPostRequest();

        System.assertEquals(websiteOrderPostRequest1.hashCode(), websiteOrderPostRequest1.hashCode());
        System.assertEquals(websiteOrderPostRequest2.hashCode(), websiteOrderPostRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerWebsiteOrderPostRequest websiteOrderPostRequest1 = IntServerWebsiteOrderPostRequest.getExample();
        IntServerWebsiteOrderPostRequest websiteOrderPostRequest2 = IntServerWebsiteOrderPostRequest.getExample();
        IntServerWebsiteOrderPostRequest websiteOrderPostRequest3 = new IntServerWebsiteOrderPostRequest();
        IntServerWebsiteOrderPostRequest websiteOrderPostRequest4 = new IntServerWebsiteOrderPostRequest();

        System.assert(websiteOrderPostRequest1.equals(websiteOrderPostRequest2));
        System.assert(websiteOrderPostRequest3.equals(websiteOrderPostRequest4));
        System.assertEquals(websiteOrderPostRequest1.hashCode(), websiteOrderPostRequest2.hashCode());
        System.assertEquals(websiteOrderPostRequest3.hashCode(), websiteOrderPostRequest4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerWebsiteOrderPostRequest websiteOrderPostRequest = new IntServerWebsiteOrderPostRequest();
        System.assertEquals('', websiteOrderPostRequest.rootpass);
        System.assertEquals(1, websiteOrderPostRequest.period);
        System.assertEquals('', websiteOrderPostRequest.coupon);
        System.assertEquals(0, websiteOrderPostRequest.serviceOfferId);
        System.assertEquals(0, websiteOrderPostRequest.script);
        System.assertEquals('', websiteOrderPostRequest.comment);
        System.assertEquals(false, websiteOrderPostRequest.registerDomain);
        System.assertEquals(null, websiteOrderPostRequest.hostname);
        System.assertEquals(null, websiteOrderPostRequest.packageId);
    }
}
