@isTest
private class IntServerAccountInfoLimitsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerAccountInfoLimits accountInfoLimits1 = IntServerAccountInfoLimits.getExample();
        IntServerAccountInfoLimits accountInfoLimits2 = accountInfoLimits1;
        IntServerAccountInfoLimits accountInfoLimits3 = new IntServerAccountInfoLimits();
        IntServerAccountInfoLimits accountInfoLimits4 = accountInfoLimits3;

        System.assert(accountInfoLimits1.equals(accountInfoLimits2));
        System.assert(accountInfoLimits2.equals(accountInfoLimits1));
        System.assert(accountInfoLimits1.equals(accountInfoLimits1));
        System.assert(accountInfoLimits3.equals(accountInfoLimits4));
        System.assert(accountInfoLimits4.equals(accountInfoLimits3));
        System.assert(accountInfoLimits3.equals(accountInfoLimits3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerAccountInfoLimits accountInfoLimits1 = IntServerAccountInfoLimits.getExample();
        IntServerAccountInfoLimits accountInfoLimits2 = IntServerAccountInfoLimits.getExample();
        IntServerAccountInfoLimits accountInfoLimits3 = new IntServerAccountInfoLimits();
        IntServerAccountInfoLimits accountInfoLimits4 = new IntServerAccountInfoLimits();

        System.assert(accountInfoLimits1.equals(accountInfoLimits2));
        System.assert(accountInfoLimits2.equals(accountInfoLimits1));
        System.assert(accountInfoLimits3.equals(accountInfoLimits4));
        System.assert(accountInfoLimits4.equals(accountInfoLimits3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerAccountInfoLimits accountInfoLimits1 = IntServerAccountInfoLimits.getExample();
        IntServerAccountInfoLimits accountInfoLimits2 = new IntServerAccountInfoLimits();

        System.assertEquals(false, accountInfoLimits1.equals('foo'));
        System.assertEquals(false, accountInfoLimits2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerAccountInfoLimits accountInfoLimits1 = IntServerAccountInfoLimits.getExample();
        IntServerAccountInfoLimits accountInfoLimits2 = new IntServerAccountInfoLimits();
        IntServerAccountInfoLimits accountInfoLimits3;

        System.assertEquals(false, accountInfoLimits1.equals(accountInfoLimits3));
        System.assertEquals(false, accountInfoLimits2.equals(accountInfoLimits3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerAccountInfoLimits accountInfoLimits1 = IntServerAccountInfoLimits.getExample();
        IntServerAccountInfoLimits accountInfoLimits2 = new IntServerAccountInfoLimits();

        System.assertEquals(accountInfoLimits1.hashCode(), accountInfoLimits1.hashCode());
        System.assertEquals(accountInfoLimits2.hashCode(), accountInfoLimits2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerAccountInfoLimits accountInfoLimits1 = IntServerAccountInfoLimits.getExample();
        IntServerAccountInfoLimits accountInfoLimits2 = IntServerAccountInfoLimits.getExample();
        IntServerAccountInfoLimits accountInfoLimits3 = new IntServerAccountInfoLimits();
        IntServerAccountInfoLimits accountInfoLimits4 = new IntServerAccountInfoLimits();

        System.assert(accountInfoLimits1.equals(accountInfoLimits2));
        System.assert(accountInfoLimits3.equals(accountInfoLimits4));
        System.assertEquals(accountInfoLimits1.hashCode(), accountInfoLimits2.hashCode());
        System.assertEquals(accountInfoLimits3.hashCode(), accountInfoLimits4.hashCode());
    }
}
