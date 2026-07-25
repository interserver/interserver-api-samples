@isTest
private class IntServerServerNetworkInfoAssetsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerNetworkInfoAssets serverNetworkInfoAssets1 = IntServerServerNetworkInfoAssets.getExample();
        IntServerServerNetworkInfoAssets serverNetworkInfoAssets2 = serverNetworkInfoAssets1;
        IntServerServerNetworkInfoAssets serverNetworkInfoAssets3 = new IntServerServerNetworkInfoAssets();
        IntServerServerNetworkInfoAssets serverNetworkInfoAssets4 = serverNetworkInfoAssets3;

        System.assert(serverNetworkInfoAssets1.equals(serverNetworkInfoAssets2));
        System.assert(serverNetworkInfoAssets2.equals(serverNetworkInfoAssets1));
        System.assert(serverNetworkInfoAssets1.equals(serverNetworkInfoAssets1));
        System.assert(serverNetworkInfoAssets3.equals(serverNetworkInfoAssets4));
        System.assert(serverNetworkInfoAssets4.equals(serverNetworkInfoAssets3));
        System.assert(serverNetworkInfoAssets3.equals(serverNetworkInfoAssets3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerNetworkInfoAssets serverNetworkInfoAssets1 = IntServerServerNetworkInfoAssets.getExample();
        IntServerServerNetworkInfoAssets serverNetworkInfoAssets2 = IntServerServerNetworkInfoAssets.getExample();
        IntServerServerNetworkInfoAssets serverNetworkInfoAssets3 = new IntServerServerNetworkInfoAssets();
        IntServerServerNetworkInfoAssets serverNetworkInfoAssets4 = new IntServerServerNetworkInfoAssets();

        System.assert(serverNetworkInfoAssets1.equals(serverNetworkInfoAssets2));
        System.assert(serverNetworkInfoAssets2.equals(serverNetworkInfoAssets1));
        System.assert(serverNetworkInfoAssets3.equals(serverNetworkInfoAssets4));
        System.assert(serverNetworkInfoAssets4.equals(serverNetworkInfoAssets3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerNetworkInfoAssets serverNetworkInfoAssets1 = IntServerServerNetworkInfoAssets.getExample();
        IntServerServerNetworkInfoAssets serverNetworkInfoAssets2 = new IntServerServerNetworkInfoAssets();

        System.assertEquals(false, serverNetworkInfoAssets1.equals('foo'));
        System.assertEquals(false, serverNetworkInfoAssets2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerNetworkInfoAssets serverNetworkInfoAssets1 = IntServerServerNetworkInfoAssets.getExample();
        IntServerServerNetworkInfoAssets serverNetworkInfoAssets2 = new IntServerServerNetworkInfoAssets();
        IntServerServerNetworkInfoAssets serverNetworkInfoAssets3;

        System.assertEquals(false, serverNetworkInfoAssets1.equals(serverNetworkInfoAssets3));
        System.assertEquals(false, serverNetworkInfoAssets2.equals(serverNetworkInfoAssets3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerNetworkInfoAssets serverNetworkInfoAssets1 = IntServerServerNetworkInfoAssets.getExample();
        IntServerServerNetworkInfoAssets serverNetworkInfoAssets2 = new IntServerServerNetworkInfoAssets();

        System.assertEquals(serverNetworkInfoAssets1.hashCode(), serverNetworkInfoAssets1.hashCode());
        System.assertEquals(serverNetworkInfoAssets2.hashCode(), serverNetworkInfoAssets2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerNetworkInfoAssets serverNetworkInfoAssets1 = IntServerServerNetworkInfoAssets.getExample();
        IntServerServerNetworkInfoAssets serverNetworkInfoAssets2 = IntServerServerNetworkInfoAssets.getExample();
        IntServerServerNetworkInfoAssets serverNetworkInfoAssets3 = new IntServerServerNetworkInfoAssets();
        IntServerServerNetworkInfoAssets serverNetworkInfoAssets4 = new IntServerServerNetworkInfoAssets();

        System.assert(serverNetworkInfoAssets1.equals(serverNetworkInfoAssets2));
        System.assert(serverNetworkInfoAssets3.equals(serverNetworkInfoAssets4));
        System.assertEquals(serverNetworkInfoAssets1.hashCode(), serverNetworkInfoAssets2.hashCode());
        System.assertEquals(serverNetworkInfoAssets3.hashCode(), serverNetworkInfoAssets4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServerNetworkInfoAssets serverNetworkInfoAssets = new IntServerServerNetworkInfoAssets();
        Map<String, String> x-property-mappings = serverNetworkInfoAssets.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('3497'));
    }
}
