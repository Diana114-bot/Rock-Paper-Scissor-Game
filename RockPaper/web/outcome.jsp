<%-- 
    Document   : outcome
    Created on : Feb 21, 2025, 4:28:37 PM
    Author     : zwivhuya sagida
--%>

<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>the outcome page</title>
    </head>
    <body style="background-color:greenyellow">
        <h1> Rock Paper Scissor</h1>
        
        <%
            String userOpt = request.getParameter("options");
             String computerOpt = getComputerOpt();
               String results = determineWinner(userOpt, computerOpt);
               
            %>
            
                <p> Your sign is: <%= userOpt %></p>
               <p> Siri's sign is: <%= computerOpt %></p>
               <p>  The results is :<%= results %></p>
               <p>Click <a href="index.html">here</a> to play again.</p>
            
            
             </body>
             </html>
            <%!
                public static String getComputerOpt(){
                 String[] choices ={"rock","paper","scissor"};
                 int number = (int)(Math.random()*choices.length);
                   return choices[number];
                }  
                
                 public String determineWinner(String userOpt, String computerOpt ){
                      String message ="";
                    if(userOpt.equalsIgnoreCase(computerOpt)){
                        message = "It's a tie";
                    }
                 else if(userOpt.equalsIgnoreCase("rock")&& computerOpt.equalsIgnoreCase("paper")){
                        message = "You lose!";
                    }
                   else if(userOpt.equalsIgnoreCase("rock")&& computerOpt.equalsIgnoreCase("scissor")){
                            message = "You won!";
                    }
                    else if(userOpt.equalsIgnoreCase("paper")&& computerOpt.equalsIgnoreCase("rock")){
                           message = "You won!";
                    }
                    else if(userOpt.equalsIgnoreCase("paper")&& computerOpt.equalsIgnoreCase("scissor")){
                        message = "You lose!";
                    }
                    else if(userOpt.equalsIgnoreCase("scissor")&& computerOpt.equalsIgnoreCase("rock")){
                              message = "You lose!";
                    }
                     else if(userOpt.equalsIgnoreCase("scissor")&& computerOpt.equalsIgnoreCase("paper")){
                             message = "You won!";
                    }else{
                      message="";
                      }

                 return  message;
                 }
                %>
   
