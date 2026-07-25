@isTest
private class IntServerVpsTemplateRowTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsTemplateRow vpsTemplateRow1 = IntServerVpsTemplateRow.getExample();
        IntServerVpsTemplateRow vpsTemplateRow2 = vpsTemplateRow1;
        IntServerVpsTemplateRow vpsTemplateRow3 = new IntServerVpsTemplateRow();
        IntServerVpsTemplateRow vpsTemplateRow4 = vpsTemplateRow3;

        System.assert(vpsTemplateRow1.equals(vpsTemplateRow2));
        System.assert(vpsTemplateRow2.equals(vpsTemplateRow1));
        System.assert(vpsTemplateRow1.equals(vpsTemplateRow1));
        System.assert(vpsTemplateRow3.equals(vpsTemplateRow4));
        System.assert(vpsTemplateRow4.equals(vpsTemplateRow3));
        System.assert(vpsTemplateRow3.equals(vpsTemplateRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsTemplateRow vpsTemplateRow1 = IntServerVpsTemplateRow.getExample();
        IntServerVpsTemplateRow vpsTemplateRow2 = IntServerVpsTemplateRow.getExample();
        IntServerVpsTemplateRow vpsTemplateRow3 = new IntServerVpsTemplateRow();
        IntServerVpsTemplateRow vpsTemplateRow4 = new IntServerVpsTemplateRow();

        System.assert(vpsTemplateRow1.equals(vpsTemplateRow2));
        System.assert(vpsTemplateRow2.equals(vpsTemplateRow1));
        System.assert(vpsTemplateRow3.equals(vpsTemplateRow4));
        System.assert(vpsTemplateRow4.equals(vpsTemplateRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsTemplateRow vpsTemplateRow1 = IntServerVpsTemplateRow.getExample();
        IntServerVpsTemplateRow vpsTemplateRow2 = new IntServerVpsTemplateRow();

        System.assertEquals(false, vpsTemplateRow1.equals('foo'));
        System.assertEquals(false, vpsTemplateRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsTemplateRow vpsTemplateRow1 = IntServerVpsTemplateRow.getExample();
        IntServerVpsTemplateRow vpsTemplateRow2 = new IntServerVpsTemplateRow();
        IntServerVpsTemplateRow vpsTemplateRow3;

        System.assertEquals(false, vpsTemplateRow1.equals(vpsTemplateRow3));
        System.assertEquals(false, vpsTemplateRow2.equals(vpsTemplateRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsTemplateRow vpsTemplateRow1 = IntServerVpsTemplateRow.getExample();
        IntServerVpsTemplateRow vpsTemplateRow2 = new IntServerVpsTemplateRow();

        System.assertEquals(vpsTemplateRow1.hashCode(), vpsTemplateRow1.hashCode());
        System.assertEquals(vpsTemplateRow2.hashCode(), vpsTemplateRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsTemplateRow vpsTemplateRow1 = IntServerVpsTemplateRow.getExample();
        IntServerVpsTemplateRow vpsTemplateRow2 = IntServerVpsTemplateRow.getExample();
        IntServerVpsTemplateRow vpsTemplateRow3 = new IntServerVpsTemplateRow();
        IntServerVpsTemplateRow vpsTemplateRow4 = new IntServerVpsTemplateRow();

        System.assert(vpsTemplateRow1.equals(vpsTemplateRow2));
        System.assert(vpsTemplateRow3.equals(vpsTemplateRow4));
        System.assertEquals(vpsTemplateRow1.hashCode(), vpsTemplateRow2.hashCode());
        System.assertEquals(vpsTemplateRow3.hashCode(), vpsTemplateRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerVpsTemplateRow vpsTemplateRow = new IntServerVpsTemplateRow();
        Map<String, String> x-property-mappings = vpsTemplateRow.getx-property-mappings();
        System.assertEquals('templateId', x-property-mappings.get('template_id'));
        System.assertEquals('templateType', x-property-mappings.get('template_type'));
        System.assertEquals('templateOs', x-property-mappings.get('template_os'));
        System.assertEquals('templateVersion', x-property-mappings.get('template_version'));
        System.assertEquals('templateBits', x-property-mappings.get('template_bits'));
        System.assertEquals('templateFile', x-property-mappings.get('template_file'));
        System.assertEquals('templateAvailable', x-property-mappings.get('template_available'));
        System.assertEquals('templateName', x-property-mappings.get('template_name'));
        System.assertEquals('templateDir', x-property-mappings.get('template_dir'));
    }
}
