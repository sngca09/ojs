using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnOk_Click(object sender, EventArgs e)
    {
                   String un,pw,type,sql;
                   un=txtEmail.Text;
                   pw=txtPassword.Text;
                   type=drpLogin.SelectedValue.ToString();
                   DBConnections db=new DBConnections();
                   if(type.Contains("Author"))
                   {
                      
                       sql="select email from author_register where email='"+un+"' and password='"+pw+"' and status=1";
                      // out.println(sql);
                       db.Select(sql);
                        if(db.rs.Read())
                        {
                       Session["email"]=db.rs.GetString(0);
                       Response.Redirect("Author_Profile.aspx");
                        }
                        else
                        {
                           Response.Write(" <script> alert('Invalid attempt !!Please enter correct email and password   or your reques is not varified by the admin  ...');  </script>");
        
                        }
                       
                   }
                   else if(type.Contains("Reviewer"))
                   {
                       sql="select email from reviewer_register where email='"+un+"' and password='"+pw+"' and status=1";
                       db.Select(sql);
                        if(db.rs.Read())
                        {
                       Session["email"]=db.rs.GetString(0);
                       Response.Redirect("Reviewer_Profile.aspx");
                        
                        }
                        else
                        {
                         Response.Write(" <script> alert('Invalid attempt !!Please enter correct email and password   or your reques is not varified by the admin  ...');  </script>");
        
                        }
                      
                   }
                   else if(type.Contains("User"))
                   {
                         sql="select email from user_register where email='"+un+"' and password='"+pw+"'";
                         db.Select(sql);
                        if(db.rs.Read())
                        {
                               Session["email"]=db.rs.GetString(0);
                       Response.Redirect("User_Profile.aspx");
                           
                           
                        }
                        else
                        {
                                  Response.Write(" <script> alert('Invalid attempt !!Please enter correct email and password    ...');  </script>");
          
                        }
                   }
                   else if (type.Contains("Admin"))
                   {
                       sql = "select email from tbl_admin where email='" + un + "' and pass='" + pw + "'";
                       db.Select(sql);
                       if (db.rs.Read())
                       {
                           Session["email"] = db.rs.GetString(0);
                           Response.Redirect("Admin/Home.aspx");


                       }
                       else
                       {
                           Response.Write(" <script> alert('Invalid attempt !!Please enter correct email and password    ...');  </script>");

                       }
                   }
                  
                      
               }
    }
