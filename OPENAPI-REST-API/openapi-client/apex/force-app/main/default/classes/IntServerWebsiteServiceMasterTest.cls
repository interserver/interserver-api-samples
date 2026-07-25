@isTest
private class IntServerWebsiteServiceMasterTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerWebsiteServiceMaster websiteServiceMaster1 = IntServerWebsiteServiceMaster.getExample();
        IntServerWebsiteServiceMaster websiteServiceMaster2 = websiteServiceMaster1;
        IntServerWebsiteServiceMaster websiteServiceMaster3 = new IntServerWebsiteServiceMaster();
        IntServerWebsiteServiceMaster websiteServiceMaster4 = websiteServiceMaster3;

        System.assert(websiteServiceMaster1.equals(websiteServiceMaster2));
        System.assert(websiteServiceMaster2.equals(websiteServiceMaster1));
        System.assert(websiteServiceMaster1.equals(websiteServiceMaster1));
        System.assert(websiteServiceMaster3.equals(websiteServiceMaster4));
        System.assert(websiteServiceMaster4.equals(websiteServiceMaster3));
        System.assert(websiteServiceMaster3.equals(websiteServiceMaster3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerWebsiteServiceMaster websiteServiceMaster1 = IntServerWebsiteServiceMaster.getExample();
        IntServerWebsiteServiceMaster websiteServiceMaster2 = IntServerWebsiteServiceMaster.getExample();
        IntServerWebsiteServiceMaster websiteServiceMaster3 = new IntServerWebsiteServiceMaster();
        IntServerWebsiteServiceMaster websiteServiceMaster4 = new IntServerWebsiteServiceMaster();

        System.assert(websiteServiceMaster1.equals(websiteServiceMaster2));
        System.assert(websiteServiceMaster2.equals(websiteServiceMaster1));
        System.assert(websiteServiceMaster3.equals(websiteServiceMaster4));
        System.assert(websiteServiceMaster4.equals(websiteServiceMaster3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerWebsiteServiceMaster websiteServiceMaster1 = IntServerWebsiteServiceMaster.getExample();
        IntServerWebsiteServiceMaster websiteServiceMaster2 = new IntServerWebsiteServiceMaster();

        System.assertEquals(false, websiteServiceMaster1.equals('foo'));
        System.assertEquals(false, websiteServiceMaster2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerWebsiteServiceMaster websiteServiceMaster1 = IntServerWebsiteServiceMaster.getExample();
        IntServerWebsiteServiceMaster websiteServiceMaster2 = new IntServerWebsiteServiceMaster();
        IntServerWebsiteServiceMaster websiteServiceMaster3;

        System.assertEquals(false, websiteServiceMaster1.equals(websiteServiceMaster3));
        System.assertEquals(false, websiteServiceMaster2.equals(websiteServiceMaster3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerWebsiteServiceMaster websiteServiceMaster1 = IntServerWebsiteServiceMaster.getExample();
        IntServerWebsiteServiceMaster websiteServiceMaster2 = new IntServerWebsiteServiceMaster();

        System.assertEquals(websiteServiceMaster1.hashCode(), websiteServiceMaster1.hashCode());
        System.assertEquals(websiteServiceMaster2.hashCode(), websiteServiceMaster2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerWebsiteServiceMaster websiteServiceMaster1 = IntServerWebsiteServiceMaster.getExample();
        IntServerWebsiteServiceMaster websiteServiceMaster2 = IntServerWebsiteServiceMaster.getExample();
        IntServerWebsiteServiceMaster websiteServiceMaster3 = new IntServerWebsiteServiceMaster();
        IntServerWebsiteServiceMaster websiteServiceMaster4 = new IntServerWebsiteServiceMaster();

        System.assert(websiteServiceMaster1.equals(websiteServiceMaster2));
        System.assert(websiteServiceMaster3.equals(websiteServiceMaster4));
        System.assertEquals(websiteServiceMaster1.hashCode(), websiteServiceMaster2.hashCode());
        System.assertEquals(websiteServiceMaster3.hashCode(), websiteServiceMaster4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerWebsiteServiceMaster websiteServiceMaster = new IntServerWebsiteServiceMaster();
        Map<String, String> x-property-mappings = websiteServiceMaster.getx-property-mappings();
        System.assertEquals('websiteId', x-property-mappings.get('website_id'));
        System.assertEquals('websiteName', x-property-mappings.get('website_name'));
        System.assertEquals('websiteIp', x-property-mappings.get('website_ip'));
        System.assertEquals('websiteType', x-property-mappings.get('website_type'));
        System.assertEquals('websiteAvailable', x-property-mappings.get('website_available'));
        System.assertEquals('websiteHdsize', x-property-mappings.get('website_hdsize'));
        System.assertEquals('websiteHdfree', x-property-mappings.get('website_hdfree'));
        System.assertEquals('websiteLoad', x-property-mappings.get('website_load'));
        System.assertEquals('websiteLastUpdate', x-property-mappings.get('website_last_update'));
        System.assertEquals('websiteMaxSites', x-property-mappings.get('website_max_sites'));
        System.assertEquals('websiteOrder', x-property-mappings.get('website_order'));
        System.assertEquals('websitePartitions', x-property-mappings.get('website_partitions'));
        System.assertEquals('websiteDns1', x-property-mappings.get('website_dns1'));
        System.assertEquals('websiteDns2', x-property-mappings.get('website_dns2'));
    }
}
