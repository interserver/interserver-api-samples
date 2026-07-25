@isTest
private class IntServerVpsDALicenseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsDALicense vpsDALicense1 = IntServerVpsDALicense.getExample();
        IntServerVpsDALicense vpsDALicense2 = vpsDALicense1;
        IntServerVpsDALicense vpsDALicense3 = new IntServerVpsDALicense();
        IntServerVpsDALicense vpsDALicense4 = vpsDALicense3;

        System.assert(vpsDALicense1.equals(vpsDALicense2));
        System.assert(vpsDALicense2.equals(vpsDALicense1));
        System.assert(vpsDALicense1.equals(vpsDALicense1));
        System.assert(vpsDALicense3.equals(vpsDALicense4));
        System.assert(vpsDALicense4.equals(vpsDALicense3));
        System.assert(vpsDALicense3.equals(vpsDALicense3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsDALicense vpsDALicense1 = IntServerVpsDALicense.getExample();
        IntServerVpsDALicense vpsDALicense2 = IntServerVpsDALicense.getExample();
        IntServerVpsDALicense vpsDALicense3 = new IntServerVpsDALicense();
        IntServerVpsDALicense vpsDALicense4 = new IntServerVpsDALicense();

        System.assert(vpsDALicense1.equals(vpsDALicense2));
        System.assert(vpsDALicense2.equals(vpsDALicense1));
        System.assert(vpsDALicense3.equals(vpsDALicense4));
        System.assert(vpsDALicense4.equals(vpsDALicense3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsDALicense vpsDALicense1 = IntServerVpsDALicense.getExample();
        IntServerVpsDALicense vpsDALicense2 = new IntServerVpsDALicense();

        System.assertEquals(false, vpsDALicense1.equals('foo'));
        System.assertEquals(false, vpsDALicense2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsDALicense vpsDALicense1 = IntServerVpsDALicense.getExample();
        IntServerVpsDALicense vpsDALicense2 = new IntServerVpsDALicense();
        IntServerVpsDALicense vpsDALicense3;

        System.assertEquals(false, vpsDALicense1.equals(vpsDALicense3));
        System.assertEquals(false, vpsDALicense2.equals(vpsDALicense3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsDALicense vpsDALicense1 = IntServerVpsDALicense.getExample();
        IntServerVpsDALicense vpsDALicense2 = new IntServerVpsDALicense();

        System.assertEquals(vpsDALicense1.hashCode(), vpsDALicense1.hashCode());
        System.assertEquals(vpsDALicense2.hashCode(), vpsDALicense2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsDALicense vpsDALicense1 = IntServerVpsDALicense.getExample();
        IntServerVpsDALicense vpsDALicense2 = IntServerVpsDALicense.getExample();
        IntServerVpsDALicense vpsDALicense3 = new IntServerVpsDALicense();
        IntServerVpsDALicense vpsDALicense4 = new IntServerVpsDALicense();

        System.assert(vpsDALicense1.equals(vpsDALicense2));
        System.assert(vpsDALicense3.equals(vpsDALicense4));
        System.assertEquals(vpsDALicense1.hashCode(), vpsDALicense2.hashCode());
        System.assertEquals(vpsDALicense3.hashCode(), vpsDALicense4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerVpsDALicense vpsDALicense = new IntServerVpsDALicense();
        Map<String, String> x-property-mappings = vpsDALicense.getx-property-mappings();
        System.assertEquals('subName', x-property-mappings.get('sub_name'));
        System.assertEquals('imgDisabled', x-property-mappings.get('img_disabled'));
        System.assertEquals('imgActive', x-property-mappings.get('img_active'));
    }
}
