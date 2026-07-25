@isTest
private class IntServerWebsitesOrderServiceOfferTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerWebsitesOrderServiceOffer websitesOrderServiceOffer1 = IntServerWebsitesOrderServiceOffer.getExample();
        IntServerWebsitesOrderServiceOffer websitesOrderServiceOffer2 = websitesOrderServiceOffer1;
        IntServerWebsitesOrderServiceOffer websitesOrderServiceOffer3 = new IntServerWebsitesOrderServiceOffer();
        IntServerWebsitesOrderServiceOffer websitesOrderServiceOffer4 = websitesOrderServiceOffer3;

        System.assert(websitesOrderServiceOffer1.equals(websitesOrderServiceOffer2));
        System.assert(websitesOrderServiceOffer2.equals(websitesOrderServiceOffer1));
        System.assert(websitesOrderServiceOffer1.equals(websitesOrderServiceOffer1));
        System.assert(websitesOrderServiceOffer3.equals(websitesOrderServiceOffer4));
        System.assert(websitesOrderServiceOffer4.equals(websitesOrderServiceOffer3));
        System.assert(websitesOrderServiceOffer3.equals(websitesOrderServiceOffer3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerWebsitesOrderServiceOffer websitesOrderServiceOffer1 = IntServerWebsitesOrderServiceOffer.getExample();
        IntServerWebsitesOrderServiceOffer websitesOrderServiceOffer2 = IntServerWebsitesOrderServiceOffer.getExample();
        IntServerWebsitesOrderServiceOffer websitesOrderServiceOffer3 = new IntServerWebsitesOrderServiceOffer();
        IntServerWebsitesOrderServiceOffer websitesOrderServiceOffer4 = new IntServerWebsitesOrderServiceOffer();

        System.assert(websitesOrderServiceOffer1.equals(websitesOrderServiceOffer2));
        System.assert(websitesOrderServiceOffer2.equals(websitesOrderServiceOffer1));
        System.assert(websitesOrderServiceOffer3.equals(websitesOrderServiceOffer4));
        System.assert(websitesOrderServiceOffer4.equals(websitesOrderServiceOffer3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerWebsitesOrderServiceOffer websitesOrderServiceOffer1 = IntServerWebsitesOrderServiceOffer.getExample();
        IntServerWebsitesOrderServiceOffer websitesOrderServiceOffer2 = new IntServerWebsitesOrderServiceOffer();

        System.assertEquals(false, websitesOrderServiceOffer1.equals('foo'));
        System.assertEquals(false, websitesOrderServiceOffer2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerWebsitesOrderServiceOffer websitesOrderServiceOffer1 = IntServerWebsitesOrderServiceOffer.getExample();
        IntServerWebsitesOrderServiceOffer websitesOrderServiceOffer2 = new IntServerWebsitesOrderServiceOffer();
        IntServerWebsitesOrderServiceOffer websitesOrderServiceOffer3;

        System.assertEquals(false, websitesOrderServiceOffer1.equals(websitesOrderServiceOffer3));
        System.assertEquals(false, websitesOrderServiceOffer2.equals(websitesOrderServiceOffer3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerWebsitesOrderServiceOffer websitesOrderServiceOffer1 = IntServerWebsitesOrderServiceOffer.getExample();
        IntServerWebsitesOrderServiceOffer websitesOrderServiceOffer2 = new IntServerWebsitesOrderServiceOffer();

        System.assertEquals(websitesOrderServiceOffer1.hashCode(), websitesOrderServiceOffer1.hashCode());
        System.assertEquals(websitesOrderServiceOffer2.hashCode(), websitesOrderServiceOffer2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerWebsitesOrderServiceOffer websitesOrderServiceOffer1 = IntServerWebsitesOrderServiceOffer.getExample();
        IntServerWebsitesOrderServiceOffer websitesOrderServiceOffer2 = IntServerWebsitesOrderServiceOffer.getExample();
        IntServerWebsitesOrderServiceOffer websitesOrderServiceOffer3 = new IntServerWebsitesOrderServiceOffer();
        IntServerWebsitesOrderServiceOffer websitesOrderServiceOffer4 = new IntServerWebsitesOrderServiceOffer();

        System.assert(websitesOrderServiceOffer1.equals(websitesOrderServiceOffer2));
        System.assert(websitesOrderServiceOffer3.equals(websitesOrderServiceOffer4));
        System.assertEquals(websitesOrderServiceOffer1.hashCode(), websitesOrderServiceOffer2.hashCode());
        System.assertEquals(websitesOrderServiceOffer3.hashCode(), websitesOrderServiceOffer4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerWebsitesOrderServiceOffer websitesOrderServiceOffer = new IntServerWebsitesOrderServiceOffer();
        Map<String, String> x-property-mappings = websitesOrderServiceOffer.getx-property-mappings();
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
