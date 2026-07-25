@isTest
private class IntServerHomeServicesWebhostingLinksTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerHomeServicesWebhostingLinks homeServicesWebhostingLinks1 = IntServerHomeServicesWebhostingLinks.getExample();
        IntServerHomeServicesWebhostingLinks homeServicesWebhostingLinks2 = homeServicesWebhostingLinks1;
        IntServerHomeServicesWebhostingLinks homeServicesWebhostingLinks3 = new IntServerHomeServicesWebhostingLinks();
        IntServerHomeServicesWebhostingLinks homeServicesWebhostingLinks4 = homeServicesWebhostingLinks3;

        System.assert(homeServicesWebhostingLinks1.equals(homeServicesWebhostingLinks2));
        System.assert(homeServicesWebhostingLinks2.equals(homeServicesWebhostingLinks1));
        System.assert(homeServicesWebhostingLinks1.equals(homeServicesWebhostingLinks1));
        System.assert(homeServicesWebhostingLinks3.equals(homeServicesWebhostingLinks4));
        System.assert(homeServicesWebhostingLinks4.equals(homeServicesWebhostingLinks3));
        System.assert(homeServicesWebhostingLinks3.equals(homeServicesWebhostingLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerHomeServicesWebhostingLinks homeServicesWebhostingLinks1 = IntServerHomeServicesWebhostingLinks.getExample();
        IntServerHomeServicesWebhostingLinks homeServicesWebhostingLinks2 = IntServerHomeServicesWebhostingLinks.getExample();
        IntServerHomeServicesWebhostingLinks homeServicesWebhostingLinks3 = new IntServerHomeServicesWebhostingLinks();
        IntServerHomeServicesWebhostingLinks homeServicesWebhostingLinks4 = new IntServerHomeServicesWebhostingLinks();

        System.assert(homeServicesWebhostingLinks1.equals(homeServicesWebhostingLinks2));
        System.assert(homeServicesWebhostingLinks2.equals(homeServicesWebhostingLinks1));
        System.assert(homeServicesWebhostingLinks3.equals(homeServicesWebhostingLinks4));
        System.assert(homeServicesWebhostingLinks4.equals(homeServicesWebhostingLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerHomeServicesWebhostingLinks homeServicesWebhostingLinks1 = IntServerHomeServicesWebhostingLinks.getExample();
        IntServerHomeServicesWebhostingLinks homeServicesWebhostingLinks2 = new IntServerHomeServicesWebhostingLinks();

        System.assertEquals(false, homeServicesWebhostingLinks1.equals('foo'));
        System.assertEquals(false, homeServicesWebhostingLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerHomeServicesWebhostingLinks homeServicesWebhostingLinks1 = IntServerHomeServicesWebhostingLinks.getExample();
        IntServerHomeServicesWebhostingLinks homeServicesWebhostingLinks2 = new IntServerHomeServicesWebhostingLinks();
        IntServerHomeServicesWebhostingLinks homeServicesWebhostingLinks3;

        System.assertEquals(false, homeServicesWebhostingLinks1.equals(homeServicesWebhostingLinks3));
        System.assertEquals(false, homeServicesWebhostingLinks2.equals(homeServicesWebhostingLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerHomeServicesWebhostingLinks homeServicesWebhostingLinks1 = IntServerHomeServicesWebhostingLinks.getExample();
        IntServerHomeServicesWebhostingLinks homeServicesWebhostingLinks2 = new IntServerHomeServicesWebhostingLinks();

        System.assertEquals(homeServicesWebhostingLinks1.hashCode(), homeServicesWebhostingLinks1.hashCode());
        System.assertEquals(homeServicesWebhostingLinks2.hashCode(), homeServicesWebhostingLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerHomeServicesWebhostingLinks homeServicesWebhostingLinks1 = IntServerHomeServicesWebhostingLinks.getExample();
        IntServerHomeServicesWebhostingLinks homeServicesWebhostingLinks2 = IntServerHomeServicesWebhostingLinks.getExample();
        IntServerHomeServicesWebhostingLinks homeServicesWebhostingLinks3 = new IntServerHomeServicesWebhostingLinks();
        IntServerHomeServicesWebhostingLinks homeServicesWebhostingLinks4 = new IntServerHomeServicesWebhostingLinks();

        System.assert(homeServicesWebhostingLinks1.equals(homeServicesWebhostingLinks2));
        System.assert(homeServicesWebhostingLinks3.equals(homeServicesWebhostingLinks4));
        System.assertEquals(homeServicesWebhostingLinks1.hashCode(), homeServicesWebhostingLinks2.hashCode());
        System.assertEquals(homeServicesWebhostingLinks3.hashCode(), homeServicesWebhostingLinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerHomeServicesWebhostingLinks homeServicesWebhostingLinks = new IntServerHomeServicesWebhostingLinks();
        Map<String, String> x-property-mappings = homeServicesWebhostingLinks.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('376359'));
        System.assertEquals('', x-property-mappings.get('376473'));
        System.assertEquals('', x-property-mappings.get('386218'));
    }
}
