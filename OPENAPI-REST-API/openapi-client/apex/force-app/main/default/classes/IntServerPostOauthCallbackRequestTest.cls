@isTest
private class IntServerPostOauthCallbackRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerPostOauthCallbackRequest postOauthCallbackRequest1 = IntServerPostOauthCallbackRequest.getExample();
        IntServerPostOauthCallbackRequest postOauthCallbackRequest2 = postOauthCallbackRequest1;
        IntServerPostOauthCallbackRequest postOauthCallbackRequest3 = new IntServerPostOauthCallbackRequest();
        IntServerPostOauthCallbackRequest postOauthCallbackRequest4 = postOauthCallbackRequest3;

        System.assert(postOauthCallbackRequest1.equals(postOauthCallbackRequest2));
        System.assert(postOauthCallbackRequest2.equals(postOauthCallbackRequest1));
        System.assert(postOauthCallbackRequest1.equals(postOauthCallbackRequest1));
        System.assert(postOauthCallbackRequest3.equals(postOauthCallbackRequest4));
        System.assert(postOauthCallbackRequest4.equals(postOauthCallbackRequest3));
        System.assert(postOauthCallbackRequest3.equals(postOauthCallbackRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerPostOauthCallbackRequest postOauthCallbackRequest1 = IntServerPostOauthCallbackRequest.getExample();
        IntServerPostOauthCallbackRequest postOauthCallbackRequest2 = IntServerPostOauthCallbackRequest.getExample();
        IntServerPostOauthCallbackRequest postOauthCallbackRequest3 = new IntServerPostOauthCallbackRequest();
        IntServerPostOauthCallbackRequest postOauthCallbackRequest4 = new IntServerPostOauthCallbackRequest();

        System.assert(postOauthCallbackRequest1.equals(postOauthCallbackRequest2));
        System.assert(postOauthCallbackRequest2.equals(postOauthCallbackRequest1));
        System.assert(postOauthCallbackRequest3.equals(postOauthCallbackRequest4));
        System.assert(postOauthCallbackRequest4.equals(postOauthCallbackRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerPostOauthCallbackRequest postOauthCallbackRequest1 = IntServerPostOauthCallbackRequest.getExample();
        IntServerPostOauthCallbackRequest postOauthCallbackRequest2 = new IntServerPostOauthCallbackRequest();

        System.assertEquals(false, postOauthCallbackRequest1.equals('foo'));
        System.assertEquals(false, postOauthCallbackRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerPostOauthCallbackRequest postOauthCallbackRequest1 = IntServerPostOauthCallbackRequest.getExample();
        IntServerPostOauthCallbackRequest postOauthCallbackRequest2 = new IntServerPostOauthCallbackRequest();
        IntServerPostOauthCallbackRequest postOauthCallbackRequest3;

        System.assertEquals(false, postOauthCallbackRequest1.equals(postOauthCallbackRequest3));
        System.assertEquals(false, postOauthCallbackRequest2.equals(postOauthCallbackRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerPostOauthCallbackRequest postOauthCallbackRequest1 = IntServerPostOauthCallbackRequest.getExample();
        IntServerPostOauthCallbackRequest postOauthCallbackRequest2 = new IntServerPostOauthCallbackRequest();

        System.assertEquals(postOauthCallbackRequest1.hashCode(), postOauthCallbackRequest1.hashCode());
        System.assertEquals(postOauthCallbackRequest2.hashCode(), postOauthCallbackRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerPostOauthCallbackRequest postOauthCallbackRequest1 = IntServerPostOauthCallbackRequest.getExample();
        IntServerPostOauthCallbackRequest postOauthCallbackRequest2 = IntServerPostOauthCallbackRequest.getExample();
        IntServerPostOauthCallbackRequest postOauthCallbackRequest3 = new IntServerPostOauthCallbackRequest();
        IntServerPostOauthCallbackRequest postOauthCallbackRequest4 = new IntServerPostOauthCallbackRequest();

        System.assert(postOauthCallbackRequest1.equals(postOauthCallbackRequest2));
        System.assert(postOauthCallbackRequest3.equals(postOauthCallbackRequest4));
        System.assertEquals(postOauthCallbackRequest1.hashCode(), postOauthCallbackRequest2.hashCode());
        System.assertEquals(postOauthCallbackRequest3.hashCode(), postOauthCallbackRequest4.hashCode());
    }
}
