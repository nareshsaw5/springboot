package learning.springboot.services;

public class Customer {

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    int id;
        String name;

        Customer(int id, String name){
            this.id = id;
            this.name = name;
        }


}
