@isTest
private class IntServerServerAssetTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerAsset serverAsset1 = IntServerServerAsset.getExample();
        IntServerServerAsset serverAsset2 = serverAsset1;
        IntServerServerAsset serverAsset3 = new IntServerServerAsset();
        IntServerServerAsset serverAsset4 = serverAsset3;

        System.assert(serverAsset1.equals(serverAsset2));
        System.assert(serverAsset2.equals(serverAsset1));
        System.assert(serverAsset1.equals(serverAsset1));
        System.assert(serverAsset3.equals(serverAsset4));
        System.assert(serverAsset4.equals(serverAsset3));
        System.assert(serverAsset3.equals(serverAsset3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerAsset serverAsset1 = IntServerServerAsset.getExample();
        IntServerServerAsset serverAsset2 = IntServerServerAsset.getExample();
        IntServerServerAsset serverAsset3 = new IntServerServerAsset();
        IntServerServerAsset serverAsset4 = new IntServerServerAsset();

        System.assert(serverAsset1.equals(serverAsset2));
        System.assert(serverAsset2.equals(serverAsset1));
        System.assert(serverAsset3.equals(serverAsset4));
        System.assert(serverAsset4.equals(serverAsset3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerAsset serverAsset1 = IntServerServerAsset.getExample();
        IntServerServerAsset serverAsset2 = new IntServerServerAsset();

        System.assertEquals(false, serverAsset1.equals('foo'));
        System.assertEquals(false, serverAsset2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerAsset serverAsset1 = IntServerServerAsset.getExample();
        IntServerServerAsset serverAsset2 = new IntServerServerAsset();
        IntServerServerAsset serverAsset3;

        System.assertEquals(false, serverAsset1.equals(serverAsset3));
        System.assertEquals(false, serverAsset2.equals(serverAsset3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerAsset serverAsset1 = IntServerServerAsset.getExample();
        IntServerServerAsset serverAsset2 = new IntServerServerAsset();

        System.assertEquals(serverAsset1.hashCode(), serverAsset1.hashCode());
        System.assertEquals(serverAsset2.hashCode(), serverAsset2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerAsset serverAsset1 = IntServerServerAsset.getExample();
        IntServerServerAsset serverAsset2 = IntServerServerAsset.getExample();
        IntServerServerAsset serverAsset3 = new IntServerServerAsset();
        IntServerServerAsset serverAsset4 = new IntServerServerAsset();

        System.assert(serverAsset1.equals(serverAsset2));
        System.assert(serverAsset3.equals(serverAsset4));
        System.assertEquals(serverAsset1.hashCode(), serverAsset2.hashCode());
        System.assertEquals(serverAsset3.hashCode(), serverAsset4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServerAsset serverAsset = new IntServerServerAsset();
        Map<String, String> x-property-mappings = serverAsset.getx-property-mappings();
        System.assertEquals('orderId', x-property-mappings.get('order_id'));
        System.assertEquals('primaryIpv4', x-property-mappings.get('primary_ipv4'));
        System.assertEquals('primaryIpv6', x-property-mappings.get('primary_ipv6'));
        System.assertEquals('typeId', x-property-mappings.get('type_id'));
        System.assertEquals('assetTag', x-property-mappings.get('asset_tag'));
        System.assertEquals('unitStart', x-property-mappings.get('unit_start'));
        System.assertEquals('unitEnd', x-property-mappings.get('unit_end'));
        System.assertEquals('unitSub', x-property-mappings.get('unit_sub'));
        System.assertEquals('ipmiMac', x-property-mappings.get('ipmi_mac'));
        System.assertEquals('ipmiIp', x-property-mappings.get('ipmi_ip'));
        System.assertEquals('ipmiWorking', x-property-mappings.get('ipmi_working'));
        System.assertEquals('customerId', x-property-mappings.get('customer_id'));
        System.assertEquals('externalId', x-property-mappings.get('external_id'));
        System.assertEquals('billingStatus', x-property-mappings.get('billing_status'));
        System.assertEquals('assetId', x-property-mappings.get('asset_id'));
        System.assertEquals('assetName', x-property-mappings.get('asset_name'));
        System.assertEquals('rackId', x-property-mappings.get('rack_id'));
        System.assertEquals('rackName', x-property-mappings.get('rack_name'));
        System.assertEquals('rackLocation', x-property-mappings.get('rack_location'));
        System.assertEquals('rackSize', x-property-mappings.get('rack_size'));
        System.assertEquals('rackX', x-property-mappings.get('rack_x'));
        System.assertEquals('rackY', x-property-mappings.get('rack_y'));
        System.assertEquals('ipmiAdminUsername', x-property-mappings.get('ipmi_admin_username'));
        System.assertEquals('ipmiAdminPassword', x-property-mappings.get('ipmi_admin_password'));
        System.assertEquals('ipmiClientUsername', x-property-mappings.get('ipmi_client_username'));
        System.assertEquals('ipmiClientPassword', x-property-mappings.get('ipmi_client_password'));
        System.assertEquals('ipmiUpdated', x-property-mappings.get('ipmi_updated'));
        System.assertEquals('createTimestamp', x-property-mappings.get('create_timestamp'));
        System.assertEquals('updateTimestamp', x-property-mappings.get('update_timestamp'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerServerAsset serverAsset = new IntServerServerAsset();
        System.assertEquals(new List<Integer>(), serverAsset.switchports);
        System.assertEquals(new List<String>(), serverAsset.vlans);
        System.assertEquals(new List<String>(), serverAsset.vlans6);
        System.assertEquals(null, serverAsset.id);
        System.assertEquals(null, serverAsset.orderId);
        System.assertEquals(null, serverAsset.hostname);
        System.assertEquals(null, serverAsset.status);
        System.assertEquals(null, serverAsset.primaryIpv4);
        System.assertEquals(null, serverAsset.primaryIpv6);
        System.assertEquals(null, serverAsset.datacenter);
        System.assertEquals(null, serverAsset.typeId);
        System.assertEquals(null, serverAsset.assetTag);
        System.assertEquals(null, serverAsset.rack);
        System.assertEquals(null, serverAsset.row);
        System.assertEquals(null, serverAsset.col);
        System.assertEquals(null, serverAsset.unitStart);
        System.assertEquals(null, serverAsset.unitEnd);
        System.assertEquals(null, serverAsset.unitSub);
        System.assertEquals(null, serverAsset.ipmiMac);
        System.assertEquals(null, serverAsset.ipmiIp);
        System.assertEquals(null, serverAsset.ipmiWorking);
        System.assertEquals(null, serverAsset.company);
        System.assertEquals(null, serverAsset.comments);
        System.assertEquals(null, serverAsset.make);
        System.assertEquals(null, serverAsset.model);
        System.assertEquals(null, serverAsset.description);
        System.assertEquals(null, serverAsset.customerId);
        System.assertEquals(null, serverAsset.externalId);
        System.assertEquals(null, serverAsset.billingStatus);
        System.assertEquals(null, serverAsset.overdue);
        System.assertEquals(null, serverAsset.assetId);
        System.assertEquals(null, serverAsset.assetName);
        System.assertEquals(null, serverAsset.rackId);
        System.assertEquals(null, serverAsset.rackName);
        System.assertEquals(null, serverAsset.rackLocation);
        System.assertEquals(null, serverAsset.rackSize);
        System.assertEquals(null, serverAsset.rackX);
        System.assertEquals(null, serverAsset.rackY);
        System.assertEquals(null, serverAsset.lease);
        System.assertEquals(null, serverAsset.mac);
        System.assertEquals(null, serverAsset.ipmiAdminUsername);
        System.assertEquals(null, serverAsset.ipmiAdminPassword);
        System.assertEquals(null, serverAsset.ipmiClientUsername);
        System.assertEquals(null, serverAsset.ipmiClientPassword);
        System.assertEquals(null, serverAsset.ipmiUpdated);
        System.assertEquals(null, serverAsset.createTimestamp);
        System.assertEquals(null, serverAsset.updateTimestamp);
        System.assertEquals(null, serverAsset.comment);
    }
}
