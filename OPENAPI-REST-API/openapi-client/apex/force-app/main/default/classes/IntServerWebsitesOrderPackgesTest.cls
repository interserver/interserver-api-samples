@isTest
private class IntServerWebsitesOrderPackgesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerWebsitesOrderPackges websitesOrderPackges1 = IntServerWebsitesOrderPackges.getExample();
        IntServerWebsitesOrderPackges websitesOrderPackges2 = websitesOrderPackges1;
        IntServerWebsitesOrderPackges websitesOrderPackges3 = new IntServerWebsitesOrderPackges();
        IntServerWebsitesOrderPackges websitesOrderPackges4 = websitesOrderPackges3;

        System.assert(websitesOrderPackges1.equals(websitesOrderPackges2));
        System.assert(websitesOrderPackges2.equals(websitesOrderPackges1));
        System.assert(websitesOrderPackges1.equals(websitesOrderPackges1));
        System.assert(websitesOrderPackges3.equals(websitesOrderPackges4));
        System.assert(websitesOrderPackges4.equals(websitesOrderPackges3));
        System.assert(websitesOrderPackges3.equals(websitesOrderPackges3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerWebsitesOrderPackges websitesOrderPackges1 = IntServerWebsitesOrderPackges.getExample();
        IntServerWebsitesOrderPackges websitesOrderPackges2 = IntServerWebsitesOrderPackges.getExample();
        IntServerWebsitesOrderPackges websitesOrderPackges3 = new IntServerWebsitesOrderPackges();
        IntServerWebsitesOrderPackges websitesOrderPackges4 = new IntServerWebsitesOrderPackges();

        System.assert(websitesOrderPackges1.equals(websitesOrderPackges2));
        System.assert(websitesOrderPackges2.equals(websitesOrderPackges1));
        System.assert(websitesOrderPackges3.equals(websitesOrderPackges4));
        System.assert(websitesOrderPackges4.equals(websitesOrderPackges3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerWebsitesOrderPackges websitesOrderPackges1 = IntServerWebsitesOrderPackges.getExample();
        IntServerWebsitesOrderPackges websitesOrderPackges2 = new IntServerWebsitesOrderPackges();

        System.assertEquals(false, websitesOrderPackges1.equals('foo'));
        System.assertEquals(false, websitesOrderPackges2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerWebsitesOrderPackges websitesOrderPackges1 = IntServerWebsitesOrderPackges.getExample();
        IntServerWebsitesOrderPackges websitesOrderPackges2 = new IntServerWebsitesOrderPackges();
        IntServerWebsitesOrderPackges websitesOrderPackges3;

        System.assertEquals(false, websitesOrderPackges1.equals(websitesOrderPackges3));
        System.assertEquals(false, websitesOrderPackges2.equals(websitesOrderPackges3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerWebsitesOrderPackges websitesOrderPackges1 = IntServerWebsitesOrderPackges.getExample();
        IntServerWebsitesOrderPackges websitesOrderPackges2 = new IntServerWebsitesOrderPackges();

        System.assertEquals(websitesOrderPackges1.hashCode(), websitesOrderPackges1.hashCode());
        System.assertEquals(websitesOrderPackges2.hashCode(), websitesOrderPackges2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerWebsitesOrderPackges websitesOrderPackges1 = IntServerWebsitesOrderPackges.getExample();
        IntServerWebsitesOrderPackges websitesOrderPackges2 = IntServerWebsitesOrderPackges.getExample();
        IntServerWebsitesOrderPackges websitesOrderPackges3 = new IntServerWebsitesOrderPackges();
        IntServerWebsitesOrderPackges websitesOrderPackges4 = new IntServerWebsitesOrderPackges();

        System.assert(websitesOrderPackges1.equals(websitesOrderPackges2));
        System.assert(websitesOrderPackges3.equals(websitesOrderPackges4));
        System.assertEquals(websitesOrderPackges1.hashCode(), websitesOrderPackges2.hashCode());
        System.assertEquals(websitesOrderPackges3.hashCode(), websitesOrderPackges4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerWebsitesOrderPackges websitesOrderPackges = new IntServerWebsitesOrderPackges();
        Map<String, String> x-property-mappings = websitesOrderPackges.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('11440'));
    }
}
