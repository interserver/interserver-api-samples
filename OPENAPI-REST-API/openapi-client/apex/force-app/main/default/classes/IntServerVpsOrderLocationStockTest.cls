@isTest
private class IntServerVpsOrderLocationStockTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsOrderLocationStock vpsOrderLocationStock1 = IntServerVpsOrderLocationStock.getExample();
        IntServerVpsOrderLocationStock vpsOrderLocationStock2 = vpsOrderLocationStock1;
        IntServerVpsOrderLocationStock vpsOrderLocationStock3 = new IntServerVpsOrderLocationStock();
        IntServerVpsOrderLocationStock vpsOrderLocationStock4 = vpsOrderLocationStock3;

        System.assert(vpsOrderLocationStock1.equals(vpsOrderLocationStock2));
        System.assert(vpsOrderLocationStock2.equals(vpsOrderLocationStock1));
        System.assert(vpsOrderLocationStock1.equals(vpsOrderLocationStock1));
        System.assert(vpsOrderLocationStock3.equals(vpsOrderLocationStock4));
        System.assert(vpsOrderLocationStock4.equals(vpsOrderLocationStock3));
        System.assert(vpsOrderLocationStock3.equals(vpsOrderLocationStock3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsOrderLocationStock vpsOrderLocationStock1 = IntServerVpsOrderLocationStock.getExample();
        IntServerVpsOrderLocationStock vpsOrderLocationStock2 = IntServerVpsOrderLocationStock.getExample();
        IntServerVpsOrderLocationStock vpsOrderLocationStock3 = new IntServerVpsOrderLocationStock();
        IntServerVpsOrderLocationStock vpsOrderLocationStock4 = new IntServerVpsOrderLocationStock();

        System.assert(vpsOrderLocationStock1.equals(vpsOrderLocationStock2));
        System.assert(vpsOrderLocationStock2.equals(vpsOrderLocationStock1));
        System.assert(vpsOrderLocationStock3.equals(vpsOrderLocationStock4));
        System.assert(vpsOrderLocationStock4.equals(vpsOrderLocationStock3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsOrderLocationStock vpsOrderLocationStock1 = IntServerVpsOrderLocationStock.getExample();
        IntServerVpsOrderLocationStock vpsOrderLocationStock2 = new IntServerVpsOrderLocationStock();

        System.assertEquals(false, vpsOrderLocationStock1.equals('foo'));
        System.assertEquals(false, vpsOrderLocationStock2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsOrderLocationStock vpsOrderLocationStock1 = IntServerVpsOrderLocationStock.getExample();
        IntServerVpsOrderLocationStock vpsOrderLocationStock2 = new IntServerVpsOrderLocationStock();
        IntServerVpsOrderLocationStock vpsOrderLocationStock3;

        System.assertEquals(false, vpsOrderLocationStock1.equals(vpsOrderLocationStock3));
        System.assertEquals(false, vpsOrderLocationStock2.equals(vpsOrderLocationStock3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsOrderLocationStock vpsOrderLocationStock1 = IntServerVpsOrderLocationStock.getExample();
        IntServerVpsOrderLocationStock vpsOrderLocationStock2 = new IntServerVpsOrderLocationStock();

        System.assertEquals(vpsOrderLocationStock1.hashCode(), vpsOrderLocationStock1.hashCode());
        System.assertEquals(vpsOrderLocationStock2.hashCode(), vpsOrderLocationStock2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsOrderLocationStock vpsOrderLocationStock1 = IntServerVpsOrderLocationStock.getExample();
        IntServerVpsOrderLocationStock vpsOrderLocationStock2 = IntServerVpsOrderLocationStock.getExample();
        IntServerVpsOrderLocationStock vpsOrderLocationStock3 = new IntServerVpsOrderLocationStock();
        IntServerVpsOrderLocationStock vpsOrderLocationStock4 = new IntServerVpsOrderLocationStock();

        System.assert(vpsOrderLocationStock1.equals(vpsOrderLocationStock2));
        System.assert(vpsOrderLocationStock3.equals(vpsOrderLocationStock4));
        System.assertEquals(vpsOrderLocationStock1.hashCode(), vpsOrderLocationStock2.hashCode());
        System.assertEquals(vpsOrderLocationStock3.hashCode(), vpsOrderLocationStock4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerVpsOrderLocationStock vpsOrderLocationStock = new IntServerVpsOrderLocationStock();
        Map<String, String> x-property-mappings = vpsOrderLocationStock.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('1'));
    }
}
