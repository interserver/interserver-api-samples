@isTest
private class IntServerSuccessTextResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerSuccessTextResponse successTextResponse1 = IntServerSuccessTextResponse.getExample();
        IntServerSuccessTextResponse successTextResponse2 = successTextResponse1;
        IntServerSuccessTextResponse successTextResponse3 = new IntServerSuccessTextResponse();
        IntServerSuccessTextResponse successTextResponse4 = successTextResponse3;

        System.assert(successTextResponse1.equals(successTextResponse2));
        System.assert(successTextResponse2.equals(successTextResponse1));
        System.assert(successTextResponse1.equals(successTextResponse1));
        System.assert(successTextResponse3.equals(successTextResponse4));
        System.assert(successTextResponse4.equals(successTextResponse3));
        System.assert(successTextResponse3.equals(successTextResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerSuccessTextResponse successTextResponse1 = IntServerSuccessTextResponse.getExample();
        IntServerSuccessTextResponse successTextResponse2 = IntServerSuccessTextResponse.getExample();
        IntServerSuccessTextResponse successTextResponse3 = new IntServerSuccessTextResponse();
        IntServerSuccessTextResponse successTextResponse4 = new IntServerSuccessTextResponse();

        System.assert(successTextResponse1.equals(successTextResponse2));
        System.assert(successTextResponse2.equals(successTextResponse1));
        System.assert(successTextResponse3.equals(successTextResponse4));
        System.assert(successTextResponse4.equals(successTextResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerSuccessTextResponse successTextResponse1 = IntServerSuccessTextResponse.getExample();
        IntServerSuccessTextResponse successTextResponse2 = new IntServerSuccessTextResponse();

        System.assertEquals(false, successTextResponse1.equals('foo'));
        System.assertEquals(false, successTextResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerSuccessTextResponse successTextResponse1 = IntServerSuccessTextResponse.getExample();
        IntServerSuccessTextResponse successTextResponse2 = new IntServerSuccessTextResponse();
        IntServerSuccessTextResponse successTextResponse3;

        System.assertEquals(false, successTextResponse1.equals(successTextResponse3));
        System.assertEquals(false, successTextResponse2.equals(successTextResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerSuccessTextResponse successTextResponse1 = IntServerSuccessTextResponse.getExample();
        IntServerSuccessTextResponse successTextResponse2 = new IntServerSuccessTextResponse();

        System.assertEquals(successTextResponse1.hashCode(), successTextResponse1.hashCode());
        System.assertEquals(successTextResponse2.hashCode(), successTextResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerSuccessTextResponse successTextResponse1 = IntServerSuccessTextResponse.getExample();
        IntServerSuccessTextResponse successTextResponse2 = IntServerSuccessTextResponse.getExample();
        IntServerSuccessTextResponse successTextResponse3 = new IntServerSuccessTextResponse();
        IntServerSuccessTextResponse successTextResponse4 = new IntServerSuccessTextResponse();

        System.assert(successTextResponse1.equals(successTextResponse2));
        System.assert(successTextResponse3.equals(successTextResponse4));
        System.assertEquals(successTextResponse1.hashCode(), successTextResponse2.hashCode());
        System.assertEquals(successTextResponse3.hashCode(), successTextResponse4.hashCode());
    }
}
