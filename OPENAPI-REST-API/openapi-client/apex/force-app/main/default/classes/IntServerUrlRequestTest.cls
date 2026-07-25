@isTest
private class IntServerUrlRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerUrlRequest urlRequest1 = IntServerUrlRequest.getExample();
        IntServerUrlRequest urlRequest2 = urlRequest1;
        IntServerUrlRequest urlRequest3 = new IntServerUrlRequest();
        IntServerUrlRequest urlRequest4 = urlRequest3;

        System.assert(urlRequest1.equals(urlRequest2));
        System.assert(urlRequest2.equals(urlRequest1));
        System.assert(urlRequest1.equals(urlRequest1));
        System.assert(urlRequest3.equals(urlRequest4));
        System.assert(urlRequest4.equals(urlRequest3));
        System.assert(urlRequest3.equals(urlRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerUrlRequest urlRequest1 = IntServerUrlRequest.getExample();
        IntServerUrlRequest urlRequest2 = IntServerUrlRequest.getExample();
        IntServerUrlRequest urlRequest3 = new IntServerUrlRequest();
        IntServerUrlRequest urlRequest4 = new IntServerUrlRequest();

        System.assert(urlRequest1.equals(urlRequest2));
        System.assert(urlRequest2.equals(urlRequest1));
        System.assert(urlRequest3.equals(urlRequest4));
        System.assert(urlRequest4.equals(urlRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerUrlRequest urlRequest1 = IntServerUrlRequest.getExample();
        IntServerUrlRequest urlRequest2 = new IntServerUrlRequest();

        System.assertEquals(false, urlRequest1.equals('foo'));
        System.assertEquals(false, urlRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerUrlRequest urlRequest1 = IntServerUrlRequest.getExample();
        IntServerUrlRequest urlRequest2 = new IntServerUrlRequest();
        IntServerUrlRequest urlRequest3;

        System.assertEquals(false, urlRequest1.equals(urlRequest3));
        System.assertEquals(false, urlRequest2.equals(urlRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerUrlRequest urlRequest1 = IntServerUrlRequest.getExample();
        IntServerUrlRequest urlRequest2 = new IntServerUrlRequest();

        System.assertEquals(urlRequest1.hashCode(), urlRequest1.hashCode());
        System.assertEquals(urlRequest2.hashCode(), urlRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerUrlRequest urlRequest1 = IntServerUrlRequest.getExample();
        IntServerUrlRequest urlRequest2 = IntServerUrlRequest.getExample();
        IntServerUrlRequest urlRequest3 = new IntServerUrlRequest();
        IntServerUrlRequest urlRequest4 = new IntServerUrlRequest();

        System.assert(urlRequest1.equals(urlRequest2));
        System.assert(urlRequest3.equals(urlRequest4));
        System.assertEquals(urlRequest1.hashCode(), urlRequest2.hashCode());
        System.assertEquals(urlRequest3.hashCode(), urlRequest4.hashCode());
    }
}
