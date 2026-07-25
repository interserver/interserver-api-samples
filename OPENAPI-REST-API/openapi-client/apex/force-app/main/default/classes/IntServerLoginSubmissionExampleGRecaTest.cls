@isTest
private class IntServerLoginSubmissionExampleGRecaTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerLoginSubmissionExampleGReca loginSubmissionExampleGRecaptchaResponse1 = IntServerLoginSubmissionExampleGReca.getExample();
        IntServerLoginSubmissionExampleGReca loginSubmissionExampleGRecaptchaResponse2 = loginSubmissionExampleGRecaptchaResponse1;
        IntServerLoginSubmissionExampleGReca loginSubmissionExampleGRecaptchaResponse3 = new IntServerLoginSubmissionExampleGReca();
        IntServerLoginSubmissionExampleGReca loginSubmissionExampleGRecaptchaResponse4 = loginSubmissionExampleGRecaptchaResponse3;

        System.assert(loginSubmissionExampleGRecaptchaResponse1.equals(loginSubmissionExampleGRecaptchaResponse2));
        System.assert(loginSubmissionExampleGRecaptchaResponse2.equals(loginSubmissionExampleGRecaptchaResponse1));
        System.assert(loginSubmissionExampleGRecaptchaResponse1.equals(loginSubmissionExampleGRecaptchaResponse1));
        System.assert(loginSubmissionExampleGRecaptchaResponse3.equals(loginSubmissionExampleGRecaptchaResponse4));
        System.assert(loginSubmissionExampleGRecaptchaResponse4.equals(loginSubmissionExampleGRecaptchaResponse3));
        System.assert(loginSubmissionExampleGRecaptchaResponse3.equals(loginSubmissionExampleGRecaptchaResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerLoginSubmissionExampleGReca loginSubmissionExampleGRecaptchaResponse1 = IntServerLoginSubmissionExampleGReca.getExample();
        IntServerLoginSubmissionExampleGReca loginSubmissionExampleGRecaptchaResponse2 = IntServerLoginSubmissionExampleGReca.getExample();
        IntServerLoginSubmissionExampleGReca loginSubmissionExampleGRecaptchaResponse3 = new IntServerLoginSubmissionExampleGReca();
        IntServerLoginSubmissionExampleGReca loginSubmissionExampleGRecaptchaResponse4 = new IntServerLoginSubmissionExampleGReca();

        System.assert(loginSubmissionExampleGRecaptchaResponse1.equals(loginSubmissionExampleGRecaptchaResponse2));
        System.assert(loginSubmissionExampleGRecaptchaResponse2.equals(loginSubmissionExampleGRecaptchaResponse1));
        System.assert(loginSubmissionExampleGRecaptchaResponse3.equals(loginSubmissionExampleGRecaptchaResponse4));
        System.assert(loginSubmissionExampleGRecaptchaResponse4.equals(loginSubmissionExampleGRecaptchaResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerLoginSubmissionExampleGReca loginSubmissionExampleGRecaptchaResponse1 = IntServerLoginSubmissionExampleGReca.getExample();
        IntServerLoginSubmissionExampleGReca loginSubmissionExampleGRecaptchaResponse2 = new IntServerLoginSubmissionExampleGReca();

        System.assertEquals(false, loginSubmissionExampleGRecaptchaResponse1.equals('foo'));
        System.assertEquals(false, loginSubmissionExampleGRecaptchaResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerLoginSubmissionExampleGReca loginSubmissionExampleGRecaptchaResponse1 = IntServerLoginSubmissionExampleGReca.getExample();
        IntServerLoginSubmissionExampleGReca loginSubmissionExampleGRecaptchaResponse2 = new IntServerLoginSubmissionExampleGReca();
        IntServerLoginSubmissionExampleGReca loginSubmissionExampleGRecaptchaResponse3;

        System.assertEquals(false, loginSubmissionExampleGRecaptchaResponse1.equals(loginSubmissionExampleGRecaptchaResponse3));
        System.assertEquals(false, loginSubmissionExampleGRecaptchaResponse2.equals(loginSubmissionExampleGRecaptchaResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerLoginSubmissionExampleGReca loginSubmissionExampleGRecaptchaResponse1 = IntServerLoginSubmissionExampleGReca.getExample();
        IntServerLoginSubmissionExampleGReca loginSubmissionExampleGRecaptchaResponse2 = new IntServerLoginSubmissionExampleGReca();

        System.assertEquals(loginSubmissionExampleGRecaptchaResponse1.hashCode(), loginSubmissionExampleGRecaptchaResponse1.hashCode());
        System.assertEquals(loginSubmissionExampleGRecaptchaResponse2.hashCode(), loginSubmissionExampleGRecaptchaResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerLoginSubmissionExampleGReca loginSubmissionExampleGRecaptchaResponse1 = IntServerLoginSubmissionExampleGReca.getExample();
        IntServerLoginSubmissionExampleGReca loginSubmissionExampleGRecaptchaResponse2 = IntServerLoginSubmissionExampleGReca.getExample();
        IntServerLoginSubmissionExampleGReca loginSubmissionExampleGRecaptchaResponse3 = new IntServerLoginSubmissionExampleGReca();
        IntServerLoginSubmissionExampleGReca loginSubmissionExampleGRecaptchaResponse4 = new IntServerLoginSubmissionExampleGReca();

        System.assert(loginSubmissionExampleGRecaptchaResponse1.equals(loginSubmissionExampleGRecaptchaResponse2));
        System.assert(loginSubmissionExampleGRecaptchaResponse3.equals(loginSubmissionExampleGRecaptchaResponse4));
        System.assertEquals(loginSubmissionExampleGRecaptchaResponse1.hashCode(), loginSubmissionExampleGRecaptchaResponse2.hashCode());
        System.assertEquals(loginSubmissionExampleGRecaptchaResponse3.hashCode(), loginSubmissionExampleGRecaptchaResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerLoginSubmissionExampleGReca loginSubmissionExampleGRecaptchaResponse = new IntServerLoginSubmissionExampleGReca();
        Map<String, String> x-property-mappings = loginSubmissionExampleGRecaptchaResponse.getx-property-mappings();
        System.assertEquals('vIsShallow', x-property-mappings.get('__v_isShallow'));
        System.assertEquals('vIsRef', x-property-mappings.get('__v_isRef'));
        System.assertEquals('rawValue', x-property-mappings.get('_rawValue'));
        System.assertEquals('value', x-property-mappings.get('_value'));
    }
}
