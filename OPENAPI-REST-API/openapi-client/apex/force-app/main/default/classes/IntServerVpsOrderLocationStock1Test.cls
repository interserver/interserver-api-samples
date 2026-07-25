@isTest
private class IntServerVpsOrderLocationStock1Test {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsOrderLocationStock1 vpsOrderLocationStock11 = IntServerVpsOrderLocationStock1.getExample();
        IntServerVpsOrderLocationStock1 vpsOrderLocationStock12 = vpsOrderLocationStock11;
        IntServerVpsOrderLocationStock1 vpsOrderLocationStock13 = new IntServerVpsOrderLocationStock1();
        IntServerVpsOrderLocationStock1 vpsOrderLocationStock14 = vpsOrderLocationStock13;

        System.assert(vpsOrderLocationStock11.equals(vpsOrderLocationStock12));
        System.assert(vpsOrderLocationStock12.equals(vpsOrderLocationStock11));
        System.assert(vpsOrderLocationStock11.equals(vpsOrderLocationStock11));
        System.assert(vpsOrderLocationStock13.equals(vpsOrderLocationStock14));
        System.assert(vpsOrderLocationStock14.equals(vpsOrderLocationStock13));
        System.assert(vpsOrderLocationStock13.equals(vpsOrderLocationStock13));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsOrderLocationStock1 vpsOrderLocationStock11 = IntServerVpsOrderLocationStock1.getExample();
        IntServerVpsOrderLocationStock1 vpsOrderLocationStock12 = IntServerVpsOrderLocationStock1.getExample();
        IntServerVpsOrderLocationStock1 vpsOrderLocationStock13 = new IntServerVpsOrderLocationStock1();
        IntServerVpsOrderLocationStock1 vpsOrderLocationStock14 = new IntServerVpsOrderLocationStock1();

        System.assert(vpsOrderLocationStock11.equals(vpsOrderLocationStock12));
        System.assert(vpsOrderLocationStock12.equals(vpsOrderLocationStock11));
        System.assert(vpsOrderLocationStock13.equals(vpsOrderLocationStock14));
        System.assert(vpsOrderLocationStock14.equals(vpsOrderLocationStock13));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsOrderLocationStock1 vpsOrderLocationStock11 = IntServerVpsOrderLocationStock1.getExample();
        IntServerVpsOrderLocationStock1 vpsOrderLocationStock12 = new IntServerVpsOrderLocationStock1();

        System.assertEquals(false, vpsOrderLocationStock11.equals('foo'));
        System.assertEquals(false, vpsOrderLocationStock12.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsOrderLocationStock1 vpsOrderLocationStock11 = IntServerVpsOrderLocationStock1.getExample();
        IntServerVpsOrderLocationStock1 vpsOrderLocationStock12 = new IntServerVpsOrderLocationStock1();
        IntServerVpsOrderLocationStock1 vpsOrderLocationStock13;

        System.assertEquals(false, vpsOrderLocationStock11.equals(vpsOrderLocationStock13));
        System.assertEquals(false, vpsOrderLocationStock12.equals(vpsOrderLocationStock13));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsOrderLocationStock1 vpsOrderLocationStock11 = IntServerVpsOrderLocationStock1.getExample();
        IntServerVpsOrderLocationStock1 vpsOrderLocationStock12 = new IntServerVpsOrderLocationStock1();

        System.assertEquals(vpsOrderLocationStock11.hashCode(), vpsOrderLocationStock11.hashCode());
        System.assertEquals(vpsOrderLocationStock12.hashCode(), vpsOrderLocationStock12.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsOrderLocationStock1 vpsOrderLocationStock11 = IntServerVpsOrderLocationStock1.getExample();
        IntServerVpsOrderLocationStock1 vpsOrderLocationStock12 = IntServerVpsOrderLocationStock1.getExample();
        IntServerVpsOrderLocationStock1 vpsOrderLocationStock13 = new IntServerVpsOrderLocationStock1();
        IntServerVpsOrderLocationStock1 vpsOrderLocationStock14 = new IntServerVpsOrderLocationStock1();

        System.assert(vpsOrderLocationStock11.equals(vpsOrderLocationStock12));
        System.assert(vpsOrderLocationStock13.equals(vpsOrderLocationStock14));
        System.assertEquals(vpsOrderLocationStock11.hashCode(), vpsOrderLocationStock12.hashCode());
        System.assertEquals(vpsOrderLocationStock13.hashCode(), vpsOrderLocationStock14.hashCode());
    }
}
