@isTest
private class IntServerVpsOrderLocationNamesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsOrderLocationNames vpsOrderLocationNames1 = IntServerVpsOrderLocationNames.getExample();
        IntServerVpsOrderLocationNames vpsOrderLocationNames2 = vpsOrderLocationNames1;
        IntServerVpsOrderLocationNames vpsOrderLocationNames3 = new IntServerVpsOrderLocationNames();
        IntServerVpsOrderLocationNames vpsOrderLocationNames4 = vpsOrderLocationNames3;

        System.assert(vpsOrderLocationNames1.equals(vpsOrderLocationNames2));
        System.assert(vpsOrderLocationNames2.equals(vpsOrderLocationNames1));
        System.assert(vpsOrderLocationNames1.equals(vpsOrderLocationNames1));
        System.assert(vpsOrderLocationNames3.equals(vpsOrderLocationNames4));
        System.assert(vpsOrderLocationNames4.equals(vpsOrderLocationNames3));
        System.assert(vpsOrderLocationNames3.equals(vpsOrderLocationNames3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsOrderLocationNames vpsOrderLocationNames1 = IntServerVpsOrderLocationNames.getExample();
        IntServerVpsOrderLocationNames vpsOrderLocationNames2 = IntServerVpsOrderLocationNames.getExample();
        IntServerVpsOrderLocationNames vpsOrderLocationNames3 = new IntServerVpsOrderLocationNames();
        IntServerVpsOrderLocationNames vpsOrderLocationNames4 = new IntServerVpsOrderLocationNames();

        System.assert(vpsOrderLocationNames1.equals(vpsOrderLocationNames2));
        System.assert(vpsOrderLocationNames2.equals(vpsOrderLocationNames1));
        System.assert(vpsOrderLocationNames3.equals(vpsOrderLocationNames4));
        System.assert(vpsOrderLocationNames4.equals(vpsOrderLocationNames3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsOrderLocationNames vpsOrderLocationNames1 = IntServerVpsOrderLocationNames.getExample();
        IntServerVpsOrderLocationNames vpsOrderLocationNames2 = new IntServerVpsOrderLocationNames();

        System.assertEquals(false, vpsOrderLocationNames1.equals('foo'));
        System.assertEquals(false, vpsOrderLocationNames2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsOrderLocationNames vpsOrderLocationNames1 = IntServerVpsOrderLocationNames.getExample();
        IntServerVpsOrderLocationNames vpsOrderLocationNames2 = new IntServerVpsOrderLocationNames();
        IntServerVpsOrderLocationNames vpsOrderLocationNames3;

        System.assertEquals(false, vpsOrderLocationNames1.equals(vpsOrderLocationNames3));
        System.assertEquals(false, vpsOrderLocationNames2.equals(vpsOrderLocationNames3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsOrderLocationNames vpsOrderLocationNames1 = IntServerVpsOrderLocationNames.getExample();
        IntServerVpsOrderLocationNames vpsOrderLocationNames2 = new IntServerVpsOrderLocationNames();

        System.assertEquals(vpsOrderLocationNames1.hashCode(), vpsOrderLocationNames1.hashCode());
        System.assertEquals(vpsOrderLocationNames2.hashCode(), vpsOrderLocationNames2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsOrderLocationNames vpsOrderLocationNames1 = IntServerVpsOrderLocationNames.getExample();
        IntServerVpsOrderLocationNames vpsOrderLocationNames2 = IntServerVpsOrderLocationNames.getExample();
        IntServerVpsOrderLocationNames vpsOrderLocationNames3 = new IntServerVpsOrderLocationNames();
        IntServerVpsOrderLocationNames vpsOrderLocationNames4 = new IntServerVpsOrderLocationNames();

        System.assert(vpsOrderLocationNames1.equals(vpsOrderLocationNames2));
        System.assert(vpsOrderLocationNames3.equals(vpsOrderLocationNames4));
        System.assertEquals(vpsOrderLocationNames1.hashCode(), vpsOrderLocationNames2.hashCode());
        System.assertEquals(vpsOrderLocationNames3.hashCode(), vpsOrderLocationNames4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerVpsOrderLocationNames vpsOrderLocationNames = new IntServerVpsOrderLocationNames();
        Map<String, String> x-property-mappings = vpsOrderLocationNames.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('3'));
    }
}
