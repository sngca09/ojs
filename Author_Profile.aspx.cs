using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    DBConnections db = new DBConnections();
    String email = string.Empty;

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void changeProfile_Click(object sender, EventArgs e)
    {
        email = Session["email"].ToString();

        Panel1.Visible = true;
         String s1="select * from author_register where email='"+email+"'";
                         db.Select(s1);
                         if (db.rs.Read())
                         {
                              
                       txtFname.Text=  db.rs.GetString(1);
                         txtLname.Text  =  db.rs.GetString(2);
                        drpGender.Text     =db.rs.GetString(9);


            txtDate.Text  =db.rs.GetString(3);
              txtPhnoe.Text        =db.rs.GetString(8);
              txtAddress.Text =db.rs.GetString(5);
            txtQuli.Text  =db.rs.GetString(4);
                         }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        email = Session["email"].ToString();

        DBConnections db = new DBConnections();
        String fname = txtFname.Text;
        String lname = txtLname.Text;
        String dob = txtDate.Text;
        String quali =  txtQuli.Text;
        String phone =   txtPhnoe.Text;
        String gender = drpGender.SelectedValue.ToString();
        String addr =  txtAddress.Text;
        String s2 = "update author_register set fname='" + fname + "',lname='" + lname + "',dob='" + dob + "',quali='" + quali + "',phone='" + phone + "',gender='" + gender + "',address='" + addr + "' where email='" + email + "'";
        db.Insert(s2);
    
        Panel1.Visible = false;
    }
}