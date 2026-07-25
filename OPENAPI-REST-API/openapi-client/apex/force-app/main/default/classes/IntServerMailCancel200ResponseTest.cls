@isTest
private class IntServerMailCancel200ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailCancel200Response mailCancel200Response1 = IntServerMailCancel200Response.getExample();
        IntServerMailCancel200Response mailCancel200Response2 = mailCancel200Response1;
        IntServerMailCancel200Response mailCancel200Response3 = new IntServerMailCancel200Response();
        IntServerMailCancel200Response mailCancel200Response4 = mailCancel200Response3;

        System.assert(mailCancel200Response1.equals(mailCancel200Response2));
        System.assert(mailCancel200Response2.equals(mailCancel200Response1));
        System.assert(mailCancel200Response1.equals(mailCancel200Response1));
        System.assert(mailCancel200Response3.equals(mailCancel200Response4));
        System.assert(mailCancel200Response4.equals(mailCancel200Response3));
        System.assert(mailCancel200Response3.equals(mailCancel200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailCancel200Response mailCancel200Response1 = IntServerMailCancel200Response.getExample();
        IntServerMailCancel200Response mailCancel200Response2 = IntServerMailCancel200Response.getExample();
        IntServerMailCancel200Response mailCancel200Response3 = new IntServerMailCancel200Response();
        IntServerMailCancel200Response mailCancel200Response4 = new IntServerMailCancel200Response();

        System.assert(mailCancel200Response1.equals(mailCancel200Response2));
        System.assert(mailCancel200Response2.equals(mailCancel200Response1));
        System.assert(mailCancel200Response3.equals(mailCancel200Response4));
        System.assert(mailCancel200Response4.equals(mailCancel200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailCancel200Response mailCancel200Response1 = IntServerMailCancel200Response.getExample();
        IntServerMailCancel200Response mailCancel200Response2 = new IntServerMailCancel200Response();

        System.assertEquals(false, mailCancel200Response1.equals('foo'));
        System.assertEquals(false, mailCancel200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailCancel200Response mailCancel200Response1 = IntServerMailCancel200Response.getExample();
        IntServerMailCancel200Response mailCancel200Response2 = new IntServerMailCancel200Response();
        IntServerMailCancel200Response mailCancel200Response3;

        System.assertEquals(false, mailCancel200Response1.equals(mailCancel200Response3));
        System.assertEquals(false, mailCancel200Response2.equals(mailCancel200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailCancel200Response mailCancel200Response1 = IntServerMailCancel200Response.getExample();
        IntServerMailCancel200Response mailCancel200Response2 = new IntServerMailCancel200Response();

        System.assertEquals(mailCancel200Response1.hashCode(), mailCancel200Response1.hashCode());
        System.assertEquals(mailCancel200Response2.hashCode(), mailCancel200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailCancel200Response mailCancel200Response1 = IntServerMailCancel200Response.getExample();
        IntServerMailCancel200Response mailCancel200Response2 = IntServerMailCancel200Response.getExample();
        IntServerMailCancel200Response mailCancel200Response3 = new IntServerMailCancel200Response();
        IntServerMailCancel200Response mailCancel200Response4 = new IntServerMailCancel200Response();

        System.assert(mailCancel200Response1.equals(mailCancel200Response2));
        System.assert(mailCancel200Response3.equals(mailCancel200Response4));
        System.assertEquals(mailCancel200Response1.hashCode(), mailCancel200Response2.hashCode());
        System.assertEquals(mailCancel200Response3.hashCode(), mailCancel200Response4.hashCode());
    }
}
