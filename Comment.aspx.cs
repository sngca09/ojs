using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnPost_Click(object sender, EventArgs e)
    {
        String comment = txtMessage.Text;
        String rid=Session["rp_id"].ToString();
        //start sentmental 
          dbclass dbs=new dbclass();
        
          SqlCommand st;
         SqlCommand st1;
         SqlCommand st2;
         SqlCommand st3;
         SqlCommand st4;
        int pcomment=0,ncomment=0;




             String content=comment;
             String ct=content;
           
             st2=new SqlCommand("select * from stopspecial",dbs.con);
             SqlDataReader rs2=st2.ExecuteReader();
             while(rs2.Read())
             {
                 content=content.Replace("\\"+rs2.GetString(1), " ");
             }
             rs2.Close();

             content=content.Replace("\\s+", " ");
             Response.Write(content);
             int value=0;
             score sm=new score();

             int x1=sm.calculate4(content);
             if(x1==-1)
             {
                 int x2=sm.calculate3(content);
                 if(x2==-1)
                 {
                     int x3=sm.calculate2(content);
                     if(x3==-1)
                     {
                         int x4=sm.calculate1(content);
                         value=x4;
                     }
                     else
                     {
                         value=x3;
                     }
                 }
                 else
                 {
                     value=x2;
                 }
             }
             else
             {
                 value=x1;
             }

         Console.Write("value "+value);
         int sval=0;
         if(value==1){
         sval=1;
         }
         else if(value==0){
        sval=0;
        }else
         {
         sval=2;
         }  //end sentmental
         DBConnections db = new DBConnections();
         string email = Session["email"].ToString();
         String s1="insert into reviewer_comments(rp_id,comment,email,srating) values("+rid+",'"+comment+"','"+email+"',"+sval+")";
         db.Insert(s1);
                                                           
    }
}