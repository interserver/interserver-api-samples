@isTest
private class IntServerWebhostingCancel200ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerWebhostingCancel200Response webhostingCancel200Response1 = IntServerWebhostingCancel200Response.getExample();
        IntServerWebhostingCancel200Response webhostingCancel200Response2 = webhostingCancel200Response1;
        IntServerWebhostingCancel200Response webhostingCancel200Response3 = new IntServerWebhostingCancel200Response();
        IntServerWebhostingCancel200Response webhostingCancel200Response4 = webhostingCancel200Response3;

        System.assert(webhostingCancel200Response1.equals(webhostingCancel200Response2));
        System.assert(webhostingCancel200Response2.equals(webhostingCancel200Response1));
        System.assert(webhostingCancel200Response1.equals(webhostingCancel200Response1));
        System.assert(webhostingCancel200Response3.equals(webhostingCancel200Response4));
        System.assert(webhostingCancel200Response4.equals(webhostingCancel200Response3));
        System.assert(webhostingCancel200Response3.equals(webhostingCancel200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerWebhostingCancel200Response webhostingCancel200Response1 = IntServerWebhostingCancel200Response.getExample();
        IntServerWebhostingCancel200Response webhostingCancel200Response2 = IntServerWebhostingCancel200Response.getExample();
        IntServerWebhostingCancel200Response webhostingCancel200Response3 = new IntServerWebhostingCancel200Response();
        IntServerWebhostingCancel200Response webhostingCancel200Response4 = new IntServerWebhostingCancel200Response();

        System.assert(webhostingCancel200Response1.equals(webhostingCancel200Response2));
        System.assert(webhostingCancel200Response2.equals(webhostingCancel200Response1));
        System.assert(webhostingCancel200Response3.equals(webhostingCancel200Response4));
        System.assert(webhostingCancel200Response4.equals(webhostingCancel200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerWebhostingCancel200Response webhostingCancel200Response1 = IntServerWebhostingCancel200Response.getExample();
        IntServerWebhostingCancel200Response webhostingCancel200Response2 = new IntServerWebhostingCancel200Response();

        System.assertEquals(false, webhostingCancel200Response1.equals('foo'));
        System.assertEquals(false, webhostingCancel200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerWebhostingCancel200Response webhostingCancel200Response1 = IntServerWebhostingCancel200Response.getExample();
        IntServerWebhostingCancel200Response webhostingCancel200Response2 = new IntServerWebhostingCancel200Response();
        IntServerWebhostingCancel200Response webhostingCancel200Response3;

        System.assertEquals(false, webhostingCancel200Response1.equals(webhostingCancel200Response3));
        System.assertEquals(false, webhostingCancel200Response2.equals(webhostingCancel200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerWebhostingCancel200Response webhostingCancel200Response1 = IntServerWebhostingCancel200Response.getExample();
        IntServerWebhostingCancel200Response webhostingCancel200Response2 = new IntServerWebhostingCancel200Response();

        System.assertEquals(webhostingCancel200Response1.hashCode(), webhostingCancel200Response1.hashCode());
        System.assertEquals(webhostingCancel200Response2.hashCode(), webhostingCancel200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerWebhostingCancel200Response webhostingCancel200Response1 = IntServerWebhostingCancel200Response.getExample();
        IntServerWebhostingCancel200Response webhostingCancel200Response2 = IntServerWebhostingCancel200Response.getExample();
        IntServerWebhostingCancel200Response webhostingCancel200Response3 = new IntServerWebhostingCancel200Response();
        IntServerWebhostingCancel200Response webhostingCancel200Response4 = new IntServerWebhostingCancel200Response();

        System.assert(webhostingCancel200Response1.equals(webhostingCancel200Response2));
        System.assert(webhostingCancel200Response3.equals(webhostingCancel200Response4));
        System.assertEquals(webhostingCancel200Response1.hashCode(), webhostingCancel200Response2.hashCode());
        System.assertEquals(webhostingCancel200Response3.hashCode(), webhostingCancel200Response4.hashCode());
    }
}
