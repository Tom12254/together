<%@ page  language="java" import="java.util.*,org.hibernate.*,userinf0.*,org.hibernate.cfg.Configuration" pageEncoding="GBK"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<HTML>
<HEAD>
<TITLE>150�ּҽ���--�人վ</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META http-equiv=Expires content=0>
<META http-equiv=Cache-Control content=no-cache>
<META http-equiv=Pragma content=no-cache>
<LINK media=all href="../150jjw/sso.css" type=text/css rel=stylesheet>
<SCRIPT scr="../js/check.js" type=text/javascript></SCRIPT>

<META content="MSHTML 6.00.5730.13" name=GENERATOR>


</HEAD>

<BODY bgColor=#ffffff topMargin=5  marginheight="5" onLoad="chk_init()">
<CENTER><!--���� begin-->
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
          <TD class=f14>ѡ���¼��:</TD>
          <TD class=f14 align=right><B><SPAN class=txt00>ע�Ჽ�裺<SPAN 
            class=vip>1.ѡ���¼��</SPAN> - 2.ע��ɹ�</SPAN></B></TD>
         </TR>
         </TBODY>
       </TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD width=30></TD>     
          <TD align=left>����<FONT color=red><B>Ӣ��</B></FONT>��<FONT 
            color=red><B>��������</B></FONT>��д����ɫΪ�������ݣ�</TD>
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
     out.println("alert('������˼������û�����ռ�ã�������ѡ��');");
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
                vAlign=top align=right><!--��¼�� beign-->
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                      <TR>
                      <TD style="PADDING-TOP: 10px"  align="center" 
                        width=118><SPAN class=vip>*</SPAN>��¼����</TD>
                      <TD width=327><INPUT 
                        alt=��¼��:4-16/ȫ����/������/�»���/��ȫ��/�пո�/�д�д maxLength=16 
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
 id=check style="MARGIN-TOP: 8px; MARGIN-RIGHT: 15px" type=button  onclick="checkname()" value="����Ƿ�ռ��" name=check tabIndex=2 >
					  </TD>
					  </tr>
						 </TBODY>
					</TABLE>             
                <TD  style="PADDING-RIGHT: 2px; PADDING-LEFT: 2px; PADDING-BOTTOM: 2px; PADDING-TOP: 2px" width=272 bgColor=#f7f7f7>
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD class=lr 
                        style="PADDING-LEFT: 5px; PADDING-TOP: 10px">��¼����4-16���ַ�(����4��16)��2-8�����֣� 
                        ����Ӣ��Сд�����֡����֡��»��ߣ�����ȫ�������֣��»��߲�����ĩβ��</TD></TR>
                    <TR>
                      <TD class=lr id=mailfm2 
                      style="DISPLAY: none; PADDING-LEFT: 5px; PADDING-TOP: 10px">��������4-16���ַ�(����4��16)�� 
                        ����Ӣ��Сд�����֡��»��ߣ�����ȫ�������֡�</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><!--�û����������� end--><!--�������� beign-->
           
            <TABLE height=border=0 cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                <TD height=2></TD></TR>
              <TR>
                <TD bgColor=#dddddd height=1></TD></TR>
              <TR>
                <TD height=2></TD></TR></TBODY></TABLE><!--���� beign-->
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
                        style="PADDING-LEFT: 5px; PADDING-TOP: 5px">&nbsp;&nbsp;��¼��������(6-16���ַ�������Ӣ�Ĵ�Сд)</TD></TR></TBODY></TABLE>
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD style="PADDING-TOP: 10px" align=right 
                        width=130><SPAN class=vip>*</SPAN>�����¼���룺</TD>
                      <TD style="PADDING-TOP: 5px" width=330><INPUT 
                        class=input01 
                        onblur="ShowStrong('pswstrong',checkStrong(this.value),1);" 
                        tabIndex=3 type=password 
                        alt=����:6-16/�пո�/������/�»���/��ȫ�� maxLength=16 
                        name=password><LABEL id=chk_password></LABEL></TD></TR>
                    <TR height=6>
                      <TD></TD>
                      <TD></TD></TR>
                    <TR>
                      <TD bgColor=#eeeeee colSpan=3 height=1></TD></TR>
                    <TR>
                      <TD colSpan=3 height=5></TD></TR>
                    <TR>
                      <TD class=txt01>����ǿ����ʾ��</TD>
                      <TD id=pswstrong align=left></TD>
                      <TD></TD></TR>
                    <TR>
                      <TD bgColor=#eeeeee colSpan=3 height=1></TD></TR>
                    <TR>
                      <TD colSpan=3 height=5></TD></TR>
                    <TR>
                      <TD style="PADDING-TOP: 5px" align=right width=130><SPAN 
                        class=vip>*</SPAN>�ٴ��������룺</TD>
                      <TD><INPUT class=input01 tabIndex=3 type=password 
                        alt=password:ȷ������/������ maxLength=32 name=password2 tabIndex=4><LABEL 
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
                      style="PADDING-RIGHT: 10px; PADDING-LEFT: 5px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px">����Ϊ6��16λ������6��16��������Ӣ�ġ����֡���ǡ�.������-������?�����»��ߣ����ִ�Сд��</TD></TR>
                    <TR>
                      <TD height=5></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><!--���� end-->
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
                        class=vip>*</SPAN>������ϵ��ʽ����ϵ���ã�:</TD>
                      </TR></TBODY></TABLE>
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
				  <tr >
				  <td height="25" width="50"></td>
				  <TD style="PADDING-TOP: 5px" align=right width=130><SPAN 
                        class=vip>*</SPAN>�ֻ����룺</TD>
                      <TD><INPUT class=input01 tabIndex=5  
                        alt=�ֻ�����:�ֻ�����/������ maxLength=11 name=phonenum><LABEL 
                        id=chk_phonenum></LABEL></TD>
				  </tr>
				  <tr>
				  <td height="25" width="50"></td>
				  <TD style="PADDING-TOP: 5px" align=right width=130>�̶��绰��</TD>
                      <TD><INPUT class=input01 tabIndex=6  
                        alt=�̶��绰:�̶��绰 maxLength=11 name=homenum><LABEL 
                        id=chk_homenum></LABEL></TD>
				  </tr>
				  <tr>
				  <td height="25" width="50"></td>
				  <TD style="PADDING-TOP: 5px" align=right width=130>QQ���룺</TD>
                      <TD><INPUT class=input01 tabIndex=7 
                        alt=QQ����:QQ���� maxLength=12 name=qqnum><LABEL 
                        id=chk_qqnum></LABEL></TD>
				  </tr>
				  <tr>
				  <td height="25" width="50"></td>
				  <TD style="PADDING-TOP: 5px" align=right width=130>MSN���룺</TD>
                      <TD><INPUT class=input01 tabIndex=8  
                        alt=MSN����:QQ���� maxLength=12 name=msnnum><LABEL 
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
                      style="PADDING-RIGHT: 10px; PADDING-LEFT: 5px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px">��ѯ���⣺4-32����ĸ��֧�ִ�Сд�������֡��ո񣨿ո�������β����2-16�����֣�����16���� 
                        <BR>��ѯ�𰸣�6����ĸ�����֡��ո񣨿ո�������β����3���������ϣ�����6������<BR></TD></TR>
                    <TR>
                      <TD height=5></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><!--��ʾ���� end-->
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD height=2></TD></TR>
              <TR>
                <TD bgColor=#dddddd height=1></TD></TR>
              <TR>
                <TD height=2></TD></TR></TBODY></TABLE><!--������Ϣ beign-->
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
                      width=130><SPAN class=vip>*</SPAN>��ȫ���䣺</TD>
                      <TD width=330>
                        <TABLE cellSpacing=0 cellPadding=0 border=0>
                          <TBODY>
                          <TR>
                            <TD><INPUT class=input02 tabIndex=9 
                              alt=��ȫ������:�пո�/��ȫ��/�к���/������ maxLength=80 
                              name=safemail1>&nbsp;@&nbsp;<INPUT class=input02 
                              tabIndex=10 alt=��ȫ������:�пո�/��ȫ��/�к���/������/������
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
                        style="PADDING-LEFT: 5px; PADDING-TOP: 10px">��������ʱ����ƾ��ȫ������ȡ���롣</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><!--������Ϣ end-->
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD height=2></TD></TR>
              <TR>
                <TD bgColor=#dddddd height=1></TD></TR>
              <TR>
                <TD height=2></TD></TR></TBODY></TABLE><!--��д��ȫ��Ϣͷ beign-->
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
                height=25><SPAN class=vip>*</SPAN>�������֤���룺</TD>
                <TD vAlign=center width=330><input alt=֤������:idcard maxlength=18 
                  name=idnum tabIndex=11>
                <LABEL id=chk_idnum></LABEL></TD>
                <TD class=lr 
                style="PADDING-RIGHT: 2px; PADDING-LEFT: 2px; PADDING-BOTTOM: 2px; PADDING-TOP: 2px" 
                align=left width=272 bgColor=#fff7e8></TD></TR>
              <TR>
                <TD style="PADDING-TOP: 5px" vAlign=center align=right width=130 
                height=25><SPAN class=vip>*</SPAN>ȷ�����֤���룺</TD>
                <TD vAlign=center width=330><input alt=idnum:������/ȷ��֤������
                  maxlength=18 name=checkidnum tabIndex=12 onpaste="return false;" >
                  <LABEL 
                  id=chk_checkidnum></LABEL></TD>
                <TD class=lr 
                style="PADDING-RIGHT: 2px; PADDING-LEFT: 2px; PADDING-BOTTOM: 2px; PADDING-TOP: 2px" 
                align=left width=272 bgColor=#fff7e8></TD></TR></TBODY></TABLE>
            <!--��ȫ��Ϣ���� end-->
            
            <TABLE cellSpacing=0 cellPadding=0 border=0>
              <TBODY>
              <TR>
                <TD width=620><span style="PADDING-LEFT: 15px; PADDING-TOP: 5px"><FONT color=red>*</FONT>
                    <INPUT type=checkbox 
                        alt=��������:���� CHECKED name=after tabIndex=13>
                    ���Ѿ�������ͬ�⡶<A 
                        href="https://login.sina.com.cn/regagreement.html" 
                        target=_blank>150jjw�������Э��</A>��
                    <LABEL 
                        id=chk_after></LABEL>
                    <A 
                        href="https://login.sina.com.cn/regagreement.html" 
                        target=_blank>(���ұ�)</A></span></TD>
                <TD 
                style="PADDING-RIGHT: 2px; PADDING-LEFT: 2px; PADDING-BOTTOM: 2px; PADDING-TOP: 2px" 
                align=middle width=272 bgColor=#f7f7f7>
                  <TABLE cellSpacing=0 cellPadding=0 width=272 border=0>
                    <TBODY>
                    <TR>
                      <TD height=5></TD></TR>
                    <TR>
                      <TD class=lr 
                        style="PADDING-LEFT: 5px; PADDING-TOP: 10px">������������֤��,<BR>�˲��������ڷ�ֹ�����Զ�ע����Ϊ�ķ�����</TD></TR></TBODY></TABLE>
                        </TD>
                        </TR>
                        </TBODY>
                   </TABLE>
             <!--�ύ begin-->
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
 tabIndex=20 type=submit value=" �ᡡ�������� " name=Submit> 
                      </TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><!--�ύ end--></TD></TR></TBODY></TABLE></TD>
    <TD class=bg01 width=8></TD>
    <TD class=bg02 width=1></TD></TR></TBODY></TABLE>


<!--��׼β begin-->
<SCRIPT language=javascript src="../js/footer_sso.js" type=text/javascript></SCRIPT>
<!--��׼β end-->
</CENTER>
</BODY>
</HTML>
