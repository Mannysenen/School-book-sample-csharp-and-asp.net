using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;

namespace school_book_fr1
{
    public partial class fr1_user : System.Web.UI.Page
    {
        public Int32 vc;
        public string tmpusername;
        public string tmppassword;
        public string tmpsender;
        public string tmpreceiver;
        public int tmpeventseats;
        SqlConnection con = new SqlConnection("Data Source = MARANS-DESKTOP ; Initial Catalog = school_book_db ; Integrated Security = true ");
        SqlCommand com = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.AutoPostBack = true;
                DropDownList2.AutoPostBack = true;

                RadioButtonList1.AutoPostBack = true;

                Panel1.Visible = true;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = false;
                Panel7.Visible = false;
                Panel8.Visible = false;
                Panel9.Visible = false;
            }

            try
            {
                con.Open();
                com.Connection = con;
                com.CommandText = "(SELECT * FROM tmp_login WHERE type='USER')";
                using (SqlDataReader read = com.ExecuteReader())
                {
                    while (read.Read())
                    {
                        tmpusername = (read["username"].ToString());
                        tmppassword = (read["password"].ToString());
                    }
                }
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
                com.CommandText = "(SELECT * FROM student_account WHERE students_username='" + tmpusername + "'AND students_password='" + tmppassword + "')";
                using (SqlDataReader read = com.ExecuteReader())
                {
                    while (read.Read())
                    {
                        TextBox1.Text = (read["id_number"].ToString());
                        TextBox2.Text = (read["first_name"].ToString());
                        Label1.Text = (read["first_name"].ToString());
                        TextBox11.Text = (read["class"].ToString());
                        TextBox12.Text = (read["section"].ToString());
                        TextBox4.Text = (read["dob"].ToString());
                        TextBox5.Text = (read["stdate"].ToString());
                        TextBox6.Text = (read["gender"].ToString());
                        TextBox7.Text = (read["students_emailid"].ToString());
                        TextBox8.Text = (read["students_phonenumber"].ToString());
                        TextBox9.Text = (read["students_address"].ToString()) + "," + (read["students_city"].ToString()) + "," + (read["students_state"].ToString()) + "," + (read["students_country"].ToString());
                        TextBox10.Text = (read["students_pincode"].ToString());
                    }
                }
                con.Close();
            }
            catch (Exception a)
            {
                Response.Write(a.Message);
            }

            //Class Timetable
            try
            {
                con.Open();
                string query = "SELECT * FROM class_timetable WHERE class='" + TextBox11.Text + "' AND section='" + TextBox12.Text + "'";
                SqlDataAdapter da1 = new SqlDataAdapter(query, con);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                GridView1.DataSource = ds1;
                GridView1.DataBind();
                con.Close();
            }
            catch (Exception p)
            {
                Response.Write(p.Message);
            }

            //Exam Timetable
            try
            {
                con.Open();
                string query = "SELECT * FROM exam_timetable WHERE class='" + TextBox11.Text + "' AND section='" + TextBox12.Text + "'";
                SqlDataAdapter da2 = new SqlDataAdapter(query, con);
                DataSet ds2 = new DataSet();
                da2.Fill(ds2);
                GridView2.DataSource = ds2;
                GridView2.DataBind();
                con.Close();
            }
            catch (Exception p)
            {
                Response.Write(p.Message);
            }

            //TMP For SMS
            try
            {
                con.Open();
                com.Connection = con;
                com.CommandText = "(SELECT * FROM student_messages WHERE receiver='"+TextBox1.Text+"')";
                using (SqlDataReader read = com.ExecuteReader())
                {
                    while (read.Read())
                    {
                        tmpsender = (read["sender"].ToString());
                        tmpreceiver = (read["receiver"].ToString());
                    }
                }
                con.Close();
            }
            catch (Exception a)
            {
                Response.Write(a.Message);
            }
            //Messages
            try
            {
                con.Open();
                string query = "SELECT * FROM student_messages WHERE sender='"+tmpsender+"' AND receiver='"+tmpreceiver+"'";
                SqlDataAdapter da8 = new SqlDataAdapter(query, con);
                DataSet ds8 = new DataSet();
                da8.Fill(ds8);
                GridView8.DataSource = ds8;
                GridView8.DataBind();
                con.Close();
            }
            catch (Exception p)
            {
                Response.Write(p.Message);
            }

