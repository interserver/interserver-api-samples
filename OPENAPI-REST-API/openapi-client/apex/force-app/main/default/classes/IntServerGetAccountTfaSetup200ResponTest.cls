@isTest
private class IntServerGetAccountTfaSetup200ResponTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerGetAccountTfaSetup200Respon getAccountTfaSetup200Response1 = IntServerGetAccountTfaSetup200Respon.getExample();
        IntServerGetAccountTfaSetup200Respon getAccountTfaSetup200Response2 = getAccountTfaSetup200Response1;
        IntServerGetAccountTfaSetup200Respon getAccountTfaSetup200Response3 = new IntServerGetAccountTfaSetup200Respon();
        IntServerGetAccountTfaSetup200Respon getAccountTfaSetup200Response4 = getAccountTfaSetup200Response3;

        System.assert(getAccountTfaSetup200Response1.equals(getAccountTfaSetup200Response2));
        System.assert(getAccountTfaSetup200Response2.equals(getAccountTfaSetup200Response1));
        System.assert(getAccountTfaSetup200Response1.equals(getAccountTfaSetup200Response1));
        System.assert(getAccountTfaSetup200Response3.equals(getAccountTfaSetup200Response4));
        System.assert(getAccountTfaSetup200Response4.equals(getAccountTfaSetup200Response3));
        System.assert(getAccountTfaSetup200Response3.equals(getAccountTfaSetup200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerGetAccountTfaSetup200Respon getAccountTfaSetup200Response1 = IntServerGetAccountTfaSetup200Respon.getExample();
        IntServerGetAccountTfaSetup200Respon getAccountTfaSetup200Response2 = IntServerGetAccountTfaSetup200Respon.getExample();
        IntServerGetAccountTfaSetup200Respon getAccountTfaSetup200Response3 = new IntServerGetAccountTfaSetup200Respon();
        IntServerGetAccountTfaSetup200Respon getAccountTfaSetup200Response4 = new IntServerGetAccountTfaSetup200Respon();

        System.assert(getAccountTfaSetup200Response1.equals(getAccountTfaSetup200Response2));
        System.assert(getAccountTfaSetup200Response2.equals(getAccountTfaSetup200Response1));
        System.assert(getAccountTfaSetup200Response3.equals(getAccountTfaSetup200Response4));
        System.assert(getAccountTfaSetup200Response4.equals(getAccountTfaSetup200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerGetAccountTfaSetup200Respon getAccountTfaSetup200Response1 = IntServerGetAccountTfaSetup200Respon.getExample();
        IntServerGetAccountTfaSetup200Respon getAccountTfaSetup200Response2 = new IntServerGetAccountTfaSetup200Respon();

        System.assertEquals(false, getAccountTfaSetup200Response1.equals('foo'));
        System.assertEquals(false, getAccountTfaSetup200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerGetAccountTfaSetup200Respon getAccountTfaSetup200Response1 = IntServerGetAccountTfaSetup200Respon.getExample();
        IntServerGetAccountTfaSetup200Respon getAccountTfaSetup200Response2 = new IntServerGetAccountTfaSetup200Respon();
        IntServerGetAccountTfaSetup200Respon getAccountTfaSetup200Response3;

        System.assertEquals(false, getAccountTfaSetup200Response1.equals(getAccountTfaSetup200Response3));
        System.assertEquals(false, getAccountTfaSetup200Response2.equals(getAccountTfaSetup200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerGetAccountTfaSetup200Respon getAccountTfaSetup200Response1 = IntServerGetAccountTfaSetup200Respon.getExample();
        IntServerGetAccountTfaSetup200Respon getAccountTfaSetup200Response2 = new IntServerGetAccountTfaSetup200Respon();

        System.assertEquals(getAccountTfaSetup200Response1.hashCode(), getAccountTfaSetup200Response1.hashCode());
        System.assertEquals(getAccountTfaSetup200Response2.hashCode(), getAccountTfaSetup200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerGetAccountTfaSetup200Respon getAccountTfaSetup200Response1 = IntServerGetAccountTfaSetup200Respon.getExample();
        IntServerGetAccountTfaSetup200Respon getAccountTfaSetup200Response2 = IntServerGetAccountTfaSetup200Respon.getExample();
        IntServerGetAccountTfaSetup200Respon getAccountTfaSetup200Response3 = new IntServerGetAccountTfaSetup200Respon();
        IntServerGetAccountTfaSetup200Respon getAccountTfaSetup200Response4 = new IntServerGetAccountTfaSetup200Respon();

        System.assert(getAccountTfaSetup200Response1.equals(getAccountTfaSetup200Response2));
        System.assert(getAccountTfaSetup200Response3.equals(getAccountTfaSetup200Response4));
        System.assertEquals(getAccountTfaSetup200Response1.hashCode(), getAccountTfaSetup200Response2.hashCode());
        System.assertEquals(getAccountTfaSetup200Response3.hashCode(), getAccountTfaSetup200Response4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerGetAccountTfaSetup200Respon getAccountTfaSetup200Response = new IntServerGetAccountTfaSetup200Respon();
        Map<String, String> x-property-mappings = getAccountTfaSetup200Response.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('2fa_google_key'));
        System.assertEquals('', x-property-mappings.get('2fa_google_split'));
    }
}
