@isTest
private class IntServerServersBuyNowResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServersBuyNowResponse serversBuyNowResponse1 = IntServerServersBuyNowResponse.getExample();
        IntServerServersBuyNowResponse serversBuyNowResponse2 = serversBuyNowResponse1;
        IntServerServersBuyNowResponse serversBuyNowResponse3 = new IntServerServersBuyNowResponse();
        IntServerServersBuyNowResponse serversBuyNowResponse4 = serversBuyNowResponse3;

        System.assert(serversBuyNowResponse1.equals(serversBuyNowResponse2));
        System.assert(serversBuyNowResponse2.equals(serversBuyNowResponse1));
        System.assert(serversBuyNowResponse1.equals(serversBuyNowResponse1));
        System.assert(serversBuyNowResponse3.equals(serversBuyNowResponse4));
        System.assert(serversBuyNowResponse4.equals(serversBuyNowResponse3));
        System.assert(serversBuyNowResponse3.equals(serversBuyNowResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServersBuyNowResponse serversBuyNowResponse1 = IntServerServersBuyNowResponse.getExample();
        IntServerServersBuyNowResponse serversBuyNowResponse2 = IntServerServersBuyNowResponse.getExample();
        IntServerServersBuyNowResponse serversBuyNowResponse3 = new IntServerServersBuyNowResponse();
        IntServerServersBuyNowResponse serversBuyNowResponse4 = new IntServerServersBuyNowResponse();

        System.assert(serversBuyNowResponse1.equals(serversBuyNowResponse2));
        System.assert(serversBuyNowResponse2.equals(serversBuyNowResponse1));
        System.assert(serversBuyNowResponse3.equals(serversBuyNowResponse4));
        System.assert(serversBuyNowResponse4.equals(serversBuyNowResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServersBuyNowResponse serversBuyNowResponse1 = IntServerServersBuyNowResponse.getExample();
        IntServerServersBuyNowResponse serversBuyNowResponse2 = new IntServerServersBuyNowResponse();

        System.assertEquals(false, serversBuyNowResponse1.equals('foo'));
        System.assertEquals(false, serversBuyNowResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServersBuyNowResponse serversBuyNowResponse1 = IntServerServersBuyNowResponse.getExample();
        IntServerServersBuyNowResponse serversBuyNowResponse2 = new IntServerServersBuyNowResponse();
        IntServerServersBuyNowResponse serversBuyNowResponse3;

        System.assertEquals(false, serversBuyNowResponse1.equals(serversBuyNowResponse3));
        System.assertEquals(false, serversBuyNowResponse2.equals(serversBuyNowResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServersBuyNowResponse serversBuyNowResponse1 = IntServerServersBuyNowResponse.getExample();
        IntServerServersBuyNowResponse serversBuyNowResponse2 = new IntServerServersBuyNowResponse();

        System.assertEquals(serversBuyNowResponse1.hashCode(), serversBuyNowResponse1.hashCode());
        System.assertEquals(serversBuyNowResponse2.hashCode(), serversBuyNowResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServersBuyNowResponse serversBuyNowResponse1 = IntServerServersBuyNowResponse.getExample();
        IntServerServersBuyNowResponse serversBuyNowResponse2 = IntServerServersBuyNowResponse.getExample();
        IntServerServersBuyNowResponse serversBuyNowResponse3 = new IntServerServersBuyNowResponse();
        IntServerServersBuyNowResponse serversBuyNowResponse4 = new IntServerServersBuyNowResponse();

        System.assert(serversBuyNowResponse1.equals(serversBuyNowResponse2));
        System.assert(serversBuyNowResponse3.equals(serversBuyNowResponse4));
        System.assertEquals(serversBuyNowResponse1.hashCode(), serversBuyNowResponse2.hashCode());
        System.assertEquals(serversBuyNowResponse3.hashCode(), serversBuyNowResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServersBuyNowResponse serversBuyNowResponse = new IntServerServersBuyNowResponse();
        Map<String, String> x-property-mappings = serversBuyNowResponse.getx-property-mappings();
        System.assertEquals('orderDetails', x-property-mappings.get('order_details'));
    }
}
