<%@ page contentType="text/html;charset=gb2312"     
import="com.jspsmart.upload.*,java.net.*,bean.*" %>
<%  
   out.clear();
   out = pageContext.pushBody();
   java.lang.String url;
   url=URLDecoder.decode(request.getParameter("url"),"utf-8");  
  
   // �½�һ��SmartUpload����    
   SmartUpload su = new SmartUpload();    
  // ��ʼ��    
   su.initialize(pageContext);    
  // �趨contentDispositionΪnull�Խ�ֹ������Զ����ļ���    
  //��֤������Ӻ��������ļ��������趨�������ص��ļ���չ��Ϊ    
  //docʱ����������Զ���word��������չ��Ϊpdfʱ��    
  //���������acrobat�򿪡�    
 su.setContentDisposition(null);    
  // �����ļ�    
   su.downloadFile(url); 
  
%>     
