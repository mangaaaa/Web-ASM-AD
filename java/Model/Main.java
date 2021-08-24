/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author mangn
 */
public class Main {
    public static void main(String[] args) {
        GetConnection gc = new GetConnection();
        checkLogin cLogin = new checkLogin();
        if(cLogin.checkLogin("mang", "mang")){
            System.out.println("Tk dung");
        }
        CourseModel cm = new CourseModel();
        System.out.println(cm.getTraineeList("C01").size());
    }
}
