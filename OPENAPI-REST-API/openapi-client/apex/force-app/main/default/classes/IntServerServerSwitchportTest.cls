@isTest
private class IntServerServerSwitchportTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerSwitchport serverSwitchport1 = IntServerServerSwitchport.getExample();
        IntServerServerSwitchport serverSwitchport2 = serverSwitchport1;
        IntServerServerSwitchport serverSwitchport3 = new IntServerServerSwitchport();
        IntServerServerSwitchport serverSwitchport4 = serverSwitchport3;

        System.assert(serverSwitchport1.equals(serverSwitchport2));
        System.assert(serverSwitchport2.equals(serverSwitchport1));
        System.assert(serverSwitchport1.equals(serverSwitchport1));
        System.assert(serverSwitchport3.equals(serverSwitchport4));
        System.assert(serverSwitchport4.equals(serverSwitchport3));
        System.assert(serverSwitchport3.equals(serverSwitchport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerSwitchport serverSwitchport1 = IntServerServerSwitchport.getExample();
        IntServerServerSwitchport serverSwitchport2 = IntServerServerSwitchport.getExample();
        IntServerServerSwitchport serverSwitchport3 = new IntServerServerSwitchport();
        IntServerServerSwitchport serverSwitchport4 = new IntServerServerSwitchport();

        System.assert(serverSwitchport1.equals(serverSwitchport2));
        System.assert(serverSwitchport2.equals(serverSwitchport1));
        System.assert(serverSwitchport3.equals(serverSwitchport4));
        System.assert(serverSwitchport4.equals(serverSwitchport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerSwitchport serverSwitchport1 = IntServerServerSwitchport.getExample();
        IntServerServerSwitchport serverSwitchport2 = new IntServerServerSwitchport();

        System.assertEquals(false, serverSwitchport1.equals('foo'));
        System.assertEquals(false, serverSwitchport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerSwitchport serverSwitchport1 = IntServerServerSwitchport.getExample();
        IntServerServerSwitchport serverSwitchport2 = new IntServerServerSwitchport();
        IntServerServerSwitchport serverSwitchport3;

        System.assertEquals(false, serverSwitchport1.equals(serverSwitchport3));
        System.assertEquals(false, serverSwitchport2.equals(serverSwitchport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerSwitchport serverSwitchport1 = IntServerServerSwitchport.getExample();
        IntServerServerSwitchport serverSwitchport2 = new IntServerServerSwitchport();

        System.assertEquals(serverSwitchport1.hashCode(), serverSwitchport1.hashCode());
        System.assertEquals(serverSwitchport2.hashCode(), serverSwitchport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerSwitchport serverSwitchport1 = IntServerServerSwitchport.getExample();
        IntServerServerSwitchport serverSwitchport2 = IntServerServerSwitchport.getExample();
        IntServerServerSwitchport serverSwitchport3 = new IntServerServerSwitchport();
        IntServerServerSwitchport serverSwitchport4 = new IntServerServerSwitchport();

        System.assert(serverSwitchport1.equals(serverSwitchport2));
        System.assert(serverSwitchport3.equals(serverSwitchport4));
        System.assertEquals(serverSwitchport1.hashCode(), serverSwitchport2.hashCode());
        System.assertEquals(serverSwitchport3.hashCode(), serverSwitchport4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServerSwitchport serverSwitchport = new IntServerServerSwitchport();
        Map<String, String> x-property-mappings = serverSwitchport.getx-property-mappings();
        System.assertEquals('switchportId', x-property-mappings.get('switchport_id'));
        System.assertEquals('switchId', x-property-mappings.get('switch_id'));
        System.assertEquals('r_switch', x-property-mappings.get('switch'));
        System.assertEquals('graphId', x-property-mappings.get('graph_id'));
        System.assertEquals('assetId', x-property-mappings.get('asset_id'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerServerSwitchport serverSwitchport = new IntServerServerSwitchport();
        System.assertEquals(new List<String>(), serverSwitchport.vlans);
        System.assertEquals(new List<String>(), serverSwitchport.vlans6);
        System.assertEquals(null, serverSwitchport.switchportId);
        System.assertEquals(null, serverSwitchport.switchId);
        System.assertEquals(null, serverSwitchport.r_switch);
        System.assertEquals(null, serverSwitchport.port);
        System.assertEquals(null, serverSwitchport.blade);
        System.assertEquals(null, serverSwitchport.justport);
        System.assertEquals(null, serverSwitchport.graphId);
        System.assertEquals(null, serverSwitchport.assetId);
    }
}
