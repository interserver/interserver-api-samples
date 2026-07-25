@isTest
private class IntServerVpsOrderTemplatesHypervWindTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsOrderTemplatesHypervWind vpsOrderTemplatesHypervWindows1 = IntServerVpsOrderTemplatesHypervWind.getExample();
        IntServerVpsOrderTemplatesHypervWind vpsOrderTemplatesHypervWindows2 = vpsOrderTemplatesHypervWindows1;
        IntServerVpsOrderTemplatesHypervWind vpsOrderTemplatesHypervWindows3 = new IntServerVpsOrderTemplatesHypervWind();
        IntServerVpsOrderTemplatesHypervWind vpsOrderTemplatesHypervWindows4 = vpsOrderTemplatesHypervWindows3;

        System.assert(vpsOrderTemplatesHypervWindows1.equals(vpsOrderTemplatesHypervWindows2));
        System.assert(vpsOrderTemplatesHypervWindows2.equals(vpsOrderTemplatesHypervWindows1));
        System.assert(vpsOrderTemplatesHypervWindows1.equals(vpsOrderTemplatesHypervWindows1));
        System.assert(vpsOrderTemplatesHypervWindows3.equals(vpsOrderTemplatesHypervWindows4));
        System.assert(vpsOrderTemplatesHypervWindows4.equals(vpsOrderTemplatesHypervWindows3));
        System.assert(vpsOrderTemplatesHypervWindows3.equals(vpsOrderTemplatesHypervWindows3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsOrderTemplatesHypervWind vpsOrderTemplatesHypervWindows1 = IntServerVpsOrderTemplatesHypervWind.getExample();
        IntServerVpsOrderTemplatesHypervWind vpsOrderTemplatesHypervWindows2 = IntServerVpsOrderTemplatesHypervWind.getExample();
        IntServerVpsOrderTemplatesHypervWind vpsOrderTemplatesHypervWindows3 = new IntServerVpsOrderTemplatesHypervWind();
        IntServerVpsOrderTemplatesHypervWind vpsOrderTemplatesHypervWindows4 = new IntServerVpsOrderTemplatesHypervWind();

        System.assert(vpsOrderTemplatesHypervWindows1.equals(vpsOrderTemplatesHypervWindows2));
        System.assert(vpsOrderTemplatesHypervWindows2.equals(vpsOrderTemplatesHypervWindows1));
        System.assert(vpsOrderTemplatesHypervWindows3.equals(vpsOrderTemplatesHypervWindows4));
        System.assert(vpsOrderTemplatesHypervWindows4.equals(vpsOrderTemplatesHypervWindows3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsOrderTemplatesHypervWind vpsOrderTemplatesHypervWindows1 = IntServerVpsOrderTemplatesHypervWind.getExample();
        IntServerVpsOrderTemplatesHypervWind vpsOrderTemplatesHypervWindows2 = new IntServerVpsOrderTemplatesHypervWind();

        System.assertEquals(false, vpsOrderTemplatesHypervWindows1.equals('foo'));
        System.assertEquals(false, vpsOrderTemplatesHypervWindows2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsOrderTemplatesHypervWind vpsOrderTemplatesHypervWindows1 = IntServerVpsOrderTemplatesHypervWind.getExample();
        IntServerVpsOrderTemplatesHypervWind vpsOrderTemplatesHypervWindows2 = new IntServerVpsOrderTemplatesHypervWind();
        IntServerVpsOrderTemplatesHypervWind vpsOrderTemplatesHypervWindows3;

        System.assertEquals(false, vpsOrderTemplatesHypervWindows1.equals(vpsOrderTemplatesHypervWindows3));
        System.assertEquals(false, vpsOrderTemplatesHypervWindows2.equals(vpsOrderTemplatesHypervWindows3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsOrderTemplatesHypervWind vpsOrderTemplatesHypervWindows1 = IntServerVpsOrderTemplatesHypervWind.getExample();
        IntServerVpsOrderTemplatesHypervWind vpsOrderTemplatesHypervWindows2 = new IntServerVpsOrderTemplatesHypervWind();

        System.assertEquals(vpsOrderTemplatesHypervWindows1.hashCode(), vpsOrderTemplatesHypervWindows1.hashCode());
        System.assertEquals(vpsOrderTemplatesHypervWindows2.hashCode(), vpsOrderTemplatesHypervWindows2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsOrderTemplatesHypervWind vpsOrderTemplatesHypervWindows1 = IntServerVpsOrderTemplatesHypervWind.getExample();
        IntServerVpsOrderTemplatesHypervWind vpsOrderTemplatesHypervWindows2 = IntServerVpsOrderTemplatesHypervWind.getExample();
        IntServerVpsOrderTemplatesHypervWind vpsOrderTemplatesHypervWindows3 = new IntServerVpsOrderTemplatesHypervWind();
        IntServerVpsOrderTemplatesHypervWind vpsOrderTemplatesHypervWindows4 = new IntServerVpsOrderTemplatesHypervWind();

        System.assert(vpsOrderTemplatesHypervWindows1.equals(vpsOrderTemplatesHypervWindows2));
        System.assert(vpsOrderTemplatesHypervWindows3.equals(vpsOrderTemplatesHypervWindows4));
        System.assertEquals(vpsOrderTemplatesHypervWindows1.hashCode(), vpsOrderTemplatesHypervWindows2.hashCode());
        System.assertEquals(vpsOrderTemplatesHypervWindows3.hashCode(), vpsOrderTemplatesHypervWindows4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerVpsOrderTemplatesHypervWind vpsOrderTemplatesHypervWindows = new IntServerVpsOrderTemplatesHypervWind();
        Map<String, String> x-property-mappings = vpsOrderTemplatesHypervWindows.getx-property-mappings();
        System.assertEquals('windows2019Standard', x-property-mappings.get('Windows2019Standard'));
        System.assertEquals('windows2022', x-property-mappings.get('Windows2022'));
    }
}
