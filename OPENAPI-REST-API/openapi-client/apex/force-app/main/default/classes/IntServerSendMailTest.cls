@isTest
private class IntServerSendMailTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerSendMail sendMail1 = IntServerSendMail.getExample();
        IntServerSendMail sendMail2 = sendMail1;
        IntServerSendMail sendMail3 = new IntServerSendMail();
        IntServerSendMail sendMail4 = sendMail3;

        System.assert(sendMail1.equals(sendMail2));
        System.assert(sendMail2.equals(sendMail1));
        System.assert(sendMail1.equals(sendMail1));
        System.assert(sendMail3.equals(sendMail4));
        System.assert(sendMail4.equals(sendMail3));
        System.assert(sendMail3.equals(sendMail3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerSendMail sendMail1 = IntServerSendMail.getExample();
        IntServerSendMail sendMail2 = IntServerSendMail.getExample();
        IntServerSendMail sendMail3 = new IntServerSendMail();
        IntServerSendMail sendMail4 = new IntServerSendMail();

        System.assert(sendMail1.equals(sendMail2));
        System.assert(sendMail2.equals(sendMail1));
        System.assert(sendMail3.equals(sendMail4));
        System.assert(sendMail4.equals(sendMail3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerSendMail sendMail1 = IntServerSendMail.getExample();
        IntServerSendMail sendMail2 = new IntServerSendMail();

        System.assertEquals(false, sendMail1.equals('foo'));
        System.assertEquals(false, sendMail2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerSendMail sendMail1 = IntServerSendMail.getExample();
        IntServerSendMail sendMail2 = new IntServerSendMail();
        IntServerSendMail sendMail3;

        System.assertEquals(false, sendMail1.equals(sendMail3));
        System.assertEquals(false, sendMail2.equals(sendMail3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerSendMail sendMail1 = IntServerSendMail.getExample();
        IntServerSendMail sendMail2 = new IntServerSendMail();

        System.assertEquals(sendMail1.hashCode(), sendMail1.hashCode());
        System.assertEquals(sendMail2.hashCode(), sendMail2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerSendMail sendMail1 = IntServerSendMail.getExample();
        IntServerSendMail sendMail2 = IntServerSendMail.getExample();
        IntServerSendMail sendMail3 = new IntServerSendMail();
        IntServerSendMail sendMail4 = new IntServerSendMail();

        System.assert(sendMail1.equals(sendMail2));
        System.assert(sendMail3.equals(sendMail4));
        System.assertEquals(sendMail1.hashCode(), sendMail2.hashCode());
        System.assertEquals(sendMail3.hashCode(), sendMail4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerSendMail sendMail = new IntServerSendMail();
        Map<String, String> x-property-mappings = sendMail.getx-property-mappings();
        System.assertEquals('r_from', x-property-mappings.get('from'));
    }
}
