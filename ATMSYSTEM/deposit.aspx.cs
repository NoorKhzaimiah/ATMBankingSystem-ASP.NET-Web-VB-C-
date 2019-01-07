using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ATMSYSTEM
{
    public partial class deposit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {


 
                SqlDataSource1.UpdateParameters["CardNO"].DefaultValue = Session["CardNo"].ToString();

                SqlDataSource1.UpdateParameters["deposit"].DefaultValue = TextBox1.Text;
                SqlDataSource1.Update();
                SqlDataSource2.InsertParameters["deposit"].DefaultValue = "True";
                SqlDataSource2.InsertParameters["withdrow"].DefaultValue = "False";          
                SqlDataSource2.InsertParameters["Ammount"].DefaultValue = TextBox1.Text;
                SqlDataSource2.InsertParameters["BranchID"].DefaultValue = DropDownList1.Text;
                SqlDataSource2.InsertParameters["CardNO"].DefaultValue = Session["CardNo"].ToString();
                SqlDataSource2.InsertParameters["date"].DefaultValue = DateTime.Today.ToString("dd-MM-yyyy") +"   " + DateTime.Now.ToString("HH: mm:ss");
                SqlDataSource2.Insert();

               



                
                Label1.Text = "Successfull!! Done ! , Go to view Balance To Check your Update Balance!!";

            }

            catch (Exception ee)
            {
                Label1.Text = ee.StackTrace;
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}

