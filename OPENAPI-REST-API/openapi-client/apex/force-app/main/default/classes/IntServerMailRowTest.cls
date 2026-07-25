@isTest
private class IntServerMailRowTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailRow mailRow1 = IntServerMailRow.getExample();
        IntServerMailRow mailRow2 = mailRow1;
        IntServerMailRow mailRow3 = new IntServerMailRow();
        IntServerMailRow mailRow4 = mailRow3;

        System.assert(mailRow1.equals(mailRow2));
        System.assert(mailRow2.equals(mailRow1));
        System.assert(mailRow1.equals(mailRow1));
        System.assert(mailRow3.equals(mailRow4));
        System.assert(mailRow4.equals(mailRow3));
        System.assert(mailRow3.equals(mailRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailRow mailRow1 = IntServerMailRow.getExample();
        IntServerMailRow mailRow2 = IntServerMailRow.getExample();
        IntServerMailRow mailRow3 = new IntServerMailRow();
        IntServerMailRow mailRow4 = new IntServerMailRow();

        System.assert(mailRow1.equals(mailRow2));
        System.assert(mailRow2.equals(mailRow1));
        System.assert(mailRow3.equals(mailRow4));
        System.assert(mailRow4.equals(mailRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailRow mailRow1 = IntServerMailRow.getExample();
        IntServerMailRow mailRow2 = new IntServerMailRow();

        System.assertEquals(false, mailRow1.equals('foo'));
        System.assertEquals(false, mailRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailRow mailRow1 = IntServerMailRow.getExample();
        IntServerMailRow mailRow2 = new IntServerMailRow();
        IntServerMailRow mailRow3;

        System.assertEquals(false, mailRow1.equals(mailRow3));
        System.assertEquals(false, mailRow2.equals(mailRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailRow mailRow1 = IntServerMailRow.getExample();
        IntServerMailRow mailRow2 = new IntServerMailRow();

        System.assertEquals(mailRow1.hashCode(), mailRow1.hashCode());
        System.assertEquals(mailRow2.hashCode(), mailRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailRow mailRow1 = IntServerMailRow.getExample();
        IntServerMailRow mailRow2 = IntServerMailRow.getExample();
        IntServerMailRow mailRow3 = new IntServerMailRow();
        IntServerMailRow mailRow4 = new IntServerMailRow();

        System.assert(mailRow1.equals(mailRow2));
        System.assert(mailRow3.equals(mailRow4));
        System.assertEquals(mailRow1.hashCode(), mailRow2.hashCode());
        System.assertEquals(mailRow3.hashCode(), mailRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerMailRow mailRow = new IntServerMailRow();
        Map<String, String> x-property-mappings = mailRow.getx-property-mappings();
        System.assertEquals('mailId', x-property-mappings.get('mail_id'));
        System.assertEquals('repeatInvoicesCost', x-property-mappings.get('repeat_invoices_cost'));
        System.assertEquals('mailUsername', x-property-mappings.get('mail_username'));
        System.assertEquals('mailStatus', x-property-mappings.get('mail_status'));
        System.assertEquals('servicesName', x-property-mappings.get('services_name'));
    }
}
