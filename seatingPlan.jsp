<%-- 
    Document   : seatingPlan
    Created on : May 2, 2020, 8:58:26 PM
    Author     : abc
--%>

<%@page import="newpackage.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <style>
        body {
            background-image: url('paper.gif');
            background-color: black;
        }

        table {
            width: 100%;
        }

        th, td {
            padding: 15px;
        }

        .seats {
            background-color: #37BF91;
            padding: 10px;
            text-align: center;
            font-size: 16px;
            margin: 2px 2px;
            cursor: pointer;
            border-radius: 10px;
            width: 60px;
            height: 40px;
        }

        .next {
            padding: 10px;
            text-align: center;
            font-size: 16px;
            margin: 2px 2px;
            cursor: pointer;
            border-radius: 10px;
            width: 60px;
            height: 40px;
            margin-left: 150px;
            background-color: #810829;
        }

        .screen {
            border: 2px solid black;
            border-radius: 10px;
            margin-left: 300px;
            margin-right: 300px;
            text-align: center;
            color: black;
            background-color: silver;
        }

        .totalseats {
            border: 2px solid black;
            border-radius: 10px;
            width: 20%;
            margin-left: 150px;
            padding: 20px;
            text-align: left;
            color: black;
            background-color: #810829;
            font-size: large;
        }
    </style>

