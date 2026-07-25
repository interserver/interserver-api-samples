@isTest
private class IntServerPostWebsiteBuyIp200ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerPostWebsiteBuyIp200Response postWebsiteBuyIp200Response1 = IntServerPostWebsiteBuyIp200Response.getExample();
        IntServerPostWebsiteBuyIp200Response postWebsiteBuyIp200Response2 = postWebsiteBuyIp200Response1;
        IntServerPostWebsiteBuyIp200Response postWebsiteBuyIp200Response3 = new IntServerPostWebsiteBuyIp200Response();
        IntServerPostWebsiteBuyIp200Response postWebsiteBuyIp200Response4 = postWebsiteBuyIp200Response3;

        System.assert(postWebsiteBuyIp200Response1.equals(postWebsiteBuyIp200Response2));
        System.assert(postWebsiteBuyIp200Response2.equals(postWebsiteBuyIp200Response1));
        System.assert(postWebsiteBuyIp200Response1.equals(postWebsiteBuyIp200Response1));
        System.assert(postWebsiteBuyIp200Response3.equals(postWebsiteBuyIp200Response4));
        System.assert(postWebsiteBuyIp200Response4.equals(postWebsiteBuyIp200Response3));
        System.assert(postWebsiteBuyIp200Response3.equals(postWebsiteBuyIp200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerPostWebsiteBuyIp200Response postWebsiteBuyIp200Response1 = IntServerPostWebsiteBuyIp200Response.getExample();
        IntServerPostWebsiteBuyIp200Response postWebsiteBuyIp200Response2 = IntServerPostWebsiteBuyIp200Response.getExample();
        IntServerPostWebsiteBuyIp200Response postWebsiteBuyIp200Response3 = new IntServerPostWebsiteBuyIp200Response();
        IntServerPostWebsiteBuyIp200Response postWebsiteBuyIp200Response4 = new IntServerPostWebsiteBuyIp200Response();

        System.assert(postWebsiteBuyIp200Response1.equals(postWebsiteBuyIp200Response2));
        System.assert(postWebsiteBuyIp200Response2.equals(postWebsiteBuyIp200Response1));
        System.assert(postWebsiteBuyIp200Response3.equals(postWebsiteBuyIp200Response4));
        System.assert(postWebsiteBuyIp200Response4.equals(postWebsiteBuyIp200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerPostWebsiteBuyIp200Response postWebsiteBuyIp200Response1 = IntServerPostWebsiteBuyIp200Response.getExample();
        IntServerPostWebsiteBuyIp200Response postWebsiteBuyIp200Response2 = new IntServerPostWebsiteBuyIp200Response();

        System.assertEquals(false, postWebsiteBuyIp200Response1.equals('foo'));
        System.assertEquals(false, postWebsiteBuyIp200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerPostWebsiteBuyIp200Response postWebsiteBuyIp200Response1 = IntServerPostWebsiteBuyIp200Response.getExample();
        IntServerPostWebsiteBuyIp200Response postWebsiteBuyIp200Response2 = new IntServerPostWebsiteBuyIp200Response();
        IntServerPostWebsiteBuyIp200Response postWebsiteBuyIp200Response3;

        System.assertEquals(false, postWebsiteBuyIp200Response1.equals(postWebsiteBuyIp200Response3));
        System.assertEquals(false, postWebsiteBuyIp200Response2.equals(postWebsiteBuyIp200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerPostWebsiteBuyIp200Response postWebsiteBuyIp200Response1 = IntServerPostWebsiteBuyIp200Response.getExample();
        IntServerPostWebsiteBuyIp200Response postWebsiteBuyIp200Response2 = new IntServerPostWebsiteBuyIp200Response();

        System.assertEquals(postWebsiteBuyIp200Response1.hashCode(), postWebsiteBuyIp200Response1.hashCode());
        System.assertEquals(postWebsiteBuyIp200Response2.hashCode(), postWebsiteBuyIp200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerPostWebsiteBuyIp200Response postWebsiteBuyIp200Response1 = IntServerPostWebsiteBuyIp200Response.getExample();
        IntServerPostWebsiteBuyIp200Response postWebsiteBuyIp200Response2 = IntServerPostWebsiteBuyIp200Response.getExample();
        IntServerPostWebsiteBuyIp200Response postWebsiteBuyIp200Response3 = new IntServerPostWebsiteBuyIp200Response();
        IntServerPostWebsiteBuyIp200Response postWebsiteBuyIp200Response4 = new IntServerPostWebsiteBuyIp200Response();

        System.assert(postWebsiteBuyIp200Response1.equals(postWebsiteBuyIp200Response2));
        System.assert(postWebsiteBuyIp200Response3.equals(postWebsiteBuyIp200Response4));
        System.assertEquals(postWebsiteBuyIp200Response1.hashCode(), postWebsiteBuyIp200Response2.hashCode());
        System.assertEquals(postWebsiteBuyIp200Response3.hashCode(), postWebsiteBuyIp200Response4.hashCode());
    }
}
