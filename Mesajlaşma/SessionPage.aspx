<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SessionPage.aspx.cs" Inherits="SessionPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mesajlaşma Ekranı</title>
    <style>
        body{
            
           height:100vh;
           overflow:hidden;
           background-color:darkblue;

        }
 
       #message_box2{
           margin:auto;
             margin-top:5px;
               margin-left:22%;
             display:block;
             width:1200px;
             height:400px;
             overflow-y:auto;
             background-color:black;
border:1px solid #808080;
             float:left;
             margin-bottom:20px;
           border-radius:8px;
           


      
  }
       #message_box3{
           margin:auto;
           display:block;
            width:1200px;

             height:460px;
             margin-top:10px;

            
            background-color:black;
border:1px solid #808080;
             float:left;
             margin-left:22%;
           border-radius:8px;

            
}
       

        #message{
            width:580px;
            height:200px;
            border:1px solid  #ff0000;
            background-color:rgb(255,255,255,0.2);
            color:aliceblue;
            display:block;
            text-align:center;
            float:left;
            overflow-y:auto;
           margin-left:10px;
           margin-top:8px;
           border-radius:8px;

        }
        #lblDateNow{
            color:red;
            margin-left:12px;
            margin-top:10px;
            display:block;

        }
        #lblSender{
            color:aliceblue;
            text-align:center;
            font-size:large;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            margin:auto;
            margin-top:1px;
            margin-left:10px;



        }
        #lblMessage{
            color:aliceblue;
            text-align:center;

            margin:auto;
            margin-top:5px;
            margin-left:10px;
            margin-right:2px;
            margin-bottom:30px;

        }
        #userMsg_name{
            margin:auto;
            margin-top:5px;
            margin-bottom:10px;
            width:2000px;
            height:25px;
            background-color:transparent;
            
            
            display:flex;
            justify-content:center;
            align-items:center;
            float:left;
            color:aliceblue;
            font-size:35px;
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;

        }
        #selectedMessage{
            color:aliceblue;
            width:1100px;
            height:340px;
            display:block;
            border:1px solid  #ff0000;
            margin:auto;
            margin-top:25px;
            border-radius:5px;


        }
        #lblDate,#lblName,#lblUserMessage{
            color:aliceblue;
            text-decoration:dashed;
            color:rgb(255,122,80,0.5)
        }
        #dateNow,#userName,#userMessage{
            margin-top:10px;
            width:1100px;
            height:40px;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            text-align:center;
        }
        #userName,#userMessage{
              margin-top:40px;
  width:1100px;
  height:40px;
  font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
  text-align:center;
        }
        #message_sender_container{
            margin:auto;
            margin-top:60px;
            display:block;
            width:1200px;
            height:210px;
           color:aliceblue;
           font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
           text-align:center
        }
        #user_name,#user_date,#user_message,#btn_container{
            margin-top:5px;
            width:1100px;
            height:90px;
            display:flex;
            justify-content:center;
            align-items:center;
            column-gap:40px;
            text-align:center;

        }

     #txtMessageBox{
         width:500px;
         height:100px;
         background-color:rgb(225,225,225,0.4);
         color:aliceblue;

     }
     #txtDateNow,#txtUserName{
         width:500px;
         height:20px;
         background-color:rgb(225,225,225,0.9);
         color:black;


     }
     #txtDateNow{
         margin-left:25px;
         color:red;

     }
        #Button1{
            padding:8px 30px ;
            border:1px solid  red;
            border-radius:5px;
            color:aliceblue;
            background-color:transparent;
            cursor:pointer;
        }
        #button{
            width:40px;
            height:40px;
            display:block;
            border-radius:40px;
            background-color:chartreuse;
            margin-left:520px;
            cursor:pointer;

        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="userMsg_name" runat="server">
               

            </div>

         
            <div id="message_box2" runat="server">
               <div id="selectedMessage" runat="server">

                    <div id="dateNow" runat="server">
                        <asp:Label ID="lblDate" runat="server" Text="Tarih "></asp:Label><br /><br />
                        <asp:Label ID="lblSelectedDate" runat="server" Text=""></asp:Label>
                    </div>

                    <div id="userName" runat="server">
                        <asp:Label ID="lblName" runat="server" Text="Gönderen Kişinin Adı "></asp:Label><br /><br />
                        <asp:Label ID="lblSelectedName" runat="server" Text=""></asp:Label>
                    </div>
                    <div id="userMessage" runat="server">
                        <asp:Label ID="lblUserMessage" runat="server" Text="Mesajınız  "></asp:Label><br /><br />
                        <asp:Label ID="lblSelectedMessage" runat="server" Text=""></asp:Label>
                    </div>
                    

                </div>
               
</div>
             <div id="message_box3" runat="server">

    <div id="message_sender_container">
        <div id="user_name">
            <asp:Label ID="Label1" runat="server" Text="Alıcı Adı :"></asp:Label>
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        </div>
       
        <div id="user_message">
            <asp:Label ID="Label3" runat="server" Text="Mesajınız :"></asp:Label>
            <asp:TextBox ID="txtMessageBox" runat="server" TextMode="MultiLine"></asp:TextBox>
        </div>
        <div id="btn_container">
            <asp:Button ID="Button1" runat="server" Text="Gönder" OnClick="Button1_Click" />

        </div>
    </div>
</div>
             
            
            </div>
           
    </form>
    
</body>
</html>
