@isTest
private class IntServerHomeServicesLicensesLinksTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerHomeServicesLicensesLinks homeServicesLicensesLinks1 = IntServerHomeServicesLicensesLinks.getExample();
        IntServerHomeServicesLicensesLinks homeServicesLicensesLinks2 = homeServicesLicensesLinks1;
        IntServerHomeServicesLicensesLinks homeServicesLicensesLinks3 = new IntServerHomeServicesLicensesLinks();
        IntServerHomeServicesLicensesLinks homeServicesLicensesLinks4 = homeServicesLicensesLinks3;

        System.assert(homeServicesLicensesLinks1.equals(homeServicesLicensesLinks2));
        System.assert(homeServicesLicensesLinks2.equals(homeServicesLicensesLinks1));
        System.assert(homeServicesLicensesLinks1.equals(homeServicesLicensesLinks1));
        System.assert(homeServicesLicensesLinks3.equals(homeServicesLicensesLinks4));
        System.assert(homeServicesLicensesLinks4.equals(homeServicesLicensesLinks3));
        System.assert(homeServicesLicensesLinks3.equals(homeServicesLicensesLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerHomeServicesLicensesLinks homeServicesLicensesLinks1 = IntServerHomeServicesLicensesLinks.getExample();
        IntServerHomeServicesLicensesLinks homeServicesLicensesLinks2 = IntServerHomeServicesLicensesLinks.getExample();
        IntServerHomeServicesLicensesLinks homeServicesLicensesLinks3 = new IntServerHomeServicesLicensesLinks();
        IntServerHomeServicesLicensesLinks homeServicesLicensesLinks4 = new IntServerHomeServicesLicensesLinks();

        System.assert(homeServicesLicensesLinks1.equals(homeServicesLicensesLinks2));
        System.assert(homeServicesLicensesLinks2.equals(homeServicesLicensesLinks1));
        System.assert(homeServicesLicensesLinks3.equals(homeServicesLicensesLinks4));
        System.assert(homeServicesLicensesLinks4.equals(homeServicesLicensesLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerHomeServicesLicensesLinks homeServicesLicensesLinks1 = IntServerHomeServicesLicensesLinks.getExample();
        IntServerHomeServicesLicensesLinks homeServicesLicensesLinks2 = new IntServerHomeServicesLicensesLinks();

        System.assertEquals(false, homeServicesLicensesLinks1.equals('foo'));
        System.assertEquals(false, homeServicesLicensesLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerHomeServicesLicensesLinks homeServicesLicensesLinks1 = IntServerHomeServicesLicensesLinks.getExample();
        IntServerHomeServicesLicensesLinks homeServicesLicensesLinks2 = new IntServerHomeServicesLicensesLinks();
        IntServerHomeServicesLicensesLinks homeServicesLicensesLinks3;

        System.assertEquals(false, homeServicesLicensesLinks1.equals(homeServicesLicensesLinks3));
        System.assertEquals(false, homeServicesLicensesLinks2.equals(homeServicesLicensesLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerHomeServicesLicensesLinks homeServicesLicensesLinks1 = IntServerHomeServicesLicensesLinks.getExample();
        IntServerHomeServicesLicensesLinks homeServicesLicensesLinks2 = new IntServerHomeServicesLicensesLinks();

        System.assertEquals(homeServicesLicensesLinks1.hashCode(), homeServicesLicensesLinks1.hashCode());
        System.assertEquals(homeServicesLicensesLinks2.hashCode(), homeServicesLicensesLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerHomeServicesLicensesLinks homeServicesLicensesLinks1 = IntServerHomeServicesLicensesLinks.getExample();
        IntServerHomeServicesLicensesLinks homeServicesLicensesLinks2 = IntServerHomeServicesLicensesLinks.getExample();
        IntServerHomeServicesLicensesLinks homeServicesLicensesLinks3 = new IntServerHomeServicesLicensesLinks();
        IntServerHomeServicesLicensesLinks homeServicesLicensesLinks4 = new IntServerHomeServicesLicensesLinks();

        System.assert(homeServicesLicensesLinks1.equals(homeServicesLicensesLinks2));
        System.assert(homeServicesLicensesLinks3.equals(homeServicesLicensesLinks4));
        System.assertEquals(homeServicesLicensesLinks1.hashCode(), homeServicesLicensesLinks2.hashCode());
        System.assertEquals(homeServicesLicensesLinks3.hashCode(), homeServicesLicensesLinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerHomeServicesLicensesLinks homeServicesLicensesLinks = new IntServerHomeServicesLicensesLinks();
        Map<String, String> x-property-mappings = homeServicesLicensesLinks.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('386522'));
    }
}