            TextBox1.Enabled = false;
            TextBox2.Enabled = false;
            TextBox4.Enabled = false;
            TextBox5.Enabled = false;
            TextBox6.Enabled = false;
            TextBox7.Enabled = false;
            TextBox8.Enabled = false;
            TextBox9.Enabled = false;
            TextBox10.Enabled = false;
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedValue == "Personal Details")
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = false;
                Panel7.Visible = false;
                Panel8.Visible = false;
                Panel9.Visible = false;
            }
            else if (RadioButtonList1.SelectedValue == "Regular Time Table")
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = false;
                Panel7.Visible = false;
                Panel8.Visible = false;
                Panel9.Visible = false;
            }
            else if (RadioButtonList1.SelectedValue == "Exams")
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = true;
                Panel4.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = false;
                Panel7.Visible = false;
                Panel8.Visible = false;
                Panel9.Visible = false;
            }
            else if (RadioButtonList1.SelectedValue == "books")
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = true;
                Panel5.Visible = false;
                Panel6.Visible = false;
                Panel7.Visible = false;
                Panel8.Visible = false;
                Panel9.Visible = false;
            }
            else if (RadioButtonList1.SelectedValue == "Reports")
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = true;
                Panel6.Visible = false;
                Panel7.Visible = false;
                Panel8.Visible = false;
                Panel9.Visible = false;
            }
            else if (RadioButtonList1.SelectedValue == "Events")
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = true;
                Panel7.Visible = false;
                Panel8.Visible = false;
                Panel9.Visible = false;
            }
            else if (RadioButtonList1.SelectedValue == "Activities")
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = false;
                Panel7.Visible = true;
                Panel8.Visible = false;
                Panel9.Visible = false;
            }
            else if (RadioButtonList1.SelectedValue == "Messages")
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = false;
                Panel7.Visible = false;
                Panel8.Visible = true;
                Panel9.Visible = false;
            }
            else if (RadioButtonList1.SelectedValue == "Archives")
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = false;
                Panel7.Visible = false;
                Panel8.Visible = false;
                Panel9.Visible = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Reports
            try
            {
                con.Open();
                string query = "SELECT * FROM student_mark WHERE student_id='" + TextBox1.Text + "' AND class='" + TextBox11.Text + "' AND section='" + TextBox12.Text + "'";
                SqlDataAdapter da4 = new SqlDataAdapter(query, con);
                DataSet ds4 = new DataSet();
                da4.Fill(ds4);
                GridView4.DataSource = ds4;
                GridView4.DataBind();
                con.Close();
            }
            catch (Exception p)
            {
                Response.Write(p.Message);
            }

            try
            {
                con.Open();
                string query = "SELECT * FROM total_mark WHERE student_id='" + TextBox1.Text + "' AND timetable_id='" + DropDownList1.SelectedValue.ToString()+"'";
                SqlDataAdapter da5 = new SqlDataAdapter(query, con);
                DataSet ds5 = new DataSet();
                da5.Fill(ds5);
                GridView9.DataSource = ds5;
                GridView9.DataBind();
                con.Close();
            }
            catch (Exception p)
            {
                Response.Write(p.Message);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                com.Connection = con;
                com.CommandText = "TRUNCATE TABLE tmp_login";
                com.ExecuteNonQuery();
                con.Close();
                Response.Redirect("fr1_login.aspx");
            }
            catch (Exception w)
            {
                Response.Write(w.Message);
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                con.Close();
                con.Open();
                com.Connection = con;
                com.CommandText = "(SELECT * FROM event_proc WHERE event_id='" + DropDownList2.SelectedValue.ToString() + "')";
                using (SqlDataReader read = com.ExecuteReader())
                {
                    while (read.Read())
                    {
                        Label29.Text = (read["event_name"].ToString());
                        Label28.Text = (read["participants_seats"].ToString());
                        Label31.Text = (read["event_date"].ToString());
                    }
                }
                con.Close();
            }
            catch (Exception a)
            {
                Response.Write(a.Message+"asd");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            com.Connection = con;
            com.CommandText = "(SELECT participants_seats FROM event_proc WHERE event_id='" + DropDownList2.SelectedValue.ToString() + "')";
            tmpeventseats = (int)com.ExecuteScalar();
            if (tmpeventseats > 0)
            {
                tmpeventseats = tmpeventseats - 1;
                con.Close();

                con.Open();
                com.Connection = con;
                com = new SqlCommand("update_event_proc", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@event_id", DropDownList2.SelectedValue.ToString());
                com.Parameters.AddWithValue("@event_name", Label29.Text);
                com.Parameters.AddWithValue("@participants_seats", tmpeventseats.ToString());
                com.ExecuteNonQuery();
                con.Close();

                con.Open();
                com.Connection = con;
                com = new SqlCommand("insert_event_participants", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@event_id", DropDownList2.SelectedValue.ToString());
                com.Parameters.AddWithValue("@participant_ID", TextBox1.Text);
                com.Parameters.AddWithValue("@participant_name", TextBox2.Text);
                com.ExecuteNonQuery();
                con.Close();
            }
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            con.Open();
            com.Connection = con;
            com.CommandText = "(SELECT COUNT(*) FROM event_participants WHERE event_id=" + DropDownList25.SelectedValue.ToString() + " )";
            int eventseatavail = (int)com.ExecuteScalar();
            Label77.Text = Convert.ToString(eventseatavail);
            con.Close();
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            con.Open();
            com.Connection = con;
            com = new SqlCommand("insert_activity_participants", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@activity_id", DropDownList26.SelectedValue.ToString());
            com.Parameters.AddWithValue("@participant_ID", TextBox1.Text);
            com.Parameters.AddWithValue("@participant_name", TextBox2.Text);
            com.ExecuteNonQuery();
            con.Close();
            GridView6.DataBind();
        }
    }
}