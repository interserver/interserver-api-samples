@isTest
private class IntServerHomeTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerHome home1 = IntServerHome.getExample();
        IntServerHome home2 = home1;
        IntServerHome home3 = new IntServerHome();
        IntServerHome home4 = home3;

        System.assert(home1.equals(home2));
        System.assert(home2.equals(home1));
        System.assert(home1.equals(home1));
        System.assert(home3.equals(home4));
        System.assert(home4.equals(home3));
        System.assert(home3.equals(home3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerHome home1 = IntServerHome.getExample();
        IntServerHome home2 = IntServerHome.getExample();
        IntServerHome home3 = new IntServerHome();
        IntServerHome home4 = new IntServerHome();

        System.assert(home1.equals(home2));
        System.assert(home2.equals(home1));
        System.assert(home3.equals(home4));
        System.assert(home4.equals(home3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerHome home1 = IntServerHome.getExample();
        IntServerHome home2 = new IntServerHome();

        System.assertEquals(false, home1.equals('foo'));
        System.assertEquals(false, home2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerHome home1 = IntServerHome.getExample();
        IntServerHome home2 = new IntServerHome();
        IntServerHome home3;

        System.assertEquals(false, home1.equals(home3));
        System.assertEquals(false, home2.equals(home3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerHome home1 = IntServerHome.getExample();
        IntServerHome home2 = new IntServerHome();

        System.assertEquals(home1.hashCode(), home1.hashCode());
        System.assertEquals(home2.hashCode(), home2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerHome home1 = IntServerHome.getExample();
        IntServerHome home2 = IntServerHome.getExample();
        IntServerHome home3 = new IntServerHome();
        IntServerHome home4 = new IntServerHome();

        System.assert(home1.equals(home2));
        System.assert(home3.equals(home4));
        System.assertEquals(home1.hashCode(), home2.hashCode());
        System.assertEquals(home3.hashCode(), home4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerHome home = new IntServerHome();
        Map<String, String> x-property-mappings = home.getx-property-mappings();
        System.assertEquals('lastLoginIp', x-property-mappings.get('last_login_ip'));
        System.assertEquals('lastLogin', x-property-mappings.get('last_login'));
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
        System.assertEquals('invoiceList', x-property-mappings.get('invoice_list'));
        System.assertEquals('fullName', x-property-mappings.get('full_name'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerHome home = new IntServerHome();
        System.assertEquals(new List<String>(), home.tickets);
        System.assertEquals(null, home.lastLoginIp);
        System.assertEquals(null, home.lastLogin);
        System.assertEquals(null, home.r_currency);
        System.assertEquals(null, home.amount);
        System.assertEquals(null, home.invoiceList);
        System.assertEquals(null, home.balance);
        System.assertEquals(null, home.fullName);
        System.assertEquals(null, home.email);
        System.assertEquals(null, home.ticketStatus);
        System.assertEquals(null, home.ticketStatusView);
        System.assertEquals(null, home.details);
        System.assertEquals(null, home.services);
        System.assertEquals(null, home.AFFILIATE_AMOUNT);
    }
}
