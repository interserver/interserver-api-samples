@isTest
private class IntServerDeleteFilter500ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDeleteFilter500Response deleteFilter500Response1 = IntServerDeleteFilter500Response.getExample();
        IntServerDeleteFilter500Response deleteFilter500Response2 = deleteFilter500Response1;
        IntServerDeleteFilter500Response deleteFilter500Response3 = new IntServerDeleteFilter500Response();
        IntServerDeleteFilter500Response deleteFilter500Response4 = deleteFilter500Response3;

        System.assert(deleteFilter500Response1.equals(deleteFilter500Response2));
        System.assert(deleteFilter500Response2.equals(deleteFilter500Response1));
        System.assert(deleteFilter500Response1.equals(deleteFilter500Response1));
        System.assert(deleteFilter500Response3.equals(deleteFilter500Response4));
        System.assert(deleteFilter500Response4.equals(deleteFilter500Response3));
        System.assert(deleteFilter500Response3.equals(deleteFilter500Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDeleteFilter500Response deleteFilter500Response1 = IntServerDeleteFilter500Response.getExample();
        IntServerDeleteFilter500Response deleteFilter500Response2 = IntServerDeleteFilter500Response.getExample();
        IntServerDeleteFilter500Response deleteFilter500Response3 = new IntServerDeleteFilter500Response();
        IntServerDeleteFilter500Response deleteFilter500Response4 = new IntServerDeleteFilter500Response();

        System.assert(deleteFilter500Response1.equals(deleteFilter500Response2));
        System.assert(deleteFilter500Response2.equals(deleteFilter500Response1));
        System.assert(deleteFilter500Response3.equals(deleteFilter500Response4));
        System.assert(deleteFilter500Response4.equals(deleteFilter500Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDeleteFilter500Response deleteFilter500Response1 = IntServerDeleteFilter500Response.getExample();
        IntServerDeleteFilter500Response deleteFilter500Response2 = new IntServerDeleteFilter500Response();

        System.assertEquals(false, deleteFilter500Response1.equals('foo'));
        System.assertEquals(false, deleteFilter500Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDeleteFilter500Response deleteFilter500Response1 = IntServerDeleteFilter500Response.getExample();
        IntServerDeleteFilter500Response deleteFilter500Response2 = new IntServerDeleteFilter500Response();
        IntServerDeleteFilter500Response deleteFilter500Response3;

        System.assertEquals(false, deleteFilter500Response1.equals(deleteFilter500Response3));
        System.assertEquals(false, deleteFilter500Response2.equals(deleteFilter500Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDeleteFilter500Response deleteFilter500Response1 = IntServerDeleteFilter500Response.getExample();
        IntServerDeleteFilter500Response deleteFilter500Response2 = new IntServerDeleteFilter500Response();

        System.assertEquals(deleteFilter500Response1.hashCode(), deleteFilter500Response1.hashCode());
        System.assertEquals(deleteFilter500Response2.hashCode(), deleteFilter500Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDeleteFilter500Response deleteFilter500Response1 = IntServerDeleteFilter500Response.getExample();
        IntServerDeleteFilter500Response deleteFilter500Response2 = IntServerDeleteFilter500Response.getExample();
        IntServerDeleteFilter500Response deleteFilter500Response3 = new IntServerDeleteFilter500Response();
        IntServerDeleteFilter500Response deleteFilter500Response4 = new IntServerDeleteFilter500Response();

        System.assert(deleteFilter500Response1.equals(deleteFilter500Response2));
        System.assert(deleteFilter500Response3.equals(deleteFilter500Response4));
        System.assertEquals(deleteFilter500Response1.hashCode(), deleteFilter500Response2.hashCode());
        System.assertEquals(deleteFilter500Response3.hashCode(), deleteFilter500Response4.hashCode());
    }
}
