@isTest
private class IntServerFloatingIpsCancel200ResponsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerFloatingIpsCancel200Respons floatingIpsCancel200Response1 = IntServerFloatingIpsCancel200Respons.getExample();
        IntServerFloatingIpsCancel200Respons floatingIpsCancel200Response2 = floatingIpsCancel200Response1;
        IntServerFloatingIpsCancel200Respons floatingIpsCancel200Response3 = new IntServerFloatingIpsCancel200Respons();
        IntServerFloatingIpsCancel200Respons floatingIpsCancel200Response4 = floatingIpsCancel200Response3;

        System.assert(floatingIpsCancel200Response1.equals(floatingIpsCancel200Response2));
        System.assert(floatingIpsCancel200Response2.equals(floatingIpsCancel200Response1));
        System.assert(floatingIpsCancel200Response1.equals(floatingIpsCancel200Response1));
        System.assert(floatingIpsCancel200Response3.equals(floatingIpsCancel200Response4));
        System.assert(floatingIpsCancel200Response4.equals(floatingIpsCancel200Response3));
        System.assert(floatingIpsCancel200Response3.equals(floatingIpsCancel200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerFloatingIpsCancel200Respons floatingIpsCancel200Response1 = IntServerFloatingIpsCancel200Respons.getExample();
        IntServerFloatingIpsCancel200Respons floatingIpsCancel200Response2 = IntServerFloatingIpsCancel200Respons.getExample();
        IntServerFloatingIpsCancel200Respons floatingIpsCancel200Response3 = new IntServerFloatingIpsCancel200Respons();
        IntServerFloatingIpsCancel200Respons floatingIpsCancel200Response4 = new IntServerFloatingIpsCancel200Respons();

        System.assert(floatingIpsCancel200Response1.equals(floatingIpsCancel200Response2));
        System.assert(floatingIpsCancel200Response2.equals(floatingIpsCancel200Response1));
        System.assert(floatingIpsCancel200Response3.equals(floatingIpsCancel200Response4));
        System.assert(floatingIpsCancel200Response4.equals(floatingIpsCancel200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerFloatingIpsCancel200Respons floatingIpsCancel200Response1 = IntServerFloatingIpsCancel200Respons.getExample();
        IntServerFloatingIpsCancel200Respons floatingIpsCancel200Response2 = new IntServerFloatingIpsCancel200Respons();

        System.assertEquals(false, floatingIpsCancel200Response1.equals('foo'));
        System.assertEquals(false, floatingIpsCancel200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerFloatingIpsCancel200Respons floatingIpsCancel200Response1 = IntServerFloatingIpsCancel200Respons.getExample();
        IntServerFloatingIpsCancel200Respons floatingIpsCancel200Response2 = new IntServerFloatingIpsCancel200Respons();
        IntServerFloatingIpsCancel200Respons floatingIpsCancel200Response3;

        System.assertEquals(false, floatingIpsCancel200Response1.equals(floatingIpsCancel200Response3));
        System.assertEquals(false, floatingIpsCancel200Response2.equals(floatingIpsCancel200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerFloatingIpsCancel200Respons floatingIpsCancel200Response1 = IntServerFloatingIpsCancel200Respons.getExample();
        IntServerFloatingIpsCancel200Respons floatingIpsCancel200Response2 = new IntServerFloatingIpsCancel200Respons();

        System.assertEquals(floatingIpsCancel200Response1.hashCode(), floatingIpsCancel200Response1.hashCode());
        System.assertEquals(floatingIpsCancel200Response2.hashCode(), floatingIpsCancel200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerFloatingIpsCancel200Respons floatingIpsCancel200Response1 = IntServerFloatingIpsCancel200Respons.getExample();
        IntServerFloatingIpsCancel200Respons floatingIpsCancel200Response2 = IntServerFloatingIpsCancel200Respons.getExample();
        IntServerFloatingIpsCancel200Respons floatingIpsCancel200Response3 = new IntServerFloatingIpsCancel200Respons();
        IntServerFloatingIpsCancel200Respons floatingIpsCancel200Response4 = new IntServerFloatingIpsCancel200Respons();

        System.assert(floatingIpsCancel200Response1.equals(floatingIpsCancel200Response2));
        System.assert(floatingIpsCancel200Response3.equals(floatingIpsCancel200Response4));
        System.assertEquals(floatingIpsCancel200Response1.hashCode(), floatingIpsCancel200Response2.hashCode());
        System.assertEquals(floatingIpsCancel200Response3.hashCode(), floatingIpsCancel200Response4.hashCode());
    }
}
