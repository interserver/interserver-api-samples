@isTest
private class IntServerServerAssetsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerAssets serverAssets1 = IntServerServerAssets.getExample();
        IntServerServerAssets serverAssets2 = serverAssets1;
        IntServerServerAssets serverAssets3 = new IntServerServerAssets();
        IntServerServerAssets serverAssets4 = serverAssets3;

        System.assert(serverAssets1.equals(serverAssets2));
        System.assert(serverAssets2.equals(serverAssets1));
        System.assert(serverAssets1.equals(serverAssets1));
        System.assert(serverAssets3.equals(serverAssets4));
        System.assert(serverAssets4.equals(serverAssets3));
        System.assert(serverAssets3.equals(serverAssets3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerAssets serverAssets1 = IntServerServerAssets.getExample();
        IntServerServerAssets serverAssets2 = IntServerServerAssets.getExample();
        IntServerServerAssets serverAssets3 = new IntServerServerAssets();
        IntServerServerAssets serverAssets4 = new IntServerServerAssets();

        System.assert(serverAssets1.equals(serverAssets2));
        System.assert(serverAssets2.equals(serverAssets1));
        System.assert(serverAssets3.equals(serverAssets4));
        System.assert(serverAssets4.equals(serverAssets3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerAssets serverAssets1 = IntServerServerAssets.getExample();
        IntServerServerAssets serverAssets2 = new IntServerServerAssets();

        System.assertEquals(false, serverAssets1.equals('foo'));
        System.assertEquals(false, serverAssets2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerAssets serverAssets1 = IntServerServerAssets.getExample();
        IntServerServerAssets serverAssets2 = new IntServerServerAssets();
        IntServerServerAssets serverAssets3;

        System.assertEquals(false, serverAssets1.equals(serverAssets3));
        System.assertEquals(false, serverAssets2.equals(serverAssets3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerAssets serverAssets1 = IntServerServerAssets.getExample();
        IntServerServerAssets serverAssets2 = new IntServerServerAssets();

        System.assertEquals(serverAssets1.hashCode(), serverAssets1.hashCode());
        System.assertEquals(serverAssets2.hashCode(), serverAssets2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerAssets serverAssets1 = IntServerServerAssets.getExample();
        IntServerServerAssets serverAssets2 = IntServerServerAssets.getExample();
        IntServerServerAssets serverAssets3 = new IntServerServerAssets();
        IntServerServerAssets serverAssets4 = new IntServerServerAssets();

        System.assert(serverAssets1.equals(serverAssets2));
        System.assert(serverAssets3.equals(serverAssets4));
        System.assertEquals(serverAssets1.hashCode(), serverAssets2.hashCode());
        System.assertEquals(serverAssets3.hashCode(), serverAssets4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerServerAssets serverAssets = new IntServerServerAssets();
        System.assertEquals(new List<String>(), serverAssets.header);
        System.assertEquals(new List<List<String>>(), serverAssets.rows);
        System.assertEquals(null, serverAssets.title);
        System.assertEquals(null, serverAssets.size);
        System.assertEquals(null, serverAssets.type);
    }
}
