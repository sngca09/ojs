using System;
using System.Collections.Generic;
using System.IO;
using System.Text.RegularExpressions;
using Google.API.Search;
using System.Web.UI;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            int flag=0;
            try
            {
                String rid1 = Session["rid"].ToString();
                string itemName = FileUpload1.FileName;
                if (!(itemName.EndsWith(".txt")))
                {

                    flag = 0;

                    Response.Write("<script>alert('Please add document with .txt extension');location='New_research.aspx'; </script>");

                }
                else {
                    string destinationPath = Server.MapPath("~/Research_Paper/");
                     string newtxt=string.Empty;
                     if (FileUpload1.HasFile)
                     {
                         FileUpload1.SaveAs(Server.MapPath("~/FileTest/") + FileUpload1.FileName);
                         string sourcePath = Server.MapPath("~/FileTest/");
                         newtxt = System.IO.File.ReadAllText(Server.MapPath("~/FileTest/") + FileUpload1.FileName);
                     }
                     else {
                         newtxt = txtDis.Text;
                     }
                    double matchResult = 0;
                    bool flagCheck = false;
                    //plagerisam with web
                    GwebSearchClient client = new GwebSearchClient("www.c-sharpcorner.com");
                    

                    string[] sentences = Regex.Split(newtxt, @"(?<=[\.!\?])\s+");

                    foreach (string sentence in sentences)
                    {
                       // GwebSearchClient client = new GwebSearchClient("www.c-sharpcorner.com");
                        IList<IWebResult> results = client.Search("abc", 30);  
                        foreach (var webResult in results)
                        {
                            //Console.WriteLine("{0}, {1}, {2}", webResult.Title, webResult.Url, webResult.Content);
                            // listBox1.Items.Add(webResult.ToString());
                        }
                    }

                    //plagerisam with  existing files.
                    foreach (string file in Directory.EnumerateFiles(destinationPath))
                    {
                        //  Response.Write(file);

                        string contents = File.ReadAllText(file);
                        //   Response.Write(contents);
                        Plagerisam pl = new Plagerisam();

                        matchResult = pl.CalculateSimilarity(newtxt.ToUpper(), contents.ToUpper());
                        matchResult = matchResult * 100;
                        if (matchResult >= 50)
                        {
                            flagCheck = false;
                            break;

                        }
                        else
                        {
                            flagCheck = true;
                            contents = "";
                            continue;
                        }



                    }
                    String strLine = " ";
                    //copy the pdf to text
                    if (flagCheck == true)
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/Research_Paper/") + FileUpload1.FileName);
                        string email = Session["email"].ToString();

                        DBConnections db = new DBConnections();
                        String s = "insert into research_paper(topic,rid,abstract,paper,description,status,email) values('" + txtTopicName.Text + "'," + rid1 + ",'" + txtAbstract.Text + "','" + itemName + "','" + txtDis.Text + "',0,'" + email + "')";
                        db.Insert(s);
                        //out.print(s);
                        Response.Write("<script>alert('Research Upload Completed'); location='New_research.aspx';</script>");

                    }
                    else
                    {
                        Response.Write("<script>alert('Plagerisam detected upload failed'); location='New_research.aspx';</script>");
                    }
                }

               
                //}
            }
            catch (Exception ex)
            {
                //Response.Write("<script>alert('" + ex.Message + "'); location='New_research.aspx';</script>");

                // Response.Write("<script>location='New_research.jsp';</script>");
            }
   }

    protected void btnAddResearch_Click(object sender, EventArgs e)
    {
        int flag = 0; bool hasFile = false;
        string researchContent = string.Empty;
        try
        {
            String rid1 = Session["rid"].ToString();
            string itemName = FileUpload1.FileName;
            if (FileUpload1.HasFile)
            {
                hasFile = true;
                if (!(itemName.EndsWith(".txt")))
                {
                    flag = 0;
                    Response.Write("<script>alert('Please add document with .txt extension');location='New_research.aspx'; </script>");

                }
                else {
                    FileUpload1.SaveAs(Server.MapPath("~/FileTest/") + FileUpload1.FileName);
                    string sourcePath = Server.MapPath("~/FileTest/");
                    researchContent = System.IO.File.ReadAllText(Server.MapPath("~/FileTest/") + FileUpload1.FileName);
                }
              
            }
            else
            {
                researchContent = txtAbstract.Text;
            }
            if(!string.IsNullOrEmpty(researchContent))
            {
                double matchResult = 0;
                decimal matchResultWeb = 0;
                bool flagCheck = false,flagCheckWeb=true;
               //plagerisam with web content
               PlagerisamWeb plW = new PlagerisamWeb();
               matchResultWeb = plW.FindPlagerisam(researchContent);
               if (matchResultWeb >= 50)
               {
                   flagCheckWeb = false;
               }
               else
               {
                   flagCheckWeb = true;
               }

                 //plagerisam with  existing files.
                string destinationPath = Server.MapPath("~/Research_Paper/");
                foreach (string file in Directory.EnumerateFiles(destinationPath))
                {
                    //  Response.Write(file);
                    string contents = File.ReadAllText(file);
                    //   Response.Write(contents);
                    Plagerisam pl = new Plagerisam();
                    matchResult = pl.CalculateSimilarity(researchContent.ToUpper(), contents.ToUpper());
                    matchResult = matchResult * 100;
                    if (matchResult >= 50)
                    {
                        flagCheck = false;
                        break;

                    }
                    else
                    {
                        flagCheck = true;
                        contents = "";
                        continue;
                    }
                }

                //copy the pdf to text
                if (flagCheck == true && flagCheckWeb==true)
                {
                    if (hasFile)
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/Research_Paper/") + FileUpload1.FileName);
                    }
                    else
                    {
                        string FileName = txtTopicName.Text + "_" + DateTime.Now.ToFileTime() + ".txt";
                        var myFile=  File.Create((Server.MapPath("~/Research_Paper/") + FileName));
                        myFile.Close();
                        File.AppendAllText((Server.MapPath("~/Research_Paper/") + FileName), researchContent);

                    }
                    string email = Session["email"].ToString();

                    DBConnections db = new DBConnections();
                    String s = "insert into research_paper(topic,rid,abstract,paper,description,status,email) values('" + txtTopicName.Text + "'," + rid1 + ",'" + txtAbstract.Text + "','" + itemName + "','" + txtDis.Text + "',0,'" + email + "')";
                    db.Insert(s);
                    //out.print(s);
                    Response.Write("<script>alert('your content plagarised <45 Research Upload Completed'); location='New_research.aspx';</script>");

                }
                else
                {
                    string message = "Plagerisam detected upload failed web plagerisam  Web Plegarizam :" + matchResultWeb+"% File Plareizam "+matchResult;
                    //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Alert", "alert('" + message + "')", true);
                    //Response.Write("<script>alert('" + message + "'); location='New_research.aspx';</script>");
                    string myScript= "<script type=\"text/javascript\">";
                        myScript +="alert("+message+");";
                    myScript += "</script>";
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "myKey", "alert('"+message+"');", true);
                }

            }
        }
        catch (Exception ex)
        {
        
        }
    }
}