@isTest
private class IntServerHostnameObjectTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerHostnameObject hostnameObject1 = IntServerHostnameObject.getExample();
        IntServerHostnameObject hostnameObject2 = hostnameObject1;
        IntServerHostnameObject hostnameObject3 = new IntServerHostnameObject();
        IntServerHostnameObject hostnameObject4 = hostnameObject3;

        System.assert(hostnameObject1.equals(hostnameObject2));
        System.assert(hostnameObject2.equals(hostnameObject1));
        System.assert(hostnameObject1.equals(hostnameObject1));
        System.assert(hostnameObject3.equals(hostnameObject4));
        System.assert(hostnameObject4.equals(hostnameObject3));
        System.assert(hostnameObject3.equals(hostnameObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerHostnameObject hostnameObject1 = IntServerHostnameObject.getExample();
        IntServerHostnameObject hostnameObject2 = IntServerHostnameObject.getExample();
        IntServerHostnameObject hostnameObject3 = new IntServerHostnameObject();
        IntServerHostnameObject hostnameObject4 = new IntServerHostnameObject();

        System.assert(hostnameObject1.equals(hostnameObject2));
        System.assert(hostnameObject2.equals(hostnameObject1));
        System.assert(hostnameObject3.equals(hostnameObject4));
        System.assert(hostnameObject4.equals(hostnameObject3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerHostnameObject hostnameObject1 = IntServerHostnameObject.getExample();
        IntServerHostnameObject hostnameObject2 = new IntServerHostnameObject();

        System.assertEquals(false, hostnameObject1.equals('foo'));
        System.assertEquals(false, hostnameObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerHostnameObject hostnameObject1 = IntServerHostnameObject.getExample();
        IntServerHostnameObject hostnameObject2 = new IntServerHostnameObject();
        IntServerHostnameObject hostnameObject3;

        System.assertEquals(false, hostnameObject1.equals(hostnameObject3));
        System.assertEquals(false, hostnameObject2.equals(hostnameObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerHostnameObject hostnameObject1 = IntServerHostnameObject.getExample();
        IntServerHostnameObject hostnameObject2 = new IntServerHostnameObject();

        System.assertEquals(hostnameObject1.hashCode(), hostnameObject1.hashCode());
        System.assertEquals(hostnameObject2.hashCode(), hostnameObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerHostnameObject hostnameObject1 = IntServerHostnameObject.getExample();
        IntServerHostnameObject hostnameObject2 = IntServerHostnameObject.getExample();
        IntServerHostnameObject hostnameObject3 = new IntServerHostnameObject();
        IntServerHostnameObject hostnameObject4 = new IntServerHostnameObject();

        System.assert(hostnameObject1.equals(hostnameObject2));
        System.assert(hostnameObject3.equals(hostnameObject4));
        System.assertEquals(hostnameObject1.hashCode(), hostnameObject2.hashCode());
        System.assertEquals(hostnameObject3.hashCode(), hostnameObject4.hashCode());
    }
}
