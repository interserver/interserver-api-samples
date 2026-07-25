@isTest
private class IntServerHomeServicesWebhostingTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerHomeServicesWebhosting homeServicesWebhosting1 = IntServerHomeServicesWebhosting.getExample();
        IntServerHomeServicesWebhosting homeServicesWebhosting2 = homeServicesWebhosting1;
        IntServerHomeServicesWebhosting homeServicesWebhosting3 = new IntServerHomeServicesWebhosting();
        IntServerHomeServicesWebhosting homeServicesWebhosting4 = homeServicesWebhosting3;

        System.assert(homeServicesWebhosting1.equals(homeServicesWebhosting2));
        System.assert(homeServicesWebhosting2.equals(homeServicesWebhosting1));
        System.assert(homeServicesWebhosting1.equals(homeServicesWebhosting1));
        System.assert(homeServicesWebhosting3.equals(homeServicesWebhosting4));
        System.assert(homeServicesWebhosting4.equals(homeServicesWebhosting3));
        System.assert(homeServicesWebhosting3.equals(homeServicesWebhosting3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerHomeServicesWebhosting homeServicesWebhosting1 = IntServerHomeServicesWebhosting.getExample();
        IntServerHomeServicesWebhosting homeServicesWebhosting2 = IntServerHomeServicesWebhosting.getExample();
        IntServerHomeServicesWebhosting homeServicesWebhosting3 = new IntServerHomeServicesWebhosting();
        IntServerHomeServicesWebhosting homeServicesWebhosting4 = new IntServerHomeServicesWebhosting();

        System.assert(homeServicesWebhosting1.equals(homeServicesWebhosting2));
        System.assert(homeServicesWebhosting2.equals(homeServicesWebhosting1));
        System.assert(homeServicesWebhosting3.equals(homeServicesWebhosting4));
        System.assert(homeServicesWebhosting4.equals(homeServicesWebhosting3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerHomeServicesWebhosting homeServicesWebhosting1 = IntServerHomeServicesWebhosting.getExample();
        IntServerHomeServicesWebhosting homeServicesWebhosting2 = new IntServerHomeServicesWebhosting();

        System.assertEquals(false, homeServicesWebhosting1.equals('foo'));
        System.assertEquals(false, homeServicesWebhosting2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerHomeServicesWebhosting homeServicesWebhosting1 = IntServerHomeServicesWebhosting.getExample();
        IntServerHomeServicesWebhosting homeServicesWebhosting2 = new IntServerHomeServicesWebhosting();
        IntServerHomeServicesWebhosting homeServicesWebhosting3;

        System.assertEquals(false, homeServicesWebhosting1.equals(homeServicesWebhosting3));
        System.assertEquals(false, homeServicesWebhosting2.equals(homeServicesWebhosting3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerHomeServicesWebhosting homeServicesWebhosting1 = IntServerHomeServicesWebhosting.getExample();
        IntServerHomeServicesWebhosting homeServicesWebhosting2 = new IntServerHomeServicesWebhosting();

        System.assertEquals(homeServicesWebhosting1.hashCode(), homeServicesWebhosting1.hashCode());
        System.assertEquals(homeServicesWebhosting2.hashCode(), homeServicesWebhosting2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerHomeServicesWebhosting homeServicesWebhosting1 = IntServerHomeServicesWebhosting.getExample();
        IntServerHomeServicesWebhosting homeServicesWebhosting2 = IntServerHomeServicesWebhosting.getExample();
        IntServerHomeServicesWebhosting homeServicesWebhosting3 = new IntServerHomeServicesWebhosting();
        IntServerHomeServicesWebhosting homeServicesWebhosting4 = new IntServerHomeServicesWebhosting();

        System.assert(homeServicesWebhosting1.equals(homeServicesWebhosting2));
        System.assert(homeServicesWebhosting3.equals(homeServicesWebhosting4));
        System.assertEquals(homeServicesWebhosting1.hashCode(), homeServicesWebhosting2.hashCode());
        System.assertEquals(homeServicesWebhosting3.hashCode(), homeServicesWebhosting4.hashCode());
    }
}
