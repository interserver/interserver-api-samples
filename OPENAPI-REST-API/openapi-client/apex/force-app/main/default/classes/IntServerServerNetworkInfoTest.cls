@isTest
private class IntServerServerNetworkInfoTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerNetworkInfo serverNetworkInfo1 = IntServerServerNetworkInfo.getExample();
        IntServerServerNetworkInfo serverNetworkInfo2 = serverNetworkInfo1;
        IntServerServerNetworkInfo serverNetworkInfo3 = new IntServerServerNetworkInfo();
        IntServerServerNetworkInfo serverNetworkInfo4 = serverNetworkInfo3;

        System.assert(serverNetworkInfo1.equals(serverNetworkInfo2));
        System.assert(serverNetworkInfo2.equals(serverNetworkInfo1));
        System.assert(serverNetworkInfo1.equals(serverNetworkInfo1));
        System.assert(serverNetworkInfo3.equals(serverNetworkInfo4));
        System.assert(serverNetworkInfo4.equals(serverNetworkInfo3));
        System.assert(serverNetworkInfo3.equals(serverNetworkInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerNetworkInfo serverNetworkInfo1 = IntServerServerNetworkInfo.getExample();
        IntServerServerNetworkInfo serverNetworkInfo2 = IntServerServerNetworkInfo.getExample();
        IntServerServerNetworkInfo serverNetworkInfo3 = new IntServerServerNetworkInfo();
        IntServerServerNetworkInfo serverNetworkInfo4 = new IntServerServerNetworkInfo();

        System.assert(serverNetworkInfo1.equals(serverNetworkInfo2));
        System.assert(serverNetworkInfo2.equals(serverNetworkInfo1));
        System.assert(serverNetworkInfo3.equals(serverNetworkInfo4));
        System.assert(serverNetworkInfo4.equals(serverNetworkInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerNetworkInfo serverNetworkInfo1 = IntServerServerNetworkInfo.getExample();
        IntServerServerNetworkInfo serverNetworkInfo2 = new IntServerServerNetworkInfo();

        System.assertEquals(false, serverNetworkInfo1.equals('foo'));
        System.assertEquals(false, serverNetworkInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerNetworkInfo serverNetworkInfo1 = IntServerServerNetworkInfo.getExample();
        IntServerServerNetworkInfo serverNetworkInfo2 = new IntServerServerNetworkInfo();
        IntServerServerNetworkInfo serverNetworkInfo3;

        System.assertEquals(false, serverNetworkInfo1.equals(serverNetworkInfo3));
        System.assertEquals(false, serverNetworkInfo2.equals(serverNetworkInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerNetworkInfo serverNetworkInfo1 = IntServerServerNetworkInfo.getExample();
        IntServerServerNetworkInfo serverNetworkInfo2 = new IntServerServerNetworkInfo();

        System.assertEquals(serverNetworkInfo1.hashCode(), serverNetworkInfo1.hashCode());
        System.assertEquals(serverNetworkInfo2.hashCode(), serverNetworkInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerNetworkInfo serverNetworkInfo1 = IntServerServerNetworkInfo.getExample();
        IntServerServerNetworkInfo serverNetworkInfo2 = IntServerServerNetworkInfo.getExample();
        IntServerServerNetworkInfo serverNetworkInfo3 = new IntServerServerNetworkInfo();
        IntServerServerNetworkInfo serverNetworkInfo4 = new IntServerServerNetworkInfo();

        System.assert(serverNetworkInfo1.equals(serverNetworkInfo2));
        System.assert(serverNetworkInfo3.equals(serverNetworkInfo4));
        System.assertEquals(serverNetworkInfo1.hashCode(), serverNetworkInfo2.hashCode());
        System.assertEquals(serverNetworkInfo3.hashCode(), serverNetworkInfo4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerServerNetworkInfo serverNetworkInfo = new IntServerServerNetworkInfo();
        System.assertEquals(new List<String>(), serverNetworkInfo.vlans);
        System.assertEquals(new List<String>(), serverNetworkInfo.vlans6);
        System.assertEquals(null, serverNetworkInfo.assets);
        System.assertEquals(null, serverNetworkInfo.switchports);
    }
}
