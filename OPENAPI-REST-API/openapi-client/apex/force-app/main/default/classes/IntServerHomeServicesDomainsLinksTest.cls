@isTest
private class IntServerHomeServicesDomainsLinksTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerHomeServicesDomainsLinks homeServicesDomainsLinks1 = IntServerHomeServicesDomainsLinks.getExample();
        IntServerHomeServicesDomainsLinks homeServicesDomainsLinks2 = homeServicesDomainsLinks1;
        IntServerHomeServicesDomainsLinks homeServicesDomainsLinks3 = new IntServerHomeServicesDomainsLinks();
        IntServerHomeServicesDomainsLinks homeServicesDomainsLinks4 = homeServicesDomainsLinks3;

        System.assert(homeServicesDomainsLinks1.equals(homeServicesDomainsLinks2));
        System.assert(homeServicesDomainsLinks2.equals(homeServicesDomainsLinks1));
        System.assert(homeServicesDomainsLinks1.equals(homeServicesDomainsLinks1));
        System.assert(homeServicesDomainsLinks3.equals(homeServicesDomainsLinks4));
        System.assert(homeServicesDomainsLinks4.equals(homeServicesDomainsLinks3));
        System.assert(homeServicesDomainsLinks3.equals(homeServicesDomainsLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerHomeServicesDomainsLinks homeServicesDomainsLinks1 = IntServerHomeServicesDomainsLinks.getExample();
        IntServerHomeServicesDomainsLinks homeServicesDomainsLinks2 = IntServerHomeServicesDomainsLinks.getExample();
        IntServerHomeServicesDomainsLinks homeServicesDomainsLinks3 = new IntServerHomeServicesDomainsLinks();
        IntServerHomeServicesDomainsLinks homeServicesDomainsLinks4 = new IntServerHomeServicesDomainsLinks();

        System.assert(homeServicesDomainsLinks1.equals(homeServicesDomainsLinks2));
        System.assert(homeServicesDomainsLinks2.equals(homeServicesDomainsLinks1));
        System.assert(homeServicesDomainsLinks3.equals(homeServicesDomainsLinks4));
        System.assert(homeServicesDomainsLinks4.equals(homeServicesDomainsLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerHomeServicesDomainsLinks homeServicesDomainsLinks1 = IntServerHomeServicesDomainsLinks.getExample();
        IntServerHomeServicesDomainsLinks homeServicesDomainsLinks2 = new IntServerHomeServicesDomainsLinks();

        System.assertEquals(false, homeServicesDomainsLinks1.equals('foo'));
        System.assertEquals(false, homeServicesDomainsLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerHomeServicesDomainsLinks homeServicesDomainsLinks1 = IntServerHomeServicesDomainsLinks.getExample();
        IntServerHomeServicesDomainsLinks homeServicesDomainsLinks2 = new IntServerHomeServicesDomainsLinks();
        IntServerHomeServicesDomainsLinks homeServicesDomainsLinks3;

        System.assertEquals(false, homeServicesDomainsLinks1.equals(homeServicesDomainsLinks3));
        System.assertEquals(false, homeServicesDomainsLinks2.equals(homeServicesDomainsLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerHomeServicesDomainsLinks homeServicesDomainsLinks1 = IntServerHomeServicesDomainsLinks.getExample();
        IntServerHomeServicesDomainsLinks homeServicesDomainsLinks2 = new IntServerHomeServicesDomainsLinks();

        System.assertEquals(homeServicesDomainsLinks1.hashCode(), homeServicesDomainsLinks1.hashCode());
        System.assertEquals(homeServicesDomainsLinks2.hashCode(), homeServicesDomainsLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerHomeServicesDomainsLinks homeServicesDomainsLinks1 = IntServerHomeServicesDomainsLinks.getExample();
        IntServerHomeServicesDomainsLinks homeServicesDomainsLinks2 = IntServerHomeServicesDomainsLinks.getExample();
        IntServerHomeServicesDomainsLinks homeServicesDomainsLinks3 = new IntServerHomeServicesDomainsLinks();
        IntServerHomeServicesDomainsLinks homeServicesDomainsLinks4 = new IntServerHomeServicesDomainsLinks();

        System.assert(homeServicesDomainsLinks1.equals(homeServicesDomainsLinks2));
        System.assert(homeServicesDomainsLinks3.equals(homeServicesDomainsLinks4));
        System.assertEquals(homeServicesDomainsLinks1.hashCode(), homeServicesDomainsLinks2.hashCode());
        System.assertEquals(homeServicesDomainsLinks3.hashCode(), homeServicesDomainsLinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerHomeServicesDomainsLinks homeServicesDomainsLinks = new IntServerHomeServicesDomainsLinks();
        Map<String, String> x-property-mappings = homeServicesDomainsLinks.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('376114'));
        System.assertEquals('', x-property-mappings.get('376503'));
        System.assertEquals('', x-property-mappings.get('592337'));
    }
}
