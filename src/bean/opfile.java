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
    public String readfile(String path) //从文本文件中读取内容 
    {
     try
     {
     filepath=path;                      //得到文本文件的路径
     File file=new File(filepath);
     FileReader fileread=new FileReader(file);
     bufread=new BufferedReader(fileread);
     while((b=bufread.read())!=-1)
     {
       read=(char)b;
       readStr=readStr+read;
     }
     }catch(Exception d){System.out.println(d.getMessage());}
     return readStr;    //返回从文本文件中读取内容
    }
                     //向文本文件中写入内容
    public void writefile(String path,String content,boolean append)     
    {
       
     try
     {
      boolean addStr=append; //通过这个对象来判断是否向文本文件中追加内容
      filepath=path;       //得到文本文件的路径
      filecontent=content; //需要写入的内容
      writefile=new File(filepath);
      if(writefile.exists()==false)    //如果文本文件不存在则创建它 
      {
          writefile.createNewFile();    
          writefile=new File(filepath); //重新实例化
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
