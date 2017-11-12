package bean;
import java.io.*;
public class opfile {
	public BufferedReader bufread;
    public BufferedWriter bufwriter;
    File writefile;
    String filepath,filecontent;
    String readStr="";
    public String commonpath="D:/workspace/WebTutor/file/";
     int b;
     char read;
    public String readfile(String path) //���ı��ļ��ж�ȡ���� 
    {
     try
     {
     filepath=path;                      //�õ��ı��ļ���·��
     File file=new File(filepath);
     FileReader fileread=new FileReader(file);
     bufread=new BufferedReader(fileread);
     while((b=bufread.read())!=-1)
     {
       read=(char)b;
       readStr=readStr+read;
     }
     }catch(Exception d){System.out.println(d.getMessage());}
     return readStr;    //���ش��ı��ļ��ж�ȡ����
    }
                     //���ı��ļ���д������
    public void writefile(String path,String content,boolean append)     
    {
       
     try
     {
      boolean addStr=append; //ͨ������������ж��Ƿ����ı��ļ���׷������
      filepath=path;       //�õ��ı��ļ���·��
      filecontent=content; //��Ҫд�������
      writefile=new File(filepath);
      if(writefile.exists()==false)    //����ı��ļ��������򴴽��� 
      {
          writefile.createNewFile();    
          writefile=new File(filepath); //����ʵ����
      }
      FileWriter filewriter=new FileWriter(writefile,addStr);
      bufwriter=new BufferedWriter(filewriter);
      filewriter.write(filecontent);
      filewriter.flush();
     }catch(Exception d){System.out.println(d.getMessage());}
    }
    public String convertStr(String string){
    	if(string==null){
    	       string="";
    	}else
    	  {
    	        try{
    	             string=string.replaceAll("<","&It;");
    	             string=string.replaceAll(">","&gt;");
    	             string=string.replaceAll("","&nbsp;");
    	             string=string.replaceAll("\r\n","<br>");
    	          }catch(Exception e){
    	                     e.printStackTrace(System.err);
    	                         }
    	              }
    	return string;
    	} 
     
    public  void   delete(String path)   
	  {   
	    
	  Runtime   rt   =   Runtime.getRuntime();   
	  try   {   
	    
	  rt.exec("cmd   /d   del   "+path);   
	    
	  }   catch   (IOException   e)   {   
	  e.printStackTrace();   
	  }   
	  }   
    public  String toUtf8String(String s) {    
    	 StringBuffer sb = new StringBuffer();    
    	 for (int i=0;i<s.length();i++) {    
    	     char c = s.charAt(i);    
    	     if (c >= 0 && c <= 255) {    
    	  sb.append(c);    
    	     } else {    
    	  byte[] b;    
    	  try {    
    	      b = Character.toString(c).getBytes("utf-8");    
    	  } catch (Exception ex) {    
    	      System.out.println(ex);    
    	      b = new byte[0];    
    	  }    
    	  for (int j = 0; j < b.length; j++) {    
    	      int k = b[j];    
    	      if (k < 0) k += 256;    
    	      sb.append("%" + Integer.toHexString(k).    
    	      toUpperCase());    
    	  }    
    	     }    
    	 }    
    	 return sb.toString();    
    	    }     

}
