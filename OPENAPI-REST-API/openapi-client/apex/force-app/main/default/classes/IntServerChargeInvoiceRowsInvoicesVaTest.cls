@isTest
private class IntServerChargeInvoiceRowsInvoicesVaTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerChargeInvoiceRowsInvoicesVa chargeInvoiceRowsInvoicesValue1 = IntServerChargeInvoiceRowsInvoicesVa.getExample();
        IntServerChargeInvoiceRowsInvoicesVa chargeInvoiceRowsInvoicesValue2 = chargeInvoiceRowsInvoicesValue1;
        IntServerChargeInvoiceRowsInvoicesVa chargeInvoiceRowsInvoicesValue3 = new IntServerChargeInvoiceRowsInvoicesVa();
        IntServerChargeInvoiceRowsInvoicesVa chargeInvoiceRowsInvoicesValue4 = chargeInvoiceRowsInvoicesValue3;

        System.assert(chargeInvoiceRowsInvoicesValue1.equals(chargeInvoiceRowsInvoicesValue2));
        System.assert(chargeInvoiceRowsInvoicesValue2.equals(chargeInvoiceRowsInvoicesValue1));
        System.assert(chargeInvoiceRowsInvoicesValue1.equals(chargeInvoiceRowsInvoicesValue1));
        System.assert(chargeInvoiceRowsInvoicesValue3.equals(chargeInvoiceRowsInvoicesValue4));
        System.assert(chargeInvoiceRowsInvoicesValue4.equals(chargeInvoiceRowsInvoicesValue3));
        System.assert(chargeInvoiceRowsInvoicesValue3.equals(chargeInvoiceRowsInvoicesValue3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerChargeInvoiceRowsInvoicesVa chargeInvoiceRowsInvoicesValue1 = IntServerChargeInvoiceRowsInvoicesVa.getExample();
        IntServerChargeInvoiceRowsInvoicesVa chargeInvoiceRowsInvoicesValue2 = IntServerChargeInvoiceRowsInvoicesVa.getExample();
        IntServerChargeInvoiceRowsInvoicesVa chargeInvoiceRowsInvoicesValue3 = new IntServerChargeInvoiceRowsInvoicesVa();
        IntServerChargeInvoiceRowsInvoicesVa chargeInvoiceRowsInvoicesValue4 = new IntServerChargeInvoiceRowsInvoicesVa();

        System.assert(chargeInvoiceRowsInvoicesValue1.equals(chargeInvoiceRowsInvoicesValue2));
        System.assert(chargeInvoiceRowsInvoicesValue2.equals(chargeInvoiceRowsInvoicesValue1));
        System.assert(chargeInvoiceRowsInvoicesValue3.equals(chargeInvoiceRowsInvoicesValue4));
        System.assert(chargeInvoiceRowsInvoicesValue4.equals(chargeInvoiceRowsInvoicesValue3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerChargeInvoiceRowsInvoicesVa chargeInvoiceRowsInvoicesValue1 = IntServerChargeInvoiceRowsInvoicesVa.getExample();
        IntServerChargeInvoiceRowsInvoicesVa chargeInvoiceRowsInvoicesValue2 = new IntServerChargeInvoiceRowsInvoicesVa();

        System.assertEquals(false, chargeInvoiceRowsInvoicesValue1.equals('foo'));
        System.assertEquals(false, chargeInvoiceRowsInvoicesValue2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerChargeInvoiceRowsInvoicesVa chargeInvoiceRowsInvoicesValue1 = IntServerChargeInvoiceRowsInvoicesVa.getExample();
        IntServerChargeInvoiceRowsInvoicesVa chargeInvoiceRowsInvoicesValue2 = new IntServerChargeInvoiceRowsInvoicesVa();
        IntServerChargeInvoiceRowsInvoicesVa chargeInvoiceRowsInvoicesValue3;

        System.assertEquals(false, chargeInvoiceRowsInvoicesValue1.equals(chargeInvoiceRowsInvoicesValue3));
        System.assertEquals(false, chargeInvoiceRowsInvoicesValue2.equals(chargeInvoiceRowsInvoicesValue3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerChargeInvoiceRowsInvoicesVa chargeInvoiceRowsInvoicesValue1 = IntServerChargeInvoiceRowsInvoicesVa.getExample();
        IntServerChargeInvoiceRowsInvoicesVa chargeInvoiceRowsInvoicesValue2 = new IntServerChargeInvoiceRowsInvoicesVa();

        System.assertEquals(chargeInvoiceRowsInvoicesValue1.hashCode(), chargeInvoiceRowsInvoicesValue1.hashCode());
        System.assertEquals(chargeInvoiceRowsInvoicesValue2.hashCode(), chargeInvoiceRowsInvoicesValue2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerChargeInvoiceRowsInvoicesVa chargeInvoiceRowsInvoicesValue1 = IntServerChargeInvoiceRowsInvoicesVa.getExample();
        IntServerChargeInvoiceRowsInvoicesVa chargeInvoiceRowsInvoicesValue2 = IntServerChargeInvoiceRowsInvoicesVa.getExample();
        IntServerChargeInvoiceRowsInvoicesVa chargeInvoiceRowsInvoicesValue3 = new IntServerChargeInvoiceRowsInvoicesVa();
        IntServerChargeInvoiceRowsInvoicesVa chargeInvoiceRowsInvoicesValue4 = new IntServerChargeInvoiceRowsInvoicesVa();

        System.assert(chargeInvoiceRowsInvoicesValue1.equals(chargeInvoiceRowsInvoicesValue2));
        System.assert(chargeInvoiceRowsInvoicesValue3.equals(chargeInvoiceRowsInvoicesValue4));
        System.assertEquals(chargeInvoiceRowsInvoicesValue1.hashCode(), chargeInvoiceRowsInvoicesValue2.hashCode());
        System.assertEquals(chargeInvoiceRowsInvoicesValue3.hashCode(), chargeInvoiceRowsInvoicesValue4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerChargeInvoiceRowsInvoicesVa chargeInvoiceRowsInvoicesValue = new IntServerChargeInvoiceRowsInvoicesVa();
        Map<String, String> x-property-mappings = chargeInvoiceRowsInvoicesValue.getx-property-mappings();
        System.assertEquals('invoicesId', x-property-mappings.get('invoices_id'));
        System.assertEquals('invoicesDescription', x-property-mappings.get('invoices_description'));
        System.assertEquals('invoicesAmount', x-property-mappings.get('invoices_amount'));
        System.assertEquals('invoicesDate', x-property-mappings.get('invoices_date'));
        System.assertEquals('invoicesPaid', x-property-mappings.get('invoices_paid'));
        System.assertEquals('invoicesDueDate', x-property-mappings.get('invoices_due_date'));
        System.assertEquals('invoicesCurrency', x-property-mappings.get('invoices_currency'));
        System.assertEquals('currencySymbol', x-property-mappings.get('currency_symbol'));
        System.assertEquals('invoicesDateFormatted', x-property-mappings.get('invoices_date_formatted'));
        System.assertEquals('paidInvoices', x-property-mappings.get('paid_invoices'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerChargeInvoiceRowsInvoicesVa chargeInvoiceRowsInvoicesValue = new IntServerChargeInvoiceRowsInvoicesVa();
        System.assertEquals(new Map<String, IntServerChargeInvoiceRowsInvoicesVa>(), chargeInvoiceRowsInvoicesValue.paidInvoices);
        System.assertEquals(null, chargeInvoiceRowsInvoicesValue.invoicesId);
        System.assertEquals(null, chargeInvoiceRowsInvoicesValue.invoicesDescription);
        System.assertEquals(null, chargeInvoiceRowsInvoicesValue.invoicesAmount);
        System.assertEquals(null, chargeInvoiceRowsInvoicesValue.invoicesDate);
        System.assertEquals(null, chargeInvoiceRowsInvoicesValue.invoicesPaid);
        System.assertEquals(null, chargeInvoiceRowsInvoicesValue.invoicesDueDate);
        System.assertEquals(null, chargeInvoiceRowsInvoicesValue.invoicesCurrency);
        System.assertEquals(null, chargeInvoiceRowsInvoicesValue.currencySymbol);
        System.assertEquals(null, chargeInvoiceRowsInvoicesValue.invoicesDateFormatted);
    }
}
