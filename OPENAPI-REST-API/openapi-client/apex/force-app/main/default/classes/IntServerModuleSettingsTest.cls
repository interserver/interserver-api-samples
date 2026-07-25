@isTest
private class IntServerModuleSettingsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerModuleSettings moduleSettings1 = IntServerModuleSettings.getExample();
        IntServerModuleSettings moduleSettings2 = moduleSettings1;
        IntServerModuleSettings moduleSettings3 = new IntServerModuleSettings();
        IntServerModuleSettings moduleSettings4 = moduleSettings3;

        System.assert(moduleSettings1.equals(moduleSettings2));
        System.assert(moduleSettings2.equals(moduleSettings1));
        System.assert(moduleSettings1.equals(moduleSettings1));
        System.assert(moduleSettings3.equals(moduleSettings4));
        System.assert(moduleSettings4.equals(moduleSettings3));
        System.assert(moduleSettings3.equals(moduleSettings3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerModuleSettings moduleSettings1 = IntServerModuleSettings.getExample();
        IntServerModuleSettings moduleSettings2 = IntServerModuleSettings.getExample();
        IntServerModuleSettings moduleSettings3 = new IntServerModuleSettings();
        IntServerModuleSettings moduleSettings4 = new IntServerModuleSettings();

        System.assert(moduleSettings1.equals(moduleSettings2));
        System.assert(moduleSettings2.equals(moduleSettings1));
        System.assert(moduleSettings3.equals(moduleSettings4));
        System.assert(moduleSettings4.equals(moduleSettings3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerModuleSettings moduleSettings1 = IntServerModuleSettings.getExample();
        IntServerModuleSettings moduleSettings2 = new IntServerModuleSettings();

        System.assertEquals(false, moduleSettings1.equals('foo'));
        System.assertEquals(false, moduleSettings2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerModuleSettings moduleSettings1 = IntServerModuleSettings.getExample();
        IntServerModuleSettings moduleSettings2 = new IntServerModuleSettings();
        IntServerModuleSettings moduleSettings3;

        System.assertEquals(false, moduleSettings1.equals(moduleSettings3));
        System.assertEquals(false, moduleSettings2.equals(moduleSettings3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerModuleSettings moduleSettings1 = IntServerModuleSettings.getExample();
        IntServerModuleSettings moduleSettings2 = new IntServerModuleSettings();

        System.assertEquals(moduleSettings1.hashCode(), moduleSettings1.hashCode());
        System.assertEquals(moduleSettings2.hashCode(), moduleSettings2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerModuleSettings moduleSettings1 = IntServerModuleSettings.getExample();
        IntServerModuleSettings moduleSettings2 = IntServerModuleSettings.getExample();
        IntServerModuleSettings moduleSettings3 = new IntServerModuleSettings();
        IntServerModuleSettings moduleSettings4 = new IntServerModuleSettings();

        System.assert(moduleSettings1.equals(moduleSettings2));
        System.assert(moduleSettings3.equals(moduleSettings4));
        System.assertEquals(moduleSettings1.hashCode(), moduleSettings2.hashCode());
        System.assertEquals(moduleSettings3.hashCode(), moduleSettings4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerModuleSettings moduleSettings = new IntServerModuleSettings();
        Map<String, String> x-property-mappings = moduleSettings.getx-property-mappings();
        System.assertEquals('tiTLEFIELD2', x-property-mappings.get('TITLE_FIELD2'));
        System.assertEquals('tiTLEFIELD3', x-property-mappings.get('TITLE_FIELD3'));
    }
}
