@isTest
private class IntServerAccountInfoOauthConfigTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerAccountInfoOauthConfig accountInfoOauthConfig1 = IntServerAccountInfoOauthConfig.getExample();
        IntServerAccountInfoOauthConfig accountInfoOauthConfig2 = accountInfoOauthConfig1;
        IntServerAccountInfoOauthConfig accountInfoOauthConfig3 = new IntServerAccountInfoOauthConfig();
        IntServerAccountInfoOauthConfig accountInfoOauthConfig4 = accountInfoOauthConfig3;

        System.assert(accountInfoOauthConfig1.equals(accountInfoOauthConfig2));
        System.assert(accountInfoOauthConfig2.equals(accountInfoOauthConfig1));
        System.assert(accountInfoOauthConfig1.equals(accountInfoOauthConfig1));
        System.assert(accountInfoOauthConfig3.equals(accountInfoOauthConfig4));
        System.assert(accountInfoOauthConfig4.equals(accountInfoOauthConfig3));
        System.assert(accountInfoOauthConfig3.equals(accountInfoOauthConfig3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerAccountInfoOauthConfig accountInfoOauthConfig1 = IntServerAccountInfoOauthConfig.getExample();
        IntServerAccountInfoOauthConfig accountInfoOauthConfig2 = IntServerAccountInfoOauthConfig.getExample();
        IntServerAccountInfoOauthConfig accountInfoOauthConfig3 = new IntServerAccountInfoOauthConfig();
        IntServerAccountInfoOauthConfig accountInfoOauthConfig4 = new IntServerAccountInfoOauthConfig();

        System.assert(accountInfoOauthConfig1.equals(accountInfoOauthConfig2));
        System.assert(accountInfoOauthConfig2.equals(accountInfoOauthConfig1));
        System.assert(accountInfoOauthConfig3.equals(accountInfoOauthConfig4));
        System.assert(accountInfoOauthConfig4.equals(accountInfoOauthConfig3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerAccountInfoOauthConfig accountInfoOauthConfig1 = IntServerAccountInfoOauthConfig.getExample();
        IntServerAccountInfoOauthConfig accountInfoOauthConfig2 = new IntServerAccountInfoOauthConfig();

        System.assertEquals(false, accountInfoOauthConfig1.equals('foo'));
        System.assertEquals(false, accountInfoOauthConfig2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerAccountInfoOauthConfig accountInfoOauthConfig1 = IntServerAccountInfoOauthConfig.getExample();
        IntServerAccountInfoOauthConfig accountInfoOauthConfig2 = new IntServerAccountInfoOauthConfig();
        IntServerAccountInfoOauthConfig accountInfoOauthConfig3;

        System.assertEquals(false, accountInfoOauthConfig1.equals(accountInfoOauthConfig3));
        System.assertEquals(false, accountInfoOauthConfig2.equals(accountInfoOauthConfig3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerAccountInfoOauthConfig accountInfoOauthConfig1 = IntServerAccountInfoOauthConfig.getExample();
        IntServerAccountInfoOauthConfig accountInfoOauthConfig2 = new IntServerAccountInfoOauthConfig();

        System.assertEquals(accountInfoOauthConfig1.hashCode(), accountInfoOauthConfig1.hashCode());
        System.assertEquals(accountInfoOauthConfig2.hashCode(), accountInfoOauthConfig2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerAccountInfoOauthConfig accountInfoOauthConfig1 = IntServerAccountInfoOauthConfig.getExample();
        IntServerAccountInfoOauthConfig accountInfoOauthConfig2 = IntServerAccountInfoOauthConfig.getExample();
        IntServerAccountInfoOauthConfig accountInfoOauthConfig3 = new IntServerAccountInfoOauthConfig();
        IntServerAccountInfoOauthConfig accountInfoOauthConfig4 = new IntServerAccountInfoOauthConfig();

        System.assert(accountInfoOauthConfig1.equals(accountInfoOauthConfig2));
        System.assert(accountInfoOauthConfig3.equals(accountInfoOauthConfig4));
        System.assertEquals(accountInfoOauthConfig1.hashCode(), accountInfoOauthConfig2.hashCode());
        System.assertEquals(accountInfoOauthConfig3.hashCode(), accountInfoOauthConfig4.hashCode());
    }
}
