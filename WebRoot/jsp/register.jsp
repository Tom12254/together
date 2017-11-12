<%@ page  language="java" import="java.util.*,org.hibernate.*,userinf0.*,org.hibernate.cfg.Configuration" pageEncoding="GBK"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<HTML>
<HEAD>
<TITLE>150分家教网--武汉站</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META http-equiv=Expires content=0>
<META http-equiv=Cache-Control content=no-cache>
<META http-equiv=Pragma content=no-cache>
<LINK media=all href="../150jjw/sso.css" type=text/css rel=stylesheet>
<SCRIPT scr="../js/check.js" type=text/javascript></SCRIPT>

<META content="MSHTML 6.00.5730.13" name=GENERATOR>


</HEAD>

<BODY bgColor=#ffffff topMargin=5  marginheight="5" onLoad="chk_init()">
<CENTER><!--导航 begin-->
<SCRIPT language=javascript src="../js/header_sso.js" 
type=text/javascript></SCRIPT>
<SCRIPT language=javascript src="../js/chk_register.js" 
type=text/javascript></SCRIPT>
<SCRIPT language=javascript type=text/javascript>
header();

</SCRIPT>

<TABLE height=0 cellSpacing=0 cellPadding=0 border=0>
  <TBODY>
  <TR>
    <TD></TD></TR></TBODY></TABLE>
<TABLE height=border=0 cellSpacing=0 cellPadding=0 width=750>
  <TBODY>
  <TR>
    <TD class=bg02 width=1></TD>
    <TD class=bg01 width=8></TD>
    <TD align=middle width=732>
      <TABLE height=40 cellSpacing=2 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>     
          <TD class=f14>选择登录名:</TD>
          <TD class=f14 align=right><B><SPAN class=txt00>注册步骤：<SPAN 
            class=vip>1.选择登录名</SPAN> - 2.注册成功</SPAN></B></TD>
         </TR>
         </TBODY>
       </TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD width=30></TD>     
          <TD align=left>请用<FONT color=red><B>英文</B></FONT>和<FONT 
            color=red><B>简体中文</B></FONT>填写（红色为必填内容）</TD>
        </TR>
        </TBODY>
        </TABLE>
            
        <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        
        <FORM name=memberform onSubmit="return fm_chk(this);" action="../servlet/register.html" method=post>         
       <% 
     java.lang.String username;  
     username = request.getParameter("username");
     request.setAttribute("username",username);
     if(username!=null)
     {
     Configuration conf=new Configuration().configure();
	 SessionFactory sf=conf.buildSessionFactory();
	 Session sess=sf.openSession();
	 Transaction tx=sess.beginTransaction();
	 userinf0DAO userdao=new userinf0DAO();
  
	 userinf0 u=new userinf0();
	 u=null;
	 u=userdao.findById(username); 
	 if(u!=null){
	 out.println("<script language='Javascript'><!--");
     out.println("alert('不好意思，这个用户名被占用，请重新选择');");
     out.println(" --></script>");

     }
     
	 }    

  %>     
        <TBODY>
        <TR>
          <TD>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD 
                style="PADDING-RIGHT: 2px; PADDING-LEFT: 2px; PADDING-BOTTOM: 2px; PADDING-TOP: 2px" 
                vAlign=top align=right><!--登录名 beign-->
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                      <TR>
                      <TD style="PADDING-TOP: 10px"  align="center" 
                        width=118><SPAN class=vip>*</SPAN>登录名：</TD>
                      <TD width=327><INPUT 
                        alt=登录名:4-16/全数字/无内容/下划线/有全角/有空格/有大写 maxLength=16 
                        name=username  tabIndex=1 value="<%=username %>"> <LABEL id=chk_username></LABEL>&nbsp;&nbsp;
                       </TD>
                    </TR>
					<tr><TD style="PADDING-TOP: 10px"  align="center" 
                        width=118></TD>
  
                   <TD width=327>
					  <input class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
