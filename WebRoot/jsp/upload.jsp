<%--    
 文件名：upload.jsp    
 作  者：王伟    
--%>    
<%@ page contentType="text/html; charset=gb2312" language="java"     
import="java.util.*,upload.*,com.jspsmart.upload.*,org.hibernate.*,org.hibernate.cfg.Configuration" errorPage="" %>    
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>    

<head>    
<title>文件上传处理页面</title>    
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">    
</head>    
    
<body>    
<%    
 // 新建一个SmartUpload对象    
 SmartUpload su = new SmartUpload();    
 // 上传初始化    
 su.initialize(pageContext);    
 // 设定上传限制    
 // 1.限制每个上传文件的最大长度。    
 // su.setMaxFileSize(10000);    
 // 2.限制总上传数据的长度。    
 // su.setTotalMaxFileSize(20000);    
 // 3.设定允许上传的文件（通过扩展名限制）,仅允许doc,txt文件。    
 // su.setAllowedFilesList("doc,txt");    
 // 4.设定禁止上传的文件（通过扩展名限制）,禁止上传带有exe,bat,jsp,htm,html扩展名的文件和没有扩展名的文件。    
 // su.setDeniedFilesList("exe,bat,jsp,htm,html,,");    
 // 上传文件    
 su.upload();    
 // 将上传文件全部保存到指定目录    
 int count = su.save("D:/workspace/WebTutor/file/download");  
 out.println("<br>");  
 out.println(count+"个文件上传成功！<br>");    
     
  
 // 利用Request对象获取参数之值    

 //+"<BR><BR>");    
    
 // 逐一提取上传文件信息，同时可保存文件。    
 for (int i=0;i<su.getFiles().getCount();i++)    
 { 
  com.jspsmart.upload.File file = su.getFiles().getFile(i); 
  Integer j=i+1;
  String name="text"+j.toString();
  
  // 若文件不存在则继续    
  if (file.isMissing()) continue;    
    
  // 显示当前文件信息    
  out.println("<TABLE BORDER=0 bgcolor= #eaeaea width=440>");    
  out.println("<TR><TD>文件长度（Size）</TD><TD>" +     
  file.getSize()/1024 + "KB</TD></TR>");    
  out.println("<TR><TD>文件名（FileName）</TD><TD>"     
  + file.getFileName() + "</TD></TR>");    
  out.println("</TABLE><BR>");    
  Configuration conf=new Configuration().configure();
		SessionFactory sf=conf.buildSessionFactory();
		Session sess=sf.openSession();
		Transaction tx=sess.beginTransaction();   
		try{    
    upload upload=new upload(file.getFileName(),su.getRequest().getParameter(name));
    sess.save(upload);
    tx.commit();
    }catch(Exception e){}
    sess.close();  
  // 将文件另存    
  // file.saveAs("/upload/" + myFile.getFileName());    
  // 另存到以WEB应用程序的根目录为文件根目录的目录下    
  // file.saveAs("/upload/" + myFile.getFileName(),su.SAVE_VIRTUAL();    
  // 另存到操作系统的根目录为文件根目录的目录下    
  // file.saveAs("c:\\temp\\" + myFile.getFileName(),su.SAVE_PHYSICAL();    
    
 }  
 

   
%>    
</body>    
</html>     
