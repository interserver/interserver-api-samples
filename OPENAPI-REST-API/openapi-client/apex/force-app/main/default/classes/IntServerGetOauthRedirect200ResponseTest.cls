@isTest
private class IntServerGetOauthRedirect200ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerGetOauthRedirect200Response getOauthRedirect200Response1 = IntServerGetOauthRedirect200Response.getExample();
        IntServerGetOauthRedirect200Response getOauthRedirect200Response2 = getOauthRedirect200Response1;
        IntServerGetOauthRedirect200Response getOauthRedirect200Response3 = new IntServerGetOauthRedirect200Response();
        IntServerGetOauthRedirect200Response getOauthRedirect200Response4 = getOauthRedirect200Response3;

        System.assert(getOauthRedirect200Response1.equals(getOauthRedirect200Response2));
        System.assert(getOauthRedirect200Response2.equals(getOauthRedirect200Response1));
        System.assert(getOauthRedirect200Response1.equals(getOauthRedirect200Response1));
        System.assert(getOauthRedirect200Response3.equals(getOauthRedirect200Response4));
        System.assert(getOauthRedirect200Response4.equals(getOauthRedirect200Response3));
        System.assert(getOauthRedirect200Response3.equals(getOauthRedirect200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerGetOauthRedirect200Response getOauthRedirect200Response1 = IntServerGetOauthRedirect200Response.getExample();
        IntServerGetOauthRedirect200Response getOauthRedirect200Response2 = IntServerGetOauthRedirect200Response.getExample();
        IntServerGetOauthRedirect200Response getOauthRedirect200Response3 = new IntServerGetOauthRedirect200Response();
        IntServerGetOauthRedirect200Response getOauthRedirect200Response4 = new IntServerGetOauthRedirect200Response();

        System.assert(getOauthRedirect200Response1.equals(getOauthRedirect200Response2));
        System.assert(getOauthRedirect200Response2.equals(getOauthRedirect200Response1));
        System.assert(getOauthRedirect200Response3.equals(getOauthRedirect200Response4));
        System.assert(getOauthRedirect200Response4.equals(getOauthRedirect200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerGetOauthRedirect200Response getOauthRedirect200Response1 = IntServerGetOauthRedirect200Response.getExample();
        IntServerGetOauthRedirect200Response getOauthRedirect200Response2 = new IntServerGetOauthRedirect200Response();

        System.assertEquals(false, getOauthRedirect200Response1.equals('foo'));
        System.assertEquals(false, getOauthRedirect200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerGetOauthRedirect200Response getOauthRedirect200Response1 = IntServerGetOauthRedirect200Response.getExample();
        IntServerGetOauthRedirect200Response getOauthRedirect200Response2 = new IntServerGetOauthRedirect200Response();
        IntServerGetOauthRedirect200Response getOauthRedirect200Response3;

        System.assertEquals(false, getOauthRedirect200Response1.equals(getOauthRedirect200Response3));
        System.assertEquals(false, getOauthRedirect200Response2.equals(getOauthRedirect200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerGetOauthRedirect200Response getOauthRedirect200Response1 = IntServerGetOauthRedirect200Response.getExample();
        IntServerGetOauthRedirect200Response getOauthRedirect200Response2 = new IntServerGetOauthRedirect200Response();

        System.assertEquals(getOauthRedirect200Response1.hashCode(), getOauthRedirect200Response1.hashCode());
        System.assertEquals(getOauthRedirect200Response2.hashCode(), getOauthRedirect200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerGetOauthRedirect200Response getOauthRedirect200Response1 = IntServerGetOauthRedirect200Response.getExample();
        IntServerGetOauthRedirect200Response getOauthRedirect200Response2 = IntServerGetOauthRedirect200Response.getExample();
        IntServerGetOauthRedirect200Response getOauthRedirect200Response3 = new IntServerGetOauthRedirect200Response();
        IntServerGetOauthRedirect200Response getOauthRedirect200Response4 = new IntServerGetOauthRedirect200Response();

        System.assert(getOauthRedirect200Response1.equals(getOauthRedirect200Response2));
        System.assert(getOauthRedirect200Response3.equals(getOauthRedirect200Response4));
        System.assertEquals(getOauthRedirect200Response1.hashCode(), getOauthRedirect200Response2.hashCode());
        System.assertEquals(getOauthRedirect200Response3.hashCode(), getOauthRedirect200Response4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerGetOauthRedirect200Response getOauthRedirect200Response = new IntServerGetOauthRedirect200Response();
        Map<String, String> x-property-mappings = getOauthRedirect200Response.getx-property-mappings();
        System.assertEquals('redirectUrl', x-property-mappings.get('redirect_url'));
    }
}