onmouseout="this.className='btn3_mouseout'"
onmousedown="this.className='btn3_mousedown'"
onmouseup="this.className='btn3_mouseup'"
 id=check style="MARGIN-TOP: 8px; MARGIN-RIGHT: 15px" type=button  onclick="checkname()" value="检测是否被占用" name=check tabIndex=2 >
					  </TD>
					  </tr>
						 </TBODY>
					</TABLE>             
                <TD  style="PADDING-RIGHT: 2px; PADDING-LEFT: 2px; PADDING-BOTTOM: 2px; PADDING-TOP: 2px" width=272 bgColor=#f7f7f7>
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD class=lr 
                        style="PADDING-LEFT: 5px; PADDING-TOP: 10px">登录名：4-16个字符(包括4、16)或2-8个汉字， 
                        请用英文小写、汉字、数字、下划线，不能全部是数字，下划线不能在末尾。</TD></TR>
                    <TR>
                      <TD class=lr id=mailfm2 
                      style="DISPLAY: none; PADDING-LEFT: 5px; PADDING-TOP: 10px">邮箱名：4-16个字符(包括4、16)， 
                        请用英文小写、数字、下划线，不能全部是数字。</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><!--用户名、邮箱名 end--><!--获增邮箱 beign-->
           
            <TABLE height=border=0 cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                <TD height=2></TD></TR>
              <TR>
                <TD bgColor=#dddddd height=1></TD></TR>
              <TR>
                <TD height=2></TD></TR></TBODY></TABLE><!--密码 beign-->
            <TABLE cellSpacing=0 cellPadding=0 width="100%" bgColor=#ffffff 
            border=0>
              <TBODY>
              <TR>
                <TD width=620>
                  <TABLE height=border=0 cellSpacing=0 cellPadding=0 
                  width="100%">
                    <TBODY>
                    <TR>
                      <TD></TD></TR>
                    <TR>
                      <TD 
                        style="PADDING-LEFT: 5px; PADDING-TOP: 5px">&nbsp;&nbsp;登录密码请在(6-16个字符，区分英文大小写)</TD></TR></TBODY></TABLE>
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD style="PADDING-TOP: 10px" align=right 
                        width=130><SPAN class=vip>*</SPAN>输入登录密码：</TD>
                      <TD style="PADDING-TOP: 5px" width=330><INPUT 
                        class=input01 
                        onblur="ShowStrong('pswstrong',checkStrong(this.value),1);" 
                        tabIndex=3 type=password 
                        alt=密码:6-16/有空格/无内容/下划线/有全角 maxLength=16 
                        name=password><LABEL id=chk_password></LABEL></TD></TR>
                    <TR height=6>
                      <TD></TD>
                      <TD></TD></TR>
                    <TR>
                      <TD bgColor=#eeeeee colSpan=3 height=1></TD></TR>
                    <TR>
                      <TD colSpan=3 height=5></TD></TR>
                    <TR>
                      <TD class=txt01>密码强弱提示：</TD>
                      <TD id=pswstrong align=left></TD>
                      <TD></TD></TR>
                    <TR>
                      <TD bgColor=#eeeeee colSpan=3 height=1></TD></TR>
                    <TR>
                      <TD colSpan=3 height=5></TD></TR>
                    <TR>
                      <TD style="PADDING-TOP: 5px" align=right width=130><SPAN 
                        class=vip>*</SPAN>再次输入密码：</TD>
                      <TD><INPUT class=input01 tabIndex=3 type=password 
                        alt=password:确认密码/无内容 maxLength=32 name=password2 tabIndex=4><LABEL 
                        id=chk_password2></LABEL></TD></TR>
                    <TR>
                      <TD height=10></TD>
                      <TD></TD></TR></TBODY></TABLE></TD>
                <TD 
                style="PADDING-RIGHT: 2px; PADDING-LEFT: 2px; PADDING-BOTTOM: 2px; PADDING-TOP: 2px" 
                align=middle width=272 bgColor=#f7f7f7>
                  <TABLE cellSpacing=0 cellPadding=0 width=272 border=0>
                    <TBODY>
                    <TR>
                      <TD height=5></TD></TR>
                    <TR>
                      <TD class=lr 
                      style="PADDING-RIGHT: 10px; PADDING-LEFT: 5px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px">密码为6—16位（包括6、16），限用英文、数字、半角“.”、“-”、“?”和下划线，区分大小写。</TD></TR>
                    <TR>
                      <TD height=5></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><!--密码 end-->
            <TABLE height=border=0 cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                <TD height=2></TD></TR>
              <TR>
                <TD bgColor=#dddddd height=1></TD></TR>
              <TR>
                <TD height=2></TD></TR></TBODY></TABLE>
            <TABLE cellSpacing=0 cellPadding=0 border=0>
              <TBODY>
              <TR>
                <TD width=620>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                      <TR>
					  <td width="40"></td>
                      <TD style="PADDING-TOP: 5px"><SPAN 
                        class=vip>*</SPAN>输入联系方式（联系必用）:</TD>
                      </TR></TBODY></TABLE>
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
				  <tr >
				  <td height="25" width="50"></td>
				  <TD style="PADDING-TOP: 5px" align=right width=130><SPAN 
                        class=vip>*</SPAN>手机号码：</TD>
                      <TD><INPUT class=input01 tabIndex=5  
                        alt=手机号码:手机号码/无内容 maxLength=11 name=phonenum><LABEL 
                        id=chk_phonenum></LABEL></TD>
				  </tr>
				  <tr>
				  <td height="25" width="50"></td>
				  <TD style="PADDING-TOP: 5px" align=right width=130>固定电话：</TD>
                      <TD><INPUT class=input01 tabIndex=6  
                        alt=固定电话:固定电话 maxLength=11 name=homenum><LABEL 
                        id=chk_homenum></LABEL></TD>
				  </tr>
				  <tr>
				  <td height="25" width="50"></td>
				  <TD style="PADDING-TOP: 5px" align=right width=130>QQ号码：</TD>
                      <TD><INPUT class=input01 tabIndex=7 
                        alt=QQ号码:QQ号码 maxLength=12 name=qqnum><LABEL 
                        id=chk_qqnum></LABEL></TD>
				  </tr>
				  <tr>
				  <td height="25" width="50"></td>
				  <TD style="PADDING-TOP: 5px" align=right width=130>MSN号码：</TD>
                      <TD><INPUT class=input01 tabIndex=8  
                        alt=MSN号码:QQ号码 maxLength=12 name=msnnum><LABEL 
                        id=chk_msnnum></LABEL></TD>
				  </tr>
                   </TABLE>
				   </TD>
                <TD 
                style="PADDING-RIGHT: 2px; PADDING-LEFT: 2px; PADDING-BOTTOM: 2px; PADDING-TOP: 2px" 
                align=middle width=272 bgColor=#f7f7f7>
                  <TABLE cellSpacing=0 cellPadding=0 width=272 border=0>
                    <TBODY>
                    <TR>
                      <TD height=5></TD></TR>
                    <TR>
                      <TD class=lr 
                      style="PADDING-RIGHT: 10px; PADDING-LEFT: 5px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px">查询问题：4-32个字母（支持大小写）、数字、空格（空格不能在首尾）或2-16个汉字（包括16个） 
                        <BR>查询答案：6个字母、数字、空格（空格不能在首尾）或3个汉字以上（包括6个）。<BR></TD></TR>
                    <TR>
                      <TD height=5></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><!--提示问题 end-->
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD height=2></TD></TR>
              <TR>
                <TD bgColor=#dddddd height=1></TD></TR>
              <TR>
                <TD height=2></TD></TR></TBODY></TABLE><!--个人信息 beign-->
            <TABLE cellSpacing=0 cellPadding=0 border=0>
              <TBODY>
              <TR>
                <TD width=620>
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD colSpan=2 height=5></TD></TR>
                    <TR>
                      <TD style="PADDING-TOP: 5px" align=right 
                      width=130><SPAN class=vip>*</SPAN>安全邮箱：</TD>
                      <TD width=330>
                        <TABLE cellSpacing=0 cellPadding=0 border=0>
                          <TBODY>
                          <TR>
                            <TD><INPUT class=input02 tabIndex=9 
                              alt=安全邮箱名:有空格/有全角/有汉字/无内容 maxLength=80 
                              name=safemail1>&nbsp;@&nbsp;<INPUT class=input02 
                              tabIndex=10 alt=安全邮箱域:有空格/有全角/有汉字/邮箱域/无内容
                              maxLength=80 name=safemail2></TD>
                            <TD></TD>
                            <TD></TD></TR></TBODY></TABLE></TD></TR>
                    <TR>
                      <TD height=5></TD>
                      <TD><LABEL id=chk_safemail1></LABEL>&nbsp;&nbsp;<LABEL 
                        id=chk_safemail2></LABEL></TD></TR></TBODY></TABLE></TD>
                <TD 
                style="PADDING-RIGHT: 2px; PADDING-LEFT: 2px; PADDING-BOTTOM: 2px; PADDING-TOP: 2px" 
                align=middle width=272 bgColor=#f7f7f7>
                  <TABLE cellSpacing=0 cellPadding=0 width=272 border=0>
                    <TBODY>
                    <TR>
                      <TD class=lr 
                        style="PADDING-LEFT: 5px; PADDING-TOP: 10px">忘记密码时，可凭安全邮箱索取密码。</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><!--个人信息 end-->
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD height=2></TD></TR>
              <TR>
                <TD bgColor=#dddddd height=1></TD></TR>
              <TR>
                <TD height=2></TD></TR></TBODY></TABLE><!--填写安全信息头 beign-->
            <TABLE cellSpacing=0 cellPadding=0 bgColor=#fff7e8 border=0>
              <TBODY>
              <TR>
                <TD 
                style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px" 
                width=272></TD></TR></TBODY></TABLE>
            <TABLE id=safe_data height=2 cellSpacing=0 cellPadding=0 
            width="100%" bgColor=#fff7e8 border=0 name="speid">
              <TBODY>
              
              <TR>
                <TD style="PADDING-TOP: 5px" vAlign=center align=right width=130 
                height=25><SPAN class=vip>*</SPAN>输入身份证号码：</TD>
                <TD vAlign=center width=330><input alt=证件号码:idcard maxlength=18 
                  name=idnum tabIndex=11>
                <LABEL id=chk_idnum></LABEL></TD>
                <TD class=lr 
                style="PADDING-RIGHT: 2px; PADDING-LEFT: 2px; PADDING-BOTTOM: 2px; PADDING-TOP: 2px" 
                align=left width=272 bgColor=#fff7e8></TD></TR>
              <TR>
                <TD style="PADDING-TOP: 5px" vAlign=center align=right width=130 
                height=25><SPAN class=vip>*</SPAN>确认身份证号码：</TD>
                <TD vAlign=center width=330><input alt=idnum:无内容/确认证件号码
                  maxlength=18 name=checkidnum tabIndex=12 onpaste="return false;" >
                  <LABEL 
                  id=chk_checkidnum></LABEL></TD>
                <TD class=lr 
                style="PADDING-RIGHT: 2px; PADDING-LEFT: 2px; PADDING-BOTTOM: 2px; PADDING-TOP: 2px" 
                align=left width=272 bgColor=#fff7e8></TD></TR></TBODY></TABLE>
            <!--安全信息内容 end-->
            
            <TABLE cellSpacing=0 cellPadding=0 border=0>
              <TBODY>
              <TR>
                <TD width=620><span style="PADDING-LEFT: 15px; PADDING-TOP: 5px"><FONT color=red>*</FONT>
                    <INPUT type=checkbox 
                        alt=服务条款:条款 CHECKED name=after tabIndex=13>
                    我已经看过并同意《<A 
                        href="https://login.sina.com.cn/regagreement.html" 
                        target=_blank>150jjw网络服务协议</A>》
                    <LABEL 
                        id=chk_after></LABEL>
                    <A 
                        href="https://login.sina.com.cn/regagreement.html" 
                        target=_blank>(见右边)</A></span></TD>
                <TD 
                style="PADDING-RIGHT: 2px; PADDING-LEFT: 2px; PADDING-BOTTOM: 2px; PADDING-TOP: 2px" 
                align=middle width=272 bgColor=#f7f7f7>
                  <TABLE cellSpacing=0 cellPadding=0 width=272 border=0>
                    <TBODY>
                    <TR>
                      <TD height=5></TD></TR>
                    <TR>
                      <TD class=lr 
                        style="PADDING-LEFT: 5px; PADDING-TOP: 10px">请点击后输入验证码,<BR>此步骤有助于防止恶意自动注册行为的发生。</TD></TR></TBODY></TABLE>
                        </TD>
                        </TR>
                        </TBODY>
                   </TABLE>
             <!--提交 begin-->
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD colSpan=2 >
                  <TABLE height=50 cellSpacing=0 cellPadding=0 width="100%" 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD align="center"><INPUT class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
onmouseout="this.className='btn3_mouseout'"
onmousedown="this.className='btn3_mousedown'"
onmouseup="this.className='btn3_mouseup'"
 tabIndex=20 type=submit value=" 提　交　表　单 " name=Submit> 
                      </TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><!--提交 end--></TD></TR></TBODY></TABLE></TD>
    <TD class=bg01 width=8></TD>
    <TD class=bg02 width=1></TD></TR></TBODY></TABLE>


<!--标准尾 begin-->
<SCRIPT language=javascript src="../js/footer_sso.js" type=text/javascript></SCRIPT>
<!--标准尾 end-->
</CENTER>
</BODY>
</HTML>
