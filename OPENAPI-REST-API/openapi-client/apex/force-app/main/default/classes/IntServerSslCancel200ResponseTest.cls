@isTest
private class IntServerSslCancel200ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerSslCancel200Response sslCancel200Response1 = IntServerSslCancel200Response.getExample();
        IntServerSslCancel200Response sslCancel200Response2 = sslCancel200Response1;
        IntServerSslCancel200Response sslCancel200Response3 = new IntServerSslCancel200Response();
        IntServerSslCancel200Response sslCancel200Response4 = sslCancel200Response3;

        System.assert(sslCancel200Response1.equals(sslCancel200Response2));
        System.assert(sslCancel200Response2.equals(sslCancel200Response1));
        System.assert(sslCancel200Response1.equals(sslCancel200Response1));
        System.assert(sslCancel200Response3.equals(sslCancel200Response4));
        System.assert(sslCancel200Response4.equals(sslCancel200Response3));
        System.assert(sslCancel200Response3.equals(sslCancel200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerSslCancel200Response sslCancel200Response1 = IntServerSslCancel200Response.getExample();
        IntServerSslCancel200Response sslCancel200Response2 = IntServerSslCancel200Response.getExample();
        IntServerSslCancel200Response sslCancel200Response3 = new IntServerSslCancel200Response();
        IntServerSslCancel200Response sslCancel200Response4 = new IntServerSslCancel200Response();

        System.assert(sslCancel200Response1.equals(sslCancel200Response2));
        System.assert(sslCancel200Response2.equals(sslCancel200Response1));
        System.assert(sslCancel200Response3.equals(sslCancel200Response4));
        System.assert(sslCancel200Response4.equals(sslCancel200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerSslCancel200Response sslCancel200Response1 = IntServerSslCancel200Response.getExample();
        IntServerSslCancel200Response sslCancel200Response2 = new IntServerSslCancel200Response();

        System.assertEquals(false, sslCancel200Response1.equals('foo'));
        System.assertEquals(false, sslCancel200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerSslCancel200Response sslCancel200Response1 = IntServerSslCancel200Response.getExample();
        IntServerSslCancel200Response sslCancel200Response2 = new IntServerSslCancel200Response();
        IntServerSslCancel200Response sslCancel200Response3;

        System.assertEquals(false, sslCancel200Response1.equals(sslCancel200Response3));
        System.assertEquals(false, sslCancel200Response2.equals(sslCancel200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerSslCancel200Response sslCancel200Response1 = IntServerSslCancel200Response.getExample();
        IntServerSslCancel200Response sslCancel200Response2 = new IntServerSslCancel200Response();

        System.assertEquals(sslCancel200Response1.hashCode(), sslCancel200Response1.hashCode());
        System.assertEquals(sslCancel200Response2.hashCode(), sslCancel200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerSslCancel200Response sslCancel200Response1 = IntServerSslCancel200Response.getExample();
        IntServerSslCancel200Response sslCancel200Response2 = IntServerSslCancel200Response.getExample();
        IntServerSslCancel200Response sslCancel200Response3 = new IntServerSslCancel200Response();
        IntServerSslCancel200Response sslCancel200Response4 = new IntServerSslCancel200Response();

        System.assert(sslCancel200Response1.equals(sslCancel200Response2));
        System.assert(sslCancel200Response3.equals(sslCancel200Response4));
        System.assertEquals(sslCancel200Response1.hashCode(), sslCancel200Response2.hashCode());
        System.assertEquals(sslCancel200Response3.hashCode(), sslCancel200Response4.hashCode());
    }
}
