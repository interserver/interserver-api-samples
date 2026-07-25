@isTest
private class IntServerVpsTemplatesListTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsTemplatesList vpsTemplatesList1 = IntServerVpsTemplatesList.getExample();
        IntServerVpsTemplatesList vpsTemplatesList2 = vpsTemplatesList1;
        IntServerVpsTemplatesList vpsTemplatesList3 = new IntServerVpsTemplatesList();
        IntServerVpsTemplatesList vpsTemplatesList4 = vpsTemplatesList3;

        System.assert(vpsTemplatesList1.equals(vpsTemplatesList2));
        System.assert(vpsTemplatesList2.equals(vpsTemplatesList1));
        System.assert(vpsTemplatesList1.equals(vpsTemplatesList1));
        System.assert(vpsTemplatesList3.equals(vpsTemplatesList4));
        System.assert(vpsTemplatesList4.equals(vpsTemplatesList3));
        System.assert(vpsTemplatesList3.equals(vpsTemplatesList3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsTemplatesList vpsTemplatesList1 = IntServerVpsTemplatesList.getExample();
        IntServerVpsTemplatesList vpsTemplatesList2 = IntServerVpsTemplatesList.getExample();
        IntServerVpsTemplatesList vpsTemplatesList3 = new IntServerVpsTemplatesList();
        IntServerVpsTemplatesList vpsTemplatesList4 = new IntServerVpsTemplatesList();

        System.assert(vpsTemplatesList1.equals(vpsTemplatesList2));
        System.assert(vpsTemplatesList2.equals(vpsTemplatesList1));
        System.assert(vpsTemplatesList3.equals(vpsTemplatesList4));
        System.assert(vpsTemplatesList4.equals(vpsTemplatesList3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsTemplatesList vpsTemplatesList1 = IntServerVpsTemplatesList.getExample();
        IntServerVpsTemplatesList vpsTemplatesList2 = new IntServerVpsTemplatesList();

        System.assertEquals(false, vpsTemplatesList1.equals('foo'));
        System.assertEquals(false, vpsTemplatesList2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsTemplatesList vpsTemplatesList1 = IntServerVpsTemplatesList.getExample();
        IntServerVpsTemplatesList vpsTemplatesList2 = new IntServerVpsTemplatesList();
        IntServerVpsTemplatesList vpsTemplatesList3;

        System.assertEquals(false, vpsTemplatesList1.equals(vpsTemplatesList3));
        System.assertEquals(false, vpsTemplatesList2.equals(vpsTemplatesList3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsTemplatesList vpsTemplatesList1 = IntServerVpsTemplatesList.getExample();
        IntServerVpsTemplatesList vpsTemplatesList2 = new IntServerVpsTemplatesList();

        System.assertEquals(vpsTemplatesList1.hashCode(), vpsTemplatesList1.hashCode());
        System.assertEquals(vpsTemplatesList2.hashCode(), vpsTemplatesList2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsTemplatesList vpsTemplatesList1 = IntServerVpsTemplatesList.getExample();
        IntServerVpsTemplatesList vpsTemplatesList2 = IntServerVpsTemplatesList.getExample();
        IntServerVpsTemplatesList vpsTemplatesList3 = new IntServerVpsTemplatesList();
        IntServerVpsTemplatesList vpsTemplatesList4 = new IntServerVpsTemplatesList();

        System.assert(vpsTemplatesList1.equals(vpsTemplatesList2));
        System.assert(vpsTemplatesList3.equals(vpsTemplatesList4));
        System.assertEquals(vpsTemplatesList1.hashCode(), vpsTemplatesList2.hashCode());
        System.assertEquals(vpsTemplatesList3.hashCode(), vpsTemplatesList4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerVpsTemplatesList vpsTemplatesList = new IntServerVpsTemplatesList();
        System.assertEquals(new List<IntServerVpsTemplateRow>(), vpsTemplatesList.templates);
    }
}
