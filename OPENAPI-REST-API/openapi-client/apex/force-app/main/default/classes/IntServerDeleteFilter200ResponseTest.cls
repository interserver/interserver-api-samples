@isTest
private class IntServerDeleteFilter200ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDeleteFilter200Response deleteFilter200Response1 = IntServerDeleteFilter200Response.getExample();
        IntServerDeleteFilter200Response deleteFilter200Response2 = deleteFilter200Response1;
        IntServerDeleteFilter200Response deleteFilter200Response3 = new IntServerDeleteFilter200Response();
        IntServerDeleteFilter200Response deleteFilter200Response4 = deleteFilter200Response3;

        System.assert(deleteFilter200Response1.equals(deleteFilter200Response2));
        System.assert(deleteFilter200Response2.equals(deleteFilter200Response1));
        System.assert(deleteFilter200Response1.equals(deleteFilter200Response1));
        System.assert(deleteFilter200Response3.equals(deleteFilter200Response4));
        System.assert(deleteFilter200Response4.equals(deleteFilter200Response3));
        System.assert(deleteFilter200Response3.equals(deleteFilter200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDeleteFilter200Response deleteFilter200Response1 = IntServerDeleteFilter200Response.getExample();
        IntServerDeleteFilter200Response deleteFilter200Response2 = IntServerDeleteFilter200Response.getExample();
        IntServerDeleteFilter200Response deleteFilter200Response3 = new IntServerDeleteFilter200Response();
        IntServerDeleteFilter200Response deleteFilter200Response4 = new IntServerDeleteFilter200Response();

        System.assert(deleteFilter200Response1.equals(deleteFilter200Response2));
        System.assert(deleteFilter200Response2.equals(deleteFilter200Response1));
        System.assert(deleteFilter200Response3.equals(deleteFilter200Response4));
        System.assert(deleteFilter200Response4.equals(deleteFilter200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDeleteFilter200Response deleteFilter200Response1 = IntServerDeleteFilter200Response.getExample();
        IntServerDeleteFilter200Response deleteFilter200Response2 = new IntServerDeleteFilter200Response();

        System.assertEquals(false, deleteFilter200Response1.equals('foo'));
        System.assertEquals(false, deleteFilter200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDeleteFilter200Response deleteFilter200Response1 = IntServerDeleteFilter200Response.getExample();
        IntServerDeleteFilter200Response deleteFilter200Response2 = new IntServerDeleteFilter200Response();
        IntServerDeleteFilter200Response deleteFilter200Response3;

        System.assertEquals(false, deleteFilter200Response1.equals(deleteFilter200Response3));
        System.assertEquals(false, deleteFilter200Response2.equals(deleteFilter200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDeleteFilter200Response deleteFilter200Response1 = IntServerDeleteFilter200Response.getExample();
        IntServerDeleteFilter200Response deleteFilter200Response2 = new IntServerDeleteFilter200Response();

        System.assertEquals(deleteFilter200Response1.hashCode(), deleteFilter200Response1.hashCode());
        System.assertEquals(deleteFilter200Response2.hashCode(), deleteFilter200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDeleteFilter200Response deleteFilter200Response1 = IntServerDeleteFilter200Response.getExample();
        IntServerDeleteFilter200Response deleteFilter200Response2 = IntServerDeleteFilter200Response.getExample();
        IntServerDeleteFilter200Response deleteFilter200Response3 = new IntServerDeleteFilter200Response();
        IntServerDeleteFilter200Response deleteFilter200Response4 = new IntServerDeleteFilter200Response();

        System.assert(deleteFilter200Response1.equals(deleteFilter200Response2));
        System.assert(deleteFilter200Response3.equals(deleteFilter200Response4));
        System.assertEquals(deleteFilter200Response1.hashCode(), deleteFilter200Response2.hashCode());
        System.assertEquals(deleteFilter200Response3.hashCode(), deleteFilter200Response4.hashCode());
    }
}
