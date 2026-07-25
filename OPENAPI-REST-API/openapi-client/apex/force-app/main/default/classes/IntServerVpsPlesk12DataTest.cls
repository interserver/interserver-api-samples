@isTest
private class IntServerVpsPlesk12DataTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsPlesk12Data vpsPlesk12Data1 = IntServerVpsPlesk12Data.getExample();
        IntServerVpsPlesk12Data vpsPlesk12Data2 = vpsPlesk12Data1;
        IntServerVpsPlesk12Data vpsPlesk12Data3 = new IntServerVpsPlesk12Data();
        IntServerVpsPlesk12Data vpsPlesk12Data4 = vpsPlesk12Data3;

        System.assert(vpsPlesk12Data1.equals(vpsPlesk12Data2));
        System.assert(vpsPlesk12Data2.equals(vpsPlesk12Data1));
        System.assert(vpsPlesk12Data1.equals(vpsPlesk12Data1));
        System.assert(vpsPlesk12Data3.equals(vpsPlesk12Data4));
        System.assert(vpsPlesk12Data4.equals(vpsPlesk12Data3));
        System.assert(vpsPlesk12Data3.equals(vpsPlesk12Data3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsPlesk12Data vpsPlesk12Data1 = IntServerVpsPlesk12Data.getExample();
        IntServerVpsPlesk12Data vpsPlesk12Data2 = IntServerVpsPlesk12Data.getExample();
        IntServerVpsPlesk12Data vpsPlesk12Data3 = new IntServerVpsPlesk12Data();
        IntServerVpsPlesk12Data vpsPlesk12Data4 = new IntServerVpsPlesk12Data();

        System.assert(vpsPlesk12Data1.equals(vpsPlesk12Data2));
        System.assert(vpsPlesk12Data2.equals(vpsPlesk12Data1));
        System.assert(vpsPlesk12Data3.equals(vpsPlesk12Data4));
        System.assert(vpsPlesk12Data4.equals(vpsPlesk12Data3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsPlesk12Data vpsPlesk12Data1 = IntServerVpsPlesk12Data.getExample();
        IntServerVpsPlesk12Data vpsPlesk12Data2 = new IntServerVpsPlesk12Data();

        System.assertEquals(false, vpsPlesk12Data1.equals('foo'));
        System.assertEquals(false, vpsPlesk12Data2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsPlesk12Data vpsPlesk12Data1 = IntServerVpsPlesk12Data.getExample();
        IntServerVpsPlesk12Data vpsPlesk12Data2 = new IntServerVpsPlesk12Data();
        IntServerVpsPlesk12Data vpsPlesk12Data3;

        System.assertEquals(false, vpsPlesk12Data1.equals(vpsPlesk12Data3));
        System.assertEquals(false, vpsPlesk12Data2.equals(vpsPlesk12Data3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsPlesk12Data vpsPlesk12Data1 = IntServerVpsPlesk12Data.getExample();
        IntServerVpsPlesk12Data vpsPlesk12Data2 = new IntServerVpsPlesk12Data();

        System.assertEquals(vpsPlesk12Data1.hashCode(), vpsPlesk12Data1.hashCode());
        System.assertEquals(vpsPlesk12Data2.hashCode(), vpsPlesk12Data2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsPlesk12Data vpsPlesk12Data1 = IntServerVpsPlesk12Data.getExample();
        IntServerVpsPlesk12Data vpsPlesk12Data2 = IntServerVpsPlesk12Data.getExample();
        IntServerVpsPlesk12Data vpsPlesk12Data3 = new IntServerVpsPlesk12Data();
        IntServerVpsPlesk12Data vpsPlesk12Data4 = new IntServerVpsPlesk12Data();

        System.assert(vpsPlesk12Data1.equals(vpsPlesk12Data2));
        System.assert(vpsPlesk12Data3.equals(vpsPlesk12Data4));
        System.assertEquals(vpsPlesk12Data1.hashCode(), vpsPlesk12Data2.hashCode());
        System.assertEquals(vpsPlesk12Data3.hashCode(), vpsPlesk12Data4.hashCode());
    }
}
