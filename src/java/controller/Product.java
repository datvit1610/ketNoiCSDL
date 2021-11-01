/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

/**
 *
 * @author Admin
 */
public class Product {
    int id;
    String ten;
    int so_luong;
    int don_gia;

    public Product() {
    }

    public Product(int id, String ten, int so_luong, int don_gia) {
        this.id = id;
        this.ten = ten;
        this.so_luong = so_luong;
        this.don_gia = don_gia;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public int getSo_luong() {
        return so_luong;
    }

    public void setSo_luong(int so_luong) {
        this.so_luong = so_luong;
    }

    public int getDon_gia() {
        return don_gia;
    }

    public void setDon_gia(int don_gia) {
        this.don_gia = don_gia;
    }
    
    
    
}
