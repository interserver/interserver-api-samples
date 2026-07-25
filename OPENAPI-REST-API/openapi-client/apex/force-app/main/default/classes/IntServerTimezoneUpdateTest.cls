@isTest
private class IntServerTimezoneUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerTimezoneUpdate timezoneUpdate1 = IntServerTimezoneUpdate.getExample();
        IntServerTimezoneUpdate timezoneUpdate2 = timezoneUpdate1;
        IntServerTimezoneUpdate timezoneUpdate3 = new IntServerTimezoneUpdate();
        IntServerTimezoneUpdate timezoneUpdate4 = timezoneUpdate3;

        System.assert(timezoneUpdate1.equals(timezoneUpdate2));
        System.assert(timezoneUpdate2.equals(timezoneUpdate1));
        System.assert(timezoneUpdate1.equals(timezoneUpdate1));
        System.assert(timezoneUpdate3.equals(timezoneUpdate4));
        System.assert(timezoneUpdate4.equals(timezoneUpdate3));
        System.assert(timezoneUpdate3.equals(timezoneUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerTimezoneUpdate timezoneUpdate1 = IntServerTimezoneUpdate.getExample();
        IntServerTimezoneUpdate timezoneUpdate2 = IntServerTimezoneUpdate.getExample();
        IntServerTimezoneUpdate timezoneUpdate3 = new IntServerTimezoneUpdate();
        IntServerTimezoneUpdate timezoneUpdate4 = new IntServerTimezoneUpdate();

        System.assert(timezoneUpdate1.equals(timezoneUpdate2));
        System.assert(timezoneUpdate2.equals(timezoneUpdate1));
        System.assert(timezoneUpdate3.equals(timezoneUpdate4));
        System.assert(timezoneUpdate4.equals(timezoneUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerTimezoneUpdate timezoneUpdate1 = IntServerTimezoneUpdate.getExample();
        IntServerTimezoneUpdate timezoneUpdate2 = new IntServerTimezoneUpdate();

        System.assertEquals(false, timezoneUpdate1.equals('foo'));
        System.assertEquals(false, timezoneUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerTimezoneUpdate timezoneUpdate1 = IntServerTimezoneUpdate.getExample();
        IntServerTimezoneUpdate timezoneUpdate2 = new IntServerTimezoneUpdate();
        IntServerTimezoneUpdate timezoneUpdate3;

        System.assertEquals(false, timezoneUpdate1.equals(timezoneUpdate3));
        System.assertEquals(false, timezoneUpdate2.equals(timezoneUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerTimezoneUpdate timezoneUpdate1 = IntServerTimezoneUpdate.getExample();
        IntServerTimezoneUpdate timezoneUpdate2 = new IntServerTimezoneUpdate();

        System.assertEquals(timezoneUpdate1.hashCode(), timezoneUpdate1.hashCode());
        System.assertEquals(timezoneUpdate2.hashCode(), timezoneUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerTimezoneUpdate timezoneUpdate1 = IntServerTimezoneUpdate.getExample();
        IntServerTimezoneUpdate timezoneUpdate2 = IntServerTimezoneUpdate.getExample();
        IntServerTimezoneUpdate timezoneUpdate3 = new IntServerTimezoneUpdate();
        IntServerTimezoneUpdate timezoneUpdate4 = new IntServerTimezoneUpdate();

        System.assert(timezoneUpdate1.equals(timezoneUpdate2));
        System.assert(timezoneUpdate3.equals(timezoneUpdate4));
        System.assertEquals(timezoneUpdate1.hashCode(), timezoneUpdate2.hashCode());
        System.assertEquals(timezoneUpdate3.hashCode(), timezoneUpdate4.hashCode());
    }
}
