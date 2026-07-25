@isTest
private class IntServerServerOrderCpuLiTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerOrderCpuLi serverOrderCpuLi1 = IntServerServerOrderCpuLi.getExample();
        IntServerServerOrderCpuLi serverOrderCpuLi2 = serverOrderCpuLi1;
        IntServerServerOrderCpuLi serverOrderCpuLi3 = new IntServerServerOrderCpuLi();
        IntServerServerOrderCpuLi serverOrderCpuLi4 = serverOrderCpuLi3;

        System.assert(serverOrderCpuLi1.equals(serverOrderCpuLi2));
        System.assert(serverOrderCpuLi2.equals(serverOrderCpuLi1));
        System.assert(serverOrderCpuLi1.equals(serverOrderCpuLi1));
        System.assert(serverOrderCpuLi3.equals(serverOrderCpuLi4));
        System.assert(serverOrderCpuLi4.equals(serverOrderCpuLi3));
        System.assert(serverOrderCpuLi3.equals(serverOrderCpuLi3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerOrderCpuLi serverOrderCpuLi1 = IntServerServerOrderCpuLi.getExample();
        IntServerServerOrderCpuLi serverOrderCpuLi2 = IntServerServerOrderCpuLi.getExample();
        IntServerServerOrderCpuLi serverOrderCpuLi3 = new IntServerServerOrderCpuLi();
        IntServerServerOrderCpuLi serverOrderCpuLi4 = new IntServerServerOrderCpuLi();

        System.assert(serverOrderCpuLi1.equals(serverOrderCpuLi2));
        System.assert(serverOrderCpuLi2.equals(serverOrderCpuLi1));
        System.assert(serverOrderCpuLi3.equals(serverOrderCpuLi4));
        System.assert(serverOrderCpuLi4.equals(serverOrderCpuLi3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerOrderCpuLi serverOrderCpuLi1 = IntServerServerOrderCpuLi.getExample();
        IntServerServerOrderCpuLi serverOrderCpuLi2 = new IntServerServerOrderCpuLi();

        System.assertEquals(false, serverOrderCpuLi1.equals('foo'));
        System.assertEquals(false, serverOrderCpuLi2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerOrderCpuLi serverOrderCpuLi1 = IntServerServerOrderCpuLi.getExample();
        IntServerServerOrderCpuLi serverOrderCpuLi2 = new IntServerServerOrderCpuLi();
        IntServerServerOrderCpuLi serverOrderCpuLi3;

        System.assertEquals(false, serverOrderCpuLi1.equals(serverOrderCpuLi3));
        System.assertEquals(false, serverOrderCpuLi2.equals(serverOrderCpuLi3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerOrderCpuLi serverOrderCpuLi1 = IntServerServerOrderCpuLi.getExample();
        IntServerServerOrderCpuLi serverOrderCpuLi2 = new IntServerServerOrderCpuLi();

        System.assertEquals(serverOrderCpuLi1.hashCode(), serverOrderCpuLi1.hashCode());
        System.assertEquals(serverOrderCpuLi2.hashCode(), serverOrderCpuLi2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerOrderCpuLi serverOrderCpuLi1 = IntServerServerOrderCpuLi.getExample();
        IntServerServerOrderCpuLi serverOrderCpuLi2 = IntServerServerOrderCpuLi.getExample();
        IntServerServerOrderCpuLi serverOrderCpuLi3 = new IntServerServerOrderCpuLi();
        IntServerServerOrderCpuLi serverOrderCpuLi4 = new IntServerServerOrderCpuLi();

        System.assert(serverOrderCpuLi1.equals(serverOrderCpuLi2));
        System.assert(serverOrderCpuLi3.equals(serverOrderCpuLi4));
        System.assertEquals(serverOrderCpuLi1.hashCode(), serverOrderCpuLi2.hashCode());
        System.assertEquals(serverOrderCpuLi3.hashCode(), serverOrderCpuLi4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServerOrderCpuLi serverOrderCpuLi = new IntServerServerOrderCpuLi();
        Map<String, String> x-property-mappings = serverOrderCpuLi.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('254'));
    }
}
