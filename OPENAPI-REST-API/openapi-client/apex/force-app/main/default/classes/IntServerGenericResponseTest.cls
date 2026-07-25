@isTest
private class IntServerGenericResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerGenericResponse genericResponse1 = IntServerGenericResponse.getExample();
        IntServerGenericResponse genericResponse2 = genericResponse1;
        IntServerGenericResponse genericResponse3 = new IntServerGenericResponse();
        IntServerGenericResponse genericResponse4 = genericResponse3;

        System.assert(genericResponse1.equals(genericResponse2));
        System.assert(genericResponse2.equals(genericResponse1));
        System.assert(genericResponse1.equals(genericResponse1));
        System.assert(genericResponse3.equals(genericResponse4));
        System.assert(genericResponse4.equals(genericResponse3));
        System.assert(genericResponse3.equals(genericResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerGenericResponse genericResponse1 = IntServerGenericResponse.getExample();
        IntServerGenericResponse genericResponse2 = IntServerGenericResponse.getExample();
        IntServerGenericResponse genericResponse3 = new IntServerGenericResponse();
        IntServerGenericResponse genericResponse4 = new IntServerGenericResponse();

        System.assert(genericResponse1.equals(genericResponse2));
        System.assert(genericResponse2.equals(genericResponse1));
        System.assert(genericResponse3.equals(genericResponse4));
        System.assert(genericResponse4.equals(genericResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerGenericResponse genericResponse1 = IntServerGenericResponse.getExample();
        IntServerGenericResponse genericResponse2 = new IntServerGenericResponse();

        System.assertEquals(false, genericResponse1.equals('foo'));
        System.assertEquals(false, genericResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerGenericResponse genericResponse1 = IntServerGenericResponse.getExample();
        IntServerGenericResponse genericResponse2 = new IntServerGenericResponse();
        IntServerGenericResponse genericResponse3;

        System.assertEquals(false, genericResponse1.equals(genericResponse3));
        System.assertEquals(false, genericResponse2.equals(genericResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerGenericResponse genericResponse1 = IntServerGenericResponse.getExample();
        IntServerGenericResponse genericResponse2 = new IntServerGenericResponse();

        System.assertEquals(genericResponse1.hashCode(), genericResponse1.hashCode());
        System.assertEquals(genericResponse2.hashCode(), genericResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerGenericResponse genericResponse1 = IntServerGenericResponse.getExample();
        IntServerGenericResponse genericResponse2 = IntServerGenericResponse.getExample();
        IntServerGenericResponse genericResponse3 = new IntServerGenericResponse();
        IntServerGenericResponse genericResponse4 = new IntServerGenericResponse();

        System.assert(genericResponse1.equals(genericResponse2));
        System.assert(genericResponse3.equals(genericResponse4));
        System.assertEquals(genericResponse1.hashCode(), genericResponse2.hashCode());
        System.assertEquals(genericResponse3.hashCode(), genericResponse4.hashCode());
    }
}
