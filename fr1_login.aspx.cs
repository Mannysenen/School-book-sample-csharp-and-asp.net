using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace school_book_fr1
{
    public partial class fr1_login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = MARANS-DESKTOP ; Initial Catalog = school_book_db ; Integrated Security = true ");
        SqlCommand com = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("create_fr1user.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                com.Connection = con;
                com.CommandText = "INSERT INTO tmp_login VALUES ('" + TextBox3.Text + "', '" + TextBox4.Text + "', 'USER')";
                com.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception a)
            {
                Response.Write(a.Message);
            }
            try
            {
                con.Open();
                com.Connection = con;
                com.CommandText = "SELECT COUNT(*) FROM student_account WHERE students_username = '" + TextBox3.Text + "' AND students_password = '" + TextBox4.Text + "'";

                com.ExecuteNonQuery();
                int c = (int)com.ExecuteScalar();
                if (c == 1)
                {
                    Response.Write(c.ToString());
                    Response.Redirect("fr1_user.aspx");
                }
                else
                {
                    Response.Write("Incorrect Username or Password");
                }
                con.Close();
            }
            catch (Exception r)
            {
                Response.Write("Incorrect Username or Password");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                com.Connection = con;
                com.CommandText = "INSERT INTO tmp_login VALUES ('" + TextBox1.Text + "', '" + TextBox2.Text + "', 'USER')";
                com.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception a)
            {
                Response.Write(a.Message);
            }
            try
            {
                con.Open();
                com.Connection = con;
                com.CommandText = "SELECT COUNT(*) FROM admin_account WHERE admin_username = '" + TextBox1.Text + "' AND admin_password = '" + TextBox2.Text + "'";

                com.ExecuteNonQuery();
                int c = (int)com.ExecuteScalar();
                if (c == 1)
                {
                    Response.Write(c.ToString());
                    Response.Redirect("fr1_admin.aspx");
                }
                else
                {
                    Response.Write("Incorrect Username or Password");
                }
                con.Close();
            }
            catch (Exception r)
            {
                Response.Write("Incorrect Username or Password");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("create_fr1admin.aspx");
        }
    }
}