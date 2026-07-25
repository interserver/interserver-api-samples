@isTest
private class IntServerAccountInfoDataCcsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerAccountInfoDataCcs accountInfoDataCcs1 = IntServerAccountInfoDataCcs.getExample();
        IntServerAccountInfoDataCcs accountInfoDataCcs2 = accountInfoDataCcs1;
        IntServerAccountInfoDataCcs accountInfoDataCcs3 = new IntServerAccountInfoDataCcs();
        IntServerAccountInfoDataCcs accountInfoDataCcs4 = accountInfoDataCcs3;

        System.assert(accountInfoDataCcs1.equals(accountInfoDataCcs2));
        System.assert(accountInfoDataCcs2.equals(accountInfoDataCcs1));
        System.assert(accountInfoDataCcs1.equals(accountInfoDataCcs1));
        System.assert(accountInfoDataCcs3.equals(accountInfoDataCcs4));
        System.assert(accountInfoDataCcs4.equals(accountInfoDataCcs3));
        System.assert(accountInfoDataCcs3.equals(accountInfoDataCcs3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerAccountInfoDataCcs accountInfoDataCcs1 = IntServerAccountInfoDataCcs.getExample();
        IntServerAccountInfoDataCcs accountInfoDataCcs2 = IntServerAccountInfoDataCcs.getExample();
        IntServerAccountInfoDataCcs accountInfoDataCcs3 = new IntServerAccountInfoDataCcs();
        IntServerAccountInfoDataCcs accountInfoDataCcs4 = new IntServerAccountInfoDataCcs();

        System.assert(accountInfoDataCcs1.equals(accountInfoDataCcs2));
        System.assert(accountInfoDataCcs2.equals(accountInfoDataCcs1));
        System.assert(accountInfoDataCcs3.equals(accountInfoDataCcs4));
        System.assert(accountInfoDataCcs4.equals(accountInfoDataCcs3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerAccountInfoDataCcs accountInfoDataCcs1 = IntServerAccountInfoDataCcs.getExample();
        IntServerAccountInfoDataCcs accountInfoDataCcs2 = new IntServerAccountInfoDataCcs();

        System.assertEquals(false, accountInfoDataCcs1.equals('foo'));
        System.assertEquals(false, accountInfoDataCcs2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerAccountInfoDataCcs accountInfoDataCcs1 = IntServerAccountInfoDataCcs.getExample();
        IntServerAccountInfoDataCcs accountInfoDataCcs2 = new IntServerAccountInfoDataCcs();
        IntServerAccountInfoDataCcs accountInfoDataCcs3;

        System.assertEquals(false, accountInfoDataCcs1.equals(accountInfoDataCcs3));
        System.assertEquals(false, accountInfoDataCcs2.equals(accountInfoDataCcs3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerAccountInfoDataCcs accountInfoDataCcs1 = IntServerAccountInfoDataCcs.getExample();
        IntServerAccountInfoDataCcs accountInfoDataCcs2 = new IntServerAccountInfoDataCcs();

        System.assertEquals(accountInfoDataCcs1.hashCode(), accountInfoDataCcs1.hashCode());
        System.assertEquals(accountInfoDataCcs2.hashCode(), accountInfoDataCcs2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerAccountInfoDataCcs accountInfoDataCcs1 = IntServerAccountInfoDataCcs.getExample();
        IntServerAccountInfoDataCcs accountInfoDataCcs2 = IntServerAccountInfoDataCcs.getExample();
        IntServerAccountInfoDataCcs accountInfoDataCcs3 = new IntServerAccountInfoDataCcs();
        IntServerAccountInfoDataCcs accountInfoDataCcs4 = new IntServerAccountInfoDataCcs();

        System.assert(accountInfoDataCcs1.equals(accountInfoDataCcs2));
        System.assert(accountInfoDataCcs3.equals(accountInfoDataCcs4));
        System.assertEquals(accountInfoDataCcs1.hashCode(), accountInfoDataCcs2.hashCode());
        System.assertEquals(accountInfoDataCcs3.hashCode(), accountInfoDataCcs4.hashCode());
    }
}
