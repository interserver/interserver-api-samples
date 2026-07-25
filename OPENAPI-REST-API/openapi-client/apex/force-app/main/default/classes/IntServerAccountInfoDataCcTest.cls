@isTest
private class IntServerAccountInfoDataCcTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerAccountInfoDataCc accountInfoDataCc1 = IntServerAccountInfoDataCc.getExample();
        IntServerAccountInfoDataCc accountInfoDataCc2 = accountInfoDataCc1;
        IntServerAccountInfoDataCc accountInfoDataCc3 = new IntServerAccountInfoDataCc();
        IntServerAccountInfoDataCc accountInfoDataCc4 = accountInfoDataCc3;

        System.assert(accountInfoDataCc1.equals(accountInfoDataCc2));
        System.assert(accountInfoDataCc2.equals(accountInfoDataCc1));
        System.assert(accountInfoDataCc1.equals(accountInfoDataCc1));
        System.assert(accountInfoDataCc3.equals(accountInfoDataCc4));
        System.assert(accountInfoDataCc4.equals(accountInfoDataCc3));
        System.assert(accountInfoDataCc3.equals(accountInfoDataCc3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerAccountInfoDataCc accountInfoDataCc1 = IntServerAccountInfoDataCc.getExample();
        IntServerAccountInfoDataCc accountInfoDataCc2 = IntServerAccountInfoDataCc.getExample();
        IntServerAccountInfoDataCc accountInfoDataCc3 = new IntServerAccountInfoDataCc();
        IntServerAccountInfoDataCc accountInfoDataCc4 = new IntServerAccountInfoDataCc();

        System.assert(accountInfoDataCc1.equals(accountInfoDataCc2));
        System.assert(accountInfoDataCc2.equals(accountInfoDataCc1));
        System.assert(accountInfoDataCc3.equals(accountInfoDataCc4));
        System.assert(accountInfoDataCc4.equals(accountInfoDataCc3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerAccountInfoDataCc accountInfoDataCc1 = IntServerAccountInfoDataCc.getExample();
        IntServerAccountInfoDataCc accountInfoDataCc2 = new IntServerAccountInfoDataCc();

        System.assertEquals(false, accountInfoDataCc1.equals('foo'));
        System.assertEquals(false, accountInfoDataCc2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerAccountInfoDataCc accountInfoDataCc1 = IntServerAccountInfoDataCc.getExample();
        IntServerAccountInfoDataCc accountInfoDataCc2 = new IntServerAccountInfoDataCc();
        IntServerAccountInfoDataCc accountInfoDataCc3;

        System.assertEquals(false, accountInfoDataCc1.equals(accountInfoDataCc3));
        System.assertEquals(false, accountInfoDataCc2.equals(accountInfoDataCc3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerAccountInfoDataCc accountInfoDataCc1 = IntServerAccountInfoDataCc.getExample();
        IntServerAccountInfoDataCc accountInfoDataCc2 = new IntServerAccountInfoDataCc();

        System.assertEquals(accountInfoDataCc1.hashCode(), accountInfoDataCc1.hashCode());
        System.assertEquals(accountInfoDataCc2.hashCode(), accountInfoDataCc2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerAccountInfoDataCc accountInfoDataCc1 = IntServerAccountInfoDataCc.getExample();
        IntServerAccountInfoDataCc accountInfoDataCc2 = IntServerAccountInfoDataCc.getExample();
        IntServerAccountInfoDataCc accountInfoDataCc3 = new IntServerAccountInfoDataCc();
        IntServerAccountInfoDataCc accountInfoDataCc4 = new IntServerAccountInfoDataCc();

        System.assert(accountInfoDataCc1.equals(accountInfoDataCc2));
        System.assert(accountInfoDataCc3.equals(accountInfoDataCc4));
        System.assertEquals(accountInfoDataCc1.hashCode(), accountInfoDataCc2.hashCode());
        System.assertEquals(accountInfoDataCc3.hashCode(), accountInfoDataCc4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerAccountInfoDataCc accountInfoDataCc = new IntServerAccountInfoDataCc();
        Map<String, String> x-property-mappings = accountInfoDataCc.getx-property-mappings();
        System.assertEquals('ccExp', x-property-mappings.get('cc_exp'));
        System.assertEquals('maxmindRiskscore', x-property-mappings.get('maxmind_riskscore'));
    }
}
