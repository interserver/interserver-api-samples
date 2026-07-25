@isTest
private class IntServerAccountInfoOauthConfigProviTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerAccountInfoOauthConfigProvi accountInfoOauthConfigProvidersValue1 = IntServerAccountInfoOauthConfigProvi.getExample();
        IntServerAccountInfoOauthConfigProvi accountInfoOauthConfigProvidersValue2 = accountInfoOauthConfigProvidersValue1;
        IntServerAccountInfoOauthConfigProvi accountInfoOauthConfigProvidersValue3 = new IntServerAccountInfoOauthConfigProvi();
        IntServerAccountInfoOauthConfigProvi accountInfoOauthConfigProvidersValue4 = accountInfoOauthConfigProvidersValue3;

        System.assert(accountInfoOauthConfigProvidersValue1.equals(accountInfoOauthConfigProvidersValue2));
        System.assert(accountInfoOauthConfigProvidersValue2.equals(accountInfoOauthConfigProvidersValue1));
        System.assert(accountInfoOauthConfigProvidersValue1.equals(accountInfoOauthConfigProvidersValue1));
        System.assert(accountInfoOauthConfigProvidersValue3.equals(accountInfoOauthConfigProvidersValue4));
        System.assert(accountInfoOauthConfigProvidersValue4.equals(accountInfoOauthConfigProvidersValue3));
        System.assert(accountInfoOauthConfigProvidersValue3.equals(accountInfoOauthConfigProvidersValue3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerAccountInfoOauthConfigProvi accountInfoOauthConfigProvidersValue1 = IntServerAccountInfoOauthConfigProvi.getExample();
        IntServerAccountInfoOauthConfigProvi accountInfoOauthConfigProvidersValue2 = IntServerAccountInfoOauthConfigProvi.getExample();
        IntServerAccountInfoOauthConfigProvi accountInfoOauthConfigProvidersValue3 = new IntServerAccountInfoOauthConfigProvi();
        IntServerAccountInfoOauthConfigProvi accountInfoOauthConfigProvidersValue4 = new IntServerAccountInfoOauthConfigProvi();

        System.assert(accountInfoOauthConfigProvidersValue1.equals(accountInfoOauthConfigProvidersValue2));
        System.assert(accountInfoOauthConfigProvidersValue2.equals(accountInfoOauthConfigProvidersValue1));
        System.assert(accountInfoOauthConfigProvidersValue3.equals(accountInfoOauthConfigProvidersValue4));
        System.assert(accountInfoOauthConfigProvidersValue4.equals(accountInfoOauthConfigProvidersValue3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerAccountInfoOauthConfigProvi accountInfoOauthConfigProvidersValue1 = IntServerAccountInfoOauthConfigProvi.getExample();
        IntServerAccountInfoOauthConfigProvi accountInfoOauthConfigProvidersValue2 = new IntServerAccountInfoOauthConfigProvi();

        System.assertEquals(false, accountInfoOauthConfigProvidersValue1.equals('foo'));
        System.assertEquals(false, accountInfoOauthConfigProvidersValue2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerAccountInfoOauthConfigProvi accountInfoOauthConfigProvidersValue1 = IntServerAccountInfoOauthConfigProvi.getExample();
        IntServerAccountInfoOauthConfigProvi accountInfoOauthConfigProvidersValue2 = new IntServerAccountInfoOauthConfigProvi();
        IntServerAccountInfoOauthConfigProvi accountInfoOauthConfigProvidersValue3;

        System.assertEquals(false, accountInfoOauthConfigProvidersValue1.equals(accountInfoOauthConfigProvidersValue3));
        System.assertEquals(false, accountInfoOauthConfigProvidersValue2.equals(accountInfoOauthConfigProvidersValue3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerAccountInfoOauthConfigProvi accountInfoOauthConfigProvidersValue1 = IntServerAccountInfoOauthConfigProvi.getExample();
        IntServerAccountInfoOauthConfigProvi accountInfoOauthConfigProvidersValue2 = new IntServerAccountInfoOauthConfigProvi();

        System.assertEquals(accountInfoOauthConfigProvidersValue1.hashCode(), accountInfoOauthConfigProvidersValue1.hashCode());
        System.assertEquals(accountInfoOauthConfigProvidersValue2.hashCode(), accountInfoOauthConfigProvidersValue2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerAccountInfoOauthConfigProvi accountInfoOauthConfigProvidersValue1 = IntServerAccountInfoOauthConfigProvi.getExample();
        IntServerAccountInfoOauthConfigProvi accountInfoOauthConfigProvidersValue2 = IntServerAccountInfoOauthConfigProvi.getExample();
        IntServerAccountInfoOauthConfigProvi accountInfoOauthConfigProvidersValue3 = new IntServerAccountInfoOauthConfigProvi();
        IntServerAccountInfoOauthConfigProvi accountInfoOauthConfigProvidersValue4 = new IntServerAccountInfoOauthConfigProvi();

        System.assert(accountInfoOauthConfigProvidersValue1.equals(accountInfoOauthConfigProvidersValue2));
        System.assert(accountInfoOauthConfigProvidersValue3.equals(accountInfoOauthConfigProvidersValue4));
        System.assertEquals(accountInfoOauthConfigProvidersValue1.hashCode(), accountInfoOauthConfigProvidersValue2.hashCode());
        System.assertEquals(accountInfoOauthConfigProvidersValue3.hashCode(), accountInfoOauthConfigProvidersValue4.hashCode());
    }
}
