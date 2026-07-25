@isTest
private class IntServerHomeServicesLicensesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerHomeServicesLicenses homeServicesLicenses1 = IntServerHomeServicesLicenses.getExample();
        IntServerHomeServicesLicenses homeServicesLicenses2 = homeServicesLicenses1;
        IntServerHomeServicesLicenses homeServicesLicenses3 = new IntServerHomeServicesLicenses();
        IntServerHomeServicesLicenses homeServicesLicenses4 = homeServicesLicenses3;

        System.assert(homeServicesLicenses1.equals(homeServicesLicenses2));
        System.assert(homeServicesLicenses2.equals(homeServicesLicenses1));
        System.assert(homeServicesLicenses1.equals(homeServicesLicenses1));
        System.assert(homeServicesLicenses3.equals(homeServicesLicenses4));
        System.assert(homeServicesLicenses4.equals(homeServicesLicenses3));
        System.assert(homeServicesLicenses3.equals(homeServicesLicenses3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerHomeServicesLicenses homeServicesLicenses1 = IntServerHomeServicesLicenses.getExample();
        IntServerHomeServicesLicenses homeServicesLicenses2 = IntServerHomeServicesLicenses.getExample();
        IntServerHomeServicesLicenses homeServicesLicenses3 = new IntServerHomeServicesLicenses();
        IntServerHomeServicesLicenses homeServicesLicenses4 = new IntServerHomeServicesLicenses();

        System.assert(homeServicesLicenses1.equals(homeServicesLicenses2));
        System.assert(homeServicesLicenses2.equals(homeServicesLicenses1));
        System.assert(homeServicesLicenses3.equals(homeServicesLicenses4));
        System.assert(homeServicesLicenses4.equals(homeServicesLicenses3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerHomeServicesLicenses homeServicesLicenses1 = IntServerHomeServicesLicenses.getExample();
        IntServerHomeServicesLicenses homeServicesLicenses2 = new IntServerHomeServicesLicenses();

        System.assertEquals(false, homeServicesLicenses1.equals('foo'));
        System.assertEquals(false, homeServicesLicenses2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerHomeServicesLicenses homeServicesLicenses1 = IntServerHomeServicesLicenses.getExample();
        IntServerHomeServicesLicenses homeServicesLicenses2 = new IntServerHomeServicesLicenses();
        IntServerHomeServicesLicenses homeServicesLicenses3;

        System.assertEquals(false, homeServicesLicenses1.equals(homeServicesLicenses3));
        System.assertEquals(false, homeServicesLicenses2.equals(homeServicesLicenses3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerHomeServicesLicenses homeServicesLicenses1 = IntServerHomeServicesLicenses.getExample();
        IntServerHomeServicesLicenses homeServicesLicenses2 = new IntServerHomeServicesLicenses();

        System.assertEquals(homeServicesLicenses1.hashCode(), homeServicesLicenses1.hashCode());
        System.assertEquals(homeServicesLicenses2.hashCode(), homeServicesLicenses2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerHomeServicesLicenses homeServicesLicenses1 = IntServerHomeServicesLicenses.getExample();
        IntServerHomeServicesLicenses homeServicesLicenses2 = IntServerHomeServicesLicenses.getExample();
        IntServerHomeServicesLicenses homeServicesLicenses3 = new IntServerHomeServicesLicenses();
        IntServerHomeServicesLicenses homeServicesLicenses4 = new IntServerHomeServicesLicenses();

        System.assert(homeServicesLicenses1.equals(homeServicesLicenses2));
        System.assert(homeServicesLicenses3.equals(homeServicesLicenses4));
        System.assertEquals(homeServicesLicenses1.hashCode(), homeServicesLicenses2.hashCode());
        System.assertEquals(homeServicesLicenses3.hashCode(), homeServicesLicenses4.hashCode());
    }
}
