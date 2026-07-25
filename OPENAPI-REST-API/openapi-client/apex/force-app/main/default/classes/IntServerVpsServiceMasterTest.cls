@isTest
private class IntServerVpsServiceMasterTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsServiceMaster vpsServiceMaster1 = IntServerVpsServiceMaster.getExample();
        IntServerVpsServiceMaster vpsServiceMaster2 = vpsServiceMaster1;
        IntServerVpsServiceMaster vpsServiceMaster3 = new IntServerVpsServiceMaster();
        IntServerVpsServiceMaster vpsServiceMaster4 = vpsServiceMaster3;

        System.assert(vpsServiceMaster1.equals(vpsServiceMaster2));
        System.assert(vpsServiceMaster2.equals(vpsServiceMaster1));
        System.assert(vpsServiceMaster1.equals(vpsServiceMaster1));
        System.assert(vpsServiceMaster3.equals(vpsServiceMaster4));
        System.assert(vpsServiceMaster4.equals(vpsServiceMaster3));
        System.assert(vpsServiceMaster3.equals(vpsServiceMaster3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsServiceMaster vpsServiceMaster1 = IntServerVpsServiceMaster.getExample();
        IntServerVpsServiceMaster vpsServiceMaster2 = IntServerVpsServiceMaster.getExample();
        IntServerVpsServiceMaster vpsServiceMaster3 = new IntServerVpsServiceMaster();
        IntServerVpsServiceMaster vpsServiceMaster4 = new IntServerVpsServiceMaster();

        System.assert(vpsServiceMaster1.equals(vpsServiceMaster2));
        System.assert(vpsServiceMaster2.equals(vpsServiceMaster1));
        System.assert(vpsServiceMaster3.equals(vpsServiceMaster4));
        System.assert(vpsServiceMaster4.equals(vpsServiceMaster3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsServiceMaster vpsServiceMaster1 = IntServerVpsServiceMaster.getExample();
        IntServerVpsServiceMaster vpsServiceMaster2 = new IntServerVpsServiceMaster();

        System.assertEquals(false, vpsServiceMaster1.equals('foo'));
        System.assertEquals(false, vpsServiceMaster2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsServiceMaster vpsServiceMaster1 = IntServerVpsServiceMaster.getExample();
        IntServerVpsServiceMaster vpsServiceMaster2 = new IntServerVpsServiceMaster();
        IntServerVpsServiceMaster vpsServiceMaster3;

        System.assertEquals(false, vpsServiceMaster1.equals(vpsServiceMaster3));
        System.assertEquals(false, vpsServiceMaster2.equals(vpsServiceMaster3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsServiceMaster vpsServiceMaster1 = IntServerVpsServiceMaster.getExample();
        IntServerVpsServiceMaster vpsServiceMaster2 = new IntServerVpsServiceMaster();

        System.assertEquals(vpsServiceMaster1.hashCode(), vpsServiceMaster1.hashCode());
        System.assertEquals(vpsServiceMaster2.hashCode(), vpsServiceMaster2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsServiceMaster vpsServiceMaster1 = IntServerVpsServiceMaster.getExample();
        IntServerVpsServiceMaster vpsServiceMaster2 = IntServerVpsServiceMaster.getExample();
        IntServerVpsServiceMaster vpsServiceMaster3 = new IntServerVpsServiceMaster();
        IntServerVpsServiceMaster vpsServiceMaster4 = new IntServerVpsServiceMaster();

        System.assert(vpsServiceMaster1.equals(vpsServiceMaster2));
        System.assert(vpsServiceMaster3.equals(vpsServiceMaster4));
        System.assertEquals(vpsServiceMaster1.hashCode(), vpsServiceMaster2.hashCode());
        System.assertEquals(vpsServiceMaster3.hashCode(), vpsServiceMaster4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerVpsServiceMaster vpsServiceMaster = new IntServerVpsServiceMaster();
        Map<String, String> x-property-mappings = vpsServiceMaster.getx-property-mappings();
        System.assertEquals('vpsId', x-property-mappings.get('vps_id'));
        System.assertEquals('vpsName', x-property-mappings.get('vps_name'));
        System.assertEquals('vpsIp', x-property-mappings.get('vps_ip'));
        System.assertEquals('vpsType', x-property-mappings.get('vps_type'));
        System.assertEquals('vpsHdsize', x-property-mappings.get('vps_hdsize'));
        System.assertEquals('vpsHdfree', x-property-mappings.get('vps_hdfree'));
        System.assertEquals('vpsBits', x-property-mappings.get('vps_bits'));
        System.assertEquals('vpsLoad', x-property-mappings.get('vps_load'));
        System.assertEquals('vpsRam', x-property-mappings.get('vps_ram'));
        System.assertEquals('vpsCpuModel', x-property-mappings.get('vps_cpu_model'));
        System.assertEquals('vpsCpuMhz', x-property-mappings.get('vps_cpu_mhz'));
        System.assertEquals('vpsLocation', x-property-mappings.get('vps_location'));
        System.assertEquals('vpsLastUpdate', x-property-mappings.get('vps_last_update'));
        System.assertEquals('vpsRaidBuilding', x-property-mappings.get('vps_raid_building'));
        System.assertEquals('vpsKernel', x-property-mappings.get('vps_kernel'));
        System.assertEquals('vpsAvailable', x-property-mappings.get('vps_available'));
        System.assertEquals('vpsCores', x-property-mappings.get('vps_cores'));
        System.assertEquals('vpsIowait', x-property-mappings.get('vps_iowait'));
        System.assertEquals('vpsRaidStatus', x-property-mappings.get('vps_raid_status'));
        System.assertEquals('vpsMounts', x-property-mappings.get('vps_mounts'));
        System.assertEquals('vpsServerMax', x-property-mappings.get('vps_server_max'));
        System.assertEquals('vpsServerMaxSlices', x-property-mappings.get('vps_server_max_slices'));
        System.assertEquals('vpsDriveType', x-property-mappings.get('vps_drive_type'));
        System.assertEquals('vpsOrder', x-property-mappings.get('vps_order'));
    }
}
