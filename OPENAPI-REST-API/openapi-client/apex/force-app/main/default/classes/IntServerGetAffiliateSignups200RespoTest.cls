@isTest
private class IntServerGetAffiliateSignups200RespoTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerGetAffiliateSignups200Respo getAffiliateSignups200Response1 = IntServerGetAffiliateSignups200Respo.getExample();
        IntServerGetAffiliateSignups200Respo getAffiliateSignups200Response2 = getAffiliateSignups200Response1;
        IntServerGetAffiliateSignups200Respo getAffiliateSignups200Response3 = new IntServerGetAffiliateSignups200Respo();
        IntServerGetAffiliateSignups200Respo getAffiliateSignups200Response4 = getAffiliateSignups200Response3;

        System.assert(getAffiliateSignups200Response1.equals(getAffiliateSignups200Response2));
        System.assert(getAffiliateSignups200Response2.equals(getAffiliateSignups200Response1));
        System.assert(getAffiliateSignups200Response1.equals(getAffiliateSignups200Response1));
        System.assert(getAffiliateSignups200Response3.equals(getAffiliateSignups200Response4));
        System.assert(getAffiliateSignups200Response4.equals(getAffiliateSignups200Response3));
        System.assert(getAffiliateSignups200Response3.equals(getAffiliateSignups200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerGetAffiliateSignups200Respo getAffiliateSignups200Response1 = IntServerGetAffiliateSignups200Respo.getExample();
        IntServerGetAffiliateSignups200Respo getAffiliateSignups200Response2 = IntServerGetAffiliateSignups200Respo.getExample();
        IntServerGetAffiliateSignups200Respo getAffiliateSignups200Response3 = new IntServerGetAffiliateSignups200Respo();
        IntServerGetAffiliateSignups200Respo getAffiliateSignups200Response4 = new IntServerGetAffiliateSignups200Respo();

        System.assert(getAffiliateSignups200Response1.equals(getAffiliateSignups200Response2));
        System.assert(getAffiliateSignups200Response2.equals(getAffiliateSignups200Response1));
        System.assert(getAffiliateSignups200Response3.equals(getAffiliateSignups200Response4));
        System.assert(getAffiliateSignups200Response4.equals(getAffiliateSignups200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerGetAffiliateSignups200Respo getAffiliateSignups200Response1 = IntServerGetAffiliateSignups200Respo.getExample();
        IntServerGetAffiliateSignups200Respo getAffiliateSignups200Response2 = new IntServerGetAffiliateSignups200Respo();

        System.assertEquals(false, getAffiliateSignups200Response1.equals('foo'));
        System.assertEquals(false, getAffiliateSignups200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerGetAffiliateSignups200Respo getAffiliateSignups200Response1 = IntServerGetAffiliateSignups200Respo.getExample();
        IntServerGetAffiliateSignups200Respo getAffiliateSignups200Response2 = new IntServerGetAffiliateSignups200Respo();
        IntServerGetAffiliateSignups200Respo getAffiliateSignups200Response3;

        System.assertEquals(false, getAffiliateSignups200Response1.equals(getAffiliateSignups200Response3));
        System.assertEquals(false, getAffiliateSignups200Response2.equals(getAffiliateSignups200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerGetAffiliateSignups200Respo getAffiliateSignups200Response1 = IntServerGetAffiliateSignups200Respo.getExample();
        IntServerGetAffiliateSignups200Respo getAffiliateSignups200Response2 = new IntServerGetAffiliateSignups200Respo();

        System.assertEquals(getAffiliateSignups200Response1.hashCode(), getAffiliateSignups200Response1.hashCode());
        System.assertEquals(getAffiliateSignups200Response2.hashCode(), getAffiliateSignups200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerGetAffiliateSignups200Respo getAffiliateSignups200Response1 = IntServerGetAffiliateSignups200Respo.getExample();
        IntServerGetAffiliateSignups200Respo getAffiliateSignups200Response2 = IntServerGetAffiliateSignups200Respo.getExample();
        IntServerGetAffiliateSignups200Respo getAffiliateSignups200Response3 = new IntServerGetAffiliateSignups200Respo();
        IntServerGetAffiliateSignups200Respo getAffiliateSignups200Response4 = new IntServerGetAffiliateSignups200Respo();

        System.assert(getAffiliateSignups200Response1.equals(getAffiliateSignups200Response2));
        System.assert(getAffiliateSignups200Response3.equals(getAffiliateSignups200Response4));
        System.assertEquals(getAffiliateSignups200Response1.hashCode(), getAffiliateSignups200Response2.hashCode());
        System.assertEquals(getAffiliateSignups200Response3.hashCode(), getAffiliateSignups200Response4.hashCode());
    }
}
