@isTest
private class IntServerWebsitesOrderJsonServiceOffTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerWebsitesOrderJsonServiceOff websitesOrderJsonServiceOffersItem1 = IntServerWebsitesOrderJsonServiceOff.getExample();
        IntServerWebsitesOrderJsonServiceOff websitesOrderJsonServiceOffersItem2 = websitesOrderJsonServiceOffersItem1;
        IntServerWebsitesOrderJsonServiceOff websitesOrderJsonServiceOffersItem3 = new IntServerWebsitesOrderJsonServiceOff();
        IntServerWebsitesOrderJsonServiceOff websitesOrderJsonServiceOffersItem4 = websitesOrderJsonServiceOffersItem3;

        System.assert(websitesOrderJsonServiceOffersItem1.equals(websitesOrderJsonServiceOffersItem2));
        System.assert(websitesOrderJsonServiceOffersItem2.equals(websitesOrderJsonServiceOffersItem1));
        System.assert(websitesOrderJsonServiceOffersItem1.equals(websitesOrderJsonServiceOffersItem1));
        System.assert(websitesOrderJsonServiceOffersItem3.equals(websitesOrderJsonServiceOffersItem4));
        System.assert(websitesOrderJsonServiceOffersItem4.equals(websitesOrderJsonServiceOffersItem3));
        System.assert(websitesOrderJsonServiceOffersItem3.equals(websitesOrderJsonServiceOffersItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerWebsitesOrderJsonServiceOff websitesOrderJsonServiceOffersItem1 = IntServerWebsitesOrderJsonServiceOff.getExample();
        IntServerWebsitesOrderJsonServiceOff websitesOrderJsonServiceOffersItem2 = IntServerWebsitesOrderJsonServiceOff.getExample();
        IntServerWebsitesOrderJsonServiceOff websitesOrderJsonServiceOffersItem3 = new IntServerWebsitesOrderJsonServiceOff();
        IntServerWebsitesOrderJsonServiceOff websitesOrderJsonServiceOffersItem4 = new IntServerWebsitesOrderJsonServiceOff();

        System.assert(websitesOrderJsonServiceOffersItem1.equals(websitesOrderJsonServiceOffersItem2));
        System.assert(websitesOrderJsonServiceOffersItem2.equals(websitesOrderJsonServiceOffersItem1));
        System.assert(websitesOrderJsonServiceOffersItem3.equals(websitesOrderJsonServiceOffersItem4));
        System.assert(websitesOrderJsonServiceOffersItem4.equals(websitesOrderJsonServiceOffersItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerWebsitesOrderJsonServiceOff websitesOrderJsonServiceOffersItem1 = IntServerWebsitesOrderJsonServiceOff.getExample();
        IntServerWebsitesOrderJsonServiceOff websitesOrderJsonServiceOffersItem2 = new IntServerWebsitesOrderJsonServiceOff();

        System.assertEquals(false, websitesOrderJsonServiceOffersItem1.equals('foo'));
        System.assertEquals(false, websitesOrderJsonServiceOffersItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerWebsitesOrderJsonServiceOff websitesOrderJsonServiceOffersItem1 = IntServerWebsitesOrderJsonServiceOff.getExample();
        IntServerWebsitesOrderJsonServiceOff websitesOrderJsonServiceOffersItem2 = new IntServerWebsitesOrderJsonServiceOff();
        IntServerWebsitesOrderJsonServiceOff websitesOrderJsonServiceOffersItem3;

        System.assertEquals(false, websitesOrderJsonServiceOffersItem1.equals(websitesOrderJsonServiceOffersItem3));
        System.assertEquals(false, websitesOrderJsonServiceOffersItem2.equals(websitesOrderJsonServiceOffersItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerWebsitesOrderJsonServiceOff websitesOrderJsonServiceOffersItem1 = IntServerWebsitesOrderJsonServiceOff.getExample();
        IntServerWebsitesOrderJsonServiceOff websitesOrderJsonServiceOffersItem2 = new IntServerWebsitesOrderJsonServiceOff();

        System.assertEquals(websitesOrderJsonServiceOffersItem1.hashCode(), websitesOrderJsonServiceOffersItem1.hashCode());
        System.assertEquals(websitesOrderJsonServiceOffersItem2.hashCode(), websitesOrderJsonServiceOffersItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerWebsitesOrderJsonServiceOff websitesOrderJsonServiceOffersItem1 = IntServerWebsitesOrderJsonServiceOff.getExample();
        IntServerWebsitesOrderJsonServiceOff websitesOrderJsonServiceOffersItem2 = IntServerWebsitesOrderJsonServiceOff.getExample();
        IntServerWebsitesOrderJsonServiceOff websitesOrderJsonServiceOffersItem3 = new IntServerWebsitesOrderJsonServiceOff();
        IntServerWebsitesOrderJsonServiceOff websitesOrderJsonServiceOffersItem4 = new IntServerWebsitesOrderJsonServiceOff();

        System.assert(websitesOrderJsonServiceOffersItem1.equals(websitesOrderJsonServiceOffersItem2));
        System.assert(websitesOrderJsonServiceOffersItem3.equals(websitesOrderJsonServiceOffersItem4));
        System.assertEquals(websitesOrderJsonServiceOffersItem1.hashCode(), websitesOrderJsonServiceOffersItem2.hashCode());
        System.assertEquals(websitesOrderJsonServiceOffersItem3.hashCode(), websitesOrderJsonServiceOffersItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerWebsitesOrderJsonServiceOff websitesOrderJsonServiceOffersItem = new IntServerWebsitesOrderJsonServiceOff();
        Map<String, String> x-property-mappings = websitesOrderJsonServiceOffersItem.getx-property-mappings();
        System.assertEquals('serviceOfferId', x-property-mappings.get('service_offer_id'));
        System.assertEquals('serviceId', x-property-mappings.get('service_id'));
        System.assertEquals('introCost', x-property-mappings.get('intro_cost'));
        System.assertEquals('renewalCost', x-property-mappings.get('renewal_cost'));
        System.assertEquals('introFrequency', x-property-mappings.get('intro_frequency'));
        System.assertEquals('renewalFrequency', x-property-mappings.get('renewal_frequency'));
        System.assertEquals('allowCoupon', x-property-mappings.get('allow_coupon'));
        System.assertEquals('serviceModule', x-property-mappings.get('service_module'));
        System.assertEquals('createdAt', x-property-mappings.get('created_at'));
        System.assertEquals('updatedAt', x-property-mappings.get('updated_at'));
        System.assertEquals('deletedAt', x-property-mappings.get('deleted_at'));
    }
}
