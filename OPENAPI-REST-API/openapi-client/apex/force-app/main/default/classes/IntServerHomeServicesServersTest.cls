@isTest
private class IntServerHomeServicesServersTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerHomeServicesServers homeServicesServers1 = IntServerHomeServicesServers.getExample();
        IntServerHomeServicesServers homeServicesServers2 = homeServicesServers1;
        IntServerHomeServicesServers homeServicesServers3 = new IntServerHomeServicesServers();
        IntServerHomeServicesServers homeServicesServers4 = homeServicesServers3;

        System.assert(homeServicesServers1.equals(homeServicesServers2));
        System.assert(homeServicesServers2.equals(homeServicesServers1));
        System.assert(homeServicesServers1.equals(homeServicesServers1));
        System.assert(homeServicesServers3.equals(homeServicesServers4));
        System.assert(homeServicesServers4.equals(homeServicesServers3));
        System.assert(homeServicesServers3.equals(homeServicesServers3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerHomeServicesServers homeServicesServers1 = IntServerHomeServicesServers.getExample();
        IntServerHomeServicesServers homeServicesServers2 = IntServerHomeServicesServers.getExample();
        IntServerHomeServicesServers homeServicesServers3 = new IntServerHomeServicesServers();
        IntServerHomeServicesServers homeServicesServers4 = new IntServerHomeServicesServers();

        System.assert(homeServicesServers1.equals(homeServicesServers2));
        System.assert(homeServicesServers2.equals(homeServicesServers1));
        System.assert(homeServicesServers3.equals(homeServicesServers4));
        System.assert(homeServicesServers4.equals(homeServicesServers3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerHomeServicesServers homeServicesServers1 = IntServerHomeServicesServers.getExample();
        IntServerHomeServicesServers homeServicesServers2 = new IntServerHomeServicesServers();

        System.assertEquals(false, homeServicesServers1.equals('foo'));
        System.assertEquals(false, homeServicesServers2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerHomeServicesServers homeServicesServers1 = IntServerHomeServicesServers.getExample();
        IntServerHomeServicesServers homeServicesServers2 = new IntServerHomeServicesServers();
        IntServerHomeServicesServers homeServicesServers3;

        System.assertEquals(false, homeServicesServers1.equals(homeServicesServers3));
        System.assertEquals(false, homeServicesServers2.equals(homeServicesServers3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerHomeServicesServers homeServicesServers1 = IntServerHomeServicesServers.getExample();
        IntServerHomeServicesServers homeServicesServers2 = new IntServerHomeServicesServers();

        System.assertEquals(homeServicesServers1.hashCode(), homeServicesServers1.hashCode());
        System.assertEquals(homeServicesServers2.hashCode(), homeServicesServers2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerHomeServicesServers homeServicesServers1 = IntServerHomeServicesServers.getExample();
        IntServerHomeServicesServers homeServicesServers2 = IntServerHomeServicesServers.getExample();
        IntServerHomeServicesServers homeServicesServers3 = new IntServerHomeServicesServers();
        IntServerHomeServicesServers homeServicesServers4 = new IntServerHomeServicesServers();

        System.assert(homeServicesServers1.equals(homeServicesServers2));
        System.assert(homeServicesServers3.equals(homeServicesServers4));
        System.assertEquals(homeServicesServers1.hashCode(), homeServicesServers2.hashCode());
        System.assertEquals(homeServicesServers3.hashCode(), homeServicesServers4.hashCode());
    }
}
