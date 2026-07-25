@isTest
private class IntServerAccountFeaturesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerAccountFeatures accountFeatures1 = IntServerAccountFeatures.getExample();
        IntServerAccountFeatures accountFeatures2 = accountFeatures1;
        IntServerAccountFeatures accountFeatures3 = new IntServerAccountFeatures();
        IntServerAccountFeatures accountFeatures4 = accountFeatures3;

        System.assert(accountFeatures1.equals(accountFeatures2));
        System.assert(accountFeatures2.equals(accountFeatures1));
        System.assert(accountFeatures1.equals(accountFeatures1));
        System.assert(accountFeatures3.equals(accountFeatures4));
        System.assert(accountFeatures4.equals(accountFeatures3));
        System.assert(accountFeatures3.equals(accountFeatures3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerAccountFeatures accountFeatures1 = IntServerAccountFeatures.getExample();
        IntServerAccountFeatures accountFeatures2 = IntServerAccountFeatures.getExample();
        IntServerAccountFeatures accountFeatures3 = new IntServerAccountFeatures();
        IntServerAccountFeatures accountFeatures4 = new IntServerAccountFeatures();

        System.assert(accountFeatures1.equals(accountFeatures2));
        System.assert(accountFeatures2.equals(accountFeatures1));
        System.assert(accountFeatures3.equals(accountFeatures4));
        System.assert(accountFeatures4.equals(accountFeatures3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerAccountFeatures accountFeatures1 = IntServerAccountFeatures.getExample();
        IntServerAccountFeatures accountFeatures2 = new IntServerAccountFeatures();

        System.assertEquals(false, accountFeatures1.equals('foo'));
        System.assertEquals(false, accountFeatures2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerAccountFeatures accountFeatures1 = IntServerAccountFeatures.getExample();
        IntServerAccountFeatures accountFeatures2 = new IntServerAccountFeatures();
        IntServerAccountFeatures accountFeatures3;

        System.assertEquals(false, accountFeatures1.equals(accountFeatures3));
        System.assertEquals(false, accountFeatures2.equals(accountFeatures3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerAccountFeatures accountFeatures1 = IntServerAccountFeatures.getExample();
        IntServerAccountFeatures accountFeatures2 = new IntServerAccountFeatures();

        System.assertEquals(accountFeatures1.hashCode(), accountFeatures1.hashCode());
        System.assertEquals(accountFeatures2.hashCode(), accountFeatures2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerAccountFeatures accountFeatures1 = IntServerAccountFeatures.getExample();
        IntServerAccountFeatures accountFeatures2 = IntServerAccountFeatures.getExample();
        IntServerAccountFeatures accountFeatures3 = new IntServerAccountFeatures();
        IntServerAccountFeatures accountFeatures4 = new IntServerAccountFeatures();

        System.assert(accountFeatures1.equals(accountFeatures2));
        System.assert(accountFeatures3.equals(accountFeatures4));
        System.assertEquals(accountFeatures1.hashCode(), accountFeatures2.hashCode());
        System.assertEquals(accountFeatures3.hashCode(), accountFeatures4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerAccountFeatures accountFeatures = new IntServerAccountFeatures();
        Map<String, String> x-property-mappings = accountFeatures.getx-property-mappings();
        System.assertEquals('disableReset', x-property-mappings.get('disable_reset'));
        System.assertEquals('disableReinstall', x-property-mappings.get('disable_reinstall'));
    }
}
