@isTest
private class IntServerHomeServicesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerHomeServices homeServices1 = IntServerHomeServices.getExample();
        IntServerHomeServices homeServices2 = homeServices1;
        IntServerHomeServices homeServices3 = new IntServerHomeServices();
        IntServerHomeServices homeServices4 = homeServices3;

        System.assert(homeServices1.equals(homeServices2));
        System.assert(homeServices2.equals(homeServices1));
        System.assert(homeServices1.equals(homeServices1));
        System.assert(homeServices3.equals(homeServices4));
        System.assert(homeServices4.equals(homeServices3));
        System.assert(homeServices3.equals(homeServices3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerHomeServices homeServices1 = IntServerHomeServices.getExample();
        IntServerHomeServices homeServices2 = IntServerHomeServices.getExample();
        IntServerHomeServices homeServices3 = new IntServerHomeServices();
        IntServerHomeServices homeServices4 = new IntServerHomeServices();

        System.assert(homeServices1.equals(homeServices2));
        System.assert(homeServices2.equals(homeServices1));
        System.assert(homeServices3.equals(homeServices4));
        System.assert(homeServices4.equals(homeServices3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerHomeServices homeServices1 = IntServerHomeServices.getExample();
        IntServerHomeServices homeServices2 = new IntServerHomeServices();

        System.assertEquals(false, homeServices1.equals('foo'));
        System.assertEquals(false, homeServices2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerHomeServices homeServices1 = IntServerHomeServices.getExample();
        IntServerHomeServices homeServices2 = new IntServerHomeServices();
        IntServerHomeServices homeServices3;

        System.assertEquals(false, homeServices1.equals(homeServices3));
        System.assertEquals(false, homeServices2.equals(homeServices3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerHomeServices homeServices1 = IntServerHomeServices.getExample();
        IntServerHomeServices homeServices2 = new IntServerHomeServices();

        System.assertEquals(homeServices1.hashCode(), homeServices1.hashCode());
        System.assertEquals(homeServices2.hashCode(), homeServices2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerHomeServices homeServices1 = IntServerHomeServices.getExample();
        IntServerHomeServices homeServices2 = IntServerHomeServices.getExample();
        IntServerHomeServices homeServices3 = new IntServerHomeServices();
        IntServerHomeServices homeServices4 = new IntServerHomeServices();

        System.assert(homeServices1.equals(homeServices2));
        System.assert(homeServices3.equals(homeServices4));
        System.assertEquals(homeServices1.hashCode(), homeServices2.hashCode());
        System.assertEquals(homeServices3.hashCode(), homeServices4.hashCode());
    }
}
