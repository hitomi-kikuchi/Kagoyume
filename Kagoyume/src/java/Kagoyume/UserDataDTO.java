package Kagoyume;

import java.sql.Timestamp;

/**
 * ユーザー情報、商品購入情報を持ちまわるJavaBeans
 * データベースのカラムと型に対応させている(DTO)。データの挿入、取り出し
 * @author 1999itukinao
 */
public class UserDataDTO {
    //user_t
    private int userID;
    private String name;
    private String password;
    private String mail;
    private String address;
    private int total;
    private int deleteFlg;    
    //buy_t
    private int buyID;
    private String itemCode;
    private int type;
    
    private Timestamp newDate;
    
    public int getUserID() {
        return userID;
    }
    public void setUserID(int userID) {
        this.userID = userID;
    }
    
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    
    public String getMail() {
        return mail;
    }
    public void setMail(String mail) {
        this.mail = mail;
    }
    
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    
    public int getTotal() {
        return total;
    }
    public void setTotal(int total) {
        this.total = total;
    }
    
    public int getDeleteFlg() {
        return deleteFlg;
    }
    public void setDeleteFlg(int deleteFlg) {
        this.deleteFlg = deleteFlg;
    }
    
    public Timestamp getNewDate() {
        return newDate;
    }
    public void setNewDate(Timestamp newDate) {
        this.newDate = newDate;
    }
    
    public int getBuyID () {
        return buyID;
    }
    public void setBuyID(int buyID) {
        this.buyID = buyID;   
    }
    
    public String getItemCode() {
        return itemCode;
    }
    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
    }
    
    public int getType() {
        return type;
    }
    public void setType(int type) {
        this.type = type;
    }
}
