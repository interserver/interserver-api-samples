@isTest
private class IntServerAccountInfoDataExtraTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerAccountInfoDataExtra accountInfoDataExtra1 = IntServerAccountInfoDataExtra.getExample();
        IntServerAccountInfoDataExtra accountInfoDataExtra2 = accountInfoDataExtra1;
        IntServerAccountInfoDataExtra accountInfoDataExtra3 = new IntServerAccountInfoDataExtra();
        IntServerAccountInfoDataExtra accountInfoDataExtra4 = accountInfoDataExtra3;

        System.assert(accountInfoDataExtra1.equals(accountInfoDataExtra2));
        System.assert(accountInfoDataExtra2.equals(accountInfoDataExtra1));
        System.assert(accountInfoDataExtra1.equals(accountInfoDataExtra1));
        System.assert(accountInfoDataExtra3.equals(accountInfoDataExtra4));
        System.assert(accountInfoDataExtra4.equals(accountInfoDataExtra3));
        System.assert(accountInfoDataExtra3.equals(accountInfoDataExtra3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerAccountInfoDataExtra accountInfoDataExtra1 = IntServerAccountInfoDataExtra.getExample();
        IntServerAccountInfoDataExtra accountInfoDataExtra2 = IntServerAccountInfoDataExtra.getExample();
        IntServerAccountInfoDataExtra accountInfoDataExtra3 = new IntServerAccountInfoDataExtra();
        IntServerAccountInfoDataExtra accountInfoDataExtra4 = new IntServerAccountInfoDataExtra();

        System.assert(accountInfoDataExtra1.equals(accountInfoDataExtra2));
        System.assert(accountInfoDataExtra2.equals(accountInfoDataExtra1));
        System.assert(accountInfoDataExtra3.equals(accountInfoDataExtra4));
        System.assert(accountInfoDataExtra4.equals(accountInfoDataExtra3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerAccountInfoDataExtra accountInfoDataExtra1 = IntServerAccountInfoDataExtra.getExample();
        IntServerAccountInfoDataExtra accountInfoDataExtra2 = new IntServerAccountInfoDataExtra();

        System.assertEquals(false, accountInfoDataExtra1.equals('foo'));
        System.assertEquals(false, accountInfoDataExtra2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerAccountInfoDataExtra accountInfoDataExtra1 = IntServerAccountInfoDataExtra.getExample();
        IntServerAccountInfoDataExtra accountInfoDataExtra2 = new IntServerAccountInfoDataExtra();
        IntServerAccountInfoDataExtra accountInfoDataExtra3;

        System.assertEquals(false, accountInfoDataExtra1.equals(accountInfoDataExtra3));
        System.assertEquals(false, accountInfoDataExtra2.equals(accountInfoDataExtra3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerAccountInfoDataExtra accountInfoDataExtra1 = IntServerAccountInfoDataExtra.getExample();
        IntServerAccountInfoDataExtra accountInfoDataExtra2 = new IntServerAccountInfoDataExtra();

        System.assertEquals(accountInfoDataExtra1.hashCode(), accountInfoDataExtra1.hashCode());
        System.assertEquals(accountInfoDataExtra2.hashCode(), accountInfoDataExtra2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerAccountInfoDataExtra accountInfoDataExtra1 = IntServerAccountInfoDataExtra.getExample();
        IntServerAccountInfoDataExtra accountInfoDataExtra2 = IntServerAccountInfoDataExtra.getExample();
        IntServerAccountInfoDataExtra accountInfoDataExtra3 = new IntServerAccountInfoDataExtra();
        IntServerAccountInfoDataExtra accountInfoDataExtra4 = new IntServerAccountInfoDataExtra();

        System.assert(accountInfoDataExtra1.equals(accountInfoDataExtra2));
        System.assert(accountInfoDataExtra3.equals(accountInfoDataExtra4));
        System.assertEquals(accountInfoDataExtra1.hashCode(), accountInfoDataExtra2.hashCode());
        System.assertEquals(accountInfoDataExtra3.hashCode(), accountInfoDataExtra4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerAccountInfoDataExtra accountInfoDataExtra = new IntServerAccountInfoDataExtra();
        Map<String, String> x-property-mappings = accountInfoDataExtra.getx-property-mappings();
        System.assertEquals('privateWhois', x-property-mappings.get('private_whois'));
    }
}
