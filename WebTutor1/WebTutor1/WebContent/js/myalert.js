function gourl(e){
        switch(e){
            case 1:
                window.open("../150jjw.jsp","_self");
                break;
            case 2:
                 window.opener = null;
                 window.open("","_self");    //����IE7�б����
                 window.close();
                break;
            case 3:
                window.open("../jsp/registersucc.jsp","_self");
                break;
            default:
                break;
        }
    }

 function showalert1(){
        var Br = new innerMessageBox();
        Br.ShowModal("�ύ�û�ע����Ϣ", "���Ĳ����Ѿ��ɹ���ɣ�лл��", 320, 120, "gourl($)", "��¼");
    }

function showalert2(){
        var Br = new innerMessageBox();
        Br.ShowModal("Ĭ��������ť��ʾ��", "��ȷ��Ҫɾ��������?", 320, 120, "gourl($)");
    }

function innerMessageBox(){
        var BackObject, FormObject;

        //    ���ҳ�����Ƿ���ڸÿؼ�.
function checkIMBObject(){
            if (document.getElementById("imb_Background")==null){
                document.body.innerHTML += "<iframe id=\"imb_Background\" src=\"about:blank\" style=\"position:absolute;left:0;top:0;width:0px;height:0px;visibility:hidden;\" frameborder=\"0\"></iframe>";
                window.imb_Background.document.open();
                window.imb_Background.document.write("<html><body bgcolor=red>&nbsp;sdfasdfasdf</body></html>");
                window.imb_Background.document.close();
            }
            if (document.getElementById("imb_FormModal")==null){
                document.body.innerHTML += "<iframe id=\"imb_FormModal\" src=\"about:blank\" style=\"position:absolute;left:0;top:0;width:0px;height:0px;visibility:hidden;border-bottom:2px solid #999999;border-right:2px solid #999999;border-top:1px solid #F8F6C1;border-left:1px solid #F8F6C1;\" frameborder=\"0\"></iframe>";
                window.imb_FormModal.document.open();
                window.imb_FormModal.document.write("<!DOCTYPE HTML PUBLIC '-//w3c//dtd html 4.0 transitional//en'>");
                window.imb_FormModal.document.write("<meta http-equiv='Content-Type' content='text/html; charset=GBK'>");
                window.imb_FormModal.document.write("<html><head><style><!--");
                window.imb_FormModal.document.write("td{font-size:12px;");
                window.imb_FormModal.document.write("//--></style></head><body scroll=no leftmargin=0 topmargin=0>");
                window.imb_FormModal.document.write("<table width=100% height=100% bgcolor=\"#eeeeee\"><tr><td  align=left bgcolor=#3A80F3><div id=\"imb_Title\" style=\"padding-left:3px;padding-right:3px;color:white;font-family:verdana;\">");
                window.imb_FormModal.document.write("</div></td></tr><tr><td align=left><div id=\"imb_Content\" style=\"padding:7px;\">");
                window.imb_FormModal.document.write("</div></td></tr><tr><td id=\"imb_Body\" align=center>");
                window.imb_FormModal.document.write("</td></tr></table>");
                window.imb_FormModal.document.write("</body></html>");
                window.imb_FormModal.document.close();
            }
        }

        //    ��ʾ�Ի���ؼ�.
        this.ShowModal = function(iCaption, iMessage, iWidth, iHeight, iClickFunc, iOther){
            var smWidth = 420, smHeight = 180, smCaption = "Ĭ�϶Ի���", smMessage="��ȷ��ִ�����������?", smFunc, smObject, smAlpha, smInterval;
            if (arguments.length > 4 ){
                smWidth = iWidth;
                smHeight = iHeight;
                smCaption = iCaption;
                smMessage = iMessage;
                smFunc = iClickFunc;
            }
            //    �����Ľ���.
            function checkIMBAlpha(){
                smObject.style.filter = "alpha(opacity="+smAlpha+");";
                smAlpha += 10;
                if (smAlpha>80){
                    clearInterval(smInterval);
                }
            }
            checkIMBObject();
            this.BackObject = document.getElementById("imb_Background");
            this.FormObject = document.getElementById("imb_FormModal");
            smObject = this.BackObject;
            smAlpha = 0;
            this.BackObject.style.left = 0;
            this.BackObject.style.top = 0;
            this.BackObject.style.width = document.body.scrollWidth;
            this.BackObject.style.height = document.body.scrollHeight;
            this.BackObject.style.visibility = "visible";
            smInterval = window.setInterval(checkIMBAlpha, 5);

            this.FormObject.style.left = document.body.clientWidth/2 - smWidth/2;
            this.FormObject.style.top = document.body.clientHeight/2 - smHeight/2;
            this.FormObject.style.width = smWidth;
            this.FormObject.style.height = smHeight;
            this.FormObject.style.visibility = "visible";
            window.imb_FormModal.document.getElementById("imb_Title").innerHTML = "<b>" + smCaption + "</b>" + " -- ������ʾ";
            window.imb_FormModal.document.getElementById("imb_Content").innerHTML = smMessage;
            if (iOther==null || iOther==""){
                window.imb_FormModal.document.getElementById("imb_Body").innerHTML = "<input type=hidden id=imb_Other name=imb_Other shortKey=\"O\"> &nbsp; <input type=submit id=imb_Ok name=imb_Ok value=\"��ҳ\" shortKey=\"T\"> &nbsp; <input type=button id=imb_Cancel name=imb_Cancel value=\"�뿪\" shortKey=\"C\">";
            }else{
                window.imb_FormModal.document.getElementById("imb_Body").innerHTML = "<input type=button id=imb_Other name=imb_Other value="+iOther+" shortKey=\"O\"> &nbsp; <input type=submit id=imb_Ok name=imb_Ok value=\"��ҳ\" shortKey=\"T\"> &nbsp; <input type=button id=imb_Cancel name=imb_Cancel value=\"�뿪\" shortKey=\"C\">";
            }
            document.body.disabled = true;
            window.imb_FormModal.document.getElementById("imb_Ok").onclick= function(){
                parent.document.body.disabled = false;
                if (smFunc!=null && smFunc!=""){
                    eval("parent." + smFunc.replace("$","1"));
                }
                parent.document.getElementById("imb_Background").style.visibility = "hidden";
                parent.document.getElementById("imb_FormModal").style.visibility = "hidden";
            }
            window.imb_FormModal.document.getElementById("imb_Cancel").onclick= function(){
                if (smFunc!=null && smFunc!=""){
                    eval("parent." + smFunc.replace("$","2"));
                }
                parent.document.body.disabled = false;
                parent.document.getElementById("imb_Background").style.visibility = "hidden";
                parent.document.getElementById("imb_FormModal").style.visibility = "hidden";
            }
            window.imb_FormModal.document.getElementById("imb_Other").onclick= function(){
                if (smFunc!=null && smFunc!=""){
                    eval("parent." + smFunc.replace("$","3"));
                }
                parent.document.body.disabled = false;
                parent.document.getElementById("imb_Background").style.visibility = "hidden";
                parent.document.getElementById("imb_FormModal").style.visibility = "hidden";
            }
        }
    }