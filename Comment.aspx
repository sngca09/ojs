<%@ Page Title="" Language="C#" MasterPageFile="~/ReviewerMaster.master" AutoEventWireup="true" CodeFile="Comment.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
				<div class="row">
					<div class="col-md-8">
						
					   <div class="box-body">
                                               
                                               <%
                                                     String id=Request.QueryString["id"].ToString();
                                                   String email=Session["email"].ToString();
                                                    DBConnections db=new DBConnections(); 
                                                    String s="select * from research_paper where rp_id="+id;
                                                    db.Select(s);
                                                    if(db.rs.Read())
                                                    {
                                                          Session["rp_id"]=db.rs.GetInt32(0).ToString();
                                                   
                                                     
                                                   %>
                                                    <h3><Label><%=db.rs.GetString(1)%> </label></h3>
                                                    <%
                                                     String s2="select * from reviewer_comments c,reviewer_register r where c.rp_id="+id+" and c.email=r.email order by cid desc";
                                                    db.Select(s2);
                                                   // int count=1;
                                                    while(db.rs.Read())
                                                    {
                                                        
                                                    %>
                                                    <table id="example1" class="table table-bordered table-striped" style="border: none;">
                                                  
                                                    <tbody>
                                                   <tr>    
                                                       <td style="border-radius: 50px;border: none;width: 40px; "></td>
                                                       <td style="border-radius: 20px;border: none;">
                                                           
                                                           <label style="color: blueviolet;">  <%=db.rs.GetString(6)%> <%=db.rs.GetString(7)%>:</label>
                                                           <label style="color: tomato;"><%=db.rs.GetString(2)%></label> 
                                                         </td>
                                                                
                                                           </tr>
                                                   <%
                                                 //  count++;
                                                    }
                                                    
                                                   
                                               %>
                                                  </tbody>
                                               </table>
                                              <!-- rating -->
                                              <%
                                              String ss="select * from tbl_rating where email='"+email+"' and rp_id="+id;
                                              db.Select(ss);
                                              if(db.rs.Read())
                                              {
                                                  //Already rated
                                              }
                                              else
                                              {
                                              %>
                                     
                                                            <%
                                                 /*
                                                            if(request.getParameter("Rate")!=null)
                                                            {
                                                                String r=request.getParameter("rate_value");
                                                                DBConnection db1=new DBConnection();
                                                               
                                                                String sp="insert into tbl_rating values(0,"+r+",'"+email+"',"+id+")";
                                                                
                                                                db1.Insert(sp);*/
                                                                %>
                                                                <script>
                                                                    swal({
                                                                        title: "Success",
                                                                        icon: "success",
                                                                        text: "Your rating is valuable for us",
                                                                        timer: 3000
                                                                    },
  function () {
      window.location = "Comment.aspx?id=<%=id%>";
  });
                                                              
                                                                </script>
                                                                
                                                                <script>
                                                                    // window.location="Comment.jsp?id=<%=id%>";
                                                                </script>
                                                                <%
                                                             
                                                            }
                                                            
                                                            
                                                            
                                                            %>
                                                            <script>
                                                                function Myfn1() {
                                                                    var x = document.getElementById('4_stars').value;
                                                                    var el = document.getElementById("data");
                                                                    el.value = x;
                                                                    //   alert(x+"rating");
                                                                }
                                                                function Myfn2() {
                                                                    var x = document.getElementById('3_stars').value;
                                                                    var el = document.getElementById("data");
                                                                    el.value = x;
                                                                    // alert(x+"rating");
                                                                }
                                                                function Myfn3() {
                                                                    var x = document.getElementById('2_stars').value;
                                                                    var el = document.getElementById("data");
                                                                    el.value = x;
                                                                    //  alert(x+"rating");
                                                                }
                                                                function Myfn4() {
                                                                    var x = document.getElementById('1_stars').value;
                                                                    var el = document.getElementById("data");
                                                                    el.value = x;
                                                                    // alert(x+"rating");
                                                                }
                                                                function Myfn5() {
                                                                    var x = document.getElementById('0_stars').value;
                                                                    var el = document.getElementById("data");
                                                                    el.value = x;
                                                                    // alert(x+"rating");
                                                                }
                                                             
                                                            </script>
                                                  <%
                                              }
                                                  %>
                                                   <!--// rating -->  
                                                   <br><br><br>
    <asp:Panel ID="Panel1" CssClass="form-light mt-20" runat="server">
        <asp:TextBox ID="txtMessage"  TextMode="MultiLine" Height="150px" placeholder="Write topic comments here..." CssClass="form-control" runat="server"></asp:TextBox>
        <asp:Button ID="btnPost" CssClass="btn btn-two" runat="server" Text="Post" 
            onclick="btnPost_Click" />
    </asp:Panel>
                                                    
                                                    <%
           //                                       if(request.getParameter("post")!=null)
           //                                               {     
                                                            
           //                                                 String comment=request.getParameter("comment");
           //                                                 String rid=session.getAttribute("rp_id").toString();
           //                                                 //start sentmental 
           //                                                      dbclass dbs=new dbclass();
           //System.out.println("bton pressed");
           // Statement st=dbs.con.createStatement();
           // Statement st1=dbs.con.createStatement();
           // Statement st2=dbs.con.createStatement();
           // Statement st3=dbs.con.createStatement();
           // Statement st4=dbs.con.createStatement();
           //    int pcomment=0,ncomment=0;
               
              
              
          
           //     String content=comment;
           //     String ct=content;
           //     ResultSet rs2=st2.executeQuery("select * from stopspecial");
           //     while(rs2.next())
           //     {
           //         content=content.replaceAll("\\"+rs2.GetString("special_char"), " ");
           //     }
           //     rs2.close();

           //     content=content.replaceAll("\\s+", " ");
                
           // int value=0;
           //     score sm=new score();
                
           //     int x1=sm.calculate4(content);
           //     if(x1==-1)
           //     {
           //         int x2=sm.calculate3(content);
           //         if(x2==-1)
           //         {
           //             int x3=sm.calculate2(content);
           //             if(x3==-1)
           //             {
           //                 int x4=sm.calculate1(content);
           //                 value=x4;
           //             }
           //             else
           //             {
           //                 value=x3;
           //             }
           //         }
           //         else
           //         {
           //             value=x2;
           //         }
           //     }
           //     else
           //     {
           //         value=x1;
           //     }
                
           //     System.out.println("value     "+value);
           // int sval=0;
           // if(value==1){
           // sval=1;
           // }
           // else if(value==0){
           //sval=0;
           //}else
           // {
           // sval=2;
           // }  //end sentmental
           //                                                 String s1="insert into reviewer_comments(rp_id,comment,email,srating) values("+rid+",'"+comment+"','"+email+"',"+sval+")";
           //                                                 db.Insert(s1);
                                                           
            %>
                                                      
                                                     
                                               
                      
                                           </div>
                                               
                                        </div>
					
				</div>
			</div>
	<!-- /container -->

</asp:Content>

