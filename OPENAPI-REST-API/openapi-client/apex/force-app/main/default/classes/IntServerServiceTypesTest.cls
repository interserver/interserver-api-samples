@isTest
private class IntServerServiceTypesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServiceTypes serviceTypes1 = IntServerServiceTypes.getExample();
        IntServerServiceTypes serviceTypes2 = serviceTypes1;
        IntServerServiceTypes serviceTypes3 = new IntServerServiceTypes();
        IntServerServiceTypes serviceTypes4 = serviceTypes3;

        System.assert(serviceTypes1.equals(serviceTypes2));
        System.assert(serviceTypes2.equals(serviceTypes1));
        System.assert(serviceTypes1.equals(serviceTypes1));
        System.assert(serviceTypes3.equals(serviceTypes4));
        System.assert(serviceTypes4.equals(serviceTypes3));
        System.assert(serviceTypes3.equals(serviceTypes3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServiceTypes serviceTypes1 = IntServerServiceTypes.getExample();
        IntServerServiceTypes serviceTypes2 = IntServerServiceTypes.getExample();
        IntServerServiceTypes serviceTypes3 = new IntServerServiceTypes();
        IntServerServiceTypes serviceTypes4 = new IntServerServiceTypes();

        System.assert(serviceTypes1.equals(serviceTypes2));
        System.assert(serviceTypes2.equals(serviceTypes1));
        System.assert(serviceTypes3.equals(serviceTypes4));
        System.assert(serviceTypes4.equals(serviceTypes3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServiceTypes serviceTypes1 = IntServerServiceTypes.getExample();
        IntServerServiceTypes serviceTypes2 = new IntServerServiceTypes();

        System.assertEquals(false, serviceTypes1.equals('foo'));
        System.assertEquals(false, serviceTypes2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServiceTypes serviceTypes1 = IntServerServiceTypes.getExample();
        IntServerServiceTypes serviceTypes2 = new IntServerServiceTypes();
        IntServerServiceTypes serviceTypes3;

        System.assertEquals(false, serviceTypes1.equals(serviceTypes3));
        System.assertEquals(false, serviceTypes2.equals(serviceTypes3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServiceTypes serviceTypes1 = IntServerServiceTypes.getExample();
        IntServerServiceTypes serviceTypes2 = new IntServerServiceTypes();

        System.assertEquals(serviceTypes1.hashCode(), serviceTypes1.hashCode());
        System.assertEquals(serviceTypes2.hashCode(), serviceTypes2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServiceTypes serviceTypes1 = IntServerServiceTypes.getExample();
        IntServerServiceTypes serviceTypes2 = IntServerServiceTypes.getExample();
        IntServerServiceTypes serviceTypes3 = new IntServerServiceTypes();
        IntServerServiceTypes serviceTypes4 = new IntServerServiceTypes();

        System.assert(serviceTypes1.equals(serviceTypes2));
        System.assert(serviceTypes3.equals(serviceTypes4));
        System.assertEquals(serviceTypes1.hashCode(), serviceTypes2.hashCode());
        System.assertEquals(serviceTypes3.hashCode(), serviceTypes4.hashCode());
    }
}
