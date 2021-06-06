
package newpackage;



public class Ticket {
    private int id;
    private Movie movie=new Movie();
    private Cinema cinema=new Cinema();
    private double balance;
    private int noOfSeats;
    private Slot slot=new Slot();
    private Schedule schedule=new Schedule();
    private String day;
    private static int count=1;
    Ticket()
    {
        id=count;
        count++;
    }
    public Schedule getSchedule()
    {
        return schedule;
    }
    public void setSchedule(Schedule s)
    {
        schedule=s;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }

    public Cinema getCinema() {
        return cinema;
    }

    public void setCinema(Cinema cinema) {
        this.cinema = cinema;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public int getNoOfSeats() {
        return noOfSeats;
    }

    public void setNoOfSeats(int noOfSeats) {
        this.noOfSeats = noOfSeats;
    }

    public Slot getSlot() {
        return slot;
    }

    public void setSlot(Slot slot) {
        this.slot = slot;
    }

    public static int getCount() {
        return count;
    }

    public static void setCount(int aCount) {
        count = aCount;
    }
    public String getDay()
    {
        return day;
    }
    public void setDay(String d)
    {
        day=d;
    }
    public double calculateBalance(String day)
    {
        if(day.equals("Wedenesday"))
        {
            //Student Offer 10% discount
            balance=noOfSeats*cinema.getPricePerTicket();
            double dis=(10/100)*balance;
            balance=balance-dis;
        }
        else if(day.equals("Sunday"))
        {
            //Family Day Discount 20%
            balance=noOfSeats*cinema.getPricePerTicket();
            double dis=(20/100)*balance;
            balance=balance-dis;
        }
        else if(day.equals("Friday"))
        {
            //Jumma Discount 30%
            balance=noOfSeats*cinema.getPricePerTicket();
            double dis=(30/100)*balance;
            balance=balance-dis;
        }
        else
        {
            balance=noOfSeats*cinema.getPricePerTicket();
        }
        return balance;
    }
    public void generateTicket()
    {
        System.out.println("-----------"+cinema.getName()+"----------");
        System.out.println("Id: "+id);
        System.out.println(movie.getTitle());
        System.out.println(slot.getStartTime()+" - "+slot.getEndTime());
        System.out.println("Balance: "+balance);
        
    }
}
