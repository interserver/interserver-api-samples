@isTest
private class IntServerServerIpmiPowerRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerIpmiPowerRequest serverIpmiPowerRequest1 = IntServerServerIpmiPowerRequest.getExample();
        IntServerServerIpmiPowerRequest serverIpmiPowerRequest2 = serverIpmiPowerRequest1;
        IntServerServerIpmiPowerRequest serverIpmiPowerRequest3 = new IntServerServerIpmiPowerRequest();
        IntServerServerIpmiPowerRequest serverIpmiPowerRequest4 = serverIpmiPowerRequest3;

        System.assert(serverIpmiPowerRequest1.equals(serverIpmiPowerRequest2));
        System.assert(serverIpmiPowerRequest2.equals(serverIpmiPowerRequest1));
        System.assert(serverIpmiPowerRequest1.equals(serverIpmiPowerRequest1));
        System.assert(serverIpmiPowerRequest3.equals(serverIpmiPowerRequest4));
        System.assert(serverIpmiPowerRequest4.equals(serverIpmiPowerRequest3));
        System.assert(serverIpmiPowerRequest3.equals(serverIpmiPowerRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerIpmiPowerRequest serverIpmiPowerRequest1 = IntServerServerIpmiPowerRequest.getExample();
        IntServerServerIpmiPowerRequest serverIpmiPowerRequest2 = IntServerServerIpmiPowerRequest.getExample();
        IntServerServerIpmiPowerRequest serverIpmiPowerRequest3 = new IntServerServerIpmiPowerRequest();
        IntServerServerIpmiPowerRequest serverIpmiPowerRequest4 = new IntServerServerIpmiPowerRequest();

        System.assert(serverIpmiPowerRequest1.equals(serverIpmiPowerRequest2));
        System.assert(serverIpmiPowerRequest2.equals(serverIpmiPowerRequest1));
        System.assert(serverIpmiPowerRequest3.equals(serverIpmiPowerRequest4));
        System.assert(serverIpmiPowerRequest4.equals(serverIpmiPowerRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerIpmiPowerRequest serverIpmiPowerRequest1 = IntServerServerIpmiPowerRequest.getExample();
        IntServerServerIpmiPowerRequest serverIpmiPowerRequest2 = new IntServerServerIpmiPowerRequest();

        System.assertEquals(false, serverIpmiPowerRequest1.equals('foo'));
        System.assertEquals(false, serverIpmiPowerRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerIpmiPowerRequest serverIpmiPowerRequest1 = IntServerServerIpmiPowerRequest.getExample();
        IntServerServerIpmiPowerRequest serverIpmiPowerRequest2 = new IntServerServerIpmiPowerRequest();
        IntServerServerIpmiPowerRequest serverIpmiPowerRequest3;

        System.assertEquals(false, serverIpmiPowerRequest1.equals(serverIpmiPowerRequest3));
        System.assertEquals(false, serverIpmiPowerRequest2.equals(serverIpmiPowerRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerIpmiPowerRequest serverIpmiPowerRequest1 = IntServerServerIpmiPowerRequest.getExample();
        IntServerServerIpmiPowerRequest serverIpmiPowerRequest2 = new IntServerServerIpmiPowerRequest();

        System.assertEquals(serverIpmiPowerRequest1.hashCode(), serverIpmiPowerRequest1.hashCode());
        System.assertEquals(serverIpmiPowerRequest2.hashCode(), serverIpmiPowerRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerIpmiPowerRequest serverIpmiPowerRequest1 = IntServerServerIpmiPowerRequest.getExample();
        IntServerServerIpmiPowerRequest serverIpmiPowerRequest2 = IntServerServerIpmiPowerRequest.getExample();
        IntServerServerIpmiPowerRequest serverIpmiPowerRequest3 = new IntServerServerIpmiPowerRequest();
        IntServerServerIpmiPowerRequest serverIpmiPowerRequest4 = new IntServerServerIpmiPowerRequest();

        System.assert(serverIpmiPowerRequest1.equals(serverIpmiPowerRequest2));
        System.assert(serverIpmiPowerRequest3.equals(serverIpmiPowerRequest4));
        System.assertEquals(serverIpmiPowerRequest1.hashCode(), serverIpmiPowerRequest2.hashCode());
        System.assertEquals(serverIpmiPowerRequest3.hashCode(), serverIpmiPowerRequest4.hashCode());
    }
}
