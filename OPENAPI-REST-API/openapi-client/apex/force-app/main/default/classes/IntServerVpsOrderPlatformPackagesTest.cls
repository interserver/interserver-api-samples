@isTest
private class IntServerVpsOrderPlatformPackagesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsOrderPlatformPackages vpsOrderPlatformPackages1 = IntServerVpsOrderPlatformPackages.getExample();
        IntServerVpsOrderPlatformPackages vpsOrderPlatformPackages2 = vpsOrderPlatformPackages1;
        IntServerVpsOrderPlatformPackages vpsOrderPlatformPackages3 = new IntServerVpsOrderPlatformPackages();
        IntServerVpsOrderPlatformPackages vpsOrderPlatformPackages4 = vpsOrderPlatformPackages3;

        System.assert(vpsOrderPlatformPackages1.equals(vpsOrderPlatformPackages2));
        System.assert(vpsOrderPlatformPackages2.equals(vpsOrderPlatformPackages1));
        System.assert(vpsOrderPlatformPackages1.equals(vpsOrderPlatformPackages1));
        System.assert(vpsOrderPlatformPackages3.equals(vpsOrderPlatformPackages4));
        System.assert(vpsOrderPlatformPackages4.equals(vpsOrderPlatformPackages3));
        System.assert(vpsOrderPlatformPackages3.equals(vpsOrderPlatformPackages3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsOrderPlatformPackages vpsOrderPlatformPackages1 = IntServerVpsOrderPlatformPackages.getExample();
        IntServerVpsOrderPlatformPackages vpsOrderPlatformPackages2 = IntServerVpsOrderPlatformPackages.getExample();
        IntServerVpsOrderPlatformPackages vpsOrderPlatformPackages3 = new IntServerVpsOrderPlatformPackages();
        IntServerVpsOrderPlatformPackages vpsOrderPlatformPackages4 = new IntServerVpsOrderPlatformPackages();

        System.assert(vpsOrderPlatformPackages1.equals(vpsOrderPlatformPackages2));
        System.assert(vpsOrderPlatformPackages2.equals(vpsOrderPlatformPackages1));
        System.assert(vpsOrderPlatformPackages3.equals(vpsOrderPlatformPackages4));
        System.assert(vpsOrderPlatformPackages4.equals(vpsOrderPlatformPackages3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsOrderPlatformPackages vpsOrderPlatformPackages1 = IntServerVpsOrderPlatformPackages.getExample();
        IntServerVpsOrderPlatformPackages vpsOrderPlatformPackages2 = new IntServerVpsOrderPlatformPackages();

        System.assertEquals(false, vpsOrderPlatformPackages1.equals('foo'));
        System.assertEquals(false, vpsOrderPlatformPackages2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsOrderPlatformPackages vpsOrderPlatformPackages1 = IntServerVpsOrderPlatformPackages.getExample();
        IntServerVpsOrderPlatformPackages vpsOrderPlatformPackages2 = new IntServerVpsOrderPlatformPackages();
        IntServerVpsOrderPlatformPackages vpsOrderPlatformPackages3;

        System.assertEquals(false, vpsOrderPlatformPackages1.equals(vpsOrderPlatformPackages3));
        System.assertEquals(false, vpsOrderPlatformPackages2.equals(vpsOrderPlatformPackages3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsOrderPlatformPackages vpsOrderPlatformPackages1 = IntServerVpsOrderPlatformPackages.getExample();
        IntServerVpsOrderPlatformPackages vpsOrderPlatformPackages2 = new IntServerVpsOrderPlatformPackages();

        System.assertEquals(vpsOrderPlatformPackages1.hashCode(), vpsOrderPlatformPackages1.hashCode());
        System.assertEquals(vpsOrderPlatformPackages2.hashCode(), vpsOrderPlatformPackages2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsOrderPlatformPackages vpsOrderPlatformPackages1 = IntServerVpsOrderPlatformPackages.getExample();
        IntServerVpsOrderPlatformPackages vpsOrderPlatformPackages2 = IntServerVpsOrderPlatformPackages.getExample();
        IntServerVpsOrderPlatformPackages vpsOrderPlatformPackages3 = new IntServerVpsOrderPlatformPackages();
        IntServerVpsOrderPlatformPackages vpsOrderPlatformPackages4 = new IntServerVpsOrderPlatformPackages();

        System.assert(vpsOrderPlatformPackages1.equals(vpsOrderPlatformPackages2));
        System.assert(vpsOrderPlatformPackages3.equals(vpsOrderPlatformPackages4));
        System.assertEquals(vpsOrderPlatformPackages1.hashCode(), vpsOrderPlatformPackages2.hashCode());
        System.assertEquals(vpsOrderPlatformPackages3.hashCode(), vpsOrderPlatformPackages4.hashCode());
    }
}
