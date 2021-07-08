using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;

public partial class home : System.Web.UI.Page
{
    String ConnectionString = "Data Source=KOBBY-LAPTOP;Initial Catalog=BestMart;Persist Security Info=True;User ID=sa;Password=!@#$%&*";
    protected void Page_Load(object sender, EventArgs e)
    {
        txtshopname.Focus();
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if ((string.IsNullOrWhiteSpace(txtshopname.Text)) || (string.IsNullOrEmpty(txtshopname.Text)) ||
          (string.IsNullOrWhiteSpace(txtpassword.Text)) || (string.IsNullOrEmpty(txtpassword.Text)) ||
          (string.IsNullOrWhiteSpace(txtcpassword.Text)) || (string.IsNullOrEmpty(txtcpassword.Text)))
        {


            
            ErrorLabel0.Visible = true;
            ErrorLabel0.Text = "TRY AGAIN FILL ALL TEXTBOXES";
            ErrorPhoto.Visible = true;

        }


        else
        {
            try
            {
                SqlConnection connection = new SqlConnection(ConnectionString);
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandType = CommandType.Text;
                command.CommandText = "insert into ShopInfo values('" + txtshopname.Text + "','" + txttelephone.Text + "', '" + txtpassword.Text + "','" + Location.SelectedValue + "', '" + dealsin.SelectedValue + "','" + secquestion.SelectedValue + "','" + secanswer.Text + "')";
                command.ExecuteNonQuery();

                if (txtpassword.Text.Equals(txtcpassword.Text))
                {

                    Response.Redirect("index.html");
                }


                else
                {
                    ErrorLabel.Visible = true;
                    ErrorPhoto.Visible = true;
                    ErrorLabel.Text = "Account Creation FAILED! Passwords do not match";
                }

            }

            catch (Exception)
            {

            }

        }
    }
}