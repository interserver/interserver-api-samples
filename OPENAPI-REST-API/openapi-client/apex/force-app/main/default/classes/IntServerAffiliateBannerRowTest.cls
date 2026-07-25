@isTest
private class IntServerAffiliateBannerRowTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerAffiliateBannerRow affiliateBannerRow1 = IntServerAffiliateBannerRow.getExample();
        IntServerAffiliateBannerRow affiliateBannerRow2 = affiliateBannerRow1;
        IntServerAffiliateBannerRow affiliateBannerRow3 = new IntServerAffiliateBannerRow();
        IntServerAffiliateBannerRow affiliateBannerRow4 = affiliateBannerRow3;

        System.assert(affiliateBannerRow1.equals(affiliateBannerRow2));
        System.assert(affiliateBannerRow2.equals(affiliateBannerRow1));
        System.assert(affiliateBannerRow1.equals(affiliateBannerRow1));
        System.assert(affiliateBannerRow3.equals(affiliateBannerRow4));
        System.assert(affiliateBannerRow4.equals(affiliateBannerRow3));
        System.assert(affiliateBannerRow3.equals(affiliateBannerRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerAffiliateBannerRow affiliateBannerRow1 = IntServerAffiliateBannerRow.getExample();
        IntServerAffiliateBannerRow affiliateBannerRow2 = IntServerAffiliateBannerRow.getExample();
        IntServerAffiliateBannerRow affiliateBannerRow3 = new IntServerAffiliateBannerRow();
        IntServerAffiliateBannerRow affiliateBannerRow4 = new IntServerAffiliateBannerRow();

        System.assert(affiliateBannerRow1.equals(affiliateBannerRow2));
        System.assert(affiliateBannerRow2.equals(affiliateBannerRow1));
        System.assert(affiliateBannerRow3.equals(affiliateBannerRow4));
        System.assert(affiliateBannerRow4.equals(affiliateBannerRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerAffiliateBannerRow affiliateBannerRow1 = IntServerAffiliateBannerRow.getExample();
        IntServerAffiliateBannerRow affiliateBannerRow2 = new IntServerAffiliateBannerRow();

        System.assertEquals(false, affiliateBannerRow1.equals('foo'));
        System.assertEquals(false, affiliateBannerRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerAffiliateBannerRow affiliateBannerRow1 = IntServerAffiliateBannerRow.getExample();
        IntServerAffiliateBannerRow affiliateBannerRow2 = new IntServerAffiliateBannerRow();
        IntServerAffiliateBannerRow affiliateBannerRow3;

        System.assertEquals(false, affiliateBannerRow1.equals(affiliateBannerRow3));
        System.assertEquals(false, affiliateBannerRow2.equals(affiliateBannerRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerAffiliateBannerRow affiliateBannerRow1 = IntServerAffiliateBannerRow.getExample();
        IntServerAffiliateBannerRow affiliateBannerRow2 = new IntServerAffiliateBannerRow();

        System.assertEquals(affiliateBannerRow1.hashCode(), affiliateBannerRow1.hashCode());
        System.assertEquals(affiliateBannerRow2.hashCode(), affiliateBannerRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerAffiliateBannerRow affiliateBannerRow1 = IntServerAffiliateBannerRow.getExample();
        IntServerAffiliateBannerRow affiliateBannerRow2 = IntServerAffiliateBannerRow.getExample();
        IntServerAffiliateBannerRow affiliateBannerRow3 = new IntServerAffiliateBannerRow();
        IntServerAffiliateBannerRow affiliateBannerRow4 = new IntServerAffiliateBannerRow();

        System.assert(affiliateBannerRow1.equals(affiliateBannerRow2));
        System.assert(affiliateBannerRow3.equals(affiliateBannerRow4));
        System.assertEquals(affiliateBannerRow1.hashCode(), affiliateBannerRow2.hashCode());
        System.assertEquals(affiliateBannerRow3.hashCode(), affiliateBannerRow4.hashCode());
    }
}
