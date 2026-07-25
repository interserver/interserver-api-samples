@isTest
private class IntServerVpsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVps vps1 = IntServerVps.getExample();
        IntServerVps vps2 = vps1;
        IntServerVps vps3 = new IntServerVps();
        IntServerVps vps4 = vps3;

        System.assert(vps1.equals(vps2));
        System.assert(vps2.equals(vps1));
        System.assert(vps1.equals(vps1));
        System.assert(vps3.equals(vps4));
        System.assert(vps4.equals(vps3));
        System.assert(vps3.equals(vps3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVps vps1 = IntServerVps.getExample();
        IntServerVps vps2 = IntServerVps.getExample();
        IntServerVps vps3 = new IntServerVps();
        IntServerVps vps4 = new IntServerVps();

        System.assert(vps1.equals(vps2));
        System.assert(vps2.equals(vps1));
        System.assert(vps3.equals(vps4));
        System.assert(vps4.equals(vps3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVps vps1 = IntServerVps.getExample();
        IntServerVps vps2 = new IntServerVps();

        System.assertEquals(false, vps1.equals('foo'));
        System.assertEquals(false, vps2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVps vps1 = IntServerVps.getExample();
        IntServerVps vps2 = new IntServerVps();
        IntServerVps vps3;

        System.assertEquals(false, vps1.equals(vps3));
        System.assertEquals(false, vps2.equals(vps3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVps vps1 = IntServerVps.getExample();
        IntServerVps vps2 = new IntServerVps();

        System.assertEquals(vps1.hashCode(), vps1.hashCode());
        System.assertEquals(vps2.hashCode(), vps2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVps vps1 = IntServerVps.getExample();
        IntServerVps vps2 = IntServerVps.getExample();
        IntServerVps vps3 = new IntServerVps();
        IntServerVps vps4 = new IntServerVps();

        System.assert(vps1.equals(vps2));
        System.assert(vps3.equals(vps4));
        System.assertEquals(vps1.hashCode(), vps2.hashCode());
        System.assertEquals(vps3.hashCode(), vps4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerVps vps = new IntServerVps();
        Map<String, String> x-property-mappings = vps.getx-property-mappings();
        System.assertEquals('clientLinks', x-property-mappings.get('client_links'));
        System.assertEquals('r_package', x-property-mappings.get('package'));
        System.assertEquals('daLink', x-property-mappings.get('da_link'));
        System.assertEquals('srLink', x-property-mappings.get('sr_link'));
        System.assertEquals('cpData', x-property-mappings.get('cp_data'));
        System.assertEquals('daData', x-property-mappings.get('da_data'));
        System.assertEquals('plesk12Data', x-property-mappings.get('plesk12_data'));
        System.assertEquals('osTemplate', x-property-mappings.get('os_template'));
        System.assertEquals('cpuGraphData', x-property-mappings.get('cpu_graph_data'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerVps vps = new IntServerVps();
        System.assertEquals(new List<IntServerVpsClientLink>(), vps.clientLinks);
        System.assertEquals(null, vps.serviceInfo);
        System.assertEquals(null, vps.billingDetails);
        System.assertEquals(null, vps.custCurrency);
        System.assertEquals(null, vps.custCurrencySymbol);
        System.assertEquals(null, vps.serviceMaster);
        System.assertEquals(null, vps.r_package);
        System.assertEquals(null, vps.serviceExtra);
        System.assertEquals(null, vps.extraInfoTables);
        System.assertEquals(null, vps.module);
        System.assertEquals(null, vps.token);
        System.assertEquals(null, vps.daLink);
        System.assertEquals(null, vps.srLink);
        System.assertEquals(null, vps.cpData);
        System.assertEquals(null, vps.daData);
        System.assertEquals(null, vps.plesk12Data);
        System.assertEquals(null, vps.serviceAddons);
        System.assertEquals(null, vps.osTemplate);
        System.assertEquals(null, vps.cpuGraphData);
    }
}
