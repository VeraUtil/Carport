package FunctionLayer;

import FunctionLayer.Objects.Order;

import java.util.ArrayList;

public class Initialisation {
    //Creating lists
    private static ArrayList<Integer> carportLengths;
    private static ArrayList<Integer> carportWidths;
    private static ArrayList<Integer> carportHeights;
    private static ArrayList<String> roofs;
    private static ArrayList<Integer> shedLengths;
    private static ArrayList<Integer> shedWidths;
    private static ArrayList<Integer> roofPitch;
    private static ArrayList<Order> orders;

    //Inits
    public static void initLengths() {
        if(carportLengths == null) {
            carportLengths = LogicFacade.getCarportLength();
        }
    }

    public static void initWidth() {
        if(carportWidths == null) {
            carportWidths = LogicFacade.getCarportWidth();
        }
    }

    public static void initHeight() {
        if(carportHeights == null) {
            carportHeights = LogicFacade.getCarportHeight();
        }
    }

    public static void initRoof() {
        if(roofs == null) {
            roofs = LogicFacade.getCarportRoof();
        }
    }

    public static void initShedLengths() {
        if(shedLengths == null) {
            shedLengths = LogicFacade.getShedLength();
        }
    }

    public static void initShedWidths() {
        if(shedWidths == null) {
            shedWidths = LogicFacade.getShedWidth();
        }
    }

    public static void initRoofPitch() {
        if(roofPitch == null) {
            roofPitch = LogicFacade.getRoofPitch();
        }
    }

    public static void initOrders() {
        if(orders == null) {
            orders = LogicFacade.getOrders();
        }
    }



    //Get lists
    public static ArrayList<Integer>getCarportLengths() {return carportLengths;}
    public static ArrayList<Integer> getCarportWidths() {return carportWidths;}
    public static ArrayList<Integer> getCarportHeights() {return carportHeights;}
    public static ArrayList<String> getRoofs() {return roofs;}
    public static ArrayList<Integer> getShedLengths() {return shedLengths;}
    public static ArrayList<Integer>getShedWidths() {return shedWidths;}
    public static ArrayList<Integer>getRoofPitch() {return roofPitch;}
    public static ArrayList<Order>getOrders() {return orders;}
}
