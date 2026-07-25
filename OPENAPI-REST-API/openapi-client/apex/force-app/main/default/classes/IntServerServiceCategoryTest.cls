@isTest
private class IntServerServiceCategoryTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServiceCategory serviceCategory1 = IntServerServiceCategory.getExample();
        IntServerServiceCategory serviceCategory2 = serviceCategory1;
        IntServerServiceCategory serviceCategory3 = new IntServerServiceCategory();
        IntServerServiceCategory serviceCategory4 = serviceCategory3;

        System.assert(serviceCategory1.equals(serviceCategory2));
        System.assert(serviceCategory2.equals(serviceCategory1));
        System.assert(serviceCategory1.equals(serviceCategory1));
        System.assert(serviceCategory3.equals(serviceCategory4));
        System.assert(serviceCategory4.equals(serviceCategory3));
        System.assert(serviceCategory3.equals(serviceCategory3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServiceCategory serviceCategory1 = IntServerServiceCategory.getExample();
        IntServerServiceCategory serviceCategory2 = IntServerServiceCategory.getExample();
        IntServerServiceCategory serviceCategory3 = new IntServerServiceCategory();
        IntServerServiceCategory serviceCategory4 = new IntServerServiceCategory();

        System.assert(serviceCategory1.equals(serviceCategory2));
        System.assert(serviceCategory2.equals(serviceCategory1));
        System.assert(serviceCategory3.equals(serviceCategory4));
        System.assert(serviceCategory4.equals(serviceCategory3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServiceCategory serviceCategory1 = IntServerServiceCategory.getExample();
        IntServerServiceCategory serviceCategory2 = new IntServerServiceCategory();

        System.assertEquals(false, serviceCategory1.equals('foo'));
        System.assertEquals(false, serviceCategory2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServiceCategory serviceCategory1 = IntServerServiceCategory.getExample();
        IntServerServiceCategory serviceCategory2 = new IntServerServiceCategory();
        IntServerServiceCategory serviceCategory3;

        System.assertEquals(false, serviceCategory1.equals(serviceCategory3));
        System.assertEquals(false, serviceCategory2.equals(serviceCategory3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServiceCategory serviceCategory1 = IntServerServiceCategory.getExample();
        IntServerServiceCategory serviceCategory2 = new IntServerServiceCategory();

        System.assertEquals(serviceCategory1.hashCode(), serviceCategory1.hashCode());
        System.assertEquals(serviceCategory2.hashCode(), serviceCategory2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServiceCategory serviceCategory1 = IntServerServiceCategory.getExample();
        IntServerServiceCategory serviceCategory2 = IntServerServiceCategory.getExample();
        IntServerServiceCategory serviceCategory3 = new IntServerServiceCategory();
        IntServerServiceCategory serviceCategory4 = new IntServerServiceCategory();

        System.assert(serviceCategory1.equals(serviceCategory2));
        System.assert(serviceCategory3.equals(serviceCategory4));
        System.assertEquals(serviceCategory1.hashCode(), serviceCategory2.hashCode());
        System.assertEquals(serviceCategory3.hashCode(), serviceCategory4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServiceCategory serviceCategory = new IntServerServiceCategory();
        Map<String, String> x-property-mappings = serviceCategory.getx-property-mappings();
        System.assertEquals('categoryId', x-property-mappings.get('category_id'));
        System.assertEquals('categoryName', x-property-mappings.get('category_name'));
        System.assertEquals('categoryTag', x-property-mappings.get('category_tag'));
        System.assertEquals('categoryModule', x-property-mappings.get('category_module'));
    }
}
