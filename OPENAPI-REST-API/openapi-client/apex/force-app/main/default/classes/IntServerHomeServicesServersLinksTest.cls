@isTest
private class IntServerHomeServicesServersLinksTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerHomeServicesServersLinks homeServicesServersLinks1 = IntServerHomeServicesServersLinks.getExample();
        IntServerHomeServicesServersLinks homeServicesServersLinks2 = homeServicesServersLinks1;
        IntServerHomeServicesServersLinks homeServicesServersLinks3 = new IntServerHomeServicesServersLinks();
        IntServerHomeServicesServersLinks homeServicesServersLinks4 = homeServicesServersLinks3;

        System.assert(homeServicesServersLinks1.equals(homeServicesServersLinks2));
        System.assert(homeServicesServersLinks2.equals(homeServicesServersLinks1));
        System.assert(homeServicesServersLinks1.equals(homeServicesServersLinks1));
        System.assert(homeServicesServersLinks3.equals(homeServicesServersLinks4));
        System.assert(homeServicesServersLinks4.equals(homeServicesServersLinks3));
        System.assert(homeServicesServersLinks3.equals(homeServicesServersLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerHomeServicesServersLinks homeServicesServersLinks1 = IntServerHomeServicesServersLinks.getExample();
        IntServerHomeServicesServersLinks homeServicesServersLinks2 = IntServerHomeServicesServersLinks.getExample();
        IntServerHomeServicesServersLinks homeServicesServersLinks3 = new IntServerHomeServicesServersLinks();
        IntServerHomeServicesServersLinks homeServicesServersLinks4 = new IntServerHomeServicesServersLinks();

        System.assert(homeServicesServersLinks1.equals(homeServicesServersLinks2));
        System.assert(homeServicesServersLinks2.equals(homeServicesServersLinks1));
        System.assert(homeServicesServersLinks3.equals(homeServicesServersLinks4));
        System.assert(homeServicesServersLinks4.equals(homeServicesServersLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerHomeServicesServersLinks homeServicesServersLinks1 = IntServerHomeServicesServersLinks.getExample();
        IntServerHomeServicesServersLinks homeServicesServersLinks2 = new IntServerHomeServicesServersLinks();

        System.assertEquals(false, homeServicesServersLinks1.equals('foo'));
        System.assertEquals(false, homeServicesServersLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerHomeServicesServersLinks homeServicesServersLinks1 = IntServerHomeServicesServersLinks.getExample();
        IntServerHomeServicesServersLinks homeServicesServersLinks2 = new IntServerHomeServicesServersLinks();
        IntServerHomeServicesServersLinks homeServicesServersLinks3;

        System.assertEquals(false, homeServicesServersLinks1.equals(homeServicesServersLinks3));
        System.assertEquals(false, homeServicesServersLinks2.equals(homeServicesServersLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerHomeServicesServersLinks homeServicesServersLinks1 = IntServerHomeServicesServersLinks.getExample();
        IntServerHomeServicesServersLinks homeServicesServersLinks2 = new IntServerHomeServicesServersLinks();

        System.assertEquals(homeServicesServersLinks1.hashCode(), homeServicesServersLinks1.hashCode());
        System.assertEquals(homeServicesServersLinks2.hashCode(), homeServicesServersLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerHomeServicesServersLinks homeServicesServersLinks1 = IntServerHomeServicesServersLinks.getExample();
        IntServerHomeServicesServersLinks homeServicesServersLinks2 = IntServerHomeServicesServersLinks.getExample();
        IntServerHomeServicesServersLinks homeServicesServersLinks3 = new IntServerHomeServicesServersLinks();
        IntServerHomeServicesServersLinks homeServicesServersLinks4 = new IntServerHomeServicesServersLinks();

        System.assert(homeServicesServersLinks1.equals(homeServicesServersLinks2));
        System.assert(homeServicesServersLinks3.equals(homeServicesServersLinks4));
        System.assertEquals(homeServicesServersLinks1.hashCode(), homeServicesServersLinks2.hashCode());
        System.assertEquals(homeServicesServersLinks3.hashCode(), homeServicesServersLinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerHomeServicesServersLinks homeServicesServersLinks = new IntServerHomeServicesServersLinks();
        Map<String, String> x-property-mappings = homeServicesServersLinks.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('16058'));
    }
}
