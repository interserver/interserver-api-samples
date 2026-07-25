@isTest
private class IntServerDeleteFilter400ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDeleteFilter400Response deleteFilter400Response1 = IntServerDeleteFilter400Response.getExample();
        IntServerDeleteFilter400Response deleteFilter400Response2 = deleteFilter400Response1;
        IntServerDeleteFilter400Response deleteFilter400Response3 = new IntServerDeleteFilter400Response();
        IntServerDeleteFilter400Response deleteFilter400Response4 = deleteFilter400Response3;

        System.assert(deleteFilter400Response1.equals(deleteFilter400Response2));
        System.assert(deleteFilter400Response2.equals(deleteFilter400Response1));
        System.assert(deleteFilter400Response1.equals(deleteFilter400Response1));
        System.assert(deleteFilter400Response3.equals(deleteFilter400Response4));
        System.assert(deleteFilter400Response4.equals(deleteFilter400Response3));
        System.assert(deleteFilter400Response3.equals(deleteFilter400Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDeleteFilter400Response deleteFilter400Response1 = IntServerDeleteFilter400Response.getExample();
        IntServerDeleteFilter400Response deleteFilter400Response2 = IntServerDeleteFilter400Response.getExample();
        IntServerDeleteFilter400Response deleteFilter400Response3 = new IntServerDeleteFilter400Response();
        IntServerDeleteFilter400Response deleteFilter400Response4 = new IntServerDeleteFilter400Response();

        System.assert(deleteFilter400Response1.equals(deleteFilter400Response2));
        System.assert(deleteFilter400Response2.equals(deleteFilter400Response1));
        System.assert(deleteFilter400Response3.equals(deleteFilter400Response4));
        System.assert(deleteFilter400Response4.equals(deleteFilter400Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDeleteFilter400Response deleteFilter400Response1 = IntServerDeleteFilter400Response.getExample();
        IntServerDeleteFilter400Response deleteFilter400Response2 = new IntServerDeleteFilter400Response();

        System.assertEquals(false, deleteFilter400Response1.equals('foo'));
        System.assertEquals(false, deleteFilter400Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDeleteFilter400Response deleteFilter400Response1 = IntServerDeleteFilter400Response.getExample();
        IntServerDeleteFilter400Response deleteFilter400Response2 = new IntServerDeleteFilter400Response();
        IntServerDeleteFilter400Response deleteFilter400Response3;

        System.assertEquals(false, deleteFilter400Response1.equals(deleteFilter400Response3));
        System.assertEquals(false, deleteFilter400Response2.equals(deleteFilter400Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDeleteFilter400Response deleteFilter400Response1 = IntServerDeleteFilter400Response.getExample();
        IntServerDeleteFilter400Response deleteFilter400Response2 = new IntServerDeleteFilter400Response();

        System.assertEquals(deleteFilter400Response1.hashCode(), deleteFilter400Response1.hashCode());
        System.assertEquals(deleteFilter400Response2.hashCode(), deleteFilter400Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDeleteFilter400Response deleteFilter400Response1 = IntServerDeleteFilter400Response.getExample();
        IntServerDeleteFilter400Response deleteFilter400Response2 = IntServerDeleteFilter400Response.getExample();
        IntServerDeleteFilter400Response deleteFilter400Response3 = new IntServerDeleteFilter400Response();
        IntServerDeleteFilter400Response deleteFilter400Response4 = new IntServerDeleteFilter400Response();

        System.assert(deleteFilter400Response1.equals(deleteFilter400Response2));
        System.assert(deleteFilter400Response3.equals(deleteFilter400Response4));
        System.assertEquals(deleteFilter400Response1.hashCode(), deleteFilter400Response2.hashCode());
        System.assertEquals(deleteFilter400Response3.hashCode(), deleteFilter400Response4.hashCode());
    }
}
