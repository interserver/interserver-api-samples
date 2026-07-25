@isTest
private class IntServerHomeServicesVpsLinksTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerHomeServicesVpsLinks homeServicesVpsLinks1 = IntServerHomeServicesVpsLinks.getExample();
        IntServerHomeServicesVpsLinks homeServicesVpsLinks2 = homeServicesVpsLinks1;
        IntServerHomeServicesVpsLinks homeServicesVpsLinks3 = new IntServerHomeServicesVpsLinks();
        IntServerHomeServicesVpsLinks homeServicesVpsLinks4 = homeServicesVpsLinks3;

        System.assert(homeServicesVpsLinks1.equals(homeServicesVpsLinks2));
        System.assert(homeServicesVpsLinks2.equals(homeServicesVpsLinks1));
        System.assert(homeServicesVpsLinks1.equals(homeServicesVpsLinks1));
        System.assert(homeServicesVpsLinks3.equals(homeServicesVpsLinks4));
        System.assert(homeServicesVpsLinks4.equals(homeServicesVpsLinks3));
        System.assert(homeServicesVpsLinks3.equals(homeServicesVpsLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerHomeServicesVpsLinks homeServicesVpsLinks1 = IntServerHomeServicesVpsLinks.getExample();
        IntServerHomeServicesVpsLinks homeServicesVpsLinks2 = IntServerHomeServicesVpsLinks.getExample();
        IntServerHomeServicesVpsLinks homeServicesVpsLinks3 = new IntServerHomeServicesVpsLinks();
        IntServerHomeServicesVpsLinks homeServicesVpsLinks4 = new IntServerHomeServicesVpsLinks();

        System.assert(homeServicesVpsLinks1.equals(homeServicesVpsLinks2));
        System.assert(homeServicesVpsLinks2.equals(homeServicesVpsLinks1));
        System.assert(homeServicesVpsLinks3.equals(homeServicesVpsLinks4));
        System.assert(homeServicesVpsLinks4.equals(homeServicesVpsLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerHomeServicesVpsLinks homeServicesVpsLinks1 = IntServerHomeServicesVpsLinks.getExample();
        IntServerHomeServicesVpsLinks homeServicesVpsLinks2 = new IntServerHomeServicesVpsLinks();

        System.assertEquals(false, homeServicesVpsLinks1.equals('foo'));
        System.assertEquals(false, homeServicesVpsLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerHomeServicesVpsLinks homeServicesVpsLinks1 = IntServerHomeServicesVpsLinks.getExample();
        IntServerHomeServicesVpsLinks homeServicesVpsLinks2 = new IntServerHomeServicesVpsLinks();
        IntServerHomeServicesVpsLinks homeServicesVpsLinks3;

        System.assertEquals(false, homeServicesVpsLinks1.equals(homeServicesVpsLinks3));
        System.assertEquals(false, homeServicesVpsLinks2.equals(homeServicesVpsLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerHomeServicesVpsLinks homeServicesVpsLinks1 = IntServerHomeServicesVpsLinks.getExample();
        IntServerHomeServicesVpsLinks homeServicesVpsLinks2 = new IntServerHomeServicesVpsLinks();

        System.assertEquals(homeServicesVpsLinks1.hashCode(), homeServicesVpsLinks1.hashCode());
        System.assertEquals(homeServicesVpsLinks2.hashCode(), homeServicesVpsLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerHomeServicesVpsLinks homeServicesVpsLinks1 = IntServerHomeServicesVpsLinks.getExample();
        IntServerHomeServicesVpsLinks homeServicesVpsLinks2 = IntServerHomeServicesVpsLinks.getExample();
        IntServerHomeServicesVpsLinks homeServicesVpsLinks3 = new IntServerHomeServicesVpsLinks();
        IntServerHomeServicesVpsLinks homeServicesVpsLinks4 = new IntServerHomeServicesVpsLinks();

        System.assert(homeServicesVpsLinks1.equals(homeServicesVpsLinks2));
        System.assert(homeServicesVpsLinks3.equals(homeServicesVpsLinks4));
        System.assertEquals(homeServicesVpsLinks1.hashCode(), homeServicesVpsLinks2.hashCode());
        System.assertEquals(homeServicesVpsLinks3.hashCode(), homeServicesVpsLinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerHomeServicesVpsLinks homeServicesVpsLinks = new IntServerHomeServicesVpsLinks();
        Map<String, String> x-property-mappings = homeServicesVpsLinks.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('465503'));
        System.assertEquals('', x-property-mappings.get('2500081'));
        System.assertEquals('', x-property-mappings.get('2578866'));
    }
}
