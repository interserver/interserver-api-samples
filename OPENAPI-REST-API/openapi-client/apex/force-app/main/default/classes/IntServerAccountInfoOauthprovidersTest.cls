@isTest
private class IntServerAccountInfoOauthprovidersTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerAccountInfoOauthproviders accountInfoOauthproviders1 = IntServerAccountInfoOauthproviders.getExample();
        IntServerAccountInfoOauthproviders accountInfoOauthproviders2 = accountInfoOauthproviders1;
        IntServerAccountInfoOauthproviders accountInfoOauthproviders3 = new IntServerAccountInfoOauthproviders();
        IntServerAccountInfoOauthproviders accountInfoOauthproviders4 = accountInfoOauthproviders3;

        System.assert(accountInfoOauthproviders1.equals(accountInfoOauthproviders2));
        System.assert(accountInfoOauthproviders2.equals(accountInfoOauthproviders1));
        System.assert(accountInfoOauthproviders1.equals(accountInfoOauthproviders1));
        System.assert(accountInfoOauthproviders3.equals(accountInfoOauthproviders4));
        System.assert(accountInfoOauthproviders4.equals(accountInfoOauthproviders3));
        System.assert(accountInfoOauthproviders3.equals(accountInfoOauthproviders3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerAccountInfoOauthproviders accountInfoOauthproviders1 = IntServerAccountInfoOauthproviders.getExample();
        IntServerAccountInfoOauthproviders accountInfoOauthproviders2 = IntServerAccountInfoOauthproviders.getExample();
        IntServerAccountInfoOauthproviders accountInfoOauthproviders3 = new IntServerAccountInfoOauthproviders();
        IntServerAccountInfoOauthproviders accountInfoOauthproviders4 = new IntServerAccountInfoOauthproviders();

        System.assert(accountInfoOauthproviders1.equals(accountInfoOauthproviders2));
        System.assert(accountInfoOauthproviders2.equals(accountInfoOauthproviders1));
        System.assert(accountInfoOauthproviders3.equals(accountInfoOauthproviders4));
        System.assert(accountInfoOauthproviders4.equals(accountInfoOauthproviders3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerAccountInfoOauthproviders accountInfoOauthproviders1 = IntServerAccountInfoOauthproviders.getExample();
        IntServerAccountInfoOauthproviders accountInfoOauthproviders2 = new IntServerAccountInfoOauthproviders();

        System.assertEquals(false, accountInfoOauthproviders1.equals('foo'));
        System.assertEquals(false, accountInfoOauthproviders2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerAccountInfoOauthproviders accountInfoOauthproviders1 = IntServerAccountInfoOauthproviders.getExample();
        IntServerAccountInfoOauthproviders accountInfoOauthproviders2 = new IntServerAccountInfoOauthproviders();
        IntServerAccountInfoOauthproviders accountInfoOauthproviders3;

        System.assertEquals(false, accountInfoOauthproviders1.equals(accountInfoOauthproviders3));
        System.assertEquals(false, accountInfoOauthproviders2.equals(accountInfoOauthproviders3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerAccountInfoOauthproviders accountInfoOauthproviders1 = IntServerAccountInfoOauthproviders.getExample();
        IntServerAccountInfoOauthproviders accountInfoOauthproviders2 = new IntServerAccountInfoOauthproviders();

        System.assertEquals(accountInfoOauthproviders1.hashCode(), accountInfoOauthproviders1.hashCode());
        System.assertEquals(accountInfoOauthproviders2.hashCode(), accountInfoOauthproviders2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerAccountInfoOauthproviders accountInfoOauthproviders1 = IntServerAccountInfoOauthproviders.getExample();
        IntServerAccountInfoOauthproviders accountInfoOauthproviders2 = IntServerAccountInfoOauthproviders.getExample();
        IntServerAccountInfoOauthproviders accountInfoOauthproviders3 = new IntServerAccountInfoOauthproviders();
        IntServerAccountInfoOauthproviders accountInfoOauthproviders4 = new IntServerAccountInfoOauthproviders();

        System.assert(accountInfoOauthproviders1.equals(accountInfoOauthproviders2));
        System.assert(accountInfoOauthproviders3.equals(accountInfoOauthproviders4));
        System.assertEquals(accountInfoOauthproviders1.hashCode(), accountInfoOauthproviders2.hashCode());
        System.assertEquals(accountInfoOauthproviders3.hashCode(), accountInfoOauthproviders4.hashCode());
    }
}
