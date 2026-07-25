@isTest
private class IntServerAffiliateTrafficRowTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerAffiliateTrafficRow affiliateTrafficRow1 = IntServerAffiliateTrafficRow.getExample();
        IntServerAffiliateTrafficRow affiliateTrafficRow2 = affiliateTrafficRow1;
        IntServerAffiliateTrafficRow affiliateTrafficRow3 = new IntServerAffiliateTrafficRow();
        IntServerAffiliateTrafficRow affiliateTrafficRow4 = affiliateTrafficRow3;

        System.assert(affiliateTrafficRow1.equals(affiliateTrafficRow2));
        System.assert(affiliateTrafficRow2.equals(affiliateTrafficRow1));
        System.assert(affiliateTrafficRow1.equals(affiliateTrafficRow1));
        System.assert(affiliateTrafficRow3.equals(affiliateTrafficRow4));
        System.assert(affiliateTrafficRow4.equals(affiliateTrafficRow3));
        System.assert(affiliateTrafficRow3.equals(affiliateTrafficRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerAffiliateTrafficRow affiliateTrafficRow1 = IntServerAffiliateTrafficRow.getExample();
        IntServerAffiliateTrafficRow affiliateTrafficRow2 = IntServerAffiliateTrafficRow.getExample();
        IntServerAffiliateTrafficRow affiliateTrafficRow3 = new IntServerAffiliateTrafficRow();
        IntServerAffiliateTrafficRow affiliateTrafficRow4 = new IntServerAffiliateTrafficRow();

        System.assert(affiliateTrafficRow1.equals(affiliateTrafficRow2));
        System.assert(affiliateTrafficRow2.equals(affiliateTrafficRow1));
        System.assert(affiliateTrafficRow3.equals(affiliateTrafficRow4));
        System.assert(affiliateTrafficRow4.equals(affiliateTrafficRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerAffiliateTrafficRow affiliateTrafficRow1 = IntServerAffiliateTrafficRow.getExample();
        IntServerAffiliateTrafficRow affiliateTrafficRow2 = new IntServerAffiliateTrafficRow();

        System.assertEquals(false, affiliateTrafficRow1.equals('foo'));
        System.assertEquals(false, affiliateTrafficRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerAffiliateTrafficRow affiliateTrafficRow1 = IntServerAffiliateTrafficRow.getExample();
        IntServerAffiliateTrafficRow affiliateTrafficRow2 = new IntServerAffiliateTrafficRow();
        IntServerAffiliateTrafficRow affiliateTrafficRow3;

        System.assertEquals(false, affiliateTrafficRow1.equals(affiliateTrafficRow3));
        System.assertEquals(false, affiliateTrafficRow2.equals(affiliateTrafficRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerAffiliateTrafficRow affiliateTrafficRow1 = IntServerAffiliateTrafficRow.getExample();
        IntServerAffiliateTrafficRow affiliateTrafficRow2 = new IntServerAffiliateTrafficRow();

        System.assertEquals(affiliateTrafficRow1.hashCode(), affiliateTrafficRow1.hashCode());
        System.assertEquals(affiliateTrafficRow2.hashCode(), affiliateTrafficRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerAffiliateTrafficRow affiliateTrafficRow1 = IntServerAffiliateTrafficRow.getExample();
        IntServerAffiliateTrafficRow affiliateTrafficRow2 = IntServerAffiliateTrafficRow.getExample();
        IntServerAffiliateTrafficRow affiliateTrafficRow3 = new IntServerAffiliateTrafficRow();
        IntServerAffiliateTrafficRow affiliateTrafficRow4 = new IntServerAffiliateTrafficRow();

        System.assert(affiliateTrafficRow1.equals(affiliateTrafficRow2));
        System.assert(affiliateTrafficRow3.equals(affiliateTrafficRow4));
        System.assertEquals(affiliateTrafficRow1.hashCode(), affiliateTrafficRow2.hashCode());
        System.assertEquals(affiliateTrafficRow3.hashCode(), affiliateTrafficRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerAffiliateTrafficRow affiliateTrafficRow = new IntServerAffiliateTrafficRow();
        Map<String, String> x-property-mappings = affiliateTrafficRow.getx-property-mappings();
        System.assertEquals('trafficId', x-property-mappings.get('traffic_id'));
        System.assertEquals('trafficIp', x-property-mappings.get('traffic_ip'));
        System.assertEquals('trafficUrl', x-property-mappings.get('traffic_url'));
        System.assertEquals('trafficAffiliate', x-property-mappings.get('traffic_affiliate'));
        System.assertEquals('trafficReferrer', x-property-mappings.get('traffic_referrer'));
        System.assertEquals('trafficTimestamp', x-property-mappings.get('traffic_timestamp'));
    }
}
