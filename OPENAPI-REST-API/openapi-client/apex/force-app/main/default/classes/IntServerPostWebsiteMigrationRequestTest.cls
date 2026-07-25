@isTest
private class IntServerPostWebsiteMigrationRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerPostWebsiteMigrationRequest postWebsiteMigrationRequest1 = IntServerPostWebsiteMigrationRequest.getExample();
        IntServerPostWebsiteMigrationRequest postWebsiteMigrationRequest2 = postWebsiteMigrationRequest1;
        IntServerPostWebsiteMigrationRequest postWebsiteMigrationRequest3 = new IntServerPostWebsiteMigrationRequest();
        IntServerPostWebsiteMigrationRequest postWebsiteMigrationRequest4 = postWebsiteMigrationRequest3;

        System.assert(postWebsiteMigrationRequest1.equals(postWebsiteMigrationRequest2));
        System.assert(postWebsiteMigrationRequest2.equals(postWebsiteMigrationRequest1));
        System.assert(postWebsiteMigrationRequest1.equals(postWebsiteMigrationRequest1));
        System.assert(postWebsiteMigrationRequest3.equals(postWebsiteMigrationRequest4));
        System.assert(postWebsiteMigrationRequest4.equals(postWebsiteMigrationRequest3));
        System.assert(postWebsiteMigrationRequest3.equals(postWebsiteMigrationRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerPostWebsiteMigrationRequest postWebsiteMigrationRequest1 = IntServerPostWebsiteMigrationRequest.getExample();
        IntServerPostWebsiteMigrationRequest postWebsiteMigrationRequest2 = IntServerPostWebsiteMigrationRequest.getExample();
        IntServerPostWebsiteMigrationRequest postWebsiteMigrationRequest3 = new IntServerPostWebsiteMigrationRequest();
        IntServerPostWebsiteMigrationRequest postWebsiteMigrationRequest4 = new IntServerPostWebsiteMigrationRequest();

        System.assert(postWebsiteMigrationRequest1.equals(postWebsiteMigrationRequest2));
        System.assert(postWebsiteMigrationRequest2.equals(postWebsiteMigrationRequest1));
        System.assert(postWebsiteMigrationRequest3.equals(postWebsiteMigrationRequest4));
        System.assert(postWebsiteMigrationRequest4.equals(postWebsiteMigrationRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerPostWebsiteMigrationRequest postWebsiteMigrationRequest1 = IntServerPostWebsiteMigrationRequest.getExample();
        IntServerPostWebsiteMigrationRequest postWebsiteMigrationRequest2 = new IntServerPostWebsiteMigrationRequest();

        System.assertEquals(false, postWebsiteMigrationRequest1.equals('foo'));
        System.assertEquals(false, postWebsiteMigrationRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerPostWebsiteMigrationRequest postWebsiteMigrationRequest1 = IntServerPostWebsiteMigrationRequest.getExample();
        IntServerPostWebsiteMigrationRequest postWebsiteMigrationRequest2 = new IntServerPostWebsiteMigrationRequest();
        IntServerPostWebsiteMigrationRequest postWebsiteMigrationRequest3;

        System.assertEquals(false, postWebsiteMigrationRequest1.equals(postWebsiteMigrationRequest3));
        System.assertEquals(false, postWebsiteMigrationRequest2.equals(postWebsiteMigrationRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerPostWebsiteMigrationRequest postWebsiteMigrationRequest1 = IntServerPostWebsiteMigrationRequest.getExample();
        IntServerPostWebsiteMigrationRequest postWebsiteMigrationRequest2 = new IntServerPostWebsiteMigrationRequest();

        System.assertEquals(postWebsiteMigrationRequest1.hashCode(), postWebsiteMigrationRequest1.hashCode());
        System.assertEquals(postWebsiteMigrationRequest2.hashCode(), postWebsiteMigrationRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerPostWebsiteMigrationRequest postWebsiteMigrationRequest1 = IntServerPostWebsiteMigrationRequest.getExample();
        IntServerPostWebsiteMigrationRequest postWebsiteMigrationRequest2 = IntServerPostWebsiteMigrationRequest.getExample();
        IntServerPostWebsiteMigrationRequest postWebsiteMigrationRequest3 = new IntServerPostWebsiteMigrationRequest();
        IntServerPostWebsiteMigrationRequest postWebsiteMigrationRequest4 = new IntServerPostWebsiteMigrationRequest();

        System.assert(postWebsiteMigrationRequest1.equals(postWebsiteMigrationRequest2));
        System.assert(postWebsiteMigrationRequest3.equals(postWebsiteMigrationRequest4));
        System.assertEquals(postWebsiteMigrationRequest1.hashCode(), postWebsiteMigrationRequest2.hashCode());
        System.assertEquals(postWebsiteMigrationRequest3.hashCode(), postWebsiteMigrationRequest4.hashCode());
    }
}