</head>
<body>
    <br><br><br><br>
    <p class="screen">SCREEN</p>
    <br><br><br><br>


   
    <%OnlineMovieTicketBookingSystem obj=OnlineMovieTicketBookingSystem.getInstance();
    Hall h=obj.getTicket().getSchedule().getHall();
    if(h.getSeats()!=null)
    {%>
        <table>
        <%for(int i=0;i<h.getMaxSeats();i++)
        {%>
        <tr>
            <%for(int j=0;j<10;j++)
            {%>
                <th><button class="seats" onclick="func(this)" type="button"><%=(i+1)%></button></th>
                <%i++;
            }
            i--;%>
             
                
        </tr>
        <%}%>
</table>
    <%}
        
    else
    {%>
        <table>
        <%for(int i=0;i<h.getMaxSeats();i++)
        {%>
        <tr>
            <%for(int j=0;j<10;j++)
            {
                if(h.SeatBookedOrNot(i+1)==true)
                {%>
                    <th><button class="seats"  type="button" style="background-color:red; "><%=(i+1)%></button></th>
                <%}
                else
                {%>
                        <th><button class="seats" onclick="func(this)" type="button"><%=(i+1)%></button></th>
                <%}
                
                i++;
            }
            i--;%>
             
                
        </tr>
        <%}%>
</table>
    <%}%>
    
   <!-- <table>
        <tr>
            <th><button class="seats" onclick="func(this)" type="button">1</button></th>
            <th><button class="seats" onclick="func(this)" type="button">2</button></th>
            <th><button class="seats" onclick="func(this)" type="button">3</button></th>
            <th><button class="seats" onclick="func(this)" type="button">4</button></th>
            <th><button class="seats" onclick="func(this)" type="button">5</button></th>
            <th><button class="seats" onclick="func(this)" type="button">6</button></th>
            <th><button class="seats" onclick="func(this)" type="button">7</button></th>
            <th><button class="seats" onclick="func(this)" type="button">8</button></th>
        </tr>
        <tr>
            <th><button class="seats" onclick="func(this)" type="button">9</button></th>
            <th><button class="seats" onclick="func(this)" type="button">10</button></th>
            <th><button class="seats" onclick="func(this)" type="button">11</button></th>
            <th><button class="seats" onclick="func(this)" type="button">12</button></th>
            <th><button class="seats" onclick="func(this)" type="button">13</button></th>
            <th><button class="seats" onclick="func(this)" type="button">14</button></th>
            <th><button class="seats" onclick="func(this)" type="button">15</button></th>
            <th><button class="seats" onclick="func(this)" type="button">16</button></th>
        </tr>
        <tr>
            <th><button class="seats" onclick="func(this)" type="button">17</button></th>
            <th><button class="seats" onclick="func(this)" type="button">18</button></th>
            <th><button class="seats" onclick="func(this)" type="button">19</button></th>
            <th><button class="seats" onclick="func(this)" type="button">20</button></th>
            <th><button class="seats" onclick="func(this)" type="button">21</button></th>
            <th><button class="seats" onclick="func(this)" type="button">22</button></th>
            <th><button class="seats" onclick="func(this)" type="button">23</button></th>
            <th><button class="seats" onclick="func(this)" type="button">24</button></th>
        </tr>
        <tr>
            <th><button class="seats" onclick="func(this)" type="button">25</button></th>
            <th><button class="seats" onclick="func(this)" type="button">26</button></th>
            <th><button class="seats" onclick="func(this)" type="button">27</button></th>
            <th><button class="seats" onclick="func(this)" type="button">28</button></th>
            <th><button class="seats" onclick="func(this)" type="button">29</button></th>
            <th><button class="seats" onclick="func(this)" type="button">30</button></th>
            <th><button class="seats" onclick="func(this)" type="button">31</button></th>
            <th><button class="seats" onclick="func(this)" type="button">32</button></th>
        </tr>
        <tr>
            <th><button class="seats" onclick="func(this)" type="button">33</button></th>
            <th><button class="seats" onclick="func(this)" type="button">34</button></th>
            <th><button class="seats" onclick="func(this)" type="button">35</button></th>
            <th><button class="seats" onclick="func(this)" type="button">36</button></th>
            <th><button class="seats" onclick="func(this)" type="button">37</button></th>
            <th><button class="seats" onclick="func(this)" type="button">38</button></th>
            <th><button class="seats" onclick="func(this)" type="button">39</button></th>
            <th><button class="seats" onclick="func(this)" type="button">40</button></th>
        </tr>
        <tr>
            <th><button class="seats" onclick="func(this)" type="button">41</button></th>
            <th><button class="seats" onclick="func(this)" type="button">42</button></th>
            <th><button class="seats" onclick="func(this)" type="button">43</button></th>
            <th><button class="seats" onclick="func(this)" type="button">44</button></th>
            <th><button class="seats" onclick="func(this)" type="button">45</button></th>
            <th><button class="seats" onclick="func(this)" type="button">46</button></th>
            <th><button class="seats" onclick="func(this)" type="button">47</button></th>
            <th><button class="seats" onclick="func(this)" type="button">48</button></th>
        </tr>
        <tr>
            <th><button class="seats" onclick="func(this)" type="button">49</button></th>
            <th><button class="seats" onclick="func(this)" type="button">50</button></th>
            <th><button class="seats" onclick="func(this)" type="button">51</button></th>
            <th><button class="seats" onclick="func(this)" type="button">52</button></th>
            <th><button class="seats" onclick="func(this)" type="button">53</button></th>
            <th><button class="seats" onclick="func(this)" type="button">54</button></th>
            <th><button class="seats" onclick="func(this)" type="button">55</button></th>
            <th><button class="seats" onclick="func(this)" type="button">56</button></th>
        </tr>
    </table>-->
    <!--CHECKING SEAT COUNT-->
    <form method="post" action="../../Home/Ticket">

        <input class="totalseats" id="clicks" name="count" value="0" onkeypress="return false;">Seats selected: 0</input>
        <button type="submit" class="next" formaction="ticket.jsp">
        	<a href="ticket.jsp">
        Next
    		</a>
		</button>
    </form>
    <script>
        var clicks = 0;
        var inputF = document.getElementById("clicks");
        function func(_this) {
            if (_this.style.backgroundColor == "red") {
                clicks -= 1;

                _this.style.backgroundColor = "#37BF91";
                
                inputF.value = clicks;
                //document.getElementById("clicks").innerHTML = clicks;
            }
            else {
                clicks += 1;
                _this.style.backgroundColor = "red";
                inputF.value = clicks;
                //document.getElementById("clicks").innerHTML = clicks;
            }

        }
    </script>

</body>
</html>
