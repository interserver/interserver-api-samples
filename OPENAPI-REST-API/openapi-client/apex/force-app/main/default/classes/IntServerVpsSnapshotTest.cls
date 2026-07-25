@isTest
private class IntServerVpsSnapshotTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsSnapshot vpsSnapshot1 = IntServerVpsSnapshot.getExample();
        IntServerVpsSnapshot vpsSnapshot2 = vpsSnapshot1;
        IntServerVpsSnapshot vpsSnapshot3 = new IntServerVpsSnapshot();
        IntServerVpsSnapshot vpsSnapshot4 = vpsSnapshot3;

        System.assert(vpsSnapshot1.equals(vpsSnapshot2));
        System.assert(vpsSnapshot2.equals(vpsSnapshot1));
        System.assert(vpsSnapshot1.equals(vpsSnapshot1));
        System.assert(vpsSnapshot3.equals(vpsSnapshot4));
        System.assert(vpsSnapshot4.equals(vpsSnapshot3));
        System.assert(vpsSnapshot3.equals(vpsSnapshot3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsSnapshot vpsSnapshot1 = IntServerVpsSnapshot.getExample();
        IntServerVpsSnapshot vpsSnapshot2 = IntServerVpsSnapshot.getExample();
        IntServerVpsSnapshot vpsSnapshot3 = new IntServerVpsSnapshot();
        IntServerVpsSnapshot vpsSnapshot4 = new IntServerVpsSnapshot();

        System.assert(vpsSnapshot1.equals(vpsSnapshot2));
        System.assert(vpsSnapshot2.equals(vpsSnapshot1));
        System.assert(vpsSnapshot3.equals(vpsSnapshot4));
        System.assert(vpsSnapshot4.equals(vpsSnapshot3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsSnapshot vpsSnapshot1 = IntServerVpsSnapshot.getExample();
        IntServerVpsSnapshot vpsSnapshot2 = new IntServerVpsSnapshot();

        System.assertEquals(false, vpsSnapshot1.equals('foo'));
        System.assertEquals(false, vpsSnapshot2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsSnapshot vpsSnapshot1 = IntServerVpsSnapshot.getExample();
        IntServerVpsSnapshot vpsSnapshot2 = new IntServerVpsSnapshot();
        IntServerVpsSnapshot vpsSnapshot3;

        System.assertEquals(false, vpsSnapshot1.equals(vpsSnapshot3));
        System.assertEquals(false, vpsSnapshot2.equals(vpsSnapshot3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsSnapshot vpsSnapshot1 = IntServerVpsSnapshot.getExample();
        IntServerVpsSnapshot vpsSnapshot2 = new IntServerVpsSnapshot();

        System.assertEquals(vpsSnapshot1.hashCode(), vpsSnapshot1.hashCode());
        System.assertEquals(vpsSnapshot2.hashCode(), vpsSnapshot2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsSnapshot vpsSnapshot1 = IntServerVpsSnapshot.getExample();
        IntServerVpsSnapshot vpsSnapshot2 = IntServerVpsSnapshot.getExample();
        IntServerVpsSnapshot vpsSnapshot3 = new IntServerVpsSnapshot();
        IntServerVpsSnapshot vpsSnapshot4 = new IntServerVpsSnapshot();

        System.assert(vpsSnapshot1.equals(vpsSnapshot2));
        System.assert(vpsSnapshot3.equals(vpsSnapshot4));
        System.assertEquals(vpsSnapshot1.hashCode(), vpsSnapshot2.hashCode());
        System.assertEquals(vpsSnapshot3.hashCode(), vpsSnapshot4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerVpsSnapshot vpsSnapshot = new IntServerVpsSnapshot();
        Map<String, String> x-property-mappings = vpsSnapshot.getx-property-mappings();
        System.assertEquals('r_date', x-property-mappings.get('date'));
    }
}
