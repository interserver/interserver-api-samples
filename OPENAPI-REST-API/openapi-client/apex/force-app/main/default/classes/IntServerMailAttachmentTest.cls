@isTest
private class IntServerMailAttachmentTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailAttachment mailAttachment1 = IntServerMailAttachment.getExample();
        IntServerMailAttachment mailAttachment2 = mailAttachment1;
        IntServerMailAttachment mailAttachment3 = new IntServerMailAttachment();
        IntServerMailAttachment mailAttachment4 = mailAttachment3;

        System.assert(mailAttachment1.equals(mailAttachment2));
        System.assert(mailAttachment2.equals(mailAttachment1));
        System.assert(mailAttachment1.equals(mailAttachment1));
        System.assert(mailAttachment3.equals(mailAttachment4));
        System.assert(mailAttachment4.equals(mailAttachment3));
        System.assert(mailAttachment3.equals(mailAttachment3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailAttachment mailAttachment1 = IntServerMailAttachment.getExample();
        IntServerMailAttachment mailAttachment2 = IntServerMailAttachment.getExample();
        IntServerMailAttachment mailAttachment3 = new IntServerMailAttachment();
        IntServerMailAttachment mailAttachment4 = new IntServerMailAttachment();

        System.assert(mailAttachment1.equals(mailAttachment2));
        System.assert(mailAttachment2.equals(mailAttachment1));
        System.assert(mailAttachment3.equals(mailAttachment4));
        System.assert(mailAttachment4.equals(mailAttachment3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailAttachment mailAttachment1 = IntServerMailAttachment.getExample();
        IntServerMailAttachment mailAttachment2 = new IntServerMailAttachment();

        System.assertEquals(false, mailAttachment1.equals('foo'));
        System.assertEquals(false, mailAttachment2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailAttachment mailAttachment1 = IntServerMailAttachment.getExample();
        IntServerMailAttachment mailAttachment2 = new IntServerMailAttachment();
        IntServerMailAttachment mailAttachment3;

        System.assertEquals(false, mailAttachment1.equals(mailAttachment3));
        System.assertEquals(false, mailAttachment2.equals(mailAttachment3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailAttachment mailAttachment1 = IntServerMailAttachment.getExample();
        IntServerMailAttachment mailAttachment2 = new IntServerMailAttachment();

        System.assertEquals(mailAttachment1.hashCode(), mailAttachment1.hashCode());
        System.assertEquals(mailAttachment2.hashCode(), mailAttachment2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailAttachment mailAttachment1 = IntServerMailAttachment.getExample();
        IntServerMailAttachment mailAttachment2 = IntServerMailAttachment.getExample();
        IntServerMailAttachment mailAttachment3 = new IntServerMailAttachment();
        IntServerMailAttachment mailAttachment4 = new IntServerMailAttachment();

        System.assert(mailAttachment1.equals(mailAttachment2));
        System.assert(mailAttachment3.equals(mailAttachment4));
        System.assertEquals(mailAttachment1.hashCode(), mailAttachment2.hashCode());
        System.assertEquals(mailAttachment3.hashCode(), mailAttachment4.hashCode());
    }
}
