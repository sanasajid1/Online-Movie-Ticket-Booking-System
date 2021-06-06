<%-- 
    Document   : newjsp
    Created on : May 2, 2020, 9:50:07 PM
    Author     : abc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <style>
        body {
            background-color: black;
        }

        .Cinema {
            position: absolute;
            top: 30%;
            left: 40%;
            transform: translate(-50%, -50%);
            color: white;
            font-size: 18px;
        }

        .Movie {
            position: absolute;
            top: 40%;
            left: 40%;
            transform: translate(-50%, -50%);
            color: white;
            font-size: 18px;
        }

        .Starttime {
            position: absolute;
            top: 50%;
            left: 40%;
            transform: translate(-50%, -50%);
            color: white;
            font-size: 18px;
        }

        .TotalSeats {
            position: absolute;
            top: 60%;
            left: 40%;
            transform: translate(-50%, -50%);
            color: white;
            font-size: 18px;
        }

        .Balance {
            position: absolute;
            top: 70%;
            left: 40%;
            transform: translate(-50%, -50%);
            color: white;
            font-size: 18px;
        }

        .button {
            padding: 10px 20px;
            font-size: 18px;
            text-align: center;
            cursor: pointer;
            outline: none;
            color: #fff;
            background-color: #CA2F2F;
            border: none;
            border-radius: 15px;
            box-shadow: 0 6px #999;
            margin-left: 650px;
        }

            .button:hover {
                background-color: #B31C1C
            }

            .button:active {
                background-color: #B31C1C;
                box-shadow: 0 5px #666;
                transform: translateY(4px);
            }
    </style>
</head>
<body>

    <div class="container">
        <img src="content/download.png" alt="Ticket" style="background-repeat:no-repeat;height:600px;width: 700px;margin-left: 350px;margin-top: 100px;">
        <div class="Cinema">
            Cinema:   @Model.cinemas.cinemaName
        </div>
        <br>

        <div class="Movie">
            Movie:   @Model.movie.title
        </div>
        <br>

        <div class="Starttime">
            Start Time:   8:00
        </div>
        <br>

        <div class="TotalSeats">
            Total Seats:   @Model.getSeats()
        </div>
        <br>

        <div class="Balance">
            Balance:   @Model.getBalance()
        </div>

        <br>
    </div>
    <form action="login.jsp">
        <button type="submit" class="button">Logout</button>
    </form>

</body>
</html>
