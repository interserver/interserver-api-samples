@isTest
private class IntServerMailDelistResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailDelistResponse mailDelistResponse1 = IntServerMailDelistResponse.getExample();
        IntServerMailDelistResponse mailDelistResponse2 = mailDelistResponse1;
        IntServerMailDelistResponse mailDelistResponse3 = new IntServerMailDelistResponse();
        IntServerMailDelistResponse mailDelistResponse4 = mailDelistResponse3;

        System.assert(mailDelistResponse1.equals(mailDelistResponse2));
        System.assert(mailDelistResponse2.equals(mailDelistResponse1));
        System.assert(mailDelistResponse1.equals(mailDelistResponse1));
        System.assert(mailDelistResponse3.equals(mailDelistResponse4));
        System.assert(mailDelistResponse4.equals(mailDelistResponse3));
        System.assert(mailDelistResponse3.equals(mailDelistResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailDelistResponse mailDelistResponse1 = IntServerMailDelistResponse.getExample();
        IntServerMailDelistResponse mailDelistResponse2 = IntServerMailDelistResponse.getExample();
        IntServerMailDelistResponse mailDelistResponse3 = new IntServerMailDelistResponse();
        IntServerMailDelistResponse mailDelistResponse4 = new IntServerMailDelistResponse();

        System.assert(mailDelistResponse1.equals(mailDelistResponse2));
        System.assert(mailDelistResponse2.equals(mailDelistResponse1));
        System.assert(mailDelistResponse3.equals(mailDelistResponse4));
        System.assert(mailDelistResponse4.equals(mailDelistResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailDelistResponse mailDelistResponse1 = IntServerMailDelistResponse.getExample();
        IntServerMailDelistResponse mailDelistResponse2 = new IntServerMailDelistResponse();

        System.assertEquals(false, mailDelistResponse1.equals('foo'));
        System.assertEquals(false, mailDelistResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailDelistResponse mailDelistResponse1 = IntServerMailDelistResponse.getExample();
        IntServerMailDelistResponse mailDelistResponse2 = new IntServerMailDelistResponse();
        IntServerMailDelistResponse mailDelistResponse3;

        System.assertEquals(false, mailDelistResponse1.equals(mailDelistResponse3));
        System.assertEquals(false, mailDelistResponse2.equals(mailDelistResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailDelistResponse mailDelistResponse1 = IntServerMailDelistResponse.getExample();
        IntServerMailDelistResponse mailDelistResponse2 = new IntServerMailDelistResponse();

        System.assertEquals(mailDelistResponse1.hashCode(), mailDelistResponse1.hashCode());
        System.assertEquals(mailDelistResponse2.hashCode(), mailDelistResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailDelistResponse mailDelistResponse1 = IntServerMailDelistResponse.getExample();
        IntServerMailDelistResponse mailDelistResponse2 = IntServerMailDelistResponse.getExample();
        IntServerMailDelistResponse mailDelistResponse3 = new IntServerMailDelistResponse();
        IntServerMailDelistResponse mailDelistResponse4 = new IntServerMailDelistResponse();

        System.assert(mailDelistResponse1.equals(mailDelistResponse2));
        System.assert(mailDelistResponse3.equals(mailDelistResponse4));
        System.assertEquals(mailDelistResponse1.hashCode(), mailDelistResponse2.hashCode());
        System.assertEquals(mailDelistResponse3.hashCode(), mailDelistResponse4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerMailDelistResponse mailDelistResponse = new IntServerMailDelistResponse();
        System.assertEquals(new List<Object>(), mailDelistResponse.local);
        System.assertEquals(new List<Object>(), mailDelistResponse.mbtrap);
        System.assertEquals(new List<Object>(), mailDelistResponse.subject);
        System.assertEquals(new List<Object>(), mailDelistResponse.manual);
        System.assertEquals(null, mailDelistResponse.id);
    }
}
