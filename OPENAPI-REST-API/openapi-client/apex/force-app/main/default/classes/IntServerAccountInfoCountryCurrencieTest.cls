@isTest
private class IntServerAccountInfoCountryCurrencieTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerAccountInfoCountryCurrencie accountInfoCountryCurrencies1 = IntServerAccountInfoCountryCurrencie.getExample();
        IntServerAccountInfoCountryCurrencie accountInfoCountryCurrencies2 = accountInfoCountryCurrencies1;
        IntServerAccountInfoCountryCurrencie accountInfoCountryCurrencies3 = new IntServerAccountInfoCountryCurrencie();
        IntServerAccountInfoCountryCurrencie accountInfoCountryCurrencies4 = accountInfoCountryCurrencies3;

        System.assert(accountInfoCountryCurrencies1.equals(accountInfoCountryCurrencies2));
        System.assert(accountInfoCountryCurrencies2.equals(accountInfoCountryCurrencies1));
        System.assert(accountInfoCountryCurrencies1.equals(accountInfoCountryCurrencies1));
        System.assert(accountInfoCountryCurrencies3.equals(accountInfoCountryCurrencies4));
        System.assert(accountInfoCountryCurrencies4.equals(accountInfoCountryCurrencies3));
        System.assert(accountInfoCountryCurrencies3.equals(accountInfoCountryCurrencies3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerAccountInfoCountryCurrencie accountInfoCountryCurrencies1 = IntServerAccountInfoCountryCurrencie.getExample();
        IntServerAccountInfoCountryCurrencie accountInfoCountryCurrencies2 = IntServerAccountInfoCountryCurrencie.getExample();
        IntServerAccountInfoCountryCurrencie accountInfoCountryCurrencies3 = new IntServerAccountInfoCountryCurrencie();
        IntServerAccountInfoCountryCurrencie accountInfoCountryCurrencies4 = new IntServerAccountInfoCountryCurrencie();

        System.assert(accountInfoCountryCurrencies1.equals(accountInfoCountryCurrencies2));
        System.assert(accountInfoCountryCurrencies2.equals(accountInfoCountryCurrencies1));
        System.assert(accountInfoCountryCurrencies3.equals(accountInfoCountryCurrencies4));
        System.assert(accountInfoCountryCurrencies4.equals(accountInfoCountryCurrencies3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerAccountInfoCountryCurrencie accountInfoCountryCurrencies1 = IntServerAccountInfoCountryCurrencie.getExample();
        IntServerAccountInfoCountryCurrencie accountInfoCountryCurrencies2 = new IntServerAccountInfoCountryCurrencie();

        System.assertEquals(false, accountInfoCountryCurrencies1.equals('foo'));
        System.assertEquals(false, accountInfoCountryCurrencies2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerAccountInfoCountryCurrencie accountInfoCountryCurrencies1 = IntServerAccountInfoCountryCurrencie.getExample();
        IntServerAccountInfoCountryCurrencie accountInfoCountryCurrencies2 = new IntServerAccountInfoCountryCurrencie();
        IntServerAccountInfoCountryCurrencie accountInfoCountryCurrencies3;

        System.assertEquals(false, accountInfoCountryCurrencies1.equals(accountInfoCountryCurrencies3));
        System.assertEquals(false, accountInfoCountryCurrencies2.equals(accountInfoCountryCurrencies3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerAccountInfoCountryCurrencie accountInfoCountryCurrencies1 = IntServerAccountInfoCountryCurrencie.getExample();
        IntServerAccountInfoCountryCurrencie accountInfoCountryCurrencies2 = new IntServerAccountInfoCountryCurrencie();

        System.assertEquals(accountInfoCountryCurrencies1.hashCode(), accountInfoCountryCurrencies1.hashCode());
        System.assertEquals(accountInfoCountryCurrencies2.hashCode(), accountInfoCountryCurrencies2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerAccountInfoCountryCurrencie accountInfoCountryCurrencies1 = IntServerAccountInfoCountryCurrencie.getExample();
        IntServerAccountInfoCountryCurrencie accountInfoCountryCurrencies2 = IntServerAccountInfoCountryCurrencie.getExample();
        IntServerAccountInfoCountryCurrencie accountInfoCountryCurrencies3 = new IntServerAccountInfoCountryCurrencie();
        IntServerAccountInfoCountryCurrencie accountInfoCountryCurrencies4 = new IntServerAccountInfoCountryCurrencie();

        System.assert(accountInfoCountryCurrencies1.equals(accountInfoCountryCurrencies2));
        System.assert(accountInfoCountryCurrencies3.equals(accountInfoCountryCurrencies4));
        System.assertEquals(accountInfoCountryCurrencies1.hashCode(), accountInfoCountryCurrencies2.hashCode());
        System.assertEquals(accountInfoCountryCurrencies3.hashCode(), accountInfoCountryCurrencies4.hashCode());
    }
}
