@isTest
private class IntServerServerTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServer server1 = IntServerServer.getExample();
        IntServerServer server2 = server1;
        IntServerServer server3 = new IntServerServer();
        IntServerServer server4 = server3;

        System.assert(server1.equals(server2));
        System.assert(server2.equals(server1));
        System.assert(server1.equals(server1));
        System.assert(server3.equals(server4));
        System.assert(server4.equals(server3));
        System.assert(server3.equals(server3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServer server1 = IntServerServer.getExample();
        IntServerServer server2 = IntServerServer.getExample();
        IntServerServer server3 = new IntServerServer();
        IntServerServer server4 = new IntServerServer();

        System.assert(server1.equals(server2));
        System.assert(server2.equals(server1));
        System.assert(server3.equals(server4));
        System.assert(server4.equals(server3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServer server1 = IntServerServer.getExample();
        IntServerServer server2 = new IntServerServer();

        System.assertEquals(false, server1.equals('foo'));
        System.assertEquals(false, server2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServer server1 = IntServerServer.getExample();
        IntServerServer server2 = new IntServerServer();
        IntServerServer server3;

        System.assertEquals(false, server1.equals(server3));
        System.assertEquals(false, server2.equals(server3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServer server1 = IntServerServer.getExample();
        IntServerServer server2 = new IntServerServer();

        System.assertEquals(server1.hashCode(), server1.hashCode());
        System.assertEquals(server2.hashCode(), server2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServer server1 = IntServerServer.getExample();
        IntServerServer server2 = IntServerServer.getExample();
        IntServerServer server3 = new IntServerServer();
        IntServerServer server4 = new IntServerServer();

        System.assert(server1.equals(server2));
        System.assert(server3.equals(server4));
        System.assertEquals(server1.hashCode(), server2.hashCode());
        System.assertEquals(server3.hashCode(), server4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServer server = new IntServerServer();
        Map<String, String> x-property-mappings = server.getx-property-mappings();
        System.assertEquals('clientLinks', x-property-mappings.get('client_links'));
        System.assertEquals('r_package', x-property-mappings.get('package'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerServer server = new IntServerServer();
        System.assertEquals(new List<IntServerServerClientLink>(), server.clientLinks);
        System.assertEquals(new List<String>(), server.serviceExtra);
        System.assertEquals(null, server.ipmiAuth);
        System.assertEquals(null, server.billingDetails);
        System.assertEquals(null, server.custCurrency);
        System.assertEquals(null, server.custCurrencySymbol);
        System.assertEquals(null, server.r_package);
        System.assertEquals(null, server.locations);
        System.assertEquals(null, server.networkInfo);
        System.assertEquals(null, server.extraInfoTables);
        System.assertEquals(null, server.serviceInfo);
    }
}
