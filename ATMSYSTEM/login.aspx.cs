using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ATMSYSTEM
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CardNO"] != null)
            
                Response.Redirect("login.aspx");

            Label1.Text = " ";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                DataView view1 = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                
                if (view1.Count == 1)
                {
                    DataRowView row1 = view1[0];
                    Session["CardNo"] = row1["CardNo"];
                    Response.Redirect("Project.aspx");
                }
                Label1.Text = "Error Pass/CardNo!!";
            }
            catch(Exception ss)
            {
                Label1.Text = ss.Message;
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}