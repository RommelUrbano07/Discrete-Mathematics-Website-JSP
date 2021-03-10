/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package methods;

import java.util.HashSet;

/**
 *
 * @author Asus
 */
public class DifficultSet {

    public static HashSet<String> calculateUnion(HashSet<String> var1, HashSet<String> var2) {
        HashSet<String> finalval = new HashSet<>();
        finalval.addAll(var2);
        finalval.addAll(var1);
        return finalval;
    }

    public static HashSet<String> calculateintersection(HashSet<String> var1, HashSet<String> var2) {
        HashSet<String> finalval = new HashSet<>();
        for (String integer : var1) {
            for (String integer1 : var2) {
                if (integer.equals(integer1)) {
                    finalval.add(integer);
                }
            }

        }
        return finalval;
    }

    public static HashSet<String> calculateXPrime(HashSet<String> var1, HashSet<String> var2) {
        return var2;
    }

    public static HashSet<String> calculateYPrime(HashSet<String> var1, HashSet<String> var2) {
        return var1;
    }

    public static StringBuilder calculateOrderedPairSet(HashSet<String> var1, HashSet<String> var2) {
        StringBuilder newSet = new StringBuilder();
        newSet.append("{");
        int i=0,j=0;
        for (String elem : var1) {
            i=i+1;
            for (String elem2 : var2) {
                newSet.append("(" + elem2 + "," + elem + "),");
                j=j+1;
            }
        }
        newSet.replace(newSet.length()-1, newSet.length(), "");
        newSet.append("}");
        return newSet;
    }

    public static boolean CheckPrime(int numberToCheck) {
        int remainder;
        for (int i = 2; i <= numberToCheck / 2; i++) {
            remainder = numberToCheck % i;

            if (remainder == 0) {
                return false;
            }
        }
        return true;

    }
}
