<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>



    <title>Kairos</title>

    <link rel="stylesheet" type="text/css" media="screen" href="${path}/resource/image/animation.css" />

    <link href="${path}/resource/image/logo.png" rel="shortcut icon" type="image/x-icon">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link
        href="https://fonts.googleapis.com/css2?family=Dongle:wght@300;400&family=Gowun+Batang:wght@700&family=Gugi&display=swap"
        rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">
    <style>
        .exhibit,
        .art,
        .myjoin,
        .login {
            padding: 20px;
            float: right;
            cursor: pointer;
        }

        .cronos {
            cursor: pointer;
            text-align: center;
            width: 500px;
            margin-right: 0;
            padding-left: 570px;


        }

        hr {
            margin-top: 30px;
            height: 10px;
            background: black;
            background-image: -webkit-linear-gradient(left, #eee, black, #eee);
            background-image: -moz-linear-gradient(left, #eee, black, #eee);
            background-image: linear-gradient(left, #eee, black, #eee);
            background-image: -o-linear-gradient(left, #eee, black, #eee);
        }

        .hr {
            margin-top: 10px;
        }

        .mt-2 p-3 bg-white text-black rounded {
            position: fixed;
        }

        .container-fluid mt-3 {
            text-align: center;
        }

        * {
            font-family: 'Dongle', sans-serif;
            font-family: 'Gowun Batang', serif;
            display: 5;
        }

        .com {
            left: 0;
            top: 0;
            width: 1965px;
            position: sticky;
            background-color: white;
            z-index: 3;
        }

        .footer {
            bottom: 0px;
            background: white;
            color: black;
            text-align: center;
            font-size: small;
            margin-top: 170px;
        }

        .footer>p,
        h5 {
            margin: 0px 0px 0px 0px;
            line-height: 120%;
        }

        .footer {

            left: 0px;
            bottom: 0px;
            width: 100%;
            background: rgb(22, 20, 20);
            opacity: 0.95;
            color: rgb(255, 255, 255);
            text-align: center;
            line-height: 0px;
            font-size: small;
        }

        .inline {
            display: inline-block;
        }


        ul>li {
            list-style: none
        }

        a {
            text-decoration: none;
        }

      


        .text {
            width: 96%;
            height: 90px;
            margin: 0 2%;
            background-color: #f7f7f7;
            color: #888;

        }

        textarea {
            width: 100%;
            height: 6.25em;
            resize: none;
            border: 1px solid black
           
        }

    </style>
</head>

<body>
  <jsp:include page="header.jsp"/>
    <br><br>
    <!-- ???????????? -->

        <div class="container mt-3" style="width: 325px; padding-top: 30px;">
                <h3 class="stagger-item" style="text-align: center;">????????????</h3>
            <form action="/myjoin" id="chk" method="post">
            	<div class="mb-3 mt-3 stagger-item" style="height: 38px;">
                    <input type="text" class="form-control " id="id" placeholder="???????????? ???????????????." name="id" style="width: 240px; float: left; margin-bottom: 15px;">
                    <button type="button" class="pic btn btn-dark stagger-item" id="memidoverlap" style="width: 60px; height: 38px; float: right;">??????</button>
                </div>
                <div class="mb-3 mt-3 stagger-item ">
                    <input type="email" class="form-control " id="email" placeholder="???????????? ???????????????." name="email">
                </div>
                <div class="mb-3 mt-3 stagger-item">
                    <input type="text" class="form-control " id="name" placeholder="????????? ???????????????." name="name">
                </div>
                <div class="mb-3 stagger-item ">
                    <input type="password" class="form-control " id="password" placeholder="??????????????? ???????????????." name="password">
                </div>
                <div class="mb-3 stagger-item ">
                    <input type="password" class="form-control " id="pwd2" placeholder="??????????????? ?????? ???????????????." name="pwd2">
                    <font id="chkNotice" size="2"></font>
                </div>

                <div class="mb-3 stagger-item" style="cursor: pointer;" id="jq">
                    <a>???????????? ???</a>
                </div>

                <!-- ???????????? -->
                <div id="jw" style="display: none;" class="checkbox_group">

                 
                        <div class="checkbox_group" style="width: 300px;">

                            <input type="checkbox" id="check_all">
                            <label for="check_all">?????? ??????</label>
                            <ul class="clearfix" style="padding: 0;">
                                <li style="border: 1px solid black; background-color: rgb(235, 235, 235);">????????????, ???????????? ?????? ??? ??????,
                                    ???????????? ????????????(??????), ???????????? ??????
                                    ?????? ??????(??????)??? ?????? ???????????????.</li></ul>

                                <input type="checkbox" id="check_1" name="check_1" class="normal">
                                <label for="check_1">???????????? ??????(??????)</label><br><br>
                                <textarea name="" style="background-color: rgb(235, 235, 235);">???????????? ???????????????.
                    ????????? ????????? ??? ??????(?????? ???????????????)??? ????????? ????????? ???????????????. ??? ????????? ????????? ????????? ???????????? ????????? ???????????? ????????? ???????????? ???????????? ????????? ????????????(?????? ???????????????)??? ?????? ???????????? ????????? ????????? ??????(?????? ????????????) ?????? ??????????????? ????????? ????????????, ????????? ???????????? ????????? ????????? ????????? ????????? ??? ??? ?????? ????????? ????????? ???????????? ????????????.
                           </textarea><br>

                                <input type="checkbox" id="check_2" name="check_2" class="normal">
                                <label for="check_2">???????????? ?????? ??? ??????(??????)</label><br><br>
                                <textarea name=""  style="background-color: rgb(235, 235, 235);">???????????? ???????????????.
                            ????????? ????????? ??? ??????(?????? ???????????????)??? ????????? ????????? ???????????????. ??? ????????? ????????? ????????? ???????????? ????????? ???????????? ????????? ???????????? ???????????? ????????? ????????????(?????? ???????????????)??? ?????? ???????????? ????????? ????????? ??????(?????? ????????????) ?????? ??????????????? ????????? ????????????, ????????? ???????????? ????????? ????????? ????????? ????????? ??? ??? ?????? ????????? ????????? ???????????? ????????????.
                                   </textarea><br>

                                <input type="checkbox" id="check_3" name="check_3" class="normal">
                                <label for="check_3">???????????? ????????????(??????)</label><br><br>
                                <textarea name=""  style="background-color: rgb(235, 235, 235);">???????????? ???????????????.
                            ????????? ????????? ??? ??????(?????? ???????????????)??? ????????? ????????? ???????????????. ??? ????????? ????????? ????????? ???????????? ????????? ???????????? ????????? ???????????? ???????????? ????????? ????????????(?????? ???????????????)??? ?????? ???????????? ????????? ????????? ??????(?????? ????????????) ?????? ??????????????? ????????? ????????????, ????????? ???????????? ????????? ????????? ????????? ????????? ??? ??? ?????? ????????? ????????? ???????????? ????????????.
                                   </textarea><br>

                                <input type="checkbox" id="check_4" name="check_4" class="normal">
                                <label for="check_1">???????????? ?????? ??????(??????)</label>
                        </div>
                </div>

                <button type="submit" id="dojoin" class="pic btn btn-dark stagger-item" style=" width: 100%;">????????????</button>
                
            </form>
    </div>
    <!-- footer bar -->
<jsp:include page="footer.jsp"/>

</body>
    <script>
    /* ???????????? ?????? ?????? ??? ????????? ???????????? */
    $(function() {
    	let ok = "<c:out value= '${ok}'/>";
    console.log(ok);
    if(ok=="false") {
    	alert("???????????? ???????????????.");
    }	else {

    }
    });
        $(function () {
            $('#chk').submit(function () {
                var id = +$('#id').val();
                var password1 = $('#password').val();
                var password2 = $('#pwd2').val();
                var email = $('#email').val();
                var name = $('#name').val();
                		if(id=='') {
                			alert("???????????? ???????????????.");
                			return false;
                	}        
                
              	   if (!email) {
                    alert("???????????? ???????????????.");
                    $('#email').focus();
                    return false;
                }  else if (!name) {
                    alert("????????? ???????????????.");
                    $('#name').focus();
                    return false;
                }  else if (!password1) {
                    alert("??????????????? ???????????????.");
                    $('#password').focus();
                    return false;
                }  else if (!password2) {
                    alert("???????????? ????????? ???????????????.");
                    $('#pwd2').focus();
                    return false;
                }  else if (password1 != password2) {
                    alert("??????????????? ????????????.");
                    $('#pwd2').focus();
                    return false;
                }  else if($("#check_all").is(":checked")==true) {
                    return true;
                }  else if($("#check_1" && "#check_2").is(":checked")==true) {
                	return true;
                } else {
                	alert("?????? ????????? ????????????.");
                	return false;
                }
            })
            
            /* ????????????, ???????????? ??????  */
            $('#password').keyup(function () {
                $('#chkNotice').html('');
            });

            $('#pwd2').keyup(function () {


                if ($('#password').val() != $('#pwd2').val()) {
                    $('#chkNotice').html('???????????? ???????????? ??????<br>');
                    $('#chkNotice').attr('color', '#f82a2aa3')
                } else {
                    $('#chkNotice').html('???????????? ?????????<br><br>');
                    $('#chkNotice').attr('color', '#199894b3');
                }
            });
        });

/*         $().ready(function () {
            $("#alertStart").click(function () {
                Swal.fire({
                    icon: 'success',
                    title: 'Alert??? ?????????????????????.', text: '????????? ????????? ???????????? ????????????.'
                });
            });
        }); */
		/* ???????????? ???????????? ?????? */
        $(function () {
            $('#jq').click(function () {
                $('#jw').slideToggle(700);
            })
        })

        // ???????????? ?????? ??????
        $(".checkbox_group").on("click", "#check_all", function () {
            var checked = $(this).is(":checked");

            if (checked) {
                $(this).parents(".checkbox_group").find('input').prop("checked", true);
            } else {
                $(this).parents(".checkbox_group").find('input').prop("checked", false);
            }
        });

        // ???????????? ?????? ??????
        $(".checkbox_group").on("click", ".normal", function () {
            var is_checked = true;

            $(".checkbox_group .normal").each(function () {
                is_checked = is_checked && $(this).is(":checked");
            });

            $("#check_all").prop("checked", is_checked);
        });
        
        /* ????????? ???????????? ?????? */
        $(function () {
        	$("#memidoverlap").click(function() {
        		let id = +$('#id').val();      		
        		$.ajax({
        			type:"post",
        			dataType:"text",
        			async:false,
        			url:"http://localhost:8090/memberoverlap",
        			data:{id:$('#id').val()},
        			success: function(data, textStatus) {
        				if(data=='true') {
        					alert("????????? ??????????????????."); 
        				}else {
        					alert("?????? ????????? ??????????????????."); 
        				}
        			}
        		});        		
        	});
        })

    </script>

</body>

</html>