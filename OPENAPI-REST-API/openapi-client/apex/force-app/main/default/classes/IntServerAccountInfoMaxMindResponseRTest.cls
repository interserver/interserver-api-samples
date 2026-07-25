@isTest
private class IntServerAccountInfoMaxMindResponseRTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerAccountInfoMaxMindResponseR accountInfoMaxMindResponseRiskScore1 = IntServerAccountInfoMaxMindResponseR.getExample();
        IntServerAccountInfoMaxMindResponseR accountInfoMaxMindResponseRiskScore2 = accountInfoMaxMindResponseRiskScore1;
        IntServerAccountInfoMaxMindResponseR accountInfoMaxMindResponseRiskScore3 = new IntServerAccountInfoMaxMindResponseR();
        IntServerAccountInfoMaxMindResponseR accountInfoMaxMindResponseRiskScore4 = accountInfoMaxMindResponseRiskScore3;

        System.assert(accountInfoMaxMindResponseRiskScore1.equals(accountInfoMaxMindResponseRiskScore2));
        System.assert(accountInfoMaxMindResponseRiskScore2.equals(accountInfoMaxMindResponseRiskScore1));
        System.assert(accountInfoMaxMindResponseRiskScore1.equals(accountInfoMaxMindResponseRiskScore1));
        System.assert(accountInfoMaxMindResponseRiskScore3.equals(accountInfoMaxMindResponseRiskScore4));
        System.assert(accountInfoMaxMindResponseRiskScore4.equals(accountInfoMaxMindResponseRiskScore3));
        System.assert(accountInfoMaxMindResponseRiskScore3.equals(accountInfoMaxMindResponseRiskScore3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerAccountInfoMaxMindResponseR accountInfoMaxMindResponseRiskScore1 = IntServerAccountInfoMaxMindResponseR.getExample();
        IntServerAccountInfoMaxMindResponseR accountInfoMaxMindResponseRiskScore2 = IntServerAccountInfoMaxMindResponseR.getExample();
        IntServerAccountInfoMaxMindResponseR accountInfoMaxMindResponseRiskScore3 = new IntServerAccountInfoMaxMindResponseR();
        IntServerAccountInfoMaxMindResponseR accountInfoMaxMindResponseRiskScore4 = new IntServerAccountInfoMaxMindResponseR();

        System.assert(accountInfoMaxMindResponseRiskScore1.equals(accountInfoMaxMindResponseRiskScore2));
        System.assert(accountInfoMaxMindResponseRiskScore2.equals(accountInfoMaxMindResponseRiskScore1));
        System.assert(accountInfoMaxMindResponseRiskScore3.equals(accountInfoMaxMindResponseRiskScore4));
        System.assert(accountInfoMaxMindResponseRiskScore4.equals(accountInfoMaxMindResponseRiskScore3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerAccountInfoMaxMindResponseR accountInfoMaxMindResponseRiskScore1 = IntServerAccountInfoMaxMindResponseR.getExample();
        IntServerAccountInfoMaxMindResponseR accountInfoMaxMindResponseRiskScore2 = new IntServerAccountInfoMaxMindResponseR();

        System.assertEquals(false, accountInfoMaxMindResponseRiskScore1.equals('foo'));
        System.assertEquals(false, accountInfoMaxMindResponseRiskScore2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerAccountInfoMaxMindResponseR accountInfoMaxMindResponseRiskScore1 = IntServerAccountInfoMaxMindResponseR.getExample();
        IntServerAccountInfoMaxMindResponseR accountInfoMaxMindResponseRiskScore2 = new IntServerAccountInfoMaxMindResponseR();
        IntServerAccountInfoMaxMindResponseR accountInfoMaxMindResponseRiskScore3;

        System.assertEquals(false, accountInfoMaxMindResponseRiskScore1.equals(accountInfoMaxMindResponseRiskScore3));
        System.assertEquals(false, accountInfoMaxMindResponseRiskScore2.equals(accountInfoMaxMindResponseRiskScore3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerAccountInfoMaxMindResponseR accountInfoMaxMindResponseRiskScore1 = IntServerAccountInfoMaxMindResponseR.getExample();
        IntServerAccountInfoMaxMindResponseR accountInfoMaxMindResponseRiskScore2 = new IntServerAccountInfoMaxMindResponseR();

        System.assertEquals(accountInfoMaxMindResponseRiskScore1.hashCode(), accountInfoMaxMindResponseRiskScore1.hashCode());
        System.assertEquals(accountInfoMaxMindResponseRiskScore2.hashCode(), accountInfoMaxMindResponseRiskScore2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerAccountInfoMaxMindResponseR accountInfoMaxMindResponseRiskScore1 = IntServerAccountInfoMaxMindResponseR.getExample();
        IntServerAccountInfoMaxMindResponseR accountInfoMaxMindResponseRiskScore2 = IntServerAccountInfoMaxMindResponseR.getExample();
        IntServerAccountInfoMaxMindResponseR accountInfoMaxMindResponseRiskScore3 = new IntServerAccountInfoMaxMindResponseR();
        IntServerAccountInfoMaxMindResponseR accountInfoMaxMindResponseRiskScore4 = new IntServerAccountInfoMaxMindResponseR();

        System.assert(accountInfoMaxMindResponseRiskScore1.equals(accountInfoMaxMindResponseRiskScore2));
        System.assert(accountInfoMaxMindResponseRiskScore3.equals(accountInfoMaxMindResponseRiskScore4));
        System.assertEquals(accountInfoMaxMindResponseRiskScore1.hashCode(), accountInfoMaxMindResponseRiskScore2.hashCode());
        System.assertEquals(accountInfoMaxMindResponseRiskScore3.hashCode(), accountInfoMaxMindResponseRiskScore4.hashCode());
    }
}
