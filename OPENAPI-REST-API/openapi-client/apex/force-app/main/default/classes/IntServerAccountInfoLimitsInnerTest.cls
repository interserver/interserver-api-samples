@isTest
private class IntServerAccountInfoLimitsInnerTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerAccountInfoLimitsInner accountInfoLimitsInner1 = IntServerAccountInfoLimitsInner.getExample();
        IntServerAccountInfoLimitsInner accountInfoLimitsInner2 = accountInfoLimitsInner1;
        IntServerAccountInfoLimitsInner accountInfoLimitsInner3 = new IntServerAccountInfoLimitsInner();
        IntServerAccountInfoLimitsInner accountInfoLimitsInner4 = accountInfoLimitsInner3;

        System.assert(accountInfoLimitsInner1.equals(accountInfoLimitsInner2));
        System.assert(accountInfoLimitsInner2.equals(accountInfoLimitsInner1));
        System.assert(accountInfoLimitsInner1.equals(accountInfoLimitsInner1));
        System.assert(accountInfoLimitsInner3.equals(accountInfoLimitsInner4));
        System.assert(accountInfoLimitsInner4.equals(accountInfoLimitsInner3));
        System.assert(accountInfoLimitsInner3.equals(accountInfoLimitsInner3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerAccountInfoLimitsInner accountInfoLimitsInner1 = IntServerAccountInfoLimitsInner.getExample();
        IntServerAccountInfoLimitsInner accountInfoLimitsInner2 = IntServerAccountInfoLimitsInner.getExample();
        IntServerAccountInfoLimitsInner accountInfoLimitsInner3 = new IntServerAccountInfoLimitsInner();
        IntServerAccountInfoLimitsInner accountInfoLimitsInner4 = new IntServerAccountInfoLimitsInner();

        System.assert(accountInfoLimitsInner1.equals(accountInfoLimitsInner2));
        System.assert(accountInfoLimitsInner2.equals(accountInfoLimitsInner1));
        System.assert(accountInfoLimitsInner3.equals(accountInfoLimitsInner4));
        System.assert(accountInfoLimitsInner4.equals(accountInfoLimitsInner3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerAccountInfoLimitsInner accountInfoLimitsInner1 = IntServerAccountInfoLimitsInner.getExample();
        IntServerAccountInfoLimitsInner accountInfoLimitsInner2 = new IntServerAccountInfoLimitsInner();

        System.assertEquals(false, accountInfoLimitsInner1.equals('foo'));
        System.assertEquals(false, accountInfoLimitsInner2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerAccountInfoLimitsInner accountInfoLimitsInner1 = IntServerAccountInfoLimitsInner.getExample();
        IntServerAccountInfoLimitsInner accountInfoLimitsInner2 = new IntServerAccountInfoLimitsInner();
        IntServerAccountInfoLimitsInner accountInfoLimitsInner3;

        System.assertEquals(false, accountInfoLimitsInner1.equals(accountInfoLimitsInner3));
        System.assertEquals(false, accountInfoLimitsInner2.equals(accountInfoLimitsInner3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerAccountInfoLimitsInner accountInfoLimitsInner1 = IntServerAccountInfoLimitsInner.getExample();
        IntServerAccountInfoLimitsInner accountInfoLimitsInner2 = new IntServerAccountInfoLimitsInner();

        System.assertEquals(accountInfoLimitsInner1.hashCode(), accountInfoLimitsInner1.hashCode());
        System.assertEquals(accountInfoLimitsInner2.hashCode(), accountInfoLimitsInner2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerAccountInfoLimitsInner accountInfoLimitsInner1 = IntServerAccountInfoLimitsInner.getExample();
        IntServerAccountInfoLimitsInner accountInfoLimitsInner2 = IntServerAccountInfoLimitsInner.getExample();
        IntServerAccountInfoLimitsInner accountInfoLimitsInner3 = new IntServerAccountInfoLimitsInner();
        IntServerAccountInfoLimitsInner accountInfoLimitsInner4 = new IntServerAccountInfoLimitsInner();

        System.assert(accountInfoLimitsInner1.equals(accountInfoLimitsInner2));
        System.assert(accountInfoLimitsInner3.equals(accountInfoLimitsInner4));
        System.assertEquals(accountInfoLimitsInner1.hashCode(), accountInfoLimitsInner2.hashCode());
        System.assertEquals(accountInfoLimitsInner3.hashCode(), accountInfoLimitsInner4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerAccountInfoLimitsInner accountInfoLimitsInner = new IntServerAccountInfoLimitsInner();
        Map<String, String> x-property-mappings = accountInfoLimitsInner.getx-property-mappings();
        System.assertEquals('r_end', x-property-mappings.get('end'));
    }
}
