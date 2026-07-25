@isTest
private class IntServerPlaceBuyNowServerRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerPlaceBuyNowServerRequest placeBuyNowServerRequest1 = IntServerPlaceBuyNowServerRequest.getExample();
        IntServerPlaceBuyNowServerRequest placeBuyNowServerRequest2 = placeBuyNowServerRequest1;
        IntServerPlaceBuyNowServerRequest placeBuyNowServerRequest3 = new IntServerPlaceBuyNowServerRequest();
        IntServerPlaceBuyNowServerRequest placeBuyNowServerRequest4 = placeBuyNowServerRequest3;

        System.assert(placeBuyNowServerRequest1.equals(placeBuyNowServerRequest2));
        System.assert(placeBuyNowServerRequest2.equals(placeBuyNowServerRequest1));
        System.assert(placeBuyNowServerRequest1.equals(placeBuyNowServerRequest1));
        System.assert(placeBuyNowServerRequest3.equals(placeBuyNowServerRequest4));
        System.assert(placeBuyNowServerRequest4.equals(placeBuyNowServerRequest3));
        System.assert(placeBuyNowServerRequest3.equals(placeBuyNowServerRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerPlaceBuyNowServerRequest placeBuyNowServerRequest1 = IntServerPlaceBuyNowServerRequest.getExample();
        IntServerPlaceBuyNowServerRequest placeBuyNowServerRequest2 = IntServerPlaceBuyNowServerRequest.getExample();
        IntServerPlaceBuyNowServerRequest placeBuyNowServerRequest3 = new IntServerPlaceBuyNowServerRequest();
        IntServerPlaceBuyNowServerRequest placeBuyNowServerRequest4 = new IntServerPlaceBuyNowServerRequest();

        System.assert(placeBuyNowServerRequest1.equals(placeBuyNowServerRequest2));
        System.assert(placeBuyNowServerRequest2.equals(placeBuyNowServerRequest1));
        System.assert(placeBuyNowServerRequest3.equals(placeBuyNowServerRequest4));
        System.assert(placeBuyNowServerRequest4.equals(placeBuyNowServerRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerPlaceBuyNowServerRequest placeBuyNowServerRequest1 = IntServerPlaceBuyNowServerRequest.getExample();
        IntServerPlaceBuyNowServerRequest placeBuyNowServerRequest2 = new IntServerPlaceBuyNowServerRequest();

        System.assertEquals(false, placeBuyNowServerRequest1.equals('foo'));
        System.assertEquals(false, placeBuyNowServerRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerPlaceBuyNowServerRequest placeBuyNowServerRequest1 = IntServerPlaceBuyNowServerRequest.getExample();
        IntServerPlaceBuyNowServerRequest placeBuyNowServerRequest2 = new IntServerPlaceBuyNowServerRequest();
        IntServerPlaceBuyNowServerRequest placeBuyNowServerRequest3;

        System.assertEquals(false, placeBuyNowServerRequest1.equals(placeBuyNowServerRequest3));
        System.assertEquals(false, placeBuyNowServerRequest2.equals(placeBuyNowServerRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerPlaceBuyNowServerRequest placeBuyNowServerRequest1 = IntServerPlaceBuyNowServerRequest.getExample();
        IntServerPlaceBuyNowServerRequest placeBuyNowServerRequest2 = new IntServerPlaceBuyNowServerRequest();

        System.assertEquals(placeBuyNowServerRequest1.hashCode(), placeBuyNowServerRequest1.hashCode());
        System.assertEquals(placeBuyNowServerRequest2.hashCode(), placeBuyNowServerRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerPlaceBuyNowServerRequest placeBuyNowServerRequest1 = IntServerPlaceBuyNowServerRequest.getExample();
        IntServerPlaceBuyNowServerRequest placeBuyNowServerRequest2 = IntServerPlaceBuyNowServerRequest.getExample();
        IntServerPlaceBuyNowServerRequest placeBuyNowServerRequest3 = new IntServerPlaceBuyNowServerRequest();
        IntServerPlaceBuyNowServerRequest placeBuyNowServerRequest4 = new IntServerPlaceBuyNowServerRequest();

        System.assert(placeBuyNowServerRequest1.equals(placeBuyNowServerRequest2));
        System.assert(placeBuyNowServerRequest3.equals(placeBuyNowServerRequest4));
        System.assertEquals(placeBuyNowServerRequest1.hashCode(), placeBuyNowServerRequest2.hashCode());
        System.assertEquals(placeBuyNowServerRequest3.hashCode(), placeBuyNowServerRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerPlaceBuyNowServerRequest placeBuyNowServerRequest = new IntServerPlaceBuyNowServerRequest();
        Map<String, String> x-property-mappings = placeBuyNowServerRequest.getx-property-mappings();
        System.assertEquals('serverId', x-property-mappings.get('server_id'));
        System.assertEquals('serverHostname', x-property-mappings.get('server_hostname'));
        System.assertEquals('serverRootPassword', x-property-mappings.get('server_root_password'));
    }
}
