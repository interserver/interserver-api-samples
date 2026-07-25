@isTest
private class IntServerServerOrderPostRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerOrderPostRequest serverOrderPostRequest1 = IntServerServerOrderPostRequest.getExample();
        IntServerServerOrderPostRequest serverOrderPostRequest2 = serverOrderPostRequest1;
        IntServerServerOrderPostRequest serverOrderPostRequest3 = new IntServerServerOrderPostRequest();
        IntServerServerOrderPostRequest serverOrderPostRequest4 = serverOrderPostRequest3;

        System.assert(serverOrderPostRequest1.equals(serverOrderPostRequest2));
        System.assert(serverOrderPostRequest2.equals(serverOrderPostRequest1));
        System.assert(serverOrderPostRequest1.equals(serverOrderPostRequest1));
        System.assert(serverOrderPostRequest3.equals(serverOrderPostRequest4));
        System.assert(serverOrderPostRequest4.equals(serverOrderPostRequest3));
        System.assert(serverOrderPostRequest3.equals(serverOrderPostRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerOrderPostRequest serverOrderPostRequest1 = IntServerServerOrderPostRequest.getExample();
        IntServerServerOrderPostRequest serverOrderPostRequest2 = IntServerServerOrderPostRequest.getExample();
        IntServerServerOrderPostRequest serverOrderPostRequest3 = new IntServerServerOrderPostRequest();
        IntServerServerOrderPostRequest serverOrderPostRequest4 = new IntServerServerOrderPostRequest();

        System.assert(serverOrderPostRequest1.equals(serverOrderPostRequest2));
        System.assert(serverOrderPostRequest2.equals(serverOrderPostRequest1));
        System.assert(serverOrderPostRequest3.equals(serverOrderPostRequest4));
        System.assert(serverOrderPostRequest4.equals(serverOrderPostRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerOrderPostRequest serverOrderPostRequest1 = IntServerServerOrderPostRequest.getExample();
        IntServerServerOrderPostRequest serverOrderPostRequest2 = new IntServerServerOrderPostRequest();

        System.assertEquals(false, serverOrderPostRequest1.equals('foo'));
        System.assertEquals(false, serverOrderPostRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerOrderPostRequest serverOrderPostRequest1 = IntServerServerOrderPostRequest.getExample();
        IntServerServerOrderPostRequest serverOrderPostRequest2 = new IntServerServerOrderPostRequest();
        IntServerServerOrderPostRequest serverOrderPostRequest3;

        System.assertEquals(false, serverOrderPostRequest1.equals(serverOrderPostRequest3));
        System.assertEquals(false, serverOrderPostRequest2.equals(serverOrderPostRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerOrderPostRequest serverOrderPostRequest1 = IntServerServerOrderPostRequest.getExample();
        IntServerServerOrderPostRequest serverOrderPostRequest2 = new IntServerServerOrderPostRequest();

        System.assertEquals(serverOrderPostRequest1.hashCode(), serverOrderPostRequest1.hashCode());
        System.assertEquals(serverOrderPostRequest2.hashCode(), serverOrderPostRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerOrderPostRequest serverOrderPostRequest1 = IntServerServerOrderPostRequest.getExample();
        IntServerServerOrderPostRequest serverOrderPostRequest2 = IntServerServerOrderPostRequest.getExample();
        IntServerServerOrderPostRequest serverOrderPostRequest3 = new IntServerServerOrderPostRequest();
        IntServerServerOrderPostRequest serverOrderPostRequest4 = new IntServerServerOrderPostRequest();

        System.assert(serverOrderPostRequest1.equals(serverOrderPostRequest2));
        System.assert(serverOrderPostRequest3.equals(serverOrderPostRequest4));
        System.assertEquals(serverOrderPostRequest1.hashCode(), serverOrderPostRequest2.hashCode());
        System.assertEquals(serverOrderPostRequest3.hashCode(), serverOrderPostRequest4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerServerOrderPostRequest serverOrderPostRequest = new IntServerServerOrderPostRequest();
        System.assertEquals('', serverOrderPostRequest.comment);
        System.assertEquals(null, serverOrderPostRequest.cpu);
        System.assertEquals(null, serverOrderPostRequest.hd);
        System.assertEquals(null, serverOrderPostRequest.memory);
        System.assertEquals(null, serverOrderPostRequest.bandwidth);
        System.assertEquals(null, serverOrderPostRequest.ips);
        System.assertEquals(null, serverOrderPostRequest.os);
        System.assertEquals(null, serverOrderPostRequest.cp);
        System.assertEquals(null, serverOrderPostRequest.raid);
        System.assertEquals(null, serverOrderPostRequest.region);
        System.assertEquals(null, serverOrderPostRequest.servername);
        System.assertEquals(null, serverOrderPostRequest.rootpass);
        System.assertEquals(null, serverOrderPostRequest.tos);
    }
}
