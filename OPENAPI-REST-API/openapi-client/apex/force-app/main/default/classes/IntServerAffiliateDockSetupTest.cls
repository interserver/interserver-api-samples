@isTest
private class IntServerAffiliateDockSetupTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerAffiliateDockSetup affiliateDockSetup1 = IntServerAffiliateDockSetup.getExample();
        IntServerAffiliateDockSetup affiliateDockSetup2 = affiliateDockSetup1;
        IntServerAffiliateDockSetup affiliateDockSetup3 = new IntServerAffiliateDockSetup();
        IntServerAffiliateDockSetup affiliateDockSetup4 = affiliateDockSetup3;

        System.assert(affiliateDockSetup1.equals(affiliateDockSetup2));
        System.assert(affiliateDockSetup2.equals(affiliateDockSetup1));
        System.assert(affiliateDockSetup1.equals(affiliateDockSetup1));
        System.assert(affiliateDockSetup3.equals(affiliateDockSetup4));
        System.assert(affiliateDockSetup4.equals(affiliateDockSetup3));
        System.assert(affiliateDockSetup3.equals(affiliateDockSetup3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerAffiliateDockSetup affiliateDockSetup1 = IntServerAffiliateDockSetup.getExample();
        IntServerAffiliateDockSetup affiliateDockSetup2 = IntServerAffiliateDockSetup.getExample();
        IntServerAffiliateDockSetup affiliateDockSetup3 = new IntServerAffiliateDockSetup();
        IntServerAffiliateDockSetup affiliateDockSetup4 = new IntServerAffiliateDockSetup();

        System.assert(affiliateDockSetup1.equals(affiliateDockSetup2));
        System.assert(affiliateDockSetup2.equals(affiliateDockSetup1));
        System.assert(affiliateDockSetup3.equals(affiliateDockSetup4));
        System.assert(affiliateDockSetup4.equals(affiliateDockSetup3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerAffiliateDockSetup affiliateDockSetup1 = IntServerAffiliateDockSetup.getExample();
        IntServerAffiliateDockSetup affiliateDockSetup2 = new IntServerAffiliateDockSetup();

        System.assertEquals(false, affiliateDockSetup1.equals('foo'));
        System.assertEquals(false, affiliateDockSetup2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerAffiliateDockSetup affiliateDockSetup1 = IntServerAffiliateDockSetup.getExample();
        IntServerAffiliateDockSetup affiliateDockSetup2 = new IntServerAffiliateDockSetup();
        IntServerAffiliateDockSetup affiliateDockSetup3;

        System.assertEquals(false, affiliateDockSetup1.equals(affiliateDockSetup3));
        System.assertEquals(false, affiliateDockSetup2.equals(affiliateDockSetup3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerAffiliateDockSetup affiliateDockSetup1 = IntServerAffiliateDockSetup.getExample();
        IntServerAffiliateDockSetup affiliateDockSetup2 = new IntServerAffiliateDockSetup();

        System.assertEquals(affiliateDockSetup1.hashCode(), affiliateDockSetup1.hashCode());
        System.assertEquals(affiliateDockSetup2.hashCode(), affiliateDockSetup2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerAffiliateDockSetup affiliateDockSetup1 = IntServerAffiliateDockSetup.getExample();
        IntServerAffiliateDockSetup affiliateDockSetup2 = IntServerAffiliateDockSetup.getExample();
        IntServerAffiliateDockSetup affiliateDockSetup3 = new IntServerAffiliateDockSetup();
        IntServerAffiliateDockSetup affiliateDockSetup4 = new IntServerAffiliateDockSetup();

        System.assert(affiliateDockSetup1.equals(affiliateDockSetup2));
        System.assert(affiliateDockSetup3.equals(affiliateDockSetup4));
        System.assertEquals(affiliateDockSetup1.hashCode(), affiliateDockSetup2.hashCode());
        System.assertEquals(affiliateDockSetup3.hashCode(), affiliateDockSetup4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerAffiliateDockSetup affiliateDockSetup = new IntServerAffiliateDockSetup();
        Map<String, String> x-property-mappings = affiliateDockSetup.getx-property-mappings();
        System.assertEquals('affiliateDockTitle', x-property-mappings.get('affiliate_dock_title'));
        System.assertEquals('affiliateDockDescription', x-property-mappings.get('affiliate_dock_description'));
        System.assertEquals('referrerCoupon', x-property-mappings.get('referrer_coupon'));
    }
}
