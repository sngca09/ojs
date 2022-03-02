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
    protected void Button1_Click(object sender, EventArgs e)
    {

        String name, subject, message, email, phone;
        name = txtName.Text;
        subject = txtSubject.Text;
        message = txtMessage.Text;
        email = txtEmail.Text;
        phone = txtPhone.Text;
        String s = "insert into feedback values(0,'" + name + "','" + subject + "','" + message + "','" + email + "','" + phone + "','Reviewer')";
        DBConnections db = new DBConnections();
        db.Insert(s);
    }
}