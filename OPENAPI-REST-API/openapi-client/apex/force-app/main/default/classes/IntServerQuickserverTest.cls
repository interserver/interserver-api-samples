@isTest
private class IntServerQuickserverTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerQuickserver quickserver1 = IntServerQuickserver.getExample();
        IntServerQuickserver quickserver2 = quickserver1;
        IntServerQuickserver quickserver3 = new IntServerQuickserver();
        IntServerQuickserver quickserver4 = quickserver3;

        System.assert(quickserver1.equals(quickserver2));
        System.assert(quickserver2.equals(quickserver1));
        System.assert(quickserver1.equals(quickserver1));
        System.assert(quickserver3.equals(quickserver4));
        System.assert(quickserver4.equals(quickserver3));
        System.assert(quickserver3.equals(quickserver3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerQuickserver quickserver1 = IntServerQuickserver.getExample();
        IntServerQuickserver quickserver2 = IntServerQuickserver.getExample();
        IntServerQuickserver quickserver3 = new IntServerQuickserver();
        IntServerQuickserver quickserver4 = new IntServerQuickserver();

        System.assert(quickserver1.equals(quickserver2));
        System.assert(quickserver2.equals(quickserver1));
        System.assert(quickserver3.equals(quickserver4));
        System.assert(quickserver4.equals(quickserver3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerQuickserver quickserver1 = IntServerQuickserver.getExample();
        IntServerQuickserver quickserver2 = new IntServerQuickserver();

        System.assertEquals(false, quickserver1.equals('foo'));
        System.assertEquals(false, quickserver2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerQuickserver quickserver1 = IntServerQuickserver.getExample();
        IntServerQuickserver quickserver2 = new IntServerQuickserver();
        IntServerQuickserver quickserver3;

        System.assertEquals(false, quickserver1.equals(quickserver3));
        System.assertEquals(false, quickserver2.equals(quickserver3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerQuickserver quickserver1 = IntServerQuickserver.getExample();
        IntServerQuickserver quickserver2 = new IntServerQuickserver();

        System.assertEquals(quickserver1.hashCode(), quickserver1.hashCode());
        System.assertEquals(quickserver2.hashCode(), quickserver2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerQuickserver quickserver1 = IntServerQuickserver.getExample();
        IntServerQuickserver quickserver2 = IntServerQuickserver.getExample();
        IntServerQuickserver quickserver3 = new IntServerQuickserver();
        IntServerQuickserver quickserver4 = new IntServerQuickserver();

        System.assert(quickserver1.equals(quickserver2));
        System.assert(quickserver3.equals(quickserver4));
        System.assertEquals(quickserver1.hashCode(), quickserver2.hashCode());
        System.assertEquals(quickserver3.hashCode(), quickserver4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerQuickserver quickserver = new IntServerQuickserver();
        Map<String, String> x-property-mappings = quickserver.getx-property-mappings();
        System.assertEquals('clientLinks', x-property-mappings.get('client_links'));
        System.assertEquals('r_package', x-property-mappings.get('package'));
        System.assertEquals('osTemplate', x-property-mappings.get('os_template'));
        System.assertEquals('cpuGraphData', x-property-mappings.get('cpu_graph_data'));
        System.assertEquals('bandwidthXaxis', x-property-mappings.get('bandwidth_xaxis'));
        System.assertEquals('bandwidthYaxis', x-property-mappings.get('bandwidth_yaxis'));
        System.assertEquals('serviceDiskUsed', x-property-mappings.get('service_disk_used'));
        System.assertEquals('serviceDiskTotal', x-property-mappings.get('service_disk_total'));
        System.assertEquals('diskPercentage', x-property-mappings.get('disk_percentage'));
        System.assertEquals('serviceOverviewExtra', x-property-mappings.get('service_overview_extra'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerQuickserver quickserver = new IntServerQuickserver();
        System.assertEquals(new List<IntServerQuickserverClientLink>(), quickserver.clientLinks);
        System.assertEquals(new List<String>(), quickserver.serviceOverviewExtra);
        System.assertEquals(null, quickserver.serviceInfo);
        System.assertEquals(null, quickserver.billingDetails);
        System.assertEquals(null, quickserver.custCurrency);
        System.assertEquals(null, quickserver.custCurrencySymbol);
        System.assertEquals(null, quickserver.serviceMaster);
        System.assertEquals(null, quickserver.r_package);
        System.assertEquals(null, quickserver.osTemplate);
        System.assertEquals(null, quickserver.serviceExtra);
        System.assertEquals(null, quickserver.extraInfoTables);
        System.assertEquals(null, quickserver.cpuGraphData);
        System.assertEquals(null, quickserver.bandwidthXaxis);
        System.assertEquals(null, quickserver.bandwidthYaxis);
        System.assertEquals(null, quickserver.module);
        System.assertEquals(null, quickserver.token);
        System.assertEquals(null, quickserver.serviceDiskUsed);
        System.assertEquals(null, quickserver.serviceDiskTotal);
        System.assertEquals(null, quickserver.diskPercentage);
        System.assertEquals(null, quickserver.memory);
        System.assertEquals(null, quickserver.hdd);
    }
}
