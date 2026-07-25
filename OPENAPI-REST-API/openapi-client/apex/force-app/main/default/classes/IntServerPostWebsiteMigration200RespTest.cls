@isTest
private class IntServerPostWebsiteMigration200RespTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerPostWebsiteMigration200Resp postWebsiteMigration200Response1 = IntServerPostWebsiteMigration200Resp.getExample();
        IntServerPostWebsiteMigration200Resp postWebsiteMigration200Response2 = postWebsiteMigration200Response1;
        IntServerPostWebsiteMigration200Resp postWebsiteMigration200Response3 = new IntServerPostWebsiteMigration200Resp();
        IntServerPostWebsiteMigration200Resp postWebsiteMigration200Response4 = postWebsiteMigration200Response3;

        System.assert(postWebsiteMigration200Response1.equals(postWebsiteMigration200Response2));
        System.assert(postWebsiteMigration200Response2.equals(postWebsiteMigration200Response1));
        System.assert(postWebsiteMigration200Response1.equals(postWebsiteMigration200Response1));
        System.assert(postWebsiteMigration200Response3.equals(postWebsiteMigration200Response4));
        System.assert(postWebsiteMigration200Response4.equals(postWebsiteMigration200Response3));
        System.assert(postWebsiteMigration200Response3.equals(postWebsiteMigration200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerPostWebsiteMigration200Resp postWebsiteMigration200Response1 = IntServerPostWebsiteMigration200Resp.getExample();
        IntServerPostWebsiteMigration200Resp postWebsiteMigration200Response2 = IntServerPostWebsiteMigration200Resp.getExample();
        IntServerPostWebsiteMigration200Resp postWebsiteMigration200Response3 = new IntServerPostWebsiteMigration200Resp();
        IntServerPostWebsiteMigration200Resp postWebsiteMigration200Response4 = new IntServerPostWebsiteMigration200Resp();

        System.assert(postWebsiteMigration200Response1.equals(postWebsiteMigration200Response2));
        System.assert(postWebsiteMigration200Response2.equals(postWebsiteMigration200Response1));
        System.assert(postWebsiteMigration200Response3.equals(postWebsiteMigration200Response4));
        System.assert(postWebsiteMigration200Response4.equals(postWebsiteMigration200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerPostWebsiteMigration200Resp postWebsiteMigration200Response1 = IntServerPostWebsiteMigration200Resp.getExample();
        IntServerPostWebsiteMigration200Resp postWebsiteMigration200Response2 = new IntServerPostWebsiteMigration200Resp();

        System.assertEquals(false, postWebsiteMigration200Response1.equals('foo'));
        System.assertEquals(false, postWebsiteMigration200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerPostWebsiteMigration200Resp postWebsiteMigration200Response1 = IntServerPostWebsiteMigration200Resp.getExample();
        IntServerPostWebsiteMigration200Resp postWebsiteMigration200Response2 = new IntServerPostWebsiteMigration200Resp();
        IntServerPostWebsiteMigration200Resp postWebsiteMigration200Response3;

        System.assertEquals(false, postWebsiteMigration200Response1.equals(postWebsiteMigration200Response3));
        System.assertEquals(false, postWebsiteMigration200Response2.equals(postWebsiteMigration200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerPostWebsiteMigration200Resp postWebsiteMigration200Response1 = IntServerPostWebsiteMigration200Resp.getExample();
        IntServerPostWebsiteMigration200Resp postWebsiteMigration200Response2 = new IntServerPostWebsiteMigration200Resp();

        System.assertEquals(postWebsiteMigration200Response1.hashCode(), postWebsiteMigration200Response1.hashCode());
        System.assertEquals(postWebsiteMigration200Response2.hashCode(), postWebsiteMigration200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerPostWebsiteMigration200Resp postWebsiteMigration200Response1 = IntServerPostWebsiteMigration200Resp.getExample();
        IntServerPostWebsiteMigration200Resp postWebsiteMigration200Response2 = IntServerPostWebsiteMigration200Resp.getExample();
        IntServerPostWebsiteMigration200Resp postWebsiteMigration200Response3 = new IntServerPostWebsiteMigration200Resp();
        IntServerPostWebsiteMigration200Resp postWebsiteMigration200Response4 = new IntServerPostWebsiteMigration200Resp();

        System.assert(postWebsiteMigration200Response1.equals(postWebsiteMigration200Response2));
        System.assert(postWebsiteMigration200Response3.equals(postWebsiteMigration200Response4));
        System.assertEquals(postWebsiteMigration200Response1.hashCode(), postWebsiteMigration200Response2.hashCode());
        System.assertEquals(postWebsiteMigration200Response3.hashCode(), postWebsiteMigration200Response4.hashCode());
    }
}
