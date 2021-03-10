/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package methods;

/**
 *
 * @author Asus
 */
public class LCM {
    public static int gcf(int a,int b){
        while(a!=b){
            if(a>b){
                a = a-b;
            }
            else{
                b = b-a;
            }
          
        }
        return a;
    }
    public static int lcm (int a, int b){
        return (a*b)/gcf(a,b);
    }
} 
 


