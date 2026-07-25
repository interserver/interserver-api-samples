@isTest
private class IntServerPostOauthCallback200ResponsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerPostOauthCallback200Respons postOauthCallback200Response1 = IntServerPostOauthCallback200Respons.getExample();
        IntServerPostOauthCallback200Respons postOauthCallback200Response2 = postOauthCallback200Response1;
        IntServerPostOauthCallback200Respons postOauthCallback200Response3 = new IntServerPostOauthCallback200Respons();
        IntServerPostOauthCallback200Respons postOauthCallback200Response4 = postOauthCallback200Response3;

        System.assert(postOauthCallback200Response1.equals(postOauthCallback200Response2));
        System.assert(postOauthCallback200Response2.equals(postOauthCallback200Response1));
        System.assert(postOauthCallback200Response1.equals(postOauthCallback200Response1));
        System.assert(postOauthCallback200Response3.equals(postOauthCallback200Response4));
        System.assert(postOauthCallback200Response4.equals(postOauthCallback200Response3));
        System.assert(postOauthCallback200Response3.equals(postOauthCallback200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerPostOauthCallback200Respons postOauthCallback200Response1 = IntServerPostOauthCallback200Respons.getExample();
        IntServerPostOauthCallback200Respons postOauthCallback200Response2 = IntServerPostOauthCallback200Respons.getExample();
        IntServerPostOauthCallback200Respons postOauthCallback200Response3 = new IntServerPostOauthCallback200Respons();
        IntServerPostOauthCallback200Respons postOauthCallback200Response4 = new IntServerPostOauthCallback200Respons();

        System.assert(postOauthCallback200Response1.equals(postOauthCallback200Response2));
        System.assert(postOauthCallback200Response2.equals(postOauthCallback200Response1));
        System.assert(postOauthCallback200Response3.equals(postOauthCallback200Response4));
        System.assert(postOauthCallback200Response4.equals(postOauthCallback200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerPostOauthCallback200Respons postOauthCallback200Response1 = IntServerPostOauthCallback200Respons.getExample();
        IntServerPostOauthCallback200Respons postOauthCallback200Response2 = new IntServerPostOauthCallback200Respons();

        System.assertEquals(false, postOauthCallback200Response1.equals('foo'));
        System.assertEquals(false, postOauthCallback200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerPostOauthCallback200Respons postOauthCallback200Response1 = IntServerPostOauthCallback200Respons.getExample();
        IntServerPostOauthCallback200Respons postOauthCallback200Response2 = new IntServerPostOauthCallback200Respons();
        IntServerPostOauthCallback200Respons postOauthCallback200Response3;

        System.assertEquals(false, postOauthCallback200Response1.equals(postOauthCallback200Response3));
        System.assertEquals(false, postOauthCallback200Response2.equals(postOauthCallback200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerPostOauthCallback200Respons postOauthCallback200Response1 = IntServerPostOauthCallback200Respons.getExample();
        IntServerPostOauthCallback200Respons postOauthCallback200Response2 = new IntServerPostOauthCallback200Respons();

        System.assertEquals(postOauthCallback200Response1.hashCode(), postOauthCallback200Response1.hashCode());
        System.assertEquals(postOauthCallback200Response2.hashCode(), postOauthCallback200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerPostOauthCallback200Respons postOauthCallback200Response1 = IntServerPostOauthCallback200Respons.getExample();
        IntServerPostOauthCallback200Respons postOauthCallback200Response2 = IntServerPostOauthCallback200Respons.getExample();
        IntServerPostOauthCallback200Respons postOauthCallback200Response3 = new IntServerPostOauthCallback200Respons();
        IntServerPostOauthCallback200Respons postOauthCallback200Response4 = new IntServerPostOauthCallback200Respons();

        System.assert(postOauthCallback200Response1.equals(postOauthCallback200Response2));
        System.assert(postOauthCallback200Response3.equals(postOauthCallback200Response4));
        System.assertEquals(postOauthCallback200Response1.hashCode(), postOauthCallback200Response2.hashCode());
        System.assertEquals(postOauthCallback200Response3.hashCode(), postOauthCallback200Response4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerPostOauthCallback200Respons postOauthCallback200Response = new IntServerPostOauthCallback200Respons();
        Map<String, String> x-property-mappings = postOauthCallback200Response.getx-property-mappings();
        System.assertEquals('accountId', x-property-mappings.get('account_id'));
        System.assertEquals('errorCode', x-property-mappings.get('error_code'));
    }
}
