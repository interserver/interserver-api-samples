@isTest
private class IntServerMailDelistRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailDelistRequest mailDelistRequest1 = IntServerMailDelistRequest.getExample();
        IntServerMailDelistRequest mailDelistRequest2 = mailDelistRequest1;
        IntServerMailDelistRequest mailDelistRequest3 = new IntServerMailDelistRequest();
        IntServerMailDelistRequest mailDelistRequest4 = mailDelistRequest3;

        System.assert(mailDelistRequest1.equals(mailDelistRequest2));
        System.assert(mailDelistRequest2.equals(mailDelistRequest1));
        System.assert(mailDelistRequest1.equals(mailDelistRequest1));
        System.assert(mailDelistRequest3.equals(mailDelistRequest4));
        System.assert(mailDelistRequest4.equals(mailDelistRequest3));
        System.assert(mailDelistRequest3.equals(mailDelistRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailDelistRequest mailDelistRequest1 = IntServerMailDelistRequest.getExample();
        IntServerMailDelistRequest mailDelistRequest2 = IntServerMailDelistRequest.getExample();
        IntServerMailDelistRequest mailDelistRequest3 = new IntServerMailDelistRequest();
        IntServerMailDelistRequest mailDelistRequest4 = new IntServerMailDelistRequest();

        System.assert(mailDelistRequest1.equals(mailDelistRequest2));
        System.assert(mailDelistRequest2.equals(mailDelistRequest1));
        System.assert(mailDelistRequest3.equals(mailDelistRequest4));
        System.assert(mailDelistRequest4.equals(mailDelistRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailDelistRequest mailDelistRequest1 = IntServerMailDelistRequest.getExample();
        IntServerMailDelistRequest mailDelistRequest2 = new IntServerMailDelistRequest();

        System.assertEquals(false, mailDelistRequest1.equals('foo'));
        System.assertEquals(false, mailDelistRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailDelistRequest mailDelistRequest1 = IntServerMailDelistRequest.getExample();
        IntServerMailDelistRequest mailDelistRequest2 = new IntServerMailDelistRequest();
        IntServerMailDelistRequest mailDelistRequest3;

        System.assertEquals(false, mailDelistRequest1.equals(mailDelistRequest3));
        System.assertEquals(false, mailDelistRequest2.equals(mailDelistRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailDelistRequest mailDelistRequest1 = IntServerMailDelistRequest.getExample();
        IntServerMailDelistRequest mailDelistRequest2 = new IntServerMailDelistRequest();

        System.assertEquals(mailDelistRequest1.hashCode(), mailDelistRequest1.hashCode());
        System.assertEquals(mailDelistRequest2.hashCode(), mailDelistRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailDelistRequest mailDelistRequest1 = IntServerMailDelistRequest.getExample();
        IntServerMailDelistRequest mailDelistRequest2 = IntServerMailDelistRequest.getExample();
        IntServerMailDelistRequest mailDelistRequest3 = new IntServerMailDelistRequest();
        IntServerMailDelistRequest mailDelistRequest4 = new IntServerMailDelistRequest();

        System.assert(mailDelistRequest1.equals(mailDelistRequest2));
        System.assert(mailDelistRequest3.equals(mailDelistRequest4));
        System.assertEquals(mailDelistRequest1.hashCode(), mailDelistRequest2.hashCode());
        System.assertEquals(mailDelistRequest3.hashCode(), mailDelistRequest4.hashCode());
    }
}
