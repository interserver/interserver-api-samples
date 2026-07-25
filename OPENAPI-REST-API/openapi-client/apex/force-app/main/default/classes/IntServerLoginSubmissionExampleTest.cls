@isTest
private class IntServerLoginSubmissionExampleTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerLoginSubmissionExample loginSubmissionExample1 = IntServerLoginSubmissionExample.getExample();
        IntServerLoginSubmissionExample loginSubmissionExample2 = loginSubmissionExample1;
        IntServerLoginSubmissionExample loginSubmissionExample3 = new IntServerLoginSubmissionExample();
        IntServerLoginSubmissionExample loginSubmissionExample4 = loginSubmissionExample3;

        System.assert(loginSubmissionExample1.equals(loginSubmissionExample2));
        System.assert(loginSubmissionExample2.equals(loginSubmissionExample1));
        System.assert(loginSubmissionExample1.equals(loginSubmissionExample1));
        System.assert(loginSubmissionExample3.equals(loginSubmissionExample4));
        System.assert(loginSubmissionExample4.equals(loginSubmissionExample3));
        System.assert(loginSubmissionExample3.equals(loginSubmissionExample3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerLoginSubmissionExample loginSubmissionExample1 = IntServerLoginSubmissionExample.getExample();
        IntServerLoginSubmissionExample loginSubmissionExample2 = IntServerLoginSubmissionExample.getExample();
        IntServerLoginSubmissionExample loginSubmissionExample3 = new IntServerLoginSubmissionExample();
        IntServerLoginSubmissionExample loginSubmissionExample4 = new IntServerLoginSubmissionExample();

        System.assert(loginSubmissionExample1.equals(loginSubmissionExample2));
        System.assert(loginSubmissionExample2.equals(loginSubmissionExample1));
        System.assert(loginSubmissionExample3.equals(loginSubmissionExample4));
        System.assert(loginSubmissionExample4.equals(loginSubmissionExample3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerLoginSubmissionExample loginSubmissionExample1 = IntServerLoginSubmissionExample.getExample();
        IntServerLoginSubmissionExample loginSubmissionExample2 = new IntServerLoginSubmissionExample();

        System.assertEquals(false, loginSubmissionExample1.equals('foo'));
        System.assertEquals(false, loginSubmissionExample2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerLoginSubmissionExample loginSubmissionExample1 = IntServerLoginSubmissionExample.getExample();
        IntServerLoginSubmissionExample loginSubmissionExample2 = new IntServerLoginSubmissionExample();
        IntServerLoginSubmissionExample loginSubmissionExample3;

        System.assertEquals(false, loginSubmissionExample1.equals(loginSubmissionExample3));
        System.assertEquals(false, loginSubmissionExample2.equals(loginSubmissionExample3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerLoginSubmissionExample loginSubmissionExample1 = IntServerLoginSubmissionExample.getExample();
        IntServerLoginSubmissionExample loginSubmissionExample2 = new IntServerLoginSubmissionExample();

        System.assertEquals(loginSubmissionExample1.hashCode(), loginSubmissionExample1.hashCode());
        System.assertEquals(loginSubmissionExample2.hashCode(), loginSubmissionExample2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerLoginSubmissionExample loginSubmissionExample1 = IntServerLoginSubmissionExample.getExample();
        IntServerLoginSubmissionExample loginSubmissionExample2 = IntServerLoginSubmissionExample.getExample();
        IntServerLoginSubmissionExample loginSubmissionExample3 = new IntServerLoginSubmissionExample();
        IntServerLoginSubmissionExample loginSubmissionExample4 = new IntServerLoginSubmissionExample();

        System.assert(loginSubmissionExample1.equals(loginSubmissionExample2));
        System.assert(loginSubmissionExample3.equals(loginSubmissionExample4));
        System.assertEquals(loginSubmissionExample1.hashCode(), loginSubmissionExample2.hashCode());
        System.assertEquals(loginSubmissionExample3.hashCode(), loginSubmissionExample4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerLoginSubmissionExample loginSubmissionExample = new IntServerLoginSubmissionExample();
        Map<String, String> x-property-mappings = loginSubmissionExample.getx-property-mappings();
        System.assertEquals('gRecaptchaResponse', x-property-mappings.get('g-recaptcha-response'));
    }
}
