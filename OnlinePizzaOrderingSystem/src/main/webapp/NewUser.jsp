<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up </title>
    <style>
        *{
            box-sizing: border-box;
            margin: 0%;
            padding: 0%;
            text-decoration: none;
            font-family: sans-serif;
            outline: none;
            border: none;
        }
        html,body{
            height: 100%;
            background-color: #0a0a0a;
        }
        .align{
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            padding-bottom: 8px;
        }
        .card{
            margin-top: 28px;
            height: 100%;
            max-height: 550px;
            width: 396px;
            background: #121212;
            border: 1px sloid #373737;
            overflow: hidden;
            border-radius: 10px;
            transition: max-height 0.2s;
        }
        .head{
            width: 100%;
            display: flex;
            height: 72px;
            border-bottom: 1px solid #373737;
            justify-content: space-between;
        }
        .head a{
            height: 100%;
            padding: 0 28px;
            display: flex;
            align-items: center;
            font-weight: 500;
            font-size: 20px;
            color: rgb(140, 140, 140);
            justify-content: center;
        }
        .head .selected{
            position: relative;
            color: #007FFF;
            font-weight: 700;
        }
        .head .selected::after{
            position: absolute;
            content: "";
            bottom: 0%;
            left: 0%;
            height: 5px;
            background: #007FFF;
            width: 100%;
            border-radius: 99px 99px 0 0;

        }
        .tabs{
            height: calc(100% -72px);
            display: flex;
        }
        form{
            width: 100%;
            height: 100%;
            flex-shrink: 0;
            padding: 44px 38px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            align-items: center;
            position: relative;
            right: 0%;
            transition: right 0.2s;
        }
        .inputs{
            width: 100%;
            padding-top: 6px;
        }
        /* Login form div*/
        .input{
            position: relative;
            margin-bottom: 20px;
            width: 100%;
            display: flex;
            align-items: center;
        }
        input{
            width: 100%;
            font-size: 17px;
            background-color: #1c1c1c;
            padding: 16px 18px 16px 31px;
            color: rgb(220,220,220);
            border-radius: 8px;
        }
        /* Login- Remeber */
        .checkbox{
            height: 40px;
            display: flex;
            align-items: center;
            position: relative;
            cursor: pointer;
        }
        .checkbox input{
            content: "";
            width: 22px;
            height: 22px;
            border-radius: 6px;
            margin-right: 16px;
        }
        /* Login- Remember me text */
        .checkbox span{
            display: flex;
            align-items: center;
            color: rgb(110,110,110);
            font-size: 16px;
            user-select: none;            
        }
        button{
            display: block;
            background: #007FFF;
            border-radius: 5px;
            padding: 14px 52px;
            color: #fff;
            font-weight: 700;
            font-size: 21px;
            cursor: pointer;
        }
        /* Registration form div*/
        .input-reg{
            position: relative;
            margin-bottom: 12px;
            width: 100%;
            display: flex;
            align-items: center;         
        }
        /* Name div */
        #name{
            display: flex;
            justify-content: space-between;
            text-align: center;        
        }
        .extend form{
            right: 100%
        }
        /* Registration message */
        .message{
            color:rgb(110,110,110);
            font-size: 16px;
            padding-bottom: 15px;
        }

    </style>
</head>
<body>
    <div class="align">
        <div class="card">
        <!-- nav bar -->
        <div class="head">
            <div></div>
            <a href="#login" class="selected" id="login">Login</a>
            <a href="#register" id="register">Register </a>
            <div></div>
            </div>
            <div class="tabs">
                <form action="login" >
                    <!-- user name input -->
                    <div class="inputs">
                    <div class="input">
                         <input name="email" type="text" placeholder="Username">
                     </div>   
                    
                    <div class="input">
                        <input name="pass" type="password" placeholder="Password">
                        </div>
                        <!-- checkbox -->
                        <label for="" class="checkbox">
                            <input type="checkbox">
                            <span>Remember Me</span>
                        </label>
                        </div>
                        <!-- login button -->
                        <button type ="submit" value="login" style="margin-top: 50px;">Login</button> 
                        <!-- inline CSS -->
                </form>
                <!-- registration form -->
                <form action="register" method = "post">
                    <div class="inputs">
                        <div id="name"> 
                        <div class="input-reg">    
                            <input name="first name" type="text" placeholder="First Name">
                            </div>   
                        <div class="input-reg">
                            <!-- inline CSS -->
                            <input name="last name"type="text" placeholder="Last Name" style="margin-left:10px;">
                            </div>
                        </div>
                        <div class="input-reg">
                            <input name="email" type="email" placeholder="Email">
                            </div>
                        <div class="input-reg">
                            <input name="pass" type="password" placeholder="Password">
                            </div>
                        <div class="input-reg">
                            <input name="address" type="text" placeholder="Address">
                            </div>
                        <div class="input-reg">
                            <input name="mobile" type="number" placeholder="Phone No.">
                            </div>
                            <p class="message">Already Registered ? <a href="#login">Login</a></p>
                            <!-- Register button -->
                            <!-- inline CSS -->
                            <button style="margin:auto;">Register</button>
                            </div>
                </form>
                
	}
	
		
	</script>
            </div>
        </div>
     </div>
     
     <!-- Jquery CDN link -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    

    <!-- jquery -->
    <script>
        $(window).on("hashchange",
        function(){
            if(location.hash.slice(1)=="register"){
                $(".card").addClass("extend");
                $("#login").removeClass("selected");
                $("#register").addClass("selected");
            }
            else{
                $(".card").removeClass("extend");
                $("#login").addClass("selected");
                $("#register").removeClass("selected"); 
            }
        });

        $(window).trigger("hashchange");
    </script>
    
    
</body>
</html>
