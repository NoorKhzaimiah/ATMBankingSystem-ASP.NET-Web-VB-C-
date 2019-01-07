using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATMSYSTEM
{
    public partial class Registrationn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

     

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataSource3.InsertParameters["Name"].DefaultValue = TextBox6.Text;
                SqlDataSource3.InsertParameters["Address"].DefaultValue = TextBox2.Text;
                SqlDataSource3.InsertParameters["CardNO"].DefaultValue = TextBox5.Text;
                SqlDataSource3.InsertParameters["Password"].DefaultValue = TextBox3.Text;
                SqlDataSource3.InsertParameters["BankId"].DefaultValue = DropDownList1.Text;
                SqlDataSource3.InsertParameters["BranchID"].DefaultValue = DropDownList2.Text;

                SqlDataSource3.Insert();
                Label1.Text = "SUccessfully Added! , Go back To login";

            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Welcome.aspx");
        }

  
    }
}