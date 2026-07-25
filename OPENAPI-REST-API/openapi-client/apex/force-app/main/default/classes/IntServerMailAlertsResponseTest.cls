@isTest
private class IntServerMailAlertsResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailAlertsResponse mailAlertsResponse1 = IntServerMailAlertsResponse.getExample();
        IntServerMailAlertsResponse mailAlertsResponse2 = mailAlertsResponse1;
        IntServerMailAlertsResponse mailAlertsResponse3 = new IntServerMailAlertsResponse();
        IntServerMailAlertsResponse mailAlertsResponse4 = mailAlertsResponse3;

        System.assert(mailAlertsResponse1.equals(mailAlertsResponse2));
        System.assert(mailAlertsResponse2.equals(mailAlertsResponse1));
        System.assert(mailAlertsResponse1.equals(mailAlertsResponse1));
        System.assert(mailAlertsResponse3.equals(mailAlertsResponse4));
        System.assert(mailAlertsResponse4.equals(mailAlertsResponse3));
        System.assert(mailAlertsResponse3.equals(mailAlertsResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailAlertsResponse mailAlertsResponse1 = IntServerMailAlertsResponse.getExample();
        IntServerMailAlertsResponse mailAlertsResponse2 = IntServerMailAlertsResponse.getExample();
        IntServerMailAlertsResponse mailAlertsResponse3 = new IntServerMailAlertsResponse();
        IntServerMailAlertsResponse mailAlertsResponse4 = new IntServerMailAlertsResponse();

        System.assert(mailAlertsResponse1.equals(mailAlertsResponse2));
        System.assert(mailAlertsResponse2.equals(mailAlertsResponse1));
        System.assert(mailAlertsResponse3.equals(mailAlertsResponse4));
        System.assert(mailAlertsResponse4.equals(mailAlertsResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailAlertsResponse mailAlertsResponse1 = IntServerMailAlertsResponse.getExample();
        IntServerMailAlertsResponse mailAlertsResponse2 = new IntServerMailAlertsResponse();

        System.assertEquals(false, mailAlertsResponse1.equals('foo'));
        System.assertEquals(false, mailAlertsResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailAlertsResponse mailAlertsResponse1 = IntServerMailAlertsResponse.getExample();
        IntServerMailAlertsResponse mailAlertsResponse2 = new IntServerMailAlertsResponse();
        IntServerMailAlertsResponse mailAlertsResponse3;

        System.assertEquals(false, mailAlertsResponse1.equals(mailAlertsResponse3));
        System.assertEquals(false, mailAlertsResponse2.equals(mailAlertsResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailAlertsResponse mailAlertsResponse1 = IntServerMailAlertsResponse.getExample();
        IntServerMailAlertsResponse mailAlertsResponse2 = new IntServerMailAlertsResponse();

        System.assertEquals(mailAlertsResponse1.hashCode(), mailAlertsResponse1.hashCode());
        System.assertEquals(mailAlertsResponse2.hashCode(), mailAlertsResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailAlertsResponse mailAlertsResponse1 = IntServerMailAlertsResponse.getExample();
        IntServerMailAlertsResponse mailAlertsResponse2 = IntServerMailAlertsResponse.getExample();
        IntServerMailAlertsResponse mailAlertsResponse3 = new IntServerMailAlertsResponse();
        IntServerMailAlertsResponse mailAlertsResponse4 = new IntServerMailAlertsResponse();

        System.assert(mailAlertsResponse1.equals(mailAlertsResponse2));
        System.assert(mailAlertsResponse3.equals(mailAlertsResponse4));
        System.assertEquals(mailAlertsResponse1.hashCode(), mailAlertsResponse2.hashCode());
        System.assertEquals(mailAlertsResponse3.hashCode(), mailAlertsResponse4.hashCode());
    }
}
