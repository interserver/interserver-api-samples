@isTest
private class IntServerIpObjectTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerIpObject ipObject1 = IntServerIpObject.getExample();
        IntServerIpObject ipObject2 = ipObject1;
        IntServerIpObject ipObject3 = new IntServerIpObject();
        IntServerIpObject ipObject4 = ipObject3;

        System.assert(ipObject1.equals(ipObject2));
        System.assert(ipObject2.equals(ipObject1));
        System.assert(ipObject1.equals(ipObject1));
        System.assert(ipObject3.equals(ipObject4));
        System.assert(ipObject4.equals(ipObject3));
        System.assert(ipObject3.equals(ipObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerIpObject ipObject1 = IntServerIpObject.getExample();
        IntServerIpObject ipObject2 = IntServerIpObject.getExample();
        IntServerIpObject ipObject3 = new IntServerIpObject();
        IntServerIpObject ipObject4 = new IntServerIpObject();

        System.assert(ipObject1.equals(ipObject2));
        System.assert(ipObject2.equals(ipObject1));
        System.assert(ipObject3.equals(ipObject4));
        System.assert(ipObject4.equals(ipObject3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerIpObject ipObject1 = IntServerIpObject.getExample();
        IntServerIpObject ipObject2 = new IntServerIpObject();

        System.assertEquals(false, ipObject1.equals('foo'));
        System.assertEquals(false, ipObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerIpObject ipObject1 = IntServerIpObject.getExample();
        IntServerIpObject ipObject2 = new IntServerIpObject();
        IntServerIpObject ipObject3;

        System.assertEquals(false, ipObject1.equals(ipObject3));
        System.assertEquals(false, ipObject2.equals(ipObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerIpObject ipObject1 = IntServerIpObject.getExample();
        IntServerIpObject ipObject2 = new IntServerIpObject();

        System.assertEquals(ipObject1.hashCode(), ipObject1.hashCode());
        System.assertEquals(ipObject2.hashCode(), ipObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerIpObject ipObject1 = IntServerIpObject.getExample();
        IntServerIpObject ipObject2 = IntServerIpObject.getExample();
        IntServerIpObject ipObject3 = new IntServerIpObject();
        IntServerIpObject ipObject4 = new IntServerIpObject();

        System.assert(ipObject1.equals(ipObject2));
        System.assert(ipObject3.equals(ipObject4));
        System.assertEquals(ipObject1.hashCode(), ipObject2.hashCode());
        System.assertEquals(ipObject3.hashCode(), ipObject4.hashCode());
    }
}
