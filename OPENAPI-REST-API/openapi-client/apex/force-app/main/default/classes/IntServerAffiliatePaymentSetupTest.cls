@isTest
private class IntServerAffiliatePaymentSetupTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerAffiliatePaymentSetup affiliatePaymentSetup1 = IntServerAffiliatePaymentSetup.getExample();
        IntServerAffiliatePaymentSetup affiliatePaymentSetup2 = affiliatePaymentSetup1;
        IntServerAffiliatePaymentSetup affiliatePaymentSetup3 = new IntServerAffiliatePaymentSetup();
        IntServerAffiliatePaymentSetup affiliatePaymentSetup4 = affiliatePaymentSetup3;

        System.assert(affiliatePaymentSetup1.equals(affiliatePaymentSetup2));
        System.assert(affiliatePaymentSetup2.equals(affiliatePaymentSetup1));
        System.assert(affiliatePaymentSetup1.equals(affiliatePaymentSetup1));
        System.assert(affiliatePaymentSetup3.equals(affiliatePaymentSetup4));
        System.assert(affiliatePaymentSetup4.equals(affiliatePaymentSetup3));
        System.assert(affiliatePaymentSetup3.equals(affiliatePaymentSetup3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerAffiliatePaymentSetup affiliatePaymentSetup1 = IntServerAffiliatePaymentSetup.getExample();
        IntServerAffiliatePaymentSetup affiliatePaymentSetup2 = IntServerAffiliatePaymentSetup.getExample();
        IntServerAffiliatePaymentSetup affiliatePaymentSetup3 = new IntServerAffiliatePaymentSetup();
        IntServerAffiliatePaymentSetup affiliatePaymentSetup4 = new IntServerAffiliatePaymentSetup();

        System.assert(affiliatePaymentSetup1.equals(affiliatePaymentSetup2));
        System.assert(affiliatePaymentSetup2.equals(affiliatePaymentSetup1));
        System.assert(affiliatePaymentSetup3.equals(affiliatePaymentSetup4));
        System.assert(affiliatePaymentSetup4.equals(affiliatePaymentSetup3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerAffiliatePaymentSetup affiliatePaymentSetup1 = IntServerAffiliatePaymentSetup.getExample();
        IntServerAffiliatePaymentSetup affiliatePaymentSetup2 = new IntServerAffiliatePaymentSetup();

        System.assertEquals(false, affiliatePaymentSetup1.equals('foo'));
        System.assertEquals(false, affiliatePaymentSetup2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerAffiliatePaymentSetup affiliatePaymentSetup1 = IntServerAffiliatePaymentSetup.getExample();
        IntServerAffiliatePaymentSetup affiliatePaymentSetup2 = new IntServerAffiliatePaymentSetup();
        IntServerAffiliatePaymentSetup affiliatePaymentSetup3;

        System.assertEquals(false, affiliatePaymentSetup1.equals(affiliatePaymentSetup3));
        System.assertEquals(false, affiliatePaymentSetup2.equals(affiliatePaymentSetup3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerAffiliatePaymentSetup affiliatePaymentSetup1 = IntServerAffiliatePaymentSetup.getExample();
        IntServerAffiliatePaymentSetup affiliatePaymentSetup2 = new IntServerAffiliatePaymentSetup();

        System.assertEquals(affiliatePaymentSetup1.hashCode(), affiliatePaymentSetup1.hashCode());
        System.assertEquals(affiliatePaymentSetup2.hashCode(), affiliatePaymentSetup2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerAffiliatePaymentSetup affiliatePaymentSetup1 = IntServerAffiliatePaymentSetup.getExample();
        IntServerAffiliatePaymentSetup affiliatePaymentSetup2 = IntServerAffiliatePaymentSetup.getExample();
        IntServerAffiliatePaymentSetup affiliatePaymentSetup3 = new IntServerAffiliatePaymentSetup();
        IntServerAffiliatePaymentSetup affiliatePaymentSetup4 = new IntServerAffiliatePaymentSetup();

        System.assert(affiliatePaymentSetup1.equals(affiliatePaymentSetup2));
        System.assert(affiliatePaymentSetup3.equals(affiliatePaymentSetup4));
        System.assertEquals(affiliatePaymentSetup1.hashCode(), affiliatePaymentSetup2.hashCode());
        System.assertEquals(affiliatePaymentSetup3.hashCode(), affiliatePaymentSetup4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerAffiliatePaymentSetup affiliatePaymentSetup = new IntServerAffiliatePaymentSetup();
        Map<String, String> x-property-mappings = affiliatePaymentSetup.getx-property-mappings();
        System.assertEquals('affiliatePaypal', x-property-mappings.get('affiliate_paypal'));
        System.assertEquals('affiliatePaymentMethod', x-property-mappings.get('affiliate_payment_method'));
    }
}
