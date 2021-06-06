/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "scheduleServlet", urlPatterns = {"/scheduleServlet"})
public class scheduleServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet scheduleServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet scheduleServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        String m1=request.getParameter("m");
        String s1=request.getParameter("s");
        OnlineMovieTicketBookingSystem obj=OnlineMovieTicketBookingSystem.getInstance();
        
        String size=(String)request.getSession().getAttribute("size");
        int ss=Integer.parseInt(size);
        ArrayList<Integer> d=(ArrayList<Integer>)request.getSession().getAttribute("day");
        if(d.get(0)==0)
        {
            obj.getTicket().setDay("Monday");
        }
        else if(d.get(0)==1)
        {
            obj.getTicket().setDay("Tuesday");
        }
        else if(d.get(0)==2)
        {
            obj.getTicket().setDay("Wednesday");
        }
        else if(d.get(0)==3)
        {
            obj.getTicket().setDay("Thursday");
        }
        else if(d.get(0)==4)
        {
            obj.getTicket().setDay("Friday");
        }
        
        ArrayList<Movie> m=(ArrayList<Movie>)request.getSession().getAttribute("movie");
        ArrayList<Slot> s=(ArrayList<Slot>)request.getSession().getAttribute("slot");
        for(int i=0;i<ss;i++)
        {
            String ii=String.valueOf(i);
            if(request.getParameter(ii)!=null)
            {
                obj.getTicket().setMovie(m.get(i));
                obj.getTicket().setSlot(s.get(i));
                request.setAttribute("movie",m.get(i));
                request.setAttribute("cinema",obj.getTicket().getCinema());
            }
        }
        Schedule sc=obj.getScheduleObject(obj.getTicket().getCinema(),obj.getTicket().getMovie(),obj.getTicket().getSlot(),obj.getTicket().getDay());
        obj.getTicket().setSchedule(sc);
//        if(obj.getTicket().getSchedule().getHall().getSeats()!=null)
//        {
//            System.out.println("PRINTING SEAT FROM CONSOLE: "+obj.getTicket().getSchedule().getHall().getSeats().get(0).getSeatNumber());
//        }
        
        PrintWriter writer = response.getWriter();
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("DetailsOfSelectedMovie.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
