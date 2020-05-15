package FunctionLayer.Entities;

public class Order {
    private int orderID;
    private Carport carport;
    private boolean hasShed;
    private int shedWidth;
    private int shedLength;
    private boolean hasPitch;
    private int roofPitch;
    private int price;
    private boolean approved;
    private int tlfNumber;

    public Order(int orderID, Carport carport, boolean hasShed, int shedWidth, int shedLength, boolean hasPitch, int roofPitch, int price, boolean approved, int tlfNumber) {
        this.orderID = orderID;
        this.carport = carport;
        this.hasShed = hasShed;
        this.shedWidth = shedWidth;
        this.shedLength = shedLength;
        this.hasPitch = hasPitch;
        this.roofPitch = roofPitch;
        this.price = price;
        this.approved = approved;
        this.tlfNumber = tlfNumber;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public Carport getCarport() {
        return carport;
    }

    public void setCarport(Carport carport) {
        this.carport = carport;
    }

    public boolean isHasShed() {
        return hasShed;
    }

    public void setHasShed(boolean hasShed) {
        this.hasShed = hasShed;
    }

    public int getShedWidth() {
        return shedWidth;
    }

    public void setShedWidth(int shedWidth) {
        this.shedWidth = shedWidth;
    }

    public int getShedLength() {
        return shedLength;
    }

    public void setShedLength(int shedLength) {
        this.shedLength = shedLength;
    }

    public boolean isHasPitch() {
        return hasPitch;
    }

    public void setHasPitch(boolean hasPitch) {
        this.hasPitch = hasPitch;
    }

    public int getRoofPitch() {
        return roofPitch;
    }

    public void setRoofPitch(int roofPitch) {
        this.roofPitch = roofPitch;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public boolean isApproved() {
        return approved;
    }

    public void setApproved(boolean approved) {
        this.approved = approved;
    }

    public int getTlfNumber() {
        return tlfNumber;
    }

    public void setTlfNumber(int tlfNumber) {
        this.tlfNumber = tlfNumber;
    }

    @Override
    public String toString() {
        String result = "";
        if(hasShed) {
            result += ", Skurlængde: " + shedLength + ", Skurbredde: " + shedWidth;
        }
        if(hasPitch) {
            result += ", Taghældning: " + roofPitch;
        }
        return "OrderID: " + orderID + ", " + carport.toString() + result + ", Pris: " + price + " DKK, " + "Kundens tlf. nr.: " + tlfNumber;
    }
}
