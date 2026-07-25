@isTest
private class IntServerSendMailAdvTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerSendMailAdv sendMailAdv1 = IntServerSendMailAdv.getExample();
        IntServerSendMailAdv sendMailAdv2 = sendMailAdv1;
        IntServerSendMailAdv sendMailAdv3 = new IntServerSendMailAdv();
        IntServerSendMailAdv sendMailAdv4 = sendMailAdv3;

        System.assert(sendMailAdv1.equals(sendMailAdv2));
        System.assert(sendMailAdv2.equals(sendMailAdv1));
        System.assert(sendMailAdv1.equals(sendMailAdv1));
        System.assert(sendMailAdv3.equals(sendMailAdv4));
        System.assert(sendMailAdv4.equals(sendMailAdv3));
        System.assert(sendMailAdv3.equals(sendMailAdv3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerSendMailAdv sendMailAdv1 = IntServerSendMailAdv.getExample();
        IntServerSendMailAdv sendMailAdv2 = IntServerSendMailAdv.getExample();
        IntServerSendMailAdv sendMailAdv3 = new IntServerSendMailAdv();
        IntServerSendMailAdv sendMailAdv4 = new IntServerSendMailAdv();

        System.assert(sendMailAdv1.equals(sendMailAdv2));
        System.assert(sendMailAdv2.equals(sendMailAdv1));
        System.assert(sendMailAdv3.equals(sendMailAdv4));
        System.assert(sendMailAdv4.equals(sendMailAdv3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerSendMailAdv sendMailAdv1 = IntServerSendMailAdv.getExample();
        IntServerSendMailAdv sendMailAdv2 = new IntServerSendMailAdv();

        System.assertEquals(false, sendMailAdv1.equals('foo'));
        System.assertEquals(false, sendMailAdv2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerSendMailAdv sendMailAdv1 = IntServerSendMailAdv.getExample();
        IntServerSendMailAdv sendMailAdv2 = new IntServerSendMailAdv();
        IntServerSendMailAdv sendMailAdv3;

        System.assertEquals(false, sendMailAdv1.equals(sendMailAdv3));
        System.assertEquals(false, sendMailAdv2.equals(sendMailAdv3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerSendMailAdv sendMailAdv1 = IntServerSendMailAdv.getExample();
        IntServerSendMailAdv sendMailAdv2 = new IntServerSendMailAdv();

        System.assertEquals(sendMailAdv1.hashCode(), sendMailAdv1.hashCode());
        System.assertEquals(sendMailAdv2.hashCode(), sendMailAdv2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerSendMailAdv sendMailAdv1 = IntServerSendMailAdv.getExample();
        IntServerSendMailAdv sendMailAdv2 = IntServerSendMailAdv.getExample();
        IntServerSendMailAdv sendMailAdv3 = new IntServerSendMailAdv();
        IntServerSendMailAdv sendMailAdv4 = new IntServerSendMailAdv();

        System.assert(sendMailAdv1.equals(sendMailAdv2));
        System.assert(sendMailAdv3.equals(sendMailAdv4));
        System.assertEquals(sendMailAdv1.hashCode(), sendMailAdv2.hashCode());
        System.assertEquals(sendMailAdv3.hashCode(), sendMailAdv4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerSendMailAdv sendMailAdv = new IntServerSendMailAdv();
        Map<String, String> x-property-mappings = sendMailAdv.getx-property-mappings();
        System.assertEquals('r_from', x-property-mappings.get('from'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerSendMailAdv sendMailAdv = new IntServerSendMailAdv();
        System.assertEquals(new List<IntServerEmailAddressName>(), sendMailAdv.to);
        System.assertEquals(new List<IntServerEmailAddressName>(), sendMailAdv.replyto);
        System.assertEquals(new List<IntServerEmailAddressName>(), sendMailAdv.cc);
        System.assertEquals(new List<IntServerEmailAddressName>(), sendMailAdv.bcc);
        System.assertEquals(new List<IntServerMailAttachment>(), sendMailAdv.attachments);
        System.assertEquals(null, sendMailAdv.subject);
        System.assertEquals(null, sendMailAdv.body);
        System.assertEquals(null, sendMailAdv.r_from);
        System.assertEquals(null, sendMailAdv.id);
    }
}
