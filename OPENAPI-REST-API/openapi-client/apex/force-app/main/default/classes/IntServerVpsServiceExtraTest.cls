@isTest
private class IntServerVpsServiceExtraTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsServiceExtra vpsServiceExtra1 = IntServerVpsServiceExtra.getExample();
        IntServerVpsServiceExtra vpsServiceExtra2 = vpsServiceExtra1;
        IntServerVpsServiceExtra vpsServiceExtra3 = new IntServerVpsServiceExtra();
        IntServerVpsServiceExtra vpsServiceExtra4 = vpsServiceExtra3;

        System.assert(vpsServiceExtra1.equals(vpsServiceExtra2));
        System.assert(vpsServiceExtra2.equals(vpsServiceExtra1));
        System.assert(vpsServiceExtra1.equals(vpsServiceExtra1));
        System.assert(vpsServiceExtra3.equals(vpsServiceExtra4));
        System.assert(vpsServiceExtra4.equals(vpsServiceExtra3));
        System.assert(vpsServiceExtra3.equals(vpsServiceExtra3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsServiceExtra vpsServiceExtra1 = IntServerVpsServiceExtra.getExample();
        IntServerVpsServiceExtra vpsServiceExtra2 = IntServerVpsServiceExtra.getExample();
        IntServerVpsServiceExtra vpsServiceExtra3 = new IntServerVpsServiceExtra();
        IntServerVpsServiceExtra vpsServiceExtra4 = new IntServerVpsServiceExtra();

        System.assert(vpsServiceExtra1.equals(vpsServiceExtra2));
        System.assert(vpsServiceExtra2.equals(vpsServiceExtra1));
        System.assert(vpsServiceExtra3.equals(vpsServiceExtra4));
        System.assert(vpsServiceExtra4.equals(vpsServiceExtra3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsServiceExtra vpsServiceExtra1 = IntServerVpsServiceExtra.getExample();
        IntServerVpsServiceExtra vpsServiceExtra2 = new IntServerVpsServiceExtra();

        System.assertEquals(false, vpsServiceExtra1.equals('foo'));
        System.assertEquals(false, vpsServiceExtra2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsServiceExtra vpsServiceExtra1 = IntServerVpsServiceExtra.getExample();
        IntServerVpsServiceExtra vpsServiceExtra2 = new IntServerVpsServiceExtra();
        IntServerVpsServiceExtra vpsServiceExtra3;

        System.assertEquals(false, vpsServiceExtra1.equals(vpsServiceExtra3));
        System.assertEquals(false, vpsServiceExtra2.equals(vpsServiceExtra3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsServiceExtra vpsServiceExtra1 = IntServerVpsServiceExtra.getExample();
        IntServerVpsServiceExtra vpsServiceExtra2 = new IntServerVpsServiceExtra();

        System.assertEquals(vpsServiceExtra1.hashCode(), vpsServiceExtra1.hashCode());
        System.assertEquals(vpsServiceExtra2.hashCode(), vpsServiceExtra2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsServiceExtra vpsServiceExtra1 = IntServerVpsServiceExtra.getExample();
        IntServerVpsServiceExtra vpsServiceExtra2 = IntServerVpsServiceExtra.getExample();
        IntServerVpsServiceExtra vpsServiceExtra3 = new IntServerVpsServiceExtra();
        IntServerVpsServiceExtra vpsServiceExtra4 = new IntServerVpsServiceExtra();

        System.assert(vpsServiceExtra1.equals(vpsServiceExtra2));
        System.assert(vpsServiceExtra3.equals(vpsServiceExtra4));
        System.assertEquals(vpsServiceExtra1.hashCode(), vpsServiceExtra2.hashCode());
        System.assertEquals(vpsServiceExtra3.hashCode(), vpsServiceExtra4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerVpsServiceExtra vpsServiceExtra = new IntServerVpsServiceExtra();
        System.assertEquals(new List<IntServerVpsSnapshot>(), vpsServiceExtra.snapshots);
        System.assertEquals(null, vpsServiceExtra.spice);
    }
}
