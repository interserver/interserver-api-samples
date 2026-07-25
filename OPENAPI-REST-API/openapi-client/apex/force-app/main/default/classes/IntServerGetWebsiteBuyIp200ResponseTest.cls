@isTest
private class IntServerGetWebsiteBuyIp200ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerGetWebsiteBuyIp200Response getWebsiteBuyIp200Response1 = IntServerGetWebsiteBuyIp200Response.getExample();
        IntServerGetWebsiteBuyIp200Response getWebsiteBuyIp200Response2 = getWebsiteBuyIp200Response1;
        IntServerGetWebsiteBuyIp200Response getWebsiteBuyIp200Response3 = new IntServerGetWebsiteBuyIp200Response();
        IntServerGetWebsiteBuyIp200Response getWebsiteBuyIp200Response4 = getWebsiteBuyIp200Response3;

        System.assert(getWebsiteBuyIp200Response1.equals(getWebsiteBuyIp200Response2));
        System.assert(getWebsiteBuyIp200Response2.equals(getWebsiteBuyIp200Response1));
        System.assert(getWebsiteBuyIp200Response1.equals(getWebsiteBuyIp200Response1));
        System.assert(getWebsiteBuyIp200Response3.equals(getWebsiteBuyIp200Response4));
        System.assert(getWebsiteBuyIp200Response4.equals(getWebsiteBuyIp200Response3));
        System.assert(getWebsiteBuyIp200Response3.equals(getWebsiteBuyIp200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerGetWebsiteBuyIp200Response getWebsiteBuyIp200Response1 = IntServerGetWebsiteBuyIp200Response.getExample();
        IntServerGetWebsiteBuyIp200Response getWebsiteBuyIp200Response2 = IntServerGetWebsiteBuyIp200Response.getExample();
        IntServerGetWebsiteBuyIp200Response getWebsiteBuyIp200Response3 = new IntServerGetWebsiteBuyIp200Response();
        IntServerGetWebsiteBuyIp200Response getWebsiteBuyIp200Response4 = new IntServerGetWebsiteBuyIp200Response();

        System.assert(getWebsiteBuyIp200Response1.equals(getWebsiteBuyIp200Response2));
        System.assert(getWebsiteBuyIp200Response2.equals(getWebsiteBuyIp200Response1));
        System.assert(getWebsiteBuyIp200Response3.equals(getWebsiteBuyIp200Response4));
        System.assert(getWebsiteBuyIp200Response4.equals(getWebsiteBuyIp200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerGetWebsiteBuyIp200Response getWebsiteBuyIp200Response1 = IntServerGetWebsiteBuyIp200Response.getExample();
        IntServerGetWebsiteBuyIp200Response getWebsiteBuyIp200Response2 = new IntServerGetWebsiteBuyIp200Response();

        System.assertEquals(false, getWebsiteBuyIp200Response1.equals('foo'));
        System.assertEquals(false, getWebsiteBuyIp200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerGetWebsiteBuyIp200Response getWebsiteBuyIp200Response1 = IntServerGetWebsiteBuyIp200Response.getExample();
        IntServerGetWebsiteBuyIp200Response getWebsiteBuyIp200Response2 = new IntServerGetWebsiteBuyIp200Response();
        IntServerGetWebsiteBuyIp200Response getWebsiteBuyIp200Response3;

        System.assertEquals(false, getWebsiteBuyIp200Response1.equals(getWebsiteBuyIp200Response3));
        System.assertEquals(false, getWebsiteBuyIp200Response2.equals(getWebsiteBuyIp200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerGetWebsiteBuyIp200Response getWebsiteBuyIp200Response1 = IntServerGetWebsiteBuyIp200Response.getExample();
        IntServerGetWebsiteBuyIp200Response getWebsiteBuyIp200Response2 = new IntServerGetWebsiteBuyIp200Response();

        System.assertEquals(getWebsiteBuyIp200Response1.hashCode(), getWebsiteBuyIp200Response1.hashCode());
        System.assertEquals(getWebsiteBuyIp200Response2.hashCode(), getWebsiteBuyIp200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerGetWebsiteBuyIp200Response getWebsiteBuyIp200Response1 = IntServerGetWebsiteBuyIp200Response.getExample();
        IntServerGetWebsiteBuyIp200Response getWebsiteBuyIp200Response2 = IntServerGetWebsiteBuyIp200Response.getExample();
        IntServerGetWebsiteBuyIp200Response getWebsiteBuyIp200Response3 = new IntServerGetWebsiteBuyIp200Response();
        IntServerGetWebsiteBuyIp200Response getWebsiteBuyIp200Response4 = new IntServerGetWebsiteBuyIp200Response();

        System.assert(getWebsiteBuyIp200Response1.equals(getWebsiteBuyIp200Response2));
        System.assert(getWebsiteBuyIp200Response3.equals(getWebsiteBuyIp200Response4));
        System.assertEquals(getWebsiteBuyIp200Response1.hashCode(), getWebsiteBuyIp200Response2.hashCode());
        System.assertEquals(getWebsiteBuyIp200Response3.hashCode(), getWebsiteBuyIp200Response4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerGetWebsiteBuyIp200Response getWebsiteBuyIp200Response = new IntServerGetWebsiteBuyIp200Response();
        System.assertEquals(new Map<String, String>(), getWebsiteBuyIp200Response.ips);
    }
}
