package bean;

public class Brand {
    int id;
    String name;

    public Brand(int id, String name) {
        this.id = id;
        this.name = name;
    }
    public Brand() {

    }

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
<<<<<<< HEAD
=======

    @Override
    public String toString() {
        return "Brand{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
>>>>>>> 0e3f2594ca2143b0867aaffefee7030c20aa9694
}
