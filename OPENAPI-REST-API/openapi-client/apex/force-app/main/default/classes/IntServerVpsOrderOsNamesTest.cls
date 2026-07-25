@isTest
private class IntServerVpsOrderOsNamesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsOrderOsNames vpsOrderOsNames1 = IntServerVpsOrderOsNames.getExample();
        IntServerVpsOrderOsNames vpsOrderOsNames2 = vpsOrderOsNames1;
        IntServerVpsOrderOsNames vpsOrderOsNames3 = new IntServerVpsOrderOsNames();
        IntServerVpsOrderOsNames vpsOrderOsNames4 = vpsOrderOsNames3;

        System.assert(vpsOrderOsNames1.equals(vpsOrderOsNames2));
        System.assert(vpsOrderOsNames2.equals(vpsOrderOsNames1));
        System.assert(vpsOrderOsNames1.equals(vpsOrderOsNames1));
        System.assert(vpsOrderOsNames3.equals(vpsOrderOsNames4));
        System.assert(vpsOrderOsNames4.equals(vpsOrderOsNames3));
        System.assert(vpsOrderOsNames3.equals(vpsOrderOsNames3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsOrderOsNames vpsOrderOsNames1 = IntServerVpsOrderOsNames.getExample();
        IntServerVpsOrderOsNames vpsOrderOsNames2 = IntServerVpsOrderOsNames.getExample();
        IntServerVpsOrderOsNames vpsOrderOsNames3 = new IntServerVpsOrderOsNames();
        IntServerVpsOrderOsNames vpsOrderOsNames4 = new IntServerVpsOrderOsNames();

        System.assert(vpsOrderOsNames1.equals(vpsOrderOsNames2));
        System.assert(vpsOrderOsNames2.equals(vpsOrderOsNames1));
        System.assert(vpsOrderOsNames3.equals(vpsOrderOsNames4));
        System.assert(vpsOrderOsNames4.equals(vpsOrderOsNames3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsOrderOsNames vpsOrderOsNames1 = IntServerVpsOrderOsNames.getExample();
        IntServerVpsOrderOsNames vpsOrderOsNames2 = new IntServerVpsOrderOsNames();

        System.assertEquals(false, vpsOrderOsNames1.equals('foo'));
        System.assertEquals(false, vpsOrderOsNames2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsOrderOsNames vpsOrderOsNames1 = IntServerVpsOrderOsNames.getExample();
        IntServerVpsOrderOsNames vpsOrderOsNames2 = new IntServerVpsOrderOsNames();
        IntServerVpsOrderOsNames vpsOrderOsNames3;

        System.assertEquals(false, vpsOrderOsNames1.equals(vpsOrderOsNames3));
        System.assertEquals(false, vpsOrderOsNames2.equals(vpsOrderOsNames3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsOrderOsNames vpsOrderOsNames1 = IntServerVpsOrderOsNames.getExample();
        IntServerVpsOrderOsNames vpsOrderOsNames2 = new IntServerVpsOrderOsNames();

        System.assertEquals(vpsOrderOsNames1.hashCode(), vpsOrderOsNames1.hashCode());
        System.assertEquals(vpsOrderOsNames2.hashCode(), vpsOrderOsNames2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsOrderOsNames vpsOrderOsNames1 = IntServerVpsOrderOsNames.getExample();
        IntServerVpsOrderOsNames vpsOrderOsNames2 = IntServerVpsOrderOsNames.getExample();
        IntServerVpsOrderOsNames vpsOrderOsNames3 = new IntServerVpsOrderOsNames();
        IntServerVpsOrderOsNames vpsOrderOsNames4 = new IntServerVpsOrderOsNames();

        System.assert(vpsOrderOsNames1.equals(vpsOrderOsNames2));
        System.assert(vpsOrderOsNames3.equals(vpsOrderOsNames4));
        System.assertEquals(vpsOrderOsNames1.hashCode(), vpsOrderOsNames2.hashCode());
        System.assertEquals(vpsOrderOsNames3.hashCode(), vpsOrderOsNames4.hashCode());
    }
}
