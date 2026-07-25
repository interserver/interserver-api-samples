@isTest
private class IntServerMailServiceInfoTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailServiceInfo mailServiceInfo1 = IntServerMailServiceInfo.getExample();
        IntServerMailServiceInfo mailServiceInfo2 = mailServiceInfo1;
        IntServerMailServiceInfo mailServiceInfo3 = new IntServerMailServiceInfo();
        IntServerMailServiceInfo mailServiceInfo4 = mailServiceInfo3;

        System.assert(mailServiceInfo1.equals(mailServiceInfo2));
        System.assert(mailServiceInfo2.equals(mailServiceInfo1));
        System.assert(mailServiceInfo1.equals(mailServiceInfo1));
        System.assert(mailServiceInfo3.equals(mailServiceInfo4));
        System.assert(mailServiceInfo4.equals(mailServiceInfo3));
        System.assert(mailServiceInfo3.equals(mailServiceInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailServiceInfo mailServiceInfo1 = IntServerMailServiceInfo.getExample();
        IntServerMailServiceInfo mailServiceInfo2 = IntServerMailServiceInfo.getExample();
        IntServerMailServiceInfo mailServiceInfo3 = new IntServerMailServiceInfo();
        IntServerMailServiceInfo mailServiceInfo4 = new IntServerMailServiceInfo();

        System.assert(mailServiceInfo1.equals(mailServiceInfo2));
        System.assert(mailServiceInfo2.equals(mailServiceInfo1));
        System.assert(mailServiceInfo3.equals(mailServiceInfo4));
        System.assert(mailServiceInfo4.equals(mailServiceInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailServiceInfo mailServiceInfo1 = IntServerMailServiceInfo.getExample();
        IntServerMailServiceInfo mailServiceInfo2 = new IntServerMailServiceInfo();

        System.assertEquals(false, mailServiceInfo1.equals('foo'));
        System.assertEquals(false, mailServiceInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailServiceInfo mailServiceInfo1 = IntServerMailServiceInfo.getExample();
        IntServerMailServiceInfo mailServiceInfo2 = new IntServerMailServiceInfo();
        IntServerMailServiceInfo mailServiceInfo3;

        System.assertEquals(false, mailServiceInfo1.equals(mailServiceInfo3));
        System.assertEquals(false, mailServiceInfo2.equals(mailServiceInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailServiceInfo mailServiceInfo1 = IntServerMailServiceInfo.getExample();
        IntServerMailServiceInfo mailServiceInfo2 = new IntServerMailServiceInfo();

        System.assertEquals(mailServiceInfo1.hashCode(), mailServiceInfo1.hashCode());
        System.assertEquals(mailServiceInfo2.hashCode(), mailServiceInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailServiceInfo mailServiceInfo1 = IntServerMailServiceInfo.getExample();
        IntServerMailServiceInfo mailServiceInfo2 = IntServerMailServiceInfo.getExample();
        IntServerMailServiceInfo mailServiceInfo3 = new IntServerMailServiceInfo();
        IntServerMailServiceInfo mailServiceInfo4 = new IntServerMailServiceInfo();

        System.assert(mailServiceInfo1.equals(mailServiceInfo2));
        System.assert(mailServiceInfo3.equals(mailServiceInfo4));
        System.assertEquals(mailServiceInfo1.hashCode(), mailServiceInfo2.hashCode());
        System.assertEquals(mailServiceInfo3.hashCode(), mailServiceInfo4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerMailServiceInfo mailServiceInfo = new IntServerMailServiceInfo();
        Map<String, String> x-property-mappings = mailServiceInfo.getx-property-mappings();
        System.assertEquals('mailId', x-property-mappings.get('mail_id'));
        System.assertEquals('mailType', x-property-mappings.get('mail_type'));
        System.assertEquals('mailCurrency', x-property-mappings.get('mail_currency'));
        System.assertEquals('mailOrderDate', x-property-mappings.get('mail_order_date'));
        System.assertEquals('mailCustid', x-property-mappings.get('mail_custid'));
        System.assertEquals('mailQuota', x-property-mappings.get('mail_quota'));
        System.assertEquals('mailStatus', x-property-mappings.get('mail_status'));
        System.assertEquals('mailInvoice', x-property-mappings.get('mail_invoice'));
        System.assertEquals('mailUsername', x-property-mappings.get('mail_username'));
        System.assertEquals('mailIp', x-property-mappings.get('mail_ip'));
        System.assertEquals('mailCoupon', x-property-mappings.get('mail_coupon'));
        System.assertEquals('mailExtra', x-property-mappings.get('mail_extra'));
        System.assertEquals('mailServerStatus', x-property-mappings.get('mail_server_status'));
        System.assertEquals('mailComment', x-property-mappings.get('mail_comment'));
    }
}
