@isTest
private class IntServerTextResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerTextResponse textResponse1 = IntServerTextResponse.getExample();
        IntServerTextResponse textResponse2 = textResponse1;
        IntServerTextResponse textResponse3 = new IntServerTextResponse();
        IntServerTextResponse textResponse4 = textResponse3;

        System.assert(textResponse1.equals(textResponse2));
        System.assert(textResponse2.equals(textResponse1));
        System.assert(textResponse1.equals(textResponse1));
        System.assert(textResponse3.equals(textResponse4));
        System.assert(textResponse4.equals(textResponse3));
        System.assert(textResponse3.equals(textResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerTextResponse textResponse1 = IntServerTextResponse.getExample();
        IntServerTextResponse textResponse2 = IntServerTextResponse.getExample();
        IntServerTextResponse textResponse3 = new IntServerTextResponse();
        IntServerTextResponse textResponse4 = new IntServerTextResponse();

        System.assert(textResponse1.equals(textResponse2));
        System.assert(textResponse2.equals(textResponse1));
        System.assert(textResponse3.equals(textResponse4));
        System.assert(textResponse4.equals(textResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerTextResponse textResponse1 = IntServerTextResponse.getExample();
        IntServerTextResponse textResponse2 = new IntServerTextResponse();

        System.assertEquals(false, textResponse1.equals('foo'));
        System.assertEquals(false, textResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerTextResponse textResponse1 = IntServerTextResponse.getExample();
        IntServerTextResponse textResponse2 = new IntServerTextResponse();
        IntServerTextResponse textResponse3;

        System.assertEquals(false, textResponse1.equals(textResponse3));
        System.assertEquals(false, textResponse2.equals(textResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerTextResponse textResponse1 = IntServerTextResponse.getExample();
        IntServerTextResponse textResponse2 = new IntServerTextResponse();

        System.assertEquals(textResponse1.hashCode(), textResponse1.hashCode());
        System.assertEquals(textResponse2.hashCode(), textResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerTextResponse textResponse1 = IntServerTextResponse.getExample();
        IntServerTextResponse textResponse2 = IntServerTextResponse.getExample();
        IntServerTextResponse textResponse3 = new IntServerTextResponse();
        IntServerTextResponse textResponse4 = new IntServerTextResponse();

        System.assert(textResponse1.equals(textResponse2));
        System.assert(textResponse3.equals(textResponse4));
        System.assertEquals(textResponse1.hashCode(), textResponse2.hashCode());
        System.assertEquals(textResponse3.hashCode(), textResponse4.hashCode());
    }
}
