@isTest
private class IntServerAccountInfoDataFraudrecordTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerAccountInfoDataFraudrecord accountInfoDataFraudrecord1 = IntServerAccountInfoDataFraudrecord.getExample();
        IntServerAccountInfoDataFraudrecord accountInfoDataFraudrecord2 = accountInfoDataFraudrecord1;
        IntServerAccountInfoDataFraudrecord accountInfoDataFraudrecord3 = new IntServerAccountInfoDataFraudrecord();
        IntServerAccountInfoDataFraudrecord accountInfoDataFraudrecord4 = accountInfoDataFraudrecord3;

        System.assert(accountInfoDataFraudrecord1.equals(accountInfoDataFraudrecord2));
        System.assert(accountInfoDataFraudrecord2.equals(accountInfoDataFraudrecord1));
        System.assert(accountInfoDataFraudrecord1.equals(accountInfoDataFraudrecord1));
        System.assert(accountInfoDataFraudrecord3.equals(accountInfoDataFraudrecord4));
        System.assert(accountInfoDataFraudrecord4.equals(accountInfoDataFraudrecord3));
        System.assert(accountInfoDataFraudrecord3.equals(accountInfoDataFraudrecord3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerAccountInfoDataFraudrecord accountInfoDataFraudrecord1 = IntServerAccountInfoDataFraudrecord.getExample();
        IntServerAccountInfoDataFraudrecord accountInfoDataFraudrecord2 = IntServerAccountInfoDataFraudrecord.getExample();
        IntServerAccountInfoDataFraudrecord accountInfoDataFraudrecord3 = new IntServerAccountInfoDataFraudrecord();
        IntServerAccountInfoDataFraudrecord accountInfoDataFraudrecord4 = new IntServerAccountInfoDataFraudrecord();

        System.assert(accountInfoDataFraudrecord1.equals(accountInfoDataFraudrecord2));
        System.assert(accountInfoDataFraudrecord2.equals(accountInfoDataFraudrecord1));
        System.assert(accountInfoDataFraudrecord3.equals(accountInfoDataFraudrecord4));
        System.assert(accountInfoDataFraudrecord4.equals(accountInfoDataFraudrecord3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerAccountInfoDataFraudrecord accountInfoDataFraudrecord1 = IntServerAccountInfoDataFraudrecord.getExample();
        IntServerAccountInfoDataFraudrecord accountInfoDataFraudrecord2 = new IntServerAccountInfoDataFraudrecord();

        System.assertEquals(false, accountInfoDataFraudrecord1.equals('foo'));
        System.assertEquals(false, accountInfoDataFraudrecord2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerAccountInfoDataFraudrecord accountInfoDataFraudrecord1 = IntServerAccountInfoDataFraudrecord.getExample();
        IntServerAccountInfoDataFraudrecord accountInfoDataFraudrecord2 = new IntServerAccountInfoDataFraudrecord();
        IntServerAccountInfoDataFraudrecord accountInfoDataFraudrecord3;

        System.assertEquals(false, accountInfoDataFraudrecord1.equals(accountInfoDataFraudrecord3));
        System.assertEquals(false, accountInfoDataFraudrecord2.equals(accountInfoDataFraudrecord3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerAccountInfoDataFraudrecord accountInfoDataFraudrecord1 = IntServerAccountInfoDataFraudrecord.getExample();
        IntServerAccountInfoDataFraudrecord accountInfoDataFraudrecord2 = new IntServerAccountInfoDataFraudrecord();

        System.assertEquals(accountInfoDataFraudrecord1.hashCode(), accountInfoDataFraudrecord1.hashCode());
        System.assertEquals(accountInfoDataFraudrecord2.hashCode(), accountInfoDataFraudrecord2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerAccountInfoDataFraudrecord accountInfoDataFraudrecord1 = IntServerAccountInfoDataFraudrecord.getExample();
        IntServerAccountInfoDataFraudrecord accountInfoDataFraudrecord2 = IntServerAccountInfoDataFraudrecord.getExample();
        IntServerAccountInfoDataFraudrecord accountInfoDataFraudrecord3 = new IntServerAccountInfoDataFraudrecord();
        IntServerAccountInfoDataFraudrecord accountInfoDataFraudrecord4 = new IntServerAccountInfoDataFraudrecord();

        System.assert(accountInfoDataFraudrecord1.equals(accountInfoDataFraudrecord2));
        System.assert(accountInfoDataFraudrecord3.equals(accountInfoDataFraudrecord4));
        System.assertEquals(accountInfoDataFraudrecord1.hashCode(), accountInfoDataFraudrecord2.hashCode());
        System.assertEquals(accountInfoDataFraudrecord3.hashCode(), accountInfoDataFraudrecord4.hashCode());
    }
}
