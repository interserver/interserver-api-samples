@isTest
private class IntServerWebsitesOrderJsonServicesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerWebsitesOrderJsonServices websitesOrderJsonServices1 = IntServerWebsitesOrderJsonServices.getExample();
        IntServerWebsitesOrderJsonServices websitesOrderJsonServices2 = websitesOrderJsonServices1;
        IntServerWebsitesOrderJsonServices websitesOrderJsonServices3 = new IntServerWebsitesOrderJsonServices();
        IntServerWebsitesOrderJsonServices websitesOrderJsonServices4 = websitesOrderJsonServices3;

        System.assert(websitesOrderJsonServices1.equals(websitesOrderJsonServices2));
        System.assert(websitesOrderJsonServices2.equals(websitesOrderJsonServices1));
        System.assert(websitesOrderJsonServices1.equals(websitesOrderJsonServices1));
        System.assert(websitesOrderJsonServices3.equals(websitesOrderJsonServices4));
        System.assert(websitesOrderJsonServices4.equals(websitesOrderJsonServices3));
        System.assert(websitesOrderJsonServices3.equals(websitesOrderJsonServices3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerWebsitesOrderJsonServices websitesOrderJsonServices1 = IntServerWebsitesOrderJsonServices.getExample();
        IntServerWebsitesOrderJsonServices websitesOrderJsonServices2 = IntServerWebsitesOrderJsonServices.getExample();
        IntServerWebsitesOrderJsonServices websitesOrderJsonServices3 = new IntServerWebsitesOrderJsonServices();
        IntServerWebsitesOrderJsonServices websitesOrderJsonServices4 = new IntServerWebsitesOrderJsonServices();

        System.assert(websitesOrderJsonServices1.equals(websitesOrderJsonServices2));
        System.assert(websitesOrderJsonServices2.equals(websitesOrderJsonServices1));
        System.assert(websitesOrderJsonServices3.equals(websitesOrderJsonServices4));
        System.assert(websitesOrderJsonServices4.equals(websitesOrderJsonServices3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerWebsitesOrderJsonServices websitesOrderJsonServices1 = IntServerWebsitesOrderJsonServices.getExample();
        IntServerWebsitesOrderJsonServices websitesOrderJsonServices2 = new IntServerWebsitesOrderJsonServices();

        System.assertEquals(false, websitesOrderJsonServices1.equals('foo'));
        System.assertEquals(false, websitesOrderJsonServices2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerWebsitesOrderJsonServices websitesOrderJsonServices1 = IntServerWebsitesOrderJsonServices.getExample();
        IntServerWebsitesOrderJsonServices websitesOrderJsonServices2 = new IntServerWebsitesOrderJsonServices();
        IntServerWebsitesOrderJsonServices websitesOrderJsonServices3;

        System.assertEquals(false, websitesOrderJsonServices1.equals(websitesOrderJsonServices3));
        System.assertEquals(false, websitesOrderJsonServices2.equals(websitesOrderJsonServices3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerWebsitesOrderJsonServices websitesOrderJsonServices1 = IntServerWebsitesOrderJsonServices.getExample();
        IntServerWebsitesOrderJsonServices websitesOrderJsonServices2 = new IntServerWebsitesOrderJsonServices();

        System.assertEquals(websitesOrderJsonServices1.hashCode(), websitesOrderJsonServices1.hashCode());
        System.assertEquals(websitesOrderJsonServices2.hashCode(), websitesOrderJsonServices2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerWebsitesOrderJsonServices websitesOrderJsonServices1 = IntServerWebsitesOrderJsonServices.getExample();
        IntServerWebsitesOrderJsonServices websitesOrderJsonServices2 = IntServerWebsitesOrderJsonServices.getExample();
        IntServerWebsitesOrderJsonServices websitesOrderJsonServices3 = new IntServerWebsitesOrderJsonServices();
        IntServerWebsitesOrderJsonServices websitesOrderJsonServices4 = new IntServerWebsitesOrderJsonServices();

        System.assert(websitesOrderJsonServices1.equals(websitesOrderJsonServices2));
        System.assert(websitesOrderJsonServices3.equals(websitesOrderJsonServices4));
        System.assertEquals(websitesOrderJsonServices1.hashCode(), websitesOrderJsonServices2.hashCode());
        System.assertEquals(websitesOrderJsonServices3.hashCode(), websitesOrderJsonServices4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerWebsitesOrderJsonServices websitesOrderJsonServices = new IntServerWebsitesOrderJsonServices();
        Map<String, String> x-property-mappings = websitesOrderJsonServices.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('11447'));
    }
}
