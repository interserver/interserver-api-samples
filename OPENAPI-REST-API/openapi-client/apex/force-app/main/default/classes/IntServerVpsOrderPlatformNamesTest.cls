@isTest
private class IntServerVpsOrderPlatformNamesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsOrderPlatformNames vpsOrderPlatformNames1 = IntServerVpsOrderPlatformNames.getExample();
        IntServerVpsOrderPlatformNames vpsOrderPlatformNames2 = vpsOrderPlatformNames1;
        IntServerVpsOrderPlatformNames vpsOrderPlatformNames3 = new IntServerVpsOrderPlatformNames();
        IntServerVpsOrderPlatformNames vpsOrderPlatformNames4 = vpsOrderPlatformNames3;

        System.assert(vpsOrderPlatformNames1.equals(vpsOrderPlatformNames2));
        System.assert(vpsOrderPlatformNames2.equals(vpsOrderPlatformNames1));
        System.assert(vpsOrderPlatformNames1.equals(vpsOrderPlatformNames1));
        System.assert(vpsOrderPlatformNames3.equals(vpsOrderPlatformNames4));
        System.assert(vpsOrderPlatformNames4.equals(vpsOrderPlatformNames3));
        System.assert(vpsOrderPlatformNames3.equals(vpsOrderPlatformNames3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsOrderPlatformNames vpsOrderPlatformNames1 = IntServerVpsOrderPlatformNames.getExample();
        IntServerVpsOrderPlatformNames vpsOrderPlatformNames2 = IntServerVpsOrderPlatformNames.getExample();
        IntServerVpsOrderPlatformNames vpsOrderPlatformNames3 = new IntServerVpsOrderPlatformNames();
        IntServerVpsOrderPlatformNames vpsOrderPlatformNames4 = new IntServerVpsOrderPlatformNames();

        System.assert(vpsOrderPlatformNames1.equals(vpsOrderPlatformNames2));
        System.assert(vpsOrderPlatformNames2.equals(vpsOrderPlatformNames1));
        System.assert(vpsOrderPlatformNames3.equals(vpsOrderPlatformNames4));
        System.assert(vpsOrderPlatformNames4.equals(vpsOrderPlatformNames3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsOrderPlatformNames vpsOrderPlatformNames1 = IntServerVpsOrderPlatformNames.getExample();
        IntServerVpsOrderPlatformNames vpsOrderPlatformNames2 = new IntServerVpsOrderPlatformNames();

        System.assertEquals(false, vpsOrderPlatformNames1.equals('foo'));
        System.assertEquals(false, vpsOrderPlatformNames2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsOrderPlatformNames vpsOrderPlatformNames1 = IntServerVpsOrderPlatformNames.getExample();
        IntServerVpsOrderPlatformNames vpsOrderPlatformNames2 = new IntServerVpsOrderPlatformNames();
        IntServerVpsOrderPlatformNames vpsOrderPlatformNames3;

        System.assertEquals(false, vpsOrderPlatformNames1.equals(vpsOrderPlatformNames3));
        System.assertEquals(false, vpsOrderPlatformNames2.equals(vpsOrderPlatformNames3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsOrderPlatformNames vpsOrderPlatformNames1 = IntServerVpsOrderPlatformNames.getExample();
        IntServerVpsOrderPlatformNames vpsOrderPlatformNames2 = new IntServerVpsOrderPlatformNames();

        System.assertEquals(vpsOrderPlatformNames1.hashCode(), vpsOrderPlatformNames1.hashCode());
        System.assertEquals(vpsOrderPlatformNames2.hashCode(), vpsOrderPlatformNames2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsOrderPlatformNames vpsOrderPlatformNames1 = IntServerVpsOrderPlatformNames.getExample();
        IntServerVpsOrderPlatformNames vpsOrderPlatformNames2 = IntServerVpsOrderPlatformNames.getExample();
        IntServerVpsOrderPlatformNames vpsOrderPlatformNames3 = new IntServerVpsOrderPlatformNames();
        IntServerVpsOrderPlatformNames vpsOrderPlatformNames4 = new IntServerVpsOrderPlatformNames();

        System.assert(vpsOrderPlatformNames1.equals(vpsOrderPlatformNames2));
        System.assert(vpsOrderPlatformNames3.equals(vpsOrderPlatformNames4));
        System.assertEquals(vpsOrderPlatformNames1.hashCode(), vpsOrderPlatformNames2.hashCode());
        System.assertEquals(vpsOrderPlatformNames3.hashCode(), vpsOrderPlatformNames4.hashCode());
    }
}
