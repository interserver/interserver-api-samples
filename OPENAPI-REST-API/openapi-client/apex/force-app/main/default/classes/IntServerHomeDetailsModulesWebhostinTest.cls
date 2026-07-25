@isTest
private class IntServerHomeDetailsModulesWebhostinTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerHomeDetailsModulesWebhostin homeDetailsModulesWebhosting1 = IntServerHomeDetailsModulesWebhostin.getExample();
        IntServerHomeDetailsModulesWebhostin homeDetailsModulesWebhosting2 = homeDetailsModulesWebhosting1;
        IntServerHomeDetailsModulesWebhostin homeDetailsModulesWebhosting3 = new IntServerHomeDetailsModulesWebhostin();
        IntServerHomeDetailsModulesWebhostin homeDetailsModulesWebhosting4 = homeDetailsModulesWebhosting3;

        System.assert(homeDetailsModulesWebhosting1.equals(homeDetailsModulesWebhosting2));
        System.assert(homeDetailsModulesWebhosting2.equals(homeDetailsModulesWebhosting1));
        System.assert(homeDetailsModulesWebhosting1.equals(homeDetailsModulesWebhosting1));
        System.assert(homeDetailsModulesWebhosting3.equals(homeDetailsModulesWebhosting4));
        System.assert(homeDetailsModulesWebhosting4.equals(homeDetailsModulesWebhosting3));
        System.assert(homeDetailsModulesWebhosting3.equals(homeDetailsModulesWebhosting3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerHomeDetailsModulesWebhostin homeDetailsModulesWebhosting1 = IntServerHomeDetailsModulesWebhostin.getExample();
        IntServerHomeDetailsModulesWebhostin homeDetailsModulesWebhosting2 = IntServerHomeDetailsModulesWebhostin.getExample();
        IntServerHomeDetailsModulesWebhostin homeDetailsModulesWebhosting3 = new IntServerHomeDetailsModulesWebhostin();
        IntServerHomeDetailsModulesWebhostin homeDetailsModulesWebhosting4 = new IntServerHomeDetailsModulesWebhostin();

        System.assert(homeDetailsModulesWebhosting1.equals(homeDetailsModulesWebhosting2));
        System.assert(homeDetailsModulesWebhosting2.equals(homeDetailsModulesWebhosting1));
        System.assert(homeDetailsModulesWebhosting3.equals(homeDetailsModulesWebhosting4));
        System.assert(homeDetailsModulesWebhosting4.equals(homeDetailsModulesWebhosting3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerHomeDetailsModulesWebhostin homeDetailsModulesWebhosting1 = IntServerHomeDetailsModulesWebhostin.getExample();
        IntServerHomeDetailsModulesWebhostin homeDetailsModulesWebhosting2 = new IntServerHomeDetailsModulesWebhostin();

        System.assertEquals(false, homeDetailsModulesWebhosting1.equals('foo'));
        System.assertEquals(false, homeDetailsModulesWebhosting2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerHomeDetailsModulesWebhostin homeDetailsModulesWebhosting1 = IntServerHomeDetailsModulesWebhostin.getExample();
        IntServerHomeDetailsModulesWebhostin homeDetailsModulesWebhosting2 = new IntServerHomeDetailsModulesWebhostin();
        IntServerHomeDetailsModulesWebhostin homeDetailsModulesWebhosting3;

        System.assertEquals(false, homeDetailsModulesWebhosting1.equals(homeDetailsModulesWebhosting3));
        System.assertEquals(false, homeDetailsModulesWebhosting2.equals(homeDetailsModulesWebhosting3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerHomeDetailsModulesWebhostin homeDetailsModulesWebhosting1 = IntServerHomeDetailsModulesWebhostin.getExample();
        IntServerHomeDetailsModulesWebhostin homeDetailsModulesWebhosting2 = new IntServerHomeDetailsModulesWebhostin();

        System.assertEquals(homeDetailsModulesWebhosting1.hashCode(), homeDetailsModulesWebhosting1.hashCode());
        System.assertEquals(homeDetailsModulesWebhosting2.hashCode(), homeDetailsModulesWebhosting2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerHomeDetailsModulesWebhostin homeDetailsModulesWebhosting1 = IntServerHomeDetailsModulesWebhostin.getExample();
        IntServerHomeDetailsModulesWebhostin homeDetailsModulesWebhosting2 = IntServerHomeDetailsModulesWebhostin.getExample();
        IntServerHomeDetailsModulesWebhostin homeDetailsModulesWebhosting3 = new IntServerHomeDetailsModulesWebhostin();
        IntServerHomeDetailsModulesWebhostin homeDetailsModulesWebhosting4 = new IntServerHomeDetailsModulesWebhostin();

        System.assert(homeDetailsModulesWebhosting1.equals(homeDetailsModulesWebhosting2));
        System.assert(homeDetailsModulesWebhosting3.equals(homeDetailsModulesWebhosting4));
        System.assertEquals(homeDetailsModulesWebhosting1.hashCode(), homeDetailsModulesWebhosting2.hashCode());
        System.assertEquals(homeDetailsModulesWebhosting3.hashCode(), homeDetailsModulesWebhosting4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerHomeDetailsModulesWebhostin homeDetailsModulesWebhosting = new IntServerHomeDetailsModulesWebhostin();
        Map<String, String> x-property-mappings = homeDetailsModulesWebhosting.getx-property-mappings();
        System.assertEquals('viewLink', x-property-mappings.get('view_link'));
        System.assertEquals('buyLink', x-property-mappings.get('buy_link'));
        System.assertEquals('listLink', x-property-mappings.get('list_link'));
    }
}
