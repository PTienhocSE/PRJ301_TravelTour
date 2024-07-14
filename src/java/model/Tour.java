package model;

public class Tour {

    private int id;
    private String title;
    private String tourCode;
    private String departurePlace;
    private String travelTime;
    private String duration;
    private String price;
    private String imagePath;
    private  String tour_code;

    public Tour() {
    }

    public Tour(int id, String title, String tourCode, String departurePlace, String travelTime, String duration, String price, String imagePath) {
        this.id = id;
        this.title = title;
        this.tourCode = tourCode;
        this.departurePlace = departurePlace;
        this.travelTime = travelTime;
        this.duration = duration;
        this.price = price;
        this.imagePath = imagePath;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTourCode() {
        return tourCode;
    }

    public void setTourCode(String tourCode) {
        this.tourCode = tourCode;
    }

    public String getDeparturePlace() {
        return departurePlace;
    }

    public void setDeparturePlace(String departurePlace) {
        this.departurePlace = departurePlace;
    }

    public String getTravelTime() {
        return travelTime;
    }

    public void setTravelTime(String travelTime) {
        this.travelTime = travelTime;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }
}
