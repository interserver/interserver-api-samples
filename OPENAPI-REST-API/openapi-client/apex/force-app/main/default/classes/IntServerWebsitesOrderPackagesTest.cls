@isTest
private class IntServerWebsitesOrderPackagesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerWebsitesOrderPackages websitesOrderPackages1 = IntServerWebsitesOrderPackages.getExample();
        IntServerWebsitesOrderPackages websitesOrderPackages2 = websitesOrderPackages1;
        IntServerWebsitesOrderPackages websitesOrderPackages3 = new IntServerWebsitesOrderPackages();
        IntServerWebsitesOrderPackages websitesOrderPackages4 = websitesOrderPackages3;

        System.assert(websitesOrderPackages1.equals(websitesOrderPackages2));
        System.assert(websitesOrderPackages2.equals(websitesOrderPackages1));
        System.assert(websitesOrderPackages1.equals(websitesOrderPackages1));
        System.assert(websitesOrderPackages3.equals(websitesOrderPackages4));
        System.assert(websitesOrderPackages4.equals(websitesOrderPackages3));
        System.assert(websitesOrderPackages3.equals(websitesOrderPackages3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerWebsitesOrderPackages websitesOrderPackages1 = IntServerWebsitesOrderPackages.getExample();
        IntServerWebsitesOrderPackages websitesOrderPackages2 = IntServerWebsitesOrderPackages.getExample();
        IntServerWebsitesOrderPackages websitesOrderPackages3 = new IntServerWebsitesOrderPackages();
        IntServerWebsitesOrderPackages websitesOrderPackages4 = new IntServerWebsitesOrderPackages();

        System.assert(websitesOrderPackages1.equals(websitesOrderPackages2));
        System.assert(websitesOrderPackages2.equals(websitesOrderPackages1));
        System.assert(websitesOrderPackages3.equals(websitesOrderPackages4));
        System.assert(websitesOrderPackages4.equals(websitesOrderPackages3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerWebsitesOrderPackages websitesOrderPackages1 = IntServerWebsitesOrderPackages.getExample();
        IntServerWebsitesOrderPackages websitesOrderPackages2 = new IntServerWebsitesOrderPackages();

        System.assertEquals(false, websitesOrderPackages1.equals('foo'));
        System.assertEquals(false, websitesOrderPackages2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerWebsitesOrderPackages websitesOrderPackages1 = IntServerWebsitesOrderPackages.getExample();
        IntServerWebsitesOrderPackages websitesOrderPackages2 = new IntServerWebsitesOrderPackages();
        IntServerWebsitesOrderPackages websitesOrderPackages3;

        System.assertEquals(false, websitesOrderPackages1.equals(websitesOrderPackages3));
        System.assertEquals(false, websitesOrderPackages2.equals(websitesOrderPackages3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerWebsitesOrderPackages websitesOrderPackages1 = IntServerWebsitesOrderPackages.getExample();
        IntServerWebsitesOrderPackages websitesOrderPackages2 = new IntServerWebsitesOrderPackages();

        System.assertEquals(websitesOrderPackages1.hashCode(), websitesOrderPackages1.hashCode());
        System.assertEquals(websitesOrderPackages2.hashCode(), websitesOrderPackages2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerWebsitesOrderPackages websitesOrderPackages1 = IntServerWebsitesOrderPackages.getExample();
        IntServerWebsitesOrderPackages websitesOrderPackages2 = IntServerWebsitesOrderPackages.getExample();
        IntServerWebsitesOrderPackages websitesOrderPackages3 = new IntServerWebsitesOrderPackages();
        IntServerWebsitesOrderPackages websitesOrderPackages4 = new IntServerWebsitesOrderPackages();

        System.assert(websitesOrderPackages1.equals(websitesOrderPackages2));
        System.assert(websitesOrderPackages3.equals(websitesOrderPackages4));
        System.assertEquals(websitesOrderPackages1.hashCode(), websitesOrderPackages2.hashCode());
        System.assertEquals(websitesOrderPackages3.hashCode(), websitesOrderPackages4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerWebsitesOrderPackages websitesOrderPackages = new IntServerWebsitesOrderPackages();
        Map<String, String> x-property-mappings = websitesOrderPackages.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('11447'));
    }
}
