@isTest
private class IntServerServerOrderCPUTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerOrderCPU serverOrderCPU1 = IntServerServerOrderCPU.getExample();
        IntServerServerOrderCPU serverOrderCPU2 = serverOrderCPU1;
        IntServerServerOrderCPU serverOrderCPU3 = new IntServerServerOrderCPU();
        IntServerServerOrderCPU serverOrderCPU4 = serverOrderCPU3;

        System.assert(serverOrderCPU1.equals(serverOrderCPU2));
        System.assert(serverOrderCPU2.equals(serverOrderCPU1));
        System.assert(serverOrderCPU1.equals(serverOrderCPU1));
        System.assert(serverOrderCPU3.equals(serverOrderCPU4));
        System.assert(serverOrderCPU4.equals(serverOrderCPU3));
        System.assert(serverOrderCPU3.equals(serverOrderCPU3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerOrderCPU serverOrderCPU1 = IntServerServerOrderCPU.getExample();
        IntServerServerOrderCPU serverOrderCPU2 = IntServerServerOrderCPU.getExample();
        IntServerServerOrderCPU serverOrderCPU3 = new IntServerServerOrderCPU();
        IntServerServerOrderCPU serverOrderCPU4 = new IntServerServerOrderCPU();

        System.assert(serverOrderCPU1.equals(serverOrderCPU2));
        System.assert(serverOrderCPU2.equals(serverOrderCPU1));
        System.assert(serverOrderCPU3.equals(serverOrderCPU4));
        System.assert(serverOrderCPU4.equals(serverOrderCPU3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerOrderCPU serverOrderCPU1 = IntServerServerOrderCPU.getExample();
        IntServerServerOrderCPU serverOrderCPU2 = new IntServerServerOrderCPU();

        System.assertEquals(false, serverOrderCPU1.equals('foo'));
        System.assertEquals(false, serverOrderCPU2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerOrderCPU serverOrderCPU1 = IntServerServerOrderCPU.getExample();
        IntServerServerOrderCPU serverOrderCPU2 = new IntServerServerOrderCPU();
        IntServerServerOrderCPU serverOrderCPU3;

        System.assertEquals(false, serverOrderCPU1.equals(serverOrderCPU3));
        System.assertEquals(false, serverOrderCPU2.equals(serverOrderCPU3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerOrderCPU serverOrderCPU1 = IntServerServerOrderCPU.getExample();
        IntServerServerOrderCPU serverOrderCPU2 = new IntServerServerOrderCPU();

        System.assertEquals(serverOrderCPU1.hashCode(), serverOrderCPU1.hashCode());
        System.assertEquals(serverOrderCPU2.hashCode(), serverOrderCPU2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerOrderCPU serverOrderCPU1 = IntServerServerOrderCPU.getExample();
        IntServerServerOrderCPU serverOrderCPU2 = IntServerServerOrderCPU.getExample();
        IntServerServerOrderCPU serverOrderCPU3 = new IntServerServerOrderCPU();
        IntServerServerOrderCPU serverOrderCPU4 = new IntServerServerOrderCPU();

        System.assert(serverOrderCPU1.equals(serverOrderCPU2));
        System.assert(serverOrderCPU3.equals(serverOrderCPU4));
        System.assertEquals(serverOrderCPU1.hashCode(), serverOrderCPU2.hashCode());
        System.assertEquals(serverOrderCPU3.hashCode(), serverOrderCPU4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServerOrderCPU serverOrderCPU = new IntServerServerOrderCPU();
        Map<String, String> x-property-mappings = serverOrderCPU.getx-property-mappings();
        System.assertEquals('shortDesc', x-property-mappings.get('short_desc'));
        System.assertEquals('longDesc', x-property-mappings.get('long_desc'));
        System.assertEquals('numCores', x-property-mappings.get('num_cores'));
        System.assertEquals('numCpus', x-property-mappings.get('num_cpus'));
        System.assertEquals('monthlyPrice', x-property-mappings.get('monthly_price'));
        System.assertEquals('maxRam', x-property-mappings.get('max_ram'));
        System.assertEquals('minRam', x-property-mappings.get('min_ram'));
        System.assertEquals('maxLff', x-property-mappings.get('max_lff'));
        System.assertEquals('maxSff', x-property-mappings.get('max_sff'));
        System.assertEquals('maxNve', x-property-mappings.get('max_nve'));
        System.assertEquals('hdIds', x-property-mappings.get('hd_ids'));
        System.assertEquals('priceDisplay', x-property-mappings.get('price_display'));
        System.assertEquals('monthlyPriceDisplay', x-property-mappings.get('monthly_price_display'));
    }
}
