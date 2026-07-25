@isTest
private class IntServerVpsOrderPackageCostsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsOrderPackageCosts vpsOrderPackageCosts1 = IntServerVpsOrderPackageCosts.getExample();
        IntServerVpsOrderPackageCosts vpsOrderPackageCosts2 = vpsOrderPackageCosts1;
        IntServerVpsOrderPackageCosts vpsOrderPackageCosts3 = new IntServerVpsOrderPackageCosts();
        IntServerVpsOrderPackageCosts vpsOrderPackageCosts4 = vpsOrderPackageCosts3;

        System.assert(vpsOrderPackageCosts1.equals(vpsOrderPackageCosts2));
        System.assert(vpsOrderPackageCosts2.equals(vpsOrderPackageCosts1));
        System.assert(vpsOrderPackageCosts1.equals(vpsOrderPackageCosts1));
        System.assert(vpsOrderPackageCosts3.equals(vpsOrderPackageCosts4));
        System.assert(vpsOrderPackageCosts4.equals(vpsOrderPackageCosts3));
        System.assert(vpsOrderPackageCosts3.equals(vpsOrderPackageCosts3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsOrderPackageCosts vpsOrderPackageCosts1 = IntServerVpsOrderPackageCosts.getExample();
        IntServerVpsOrderPackageCosts vpsOrderPackageCosts2 = IntServerVpsOrderPackageCosts.getExample();
        IntServerVpsOrderPackageCosts vpsOrderPackageCosts3 = new IntServerVpsOrderPackageCosts();
        IntServerVpsOrderPackageCosts vpsOrderPackageCosts4 = new IntServerVpsOrderPackageCosts();

        System.assert(vpsOrderPackageCosts1.equals(vpsOrderPackageCosts2));
        System.assert(vpsOrderPackageCosts2.equals(vpsOrderPackageCosts1));
        System.assert(vpsOrderPackageCosts3.equals(vpsOrderPackageCosts4));
        System.assert(vpsOrderPackageCosts4.equals(vpsOrderPackageCosts3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsOrderPackageCosts vpsOrderPackageCosts1 = IntServerVpsOrderPackageCosts.getExample();
        IntServerVpsOrderPackageCosts vpsOrderPackageCosts2 = new IntServerVpsOrderPackageCosts();

        System.assertEquals(false, vpsOrderPackageCosts1.equals('foo'));
        System.assertEquals(false, vpsOrderPackageCosts2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsOrderPackageCosts vpsOrderPackageCosts1 = IntServerVpsOrderPackageCosts.getExample();
        IntServerVpsOrderPackageCosts vpsOrderPackageCosts2 = new IntServerVpsOrderPackageCosts();
        IntServerVpsOrderPackageCosts vpsOrderPackageCosts3;

        System.assertEquals(false, vpsOrderPackageCosts1.equals(vpsOrderPackageCosts3));
        System.assertEquals(false, vpsOrderPackageCosts2.equals(vpsOrderPackageCosts3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsOrderPackageCosts vpsOrderPackageCosts1 = IntServerVpsOrderPackageCosts.getExample();
        IntServerVpsOrderPackageCosts vpsOrderPackageCosts2 = new IntServerVpsOrderPackageCosts();

        System.assertEquals(vpsOrderPackageCosts1.hashCode(), vpsOrderPackageCosts1.hashCode());
        System.assertEquals(vpsOrderPackageCosts2.hashCode(), vpsOrderPackageCosts2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsOrderPackageCosts vpsOrderPackageCosts1 = IntServerVpsOrderPackageCosts.getExample();
        IntServerVpsOrderPackageCosts vpsOrderPackageCosts2 = IntServerVpsOrderPackageCosts.getExample();
        IntServerVpsOrderPackageCosts vpsOrderPackageCosts3 = new IntServerVpsOrderPackageCosts();
        IntServerVpsOrderPackageCosts vpsOrderPackageCosts4 = new IntServerVpsOrderPackageCosts();

        System.assert(vpsOrderPackageCosts1.equals(vpsOrderPackageCosts2));
        System.assert(vpsOrderPackageCosts3.equals(vpsOrderPackageCosts4));
        System.assertEquals(vpsOrderPackageCosts1.hashCode(), vpsOrderPackageCosts2.hashCode());
        System.assertEquals(vpsOrderPackageCosts3.hashCode(), vpsOrderPackageCosts4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerVpsOrderPackageCosts vpsOrderPackageCosts = new IntServerVpsOrderPackageCosts();
        Map<String, String> x-property-mappings = vpsOrderPackageCosts.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('57'));
    }
}
