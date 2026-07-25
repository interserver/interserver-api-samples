@isTest
private class IntServerVpsOrderServiceTypesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsOrderServiceTypes vpsOrderServiceTypes1 = IntServerVpsOrderServiceTypes.getExample();
        IntServerVpsOrderServiceTypes vpsOrderServiceTypes2 = vpsOrderServiceTypes1;
        IntServerVpsOrderServiceTypes vpsOrderServiceTypes3 = new IntServerVpsOrderServiceTypes();
        IntServerVpsOrderServiceTypes vpsOrderServiceTypes4 = vpsOrderServiceTypes3;

        System.assert(vpsOrderServiceTypes1.equals(vpsOrderServiceTypes2));
        System.assert(vpsOrderServiceTypes2.equals(vpsOrderServiceTypes1));
        System.assert(vpsOrderServiceTypes1.equals(vpsOrderServiceTypes1));
        System.assert(vpsOrderServiceTypes3.equals(vpsOrderServiceTypes4));
        System.assert(vpsOrderServiceTypes4.equals(vpsOrderServiceTypes3));
        System.assert(vpsOrderServiceTypes3.equals(vpsOrderServiceTypes3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsOrderServiceTypes vpsOrderServiceTypes1 = IntServerVpsOrderServiceTypes.getExample();
        IntServerVpsOrderServiceTypes vpsOrderServiceTypes2 = IntServerVpsOrderServiceTypes.getExample();
        IntServerVpsOrderServiceTypes vpsOrderServiceTypes3 = new IntServerVpsOrderServiceTypes();
        IntServerVpsOrderServiceTypes vpsOrderServiceTypes4 = new IntServerVpsOrderServiceTypes();

        System.assert(vpsOrderServiceTypes1.equals(vpsOrderServiceTypes2));
        System.assert(vpsOrderServiceTypes2.equals(vpsOrderServiceTypes1));
        System.assert(vpsOrderServiceTypes3.equals(vpsOrderServiceTypes4));
        System.assert(vpsOrderServiceTypes4.equals(vpsOrderServiceTypes3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsOrderServiceTypes vpsOrderServiceTypes1 = IntServerVpsOrderServiceTypes.getExample();
        IntServerVpsOrderServiceTypes vpsOrderServiceTypes2 = new IntServerVpsOrderServiceTypes();

        System.assertEquals(false, vpsOrderServiceTypes1.equals('foo'));
        System.assertEquals(false, vpsOrderServiceTypes2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsOrderServiceTypes vpsOrderServiceTypes1 = IntServerVpsOrderServiceTypes.getExample();
        IntServerVpsOrderServiceTypes vpsOrderServiceTypes2 = new IntServerVpsOrderServiceTypes();
        IntServerVpsOrderServiceTypes vpsOrderServiceTypes3;

        System.assertEquals(false, vpsOrderServiceTypes1.equals(vpsOrderServiceTypes3));
        System.assertEquals(false, vpsOrderServiceTypes2.equals(vpsOrderServiceTypes3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsOrderServiceTypes vpsOrderServiceTypes1 = IntServerVpsOrderServiceTypes.getExample();
        IntServerVpsOrderServiceTypes vpsOrderServiceTypes2 = new IntServerVpsOrderServiceTypes();

        System.assertEquals(vpsOrderServiceTypes1.hashCode(), vpsOrderServiceTypes1.hashCode());
        System.assertEquals(vpsOrderServiceTypes2.hashCode(), vpsOrderServiceTypes2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsOrderServiceTypes vpsOrderServiceTypes1 = IntServerVpsOrderServiceTypes.getExample();
        IntServerVpsOrderServiceTypes vpsOrderServiceTypes2 = IntServerVpsOrderServiceTypes.getExample();
        IntServerVpsOrderServiceTypes vpsOrderServiceTypes3 = new IntServerVpsOrderServiceTypes();
        IntServerVpsOrderServiceTypes vpsOrderServiceTypes4 = new IntServerVpsOrderServiceTypes();

        System.assert(vpsOrderServiceTypes1.equals(vpsOrderServiceTypes2));
        System.assert(vpsOrderServiceTypes3.equals(vpsOrderServiceTypes4));
        System.assertEquals(vpsOrderServiceTypes1.hashCode(), vpsOrderServiceTypes2.hashCode());
        System.assertEquals(vpsOrderServiceTypes3.hashCode(), vpsOrderServiceTypes4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerVpsOrderServiceTypes vpsOrderServiceTypes = new IntServerVpsOrderServiceTypes();
        Map<String, String> x-property-mappings = vpsOrderServiceTypes.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('32'));
    }
}
