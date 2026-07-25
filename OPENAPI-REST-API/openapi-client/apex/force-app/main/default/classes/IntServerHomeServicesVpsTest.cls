@isTest
private class IntServerHomeServicesVpsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerHomeServicesVps homeServicesVps1 = IntServerHomeServicesVps.getExample();
        IntServerHomeServicesVps homeServicesVps2 = homeServicesVps1;
        IntServerHomeServicesVps homeServicesVps3 = new IntServerHomeServicesVps();
        IntServerHomeServicesVps homeServicesVps4 = homeServicesVps3;

        System.assert(homeServicesVps1.equals(homeServicesVps2));
        System.assert(homeServicesVps2.equals(homeServicesVps1));
        System.assert(homeServicesVps1.equals(homeServicesVps1));
        System.assert(homeServicesVps3.equals(homeServicesVps4));
        System.assert(homeServicesVps4.equals(homeServicesVps3));
        System.assert(homeServicesVps3.equals(homeServicesVps3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerHomeServicesVps homeServicesVps1 = IntServerHomeServicesVps.getExample();
        IntServerHomeServicesVps homeServicesVps2 = IntServerHomeServicesVps.getExample();
        IntServerHomeServicesVps homeServicesVps3 = new IntServerHomeServicesVps();
        IntServerHomeServicesVps homeServicesVps4 = new IntServerHomeServicesVps();

        System.assert(homeServicesVps1.equals(homeServicesVps2));
        System.assert(homeServicesVps2.equals(homeServicesVps1));
        System.assert(homeServicesVps3.equals(homeServicesVps4));
        System.assert(homeServicesVps4.equals(homeServicesVps3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerHomeServicesVps homeServicesVps1 = IntServerHomeServicesVps.getExample();
        IntServerHomeServicesVps homeServicesVps2 = new IntServerHomeServicesVps();

        System.assertEquals(false, homeServicesVps1.equals('foo'));
        System.assertEquals(false, homeServicesVps2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerHomeServicesVps homeServicesVps1 = IntServerHomeServicesVps.getExample();
        IntServerHomeServicesVps homeServicesVps2 = new IntServerHomeServicesVps();
        IntServerHomeServicesVps homeServicesVps3;

        System.assertEquals(false, homeServicesVps1.equals(homeServicesVps3));
        System.assertEquals(false, homeServicesVps2.equals(homeServicesVps3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerHomeServicesVps homeServicesVps1 = IntServerHomeServicesVps.getExample();
        IntServerHomeServicesVps homeServicesVps2 = new IntServerHomeServicesVps();

        System.assertEquals(homeServicesVps1.hashCode(), homeServicesVps1.hashCode());
        System.assertEquals(homeServicesVps2.hashCode(), homeServicesVps2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerHomeServicesVps homeServicesVps1 = IntServerHomeServicesVps.getExample();
        IntServerHomeServicesVps homeServicesVps2 = IntServerHomeServicesVps.getExample();
        IntServerHomeServicesVps homeServicesVps3 = new IntServerHomeServicesVps();
        IntServerHomeServicesVps homeServicesVps4 = new IntServerHomeServicesVps();

        System.assert(homeServicesVps1.equals(homeServicesVps2));
        System.assert(homeServicesVps3.equals(homeServicesVps4));
        System.assertEquals(homeServicesVps1.hashCode(), homeServicesVps2.hashCode());
        System.assertEquals(homeServicesVps3.hashCode(), homeServicesVps4.hashCode());
    }
}
