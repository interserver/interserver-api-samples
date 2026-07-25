@isTest
private class IntServerWebsitesOrderServiceOffersTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerWebsitesOrderServiceOffers websitesOrderServiceOffers1 = IntServerWebsitesOrderServiceOffers.getExample();
        IntServerWebsitesOrderServiceOffers websitesOrderServiceOffers2 = websitesOrderServiceOffers1;
        IntServerWebsitesOrderServiceOffers websitesOrderServiceOffers3 = new IntServerWebsitesOrderServiceOffers();
        IntServerWebsitesOrderServiceOffers websitesOrderServiceOffers4 = websitesOrderServiceOffers3;

        System.assert(websitesOrderServiceOffers1.equals(websitesOrderServiceOffers2));
        System.assert(websitesOrderServiceOffers2.equals(websitesOrderServiceOffers1));
        System.assert(websitesOrderServiceOffers1.equals(websitesOrderServiceOffers1));
        System.assert(websitesOrderServiceOffers3.equals(websitesOrderServiceOffers4));
        System.assert(websitesOrderServiceOffers4.equals(websitesOrderServiceOffers3));
        System.assert(websitesOrderServiceOffers3.equals(websitesOrderServiceOffers3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerWebsitesOrderServiceOffers websitesOrderServiceOffers1 = IntServerWebsitesOrderServiceOffers.getExample();
        IntServerWebsitesOrderServiceOffers websitesOrderServiceOffers2 = IntServerWebsitesOrderServiceOffers.getExample();
        IntServerWebsitesOrderServiceOffers websitesOrderServiceOffers3 = new IntServerWebsitesOrderServiceOffers();
        IntServerWebsitesOrderServiceOffers websitesOrderServiceOffers4 = new IntServerWebsitesOrderServiceOffers();

        System.assert(websitesOrderServiceOffers1.equals(websitesOrderServiceOffers2));
        System.assert(websitesOrderServiceOffers2.equals(websitesOrderServiceOffers1));
        System.assert(websitesOrderServiceOffers3.equals(websitesOrderServiceOffers4));
        System.assert(websitesOrderServiceOffers4.equals(websitesOrderServiceOffers3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerWebsitesOrderServiceOffers websitesOrderServiceOffers1 = IntServerWebsitesOrderServiceOffers.getExample();
        IntServerWebsitesOrderServiceOffers websitesOrderServiceOffers2 = new IntServerWebsitesOrderServiceOffers();

        System.assertEquals(false, websitesOrderServiceOffers1.equals('foo'));
        System.assertEquals(false, websitesOrderServiceOffers2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerWebsitesOrderServiceOffers websitesOrderServiceOffers1 = IntServerWebsitesOrderServiceOffers.getExample();
        IntServerWebsitesOrderServiceOffers websitesOrderServiceOffers2 = new IntServerWebsitesOrderServiceOffers();
        IntServerWebsitesOrderServiceOffers websitesOrderServiceOffers3;

        System.assertEquals(false, websitesOrderServiceOffers1.equals(websitesOrderServiceOffers3));
        System.assertEquals(false, websitesOrderServiceOffers2.equals(websitesOrderServiceOffers3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerWebsitesOrderServiceOffers websitesOrderServiceOffers1 = IntServerWebsitesOrderServiceOffers.getExample();
        IntServerWebsitesOrderServiceOffers websitesOrderServiceOffers2 = new IntServerWebsitesOrderServiceOffers();

        System.assertEquals(websitesOrderServiceOffers1.hashCode(), websitesOrderServiceOffers1.hashCode());
        System.assertEquals(websitesOrderServiceOffers2.hashCode(), websitesOrderServiceOffers2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerWebsitesOrderServiceOffers websitesOrderServiceOffers1 = IntServerWebsitesOrderServiceOffers.getExample();
        IntServerWebsitesOrderServiceOffers websitesOrderServiceOffers2 = IntServerWebsitesOrderServiceOffers.getExample();
        IntServerWebsitesOrderServiceOffers websitesOrderServiceOffers3 = new IntServerWebsitesOrderServiceOffers();
        IntServerWebsitesOrderServiceOffers websitesOrderServiceOffers4 = new IntServerWebsitesOrderServiceOffers();

        System.assert(websitesOrderServiceOffers1.equals(websitesOrderServiceOffers2));
        System.assert(websitesOrderServiceOffers3.equals(websitesOrderServiceOffers4));
        System.assertEquals(websitesOrderServiceOffers1.hashCode(), websitesOrderServiceOffers2.hashCode());
        System.assertEquals(websitesOrderServiceOffers3.hashCode(), websitesOrderServiceOffers4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerWebsitesOrderServiceOffers websitesOrderServiceOffers = new IntServerWebsitesOrderServiceOffers();
        Map<String, String> x-property-mappings = websitesOrderServiceOffers.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('1026'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerWebsitesOrderServiceOffers websitesOrderServiceOffers = new IntServerWebsitesOrderServiceOffers();
        System.assertEquals(new List<IntServerWebsitesOrderServiceOffer>(), websitesOrderServiceOffers.);
    }
}
