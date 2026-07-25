@isTest
private class IntServerVpsPleskLicenseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsPleskLicense vpsPleskLicense1 = IntServerVpsPleskLicense.getExample();
        IntServerVpsPleskLicense vpsPleskLicense2 = vpsPleskLicense1;
        IntServerVpsPleskLicense vpsPleskLicense3 = new IntServerVpsPleskLicense();
        IntServerVpsPleskLicense vpsPleskLicense4 = vpsPleskLicense3;

        System.assert(vpsPleskLicense1.equals(vpsPleskLicense2));
        System.assert(vpsPleskLicense2.equals(vpsPleskLicense1));
        System.assert(vpsPleskLicense1.equals(vpsPleskLicense1));
        System.assert(vpsPleskLicense3.equals(vpsPleskLicense4));
        System.assert(vpsPleskLicense4.equals(vpsPleskLicense3));
        System.assert(vpsPleskLicense3.equals(vpsPleskLicense3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsPleskLicense vpsPleskLicense1 = IntServerVpsPleskLicense.getExample();
        IntServerVpsPleskLicense vpsPleskLicense2 = IntServerVpsPleskLicense.getExample();
        IntServerVpsPleskLicense vpsPleskLicense3 = new IntServerVpsPleskLicense();
        IntServerVpsPleskLicense vpsPleskLicense4 = new IntServerVpsPleskLicense();

        System.assert(vpsPleskLicense1.equals(vpsPleskLicense2));
        System.assert(vpsPleskLicense2.equals(vpsPleskLicense1));
        System.assert(vpsPleskLicense3.equals(vpsPleskLicense4));
        System.assert(vpsPleskLicense4.equals(vpsPleskLicense3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsPleskLicense vpsPleskLicense1 = IntServerVpsPleskLicense.getExample();
        IntServerVpsPleskLicense vpsPleskLicense2 = new IntServerVpsPleskLicense();

        System.assertEquals(false, vpsPleskLicense1.equals('foo'));
        System.assertEquals(false, vpsPleskLicense2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsPleskLicense vpsPleskLicense1 = IntServerVpsPleskLicense.getExample();
        IntServerVpsPleskLicense vpsPleskLicense2 = new IntServerVpsPleskLicense();
        IntServerVpsPleskLicense vpsPleskLicense3;

        System.assertEquals(false, vpsPleskLicense1.equals(vpsPleskLicense3));
        System.assertEquals(false, vpsPleskLicense2.equals(vpsPleskLicense3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsPleskLicense vpsPleskLicense1 = IntServerVpsPleskLicense.getExample();
        IntServerVpsPleskLicense vpsPleskLicense2 = new IntServerVpsPleskLicense();

        System.assertEquals(vpsPleskLicense1.hashCode(), vpsPleskLicense1.hashCode());
        System.assertEquals(vpsPleskLicense2.hashCode(), vpsPleskLicense2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsPleskLicense vpsPleskLicense1 = IntServerVpsPleskLicense.getExample();
        IntServerVpsPleskLicense vpsPleskLicense2 = IntServerVpsPleskLicense.getExample();
        IntServerVpsPleskLicense vpsPleskLicense3 = new IntServerVpsPleskLicense();
        IntServerVpsPleskLicense vpsPleskLicense4 = new IntServerVpsPleskLicense();

        System.assert(vpsPleskLicense1.equals(vpsPleskLicense2));
        System.assert(vpsPleskLicense3.equals(vpsPleskLicense4));
        System.assertEquals(vpsPleskLicense1.hashCode(), vpsPleskLicense2.hashCode());
        System.assertEquals(vpsPleskLicense3.hashCode(), vpsPleskLicense4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerVpsPleskLicense vpsPleskLicense = new IntServerVpsPleskLicense();
        Map<String, String> x-property-mappings = vpsPleskLicense.getx-property-mappings();
        System.assertEquals('subName', x-property-mappings.get('sub_name'));
    }
}
