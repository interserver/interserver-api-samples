@isTest
private class IntServerServerNetworkInfoSwitchportTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerNetworkInfoSwitchport serverNetworkInfoSwitchports1 = IntServerServerNetworkInfoSwitchport.getExample();
        IntServerServerNetworkInfoSwitchport serverNetworkInfoSwitchports2 = serverNetworkInfoSwitchports1;
        IntServerServerNetworkInfoSwitchport serverNetworkInfoSwitchports3 = new IntServerServerNetworkInfoSwitchport();
        IntServerServerNetworkInfoSwitchport serverNetworkInfoSwitchports4 = serverNetworkInfoSwitchports3;

        System.assert(serverNetworkInfoSwitchports1.equals(serverNetworkInfoSwitchports2));
        System.assert(serverNetworkInfoSwitchports2.equals(serverNetworkInfoSwitchports1));
        System.assert(serverNetworkInfoSwitchports1.equals(serverNetworkInfoSwitchports1));
        System.assert(serverNetworkInfoSwitchports3.equals(serverNetworkInfoSwitchports4));
        System.assert(serverNetworkInfoSwitchports4.equals(serverNetworkInfoSwitchports3));
        System.assert(serverNetworkInfoSwitchports3.equals(serverNetworkInfoSwitchports3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerNetworkInfoSwitchport serverNetworkInfoSwitchports1 = IntServerServerNetworkInfoSwitchport.getExample();
        IntServerServerNetworkInfoSwitchport serverNetworkInfoSwitchports2 = IntServerServerNetworkInfoSwitchport.getExample();
        IntServerServerNetworkInfoSwitchport serverNetworkInfoSwitchports3 = new IntServerServerNetworkInfoSwitchport();
        IntServerServerNetworkInfoSwitchport serverNetworkInfoSwitchports4 = new IntServerServerNetworkInfoSwitchport();

        System.assert(serverNetworkInfoSwitchports1.equals(serverNetworkInfoSwitchports2));
        System.assert(serverNetworkInfoSwitchports2.equals(serverNetworkInfoSwitchports1));
        System.assert(serverNetworkInfoSwitchports3.equals(serverNetworkInfoSwitchports4));
        System.assert(serverNetworkInfoSwitchports4.equals(serverNetworkInfoSwitchports3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerNetworkInfoSwitchport serverNetworkInfoSwitchports1 = IntServerServerNetworkInfoSwitchport.getExample();
        IntServerServerNetworkInfoSwitchport serverNetworkInfoSwitchports2 = new IntServerServerNetworkInfoSwitchport();

        System.assertEquals(false, serverNetworkInfoSwitchports1.equals('foo'));
        System.assertEquals(false, serverNetworkInfoSwitchports2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerNetworkInfoSwitchport serverNetworkInfoSwitchports1 = IntServerServerNetworkInfoSwitchport.getExample();
        IntServerServerNetworkInfoSwitchport serverNetworkInfoSwitchports2 = new IntServerServerNetworkInfoSwitchport();
        IntServerServerNetworkInfoSwitchport serverNetworkInfoSwitchports3;

        System.assertEquals(false, serverNetworkInfoSwitchports1.equals(serverNetworkInfoSwitchports3));
        System.assertEquals(false, serverNetworkInfoSwitchports2.equals(serverNetworkInfoSwitchports3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerNetworkInfoSwitchport serverNetworkInfoSwitchports1 = IntServerServerNetworkInfoSwitchport.getExample();
        IntServerServerNetworkInfoSwitchport serverNetworkInfoSwitchports2 = new IntServerServerNetworkInfoSwitchport();

        System.assertEquals(serverNetworkInfoSwitchports1.hashCode(), serverNetworkInfoSwitchports1.hashCode());
        System.assertEquals(serverNetworkInfoSwitchports2.hashCode(), serverNetworkInfoSwitchports2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerNetworkInfoSwitchport serverNetworkInfoSwitchports1 = IntServerServerNetworkInfoSwitchport.getExample();
        IntServerServerNetworkInfoSwitchport serverNetworkInfoSwitchports2 = IntServerServerNetworkInfoSwitchport.getExample();
        IntServerServerNetworkInfoSwitchport serverNetworkInfoSwitchports3 = new IntServerServerNetworkInfoSwitchport();
        IntServerServerNetworkInfoSwitchport serverNetworkInfoSwitchports4 = new IntServerServerNetworkInfoSwitchport();

        System.assert(serverNetworkInfoSwitchports1.equals(serverNetworkInfoSwitchports2));
        System.assert(serverNetworkInfoSwitchports3.equals(serverNetworkInfoSwitchports4));
        System.assertEquals(serverNetworkInfoSwitchports1.hashCode(), serverNetworkInfoSwitchports2.hashCode());
        System.assertEquals(serverNetworkInfoSwitchports3.hashCode(), serverNetworkInfoSwitchports4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServerNetworkInfoSwitchport serverNetworkInfoSwitchports = new IntServerServerNetworkInfoSwitchport();
        Map<String, String> x-property-mappings = serverNetworkInfoSwitchports.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('10414'));
    }
}
