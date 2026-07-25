@isTest
private class IntServerWebsitesOrderServiceTypesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerWebsitesOrderServiceTypes websitesOrderServiceTypes1 = IntServerWebsitesOrderServiceTypes.getExample();
        IntServerWebsitesOrderServiceTypes websitesOrderServiceTypes2 = websitesOrderServiceTypes1;
        IntServerWebsitesOrderServiceTypes websitesOrderServiceTypes3 = new IntServerWebsitesOrderServiceTypes();
        IntServerWebsitesOrderServiceTypes websitesOrderServiceTypes4 = websitesOrderServiceTypes3;

        System.assert(websitesOrderServiceTypes1.equals(websitesOrderServiceTypes2));
        System.assert(websitesOrderServiceTypes2.equals(websitesOrderServiceTypes1));
        System.assert(websitesOrderServiceTypes1.equals(websitesOrderServiceTypes1));
        System.assert(websitesOrderServiceTypes3.equals(websitesOrderServiceTypes4));
        System.assert(websitesOrderServiceTypes4.equals(websitesOrderServiceTypes3));
        System.assert(websitesOrderServiceTypes3.equals(websitesOrderServiceTypes3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerWebsitesOrderServiceTypes websitesOrderServiceTypes1 = IntServerWebsitesOrderServiceTypes.getExample();
        IntServerWebsitesOrderServiceTypes websitesOrderServiceTypes2 = IntServerWebsitesOrderServiceTypes.getExample();
        IntServerWebsitesOrderServiceTypes websitesOrderServiceTypes3 = new IntServerWebsitesOrderServiceTypes();
        IntServerWebsitesOrderServiceTypes websitesOrderServiceTypes4 = new IntServerWebsitesOrderServiceTypes();

        System.assert(websitesOrderServiceTypes1.equals(websitesOrderServiceTypes2));
        System.assert(websitesOrderServiceTypes2.equals(websitesOrderServiceTypes1));
        System.assert(websitesOrderServiceTypes3.equals(websitesOrderServiceTypes4));
        System.assert(websitesOrderServiceTypes4.equals(websitesOrderServiceTypes3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerWebsitesOrderServiceTypes websitesOrderServiceTypes1 = IntServerWebsitesOrderServiceTypes.getExample();
        IntServerWebsitesOrderServiceTypes websitesOrderServiceTypes2 = new IntServerWebsitesOrderServiceTypes();

        System.assertEquals(false, websitesOrderServiceTypes1.equals('foo'));
        System.assertEquals(false, websitesOrderServiceTypes2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerWebsitesOrderServiceTypes websitesOrderServiceTypes1 = IntServerWebsitesOrderServiceTypes.getExample();
        IntServerWebsitesOrderServiceTypes websitesOrderServiceTypes2 = new IntServerWebsitesOrderServiceTypes();
        IntServerWebsitesOrderServiceTypes websitesOrderServiceTypes3;

        System.assertEquals(false, websitesOrderServiceTypes1.equals(websitesOrderServiceTypes3));
        System.assertEquals(false, websitesOrderServiceTypes2.equals(websitesOrderServiceTypes3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerWebsitesOrderServiceTypes websitesOrderServiceTypes1 = IntServerWebsitesOrderServiceTypes.getExample();
        IntServerWebsitesOrderServiceTypes websitesOrderServiceTypes2 = new IntServerWebsitesOrderServiceTypes();

        System.assertEquals(websitesOrderServiceTypes1.hashCode(), websitesOrderServiceTypes1.hashCode());
        System.assertEquals(websitesOrderServiceTypes2.hashCode(), websitesOrderServiceTypes2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerWebsitesOrderServiceTypes websitesOrderServiceTypes1 = IntServerWebsitesOrderServiceTypes.getExample();
        IntServerWebsitesOrderServiceTypes websitesOrderServiceTypes2 = IntServerWebsitesOrderServiceTypes.getExample();
        IntServerWebsitesOrderServiceTypes websitesOrderServiceTypes3 = new IntServerWebsitesOrderServiceTypes();
        IntServerWebsitesOrderServiceTypes websitesOrderServiceTypes4 = new IntServerWebsitesOrderServiceTypes();

        System.assert(websitesOrderServiceTypes1.equals(websitesOrderServiceTypes2));
        System.assert(websitesOrderServiceTypes3.equals(websitesOrderServiceTypes4));
        System.assertEquals(websitesOrderServiceTypes1.hashCode(), websitesOrderServiceTypes2.hashCode());
        System.assertEquals(websitesOrderServiceTypes3.hashCode(), websitesOrderServiceTypes4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerWebsitesOrderServiceTypes websitesOrderServiceTypes = new IntServerWebsitesOrderServiceTypes();
        Map<String, String> x-property-mappings = websitesOrderServiceTypes.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('11447'));
    }
}
