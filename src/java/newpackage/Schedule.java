
package newpackage;


import java.sql.ResultSet;


public class Schedule {
    int id;
    private Genre genre=new Genre();
    private String day;
    private Movie movie=new Movie();
    private Slot slot=new Slot();
    private Hall hall=new Hall();
    private dbConnectivity obj=dbConnectivity.getInstance();
    Schedule()
    {
        
    }
    Schedule(int i,Genre g,Movie m,String d,Slot s,Hall h)
    {
        id=i;
        genre=g;
        movie=m;
        day=d;
        slot=s;
        hall=h;
    }
    public void loadData()
    {
        try
        {
            String q="select * from scehdule";
            ResultSet rs=obj.getStmt().executeQuery(q);
            while(rs.next())
            {
                 
            }
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    public Genre getGenre() {
        return genre;
    }

    public void setGenre(Genre genre) {
        this.genre = genre;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }

    public Slot getSlot() {
        return slot;
    }

    public void setSlot(Slot slot) {
        this.slot = slot;
    }

    public Hall getHall() {
        return hall;
    }

    public void setHall(Hall hall) {
        this.hall = hall;
    }
    public void setID(int i)
    {
        id=i;
    }
    public int getID()
    {
        return id;
    }
    public Schedule getScheduleOb(Movie m,Slot s,String d)
    {
       if(movie.equals(m) && day.equals(d) && slot.equals(s) && genre.equals(m.getGenre()))
       {
           return this;
       }
       return null;
    }
}
