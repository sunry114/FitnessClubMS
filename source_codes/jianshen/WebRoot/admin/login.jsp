<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
  <%@ taglib prefix="s" uri="/struts-tags" %>
    <% String path=request.getContextPath(); String
      basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; %>

      <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
      <html>

      <HEAD>
        <TITLE>
        </TITLE>

      <style type="text/css">
        body {
          height: 100%;
          margin: 0;
          font-family: Arial, sans-serif;
          background-image: url("../images/login_bg.jpg");
          background-repeat: no-repeat; 
          background-size: cover;
          background-position: center;
          -webkit-background-size: cover;
          -moz-background-size: cover;
          -o-background-size: cover;
          background-size: cover;
        }
        .container {
          display: flex;
          flex-direction: column;
          justify-content: center;
          align-items: center;
          height: 100%;
        }
        .center-box {
          background-color: rgba(255, 255, 255, 0.8); /* 半透明白色背景 */
          padding: 20px;
          border-radius: 10px; /* 圆角 */
          box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
        .login-form {
          background-color: rgba(255, 255, 255, 0.8); /* 半透明白色背景 */
          padding: 20px;
          border-radius: 10px; /* 圆角 */
          box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
        .main-title {
            text-align: center;
            margin-bottom: 20px;
          }
          .login-form input[type="text"],
          .login-form input[type="password"] {
          width: 60%;
          padding: 10px;
          margin: 10px 0;
          border: 1px solid #ccc;
          border-radius: 5px;
          }
          #button {
            width: 50%;
            color: #fff;
            padding: 10px;
            background-color: #2875d3;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: transform 0.3s ease;
          }
          #button:hover {
            transform:scale(1.1);
            background-color: #516ba6;
          }
          .subheader {
            text-align: center;
          }
      </style>
      <script language="javascript">
          function check() {
            if (document.ThisForm.username.value == "") {
              alert("請輸入管理員用戶名");
              document.ThisForm.username.focus();
              return false;
            }
            if (document.ThisForm.password.value == "") {
              alert("請輸入密碼");
              document.ThisForm.password.focus();
              return false;
            }
          }

          function aa() {
              <s:if test="#request.error==null">
              </s:if>
              <s:else>
                alert("用戶名或密碼錯誤");
              </s:else>
          }
          aa();
      </script>
        <META content="MSHTML 6.00.2800.1522" name=GENERATOR>
      </HEAD>

      <body>
        <DIV class="container">
          <DIV class="center-box">
            <DIV class="main-header">
              <h2>澳科大健身俱樂部管理系統</h2>
            </DIV>
            <form class="login-form" name=ThisForm action="<%=path %>/adminLogin.action" method="POST" >
              <TABLE style="FONT-SIZE: 12px" cellSpacing=0 cellPadding=0 width="92%"align=center border=0>
                  <TR>
                    <TD height=30 colSpan=2 class="subheader"><h3 class="subheader">用戶登錄 </h3>
                  <TR>
                    <TD width="10%"><img src="<%=path %>/images/User.svg" width="20" height="20"></TD>
                    <TD width="85%" height=30> 用戶名：
                      <input name="userName" type="text" id="userName" width="50">
                    </TD>
                  </TR>
                  <TR>
                    <TD width="10%"><img src="<%=path %>/images/i_open.gif" width="20" height="18"></TD>
                    <TD width="85%" height=30>密&nbsp;&nbsp;&nbsp;碼： 
                      <input name="userPw" type="password" id="userPw" width="50">
                    </TD>
                  </TR>

                  <TR valign="bottom">
                    <TD height=50 colSpan=2 align="center" >
                      <button name="imageField" type="submit" onClick="return check();" id="button">登錄</button>
                    </TD>
                  </TR>
                </TABLE>
            </FORM>
          </DIV>
        </DIV>
      </body>
    </html>