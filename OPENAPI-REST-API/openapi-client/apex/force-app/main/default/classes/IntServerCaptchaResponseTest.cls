@isTest
private class IntServerCaptchaResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerCaptchaResponse captchaResponse1 = IntServerCaptchaResponse.getExample();
        IntServerCaptchaResponse captchaResponse2 = captchaResponse1;
        IntServerCaptchaResponse captchaResponse3 = new IntServerCaptchaResponse();
        IntServerCaptchaResponse captchaResponse4 = captchaResponse3;

        System.assert(captchaResponse1.equals(captchaResponse2));
        System.assert(captchaResponse2.equals(captchaResponse1));
        System.assert(captchaResponse1.equals(captchaResponse1));
        System.assert(captchaResponse3.equals(captchaResponse4));
        System.assert(captchaResponse4.equals(captchaResponse3));
        System.assert(captchaResponse3.equals(captchaResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerCaptchaResponse captchaResponse1 = IntServerCaptchaResponse.getExample();
        IntServerCaptchaResponse captchaResponse2 = IntServerCaptchaResponse.getExample();
        IntServerCaptchaResponse captchaResponse3 = new IntServerCaptchaResponse();
        IntServerCaptchaResponse captchaResponse4 = new IntServerCaptchaResponse();

        System.assert(captchaResponse1.equals(captchaResponse2));
        System.assert(captchaResponse2.equals(captchaResponse1));
        System.assert(captchaResponse3.equals(captchaResponse4));
        System.assert(captchaResponse4.equals(captchaResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerCaptchaResponse captchaResponse1 = IntServerCaptchaResponse.getExample();
        IntServerCaptchaResponse captchaResponse2 = new IntServerCaptchaResponse();

        System.assertEquals(false, captchaResponse1.equals('foo'));
        System.assertEquals(false, captchaResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerCaptchaResponse captchaResponse1 = IntServerCaptchaResponse.getExample();
        IntServerCaptchaResponse captchaResponse2 = new IntServerCaptchaResponse();
        IntServerCaptchaResponse captchaResponse3;

        System.assertEquals(false, captchaResponse1.equals(captchaResponse3));
        System.assertEquals(false, captchaResponse2.equals(captchaResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerCaptchaResponse captchaResponse1 = IntServerCaptchaResponse.getExample();
        IntServerCaptchaResponse captchaResponse2 = new IntServerCaptchaResponse();

        System.assertEquals(captchaResponse1.hashCode(), captchaResponse1.hashCode());
        System.assertEquals(captchaResponse2.hashCode(), captchaResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerCaptchaResponse captchaResponse1 = IntServerCaptchaResponse.getExample();
        IntServerCaptchaResponse captchaResponse2 = IntServerCaptchaResponse.getExample();
        IntServerCaptchaResponse captchaResponse3 = new IntServerCaptchaResponse();
        IntServerCaptchaResponse captchaResponse4 = new IntServerCaptchaResponse();

        System.assert(captchaResponse1.equals(captchaResponse2));
        System.assert(captchaResponse3.equals(captchaResponse4));
        System.assertEquals(captchaResponse1.hashCode(), captchaResponse2.hashCode());
        System.assertEquals(captchaResponse3.hashCode(), captchaResponse4.hashCode());
    }
}
