@isTest
private class IntServerHomeDetailsModulesLicensesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerHomeDetailsModulesLicenses homeDetailsModulesLicenses1 = IntServerHomeDetailsModulesLicenses.getExample();
        IntServerHomeDetailsModulesLicenses homeDetailsModulesLicenses2 = homeDetailsModulesLicenses1;
        IntServerHomeDetailsModulesLicenses homeDetailsModulesLicenses3 = new IntServerHomeDetailsModulesLicenses();
        IntServerHomeDetailsModulesLicenses homeDetailsModulesLicenses4 = homeDetailsModulesLicenses3;

        System.assert(homeDetailsModulesLicenses1.equals(homeDetailsModulesLicenses2));
        System.assert(homeDetailsModulesLicenses2.equals(homeDetailsModulesLicenses1));
        System.assert(homeDetailsModulesLicenses1.equals(homeDetailsModulesLicenses1));
        System.assert(homeDetailsModulesLicenses3.equals(homeDetailsModulesLicenses4));
        System.assert(homeDetailsModulesLicenses4.equals(homeDetailsModulesLicenses3));
        System.assert(homeDetailsModulesLicenses3.equals(homeDetailsModulesLicenses3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerHomeDetailsModulesLicenses homeDetailsModulesLicenses1 = IntServerHomeDetailsModulesLicenses.getExample();
        IntServerHomeDetailsModulesLicenses homeDetailsModulesLicenses2 = IntServerHomeDetailsModulesLicenses.getExample();
        IntServerHomeDetailsModulesLicenses homeDetailsModulesLicenses3 = new IntServerHomeDetailsModulesLicenses();
        IntServerHomeDetailsModulesLicenses homeDetailsModulesLicenses4 = new IntServerHomeDetailsModulesLicenses();

        System.assert(homeDetailsModulesLicenses1.equals(homeDetailsModulesLicenses2));
        System.assert(homeDetailsModulesLicenses2.equals(homeDetailsModulesLicenses1));
        System.assert(homeDetailsModulesLicenses3.equals(homeDetailsModulesLicenses4));
        System.assert(homeDetailsModulesLicenses4.equals(homeDetailsModulesLicenses3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerHomeDetailsModulesLicenses homeDetailsModulesLicenses1 = IntServerHomeDetailsModulesLicenses.getExample();
        IntServerHomeDetailsModulesLicenses homeDetailsModulesLicenses2 = new IntServerHomeDetailsModulesLicenses();

        System.assertEquals(false, homeDetailsModulesLicenses1.equals('foo'));
        System.assertEquals(false, homeDetailsModulesLicenses2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerHomeDetailsModulesLicenses homeDetailsModulesLicenses1 = IntServerHomeDetailsModulesLicenses.getExample();
        IntServerHomeDetailsModulesLicenses homeDetailsModulesLicenses2 = new IntServerHomeDetailsModulesLicenses();
        IntServerHomeDetailsModulesLicenses homeDetailsModulesLicenses3;

        System.assertEquals(false, homeDetailsModulesLicenses1.equals(homeDetailsModulesLicenses3));
        System.assertEquals(false, homeDetailsModulesLicenses2.equals(homeDetailsModulesLicenses3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerHomeDetailsModulesLicenses homeDetailsModulesLicenses1 = IntServerHomeDetailsModulesLicenses.getExample();
        IntServerHomeDetailsModulesLicenses homeDetailsModulesLicenses2 = new IntServerHomeDetailsModulesLicenses();

        System.assertEquals(homeDetailsModulesLicenses1.hashCode(), homeDetailsModulesLicenses1.hashCode());
        System.assertEquals(homeDetailsModulesLicenses2.hashCode(), homeDetailsModulesLicenses2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerHomeDetailsModulesLicenses homeDetailsModulesLicenses1 = IntServerHomeDetailsModulesLicenses.getExample();
        IntServerHomeDetailsModulesLicenses homeDetailsModulesLicenses2 = IntServerHomeDetailsModulesLicenses.getExample();
        IntServerHomeDetailsModulesLicenses homeDetailsModulesLicenses3 = new IntServerHomeDetailsModulesLicenses();
        IntServerHomeDetailsModulesLicenses homeDetailsModulesLicenses4 = new IntServerHomeDetailsModulesLicenses();

        System.assert(homeDetailsModulesLicenses1.equals(homeDetailsModulesLicenses2));
        System.assert(homeDetailsModulesLicenses3.equals(homeDetailsModulesLicenses4));
        System.assertEquals(homeDetailsModulesLicenses1.hashCode(), homeDetailsModulesLicenses2.hashCode());
        System.assertEquals(homeDetailsModulesLicenses3.hashCode(), homeDetailsModulesLicenses4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerHomeDetailsModulesLicenses homeDetailsModulesLicenses = new IntServerHomeDetailsModulesLicenses();
        Map<String, String> x-property-mappings = homeDetailsModulesLicenses.getx-property-mappings();
        System.assertEquals('viewLink', x-property-mappings.get('view_link'));
        System.assertEquals('buyLink', x-property-mappings.get('buy_link'));
        System.assertEquals('listLink', x-property-mappings.get('list_link'));
    }
}
