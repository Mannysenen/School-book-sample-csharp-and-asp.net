using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Collections.Specialized;

namespace school_book_fr1
{
    public partial class fr1_admin : System.Web.UI.Page
    {
        public Int32 vc;
        public string tmpusername;
        public string tmppassword;
        SqlConnection con = new SqlConnection("Data Source = MARANS-DESKTOP ; Initial Catalog = school_book_db ; Integrated Security = true ");
        SqlCommand com = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.AutoPostBack = true;
                DropDownList2.AutoPostBack = true;
                DropDownList3.AutoPostBack = true;
                DropDownList4.AutoPostBack = true;
                DropDownList5.AutoPostBack = true;
                DropDownList6.AutoPostBack = true;
                DropDownList7.AutoPostBack = true;
                DropDownList11.AutoPostBack = true;
                DropDownList12.AutoPostBack = true;
                DropDownList8.AutoPostBack = true;
                DropDownList9.AutoPostBack = true;
                DropDownList10.AutoPostBack = true;
                DropDownList25.AutoPostBack = true;

                DropDownList1.Items.Add("1");
                DropDownList1.Items.Add("2");
                DropDownList1.Items.Add("3");
                DropDownList1.Items.Add("4");
                DropDownList1.Items.Add("5");
                DropDownList1.Items.Add("6");
                DropDownList1.Items.Add("7");
                DropDownList1.Items.Add("8");
                DropDownList1.Items.Add("9");
                DropDownList1.Items.Add("10");

                DropDownList2.Items.Add("A");
                DropDownList2.Items.Add("B");
                DropDownList2.Items.Add("C");

                DropDownList3.Items.Add("Monday");
                DropDownList3.Items.Add("Tuesday");
                DropDownList3.Items.Add("Wednesday");
                DropDownList3.Items.Add("Thursday");
                DropDownList3.Items.Add("Friday");
                DropDownList3.Items.Add("Saturday");

                DropDownList4.Items.Add("Tamil");
                DropDownList4.Items.Add("English");
                DropDownList4.Items.Add("Maths");
                DropDownList4.Items.Add("Science");
                DropDownList4.Items.Add("Social");

                DropDownList5.Items.Add("Tamil");
                DropDownList5.Items.Add("English");
                DropDownList5.Items.Add("Maths");
                DropDownList5.Items.Add("Science");
                DropDownList5.Items.Add("Social");

                DropDownList6.Items.Add("Tamil");
                DropDownList6.Items.Add("English");
                DropDownList6.Items.Add("Maths");
                DropDownList6.Items.Add("Science");
                DropDownList6.Items.Add("Social");

                DropDownList7.Items.Add("Tamil");
                DropDownList7.Items.Add("English");
                DropDownList7.Items.Add("Maths");
                DropDownList7.Items.Add("Science");
                DropDownList7.Items.Add("Social");

                DropDownList11.Items.Add("1");
                DropDownList11.Items.Add("2");
                DropDownList11.Items.Add("3");
                DropDownList11.Items.Add("4");
                DropDownList11.Items.Add("5");
                DropDownList11.Items.Add("6");
                DropDownList11.Items.Add("7");
                DropDownList11.Items.Add("8");
                DropDownList11.Items.Add("9");
                DropDownList11.Items.Add("10");

                DropDownList12.Items.Add("A");
                DropDownList12.Items.Add("B");
                DropDownList12.Items.Add("C");

                DropDownList8.Items.Add("Cycle Exam");
                DropDownList8.Items.Add("1st Exam");
                DropDownList8.Items.Add("2nd Exam");
                DropDownList8.Items.Add("3rd Exam");
                DropDownList8.Items.Add("Final Exam");

                DropDownList9.Items.Add("Tamil");
                DropDownList9.Items.Add("English");
                DropDownList9.Items.Add("Maths");
                DropDownList9.Items.Add("Science");
                DropDownList9.Items.Add("Social");

                DropDownList10.Items.Add("FN");
                DropDownList10.Items.Add("AN");

                DropDownList26.Items.Add("FN");
                DropDownList26.Items.Add("AN");

                DropDownList27.Items.Add("+91");

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

                RadioButtonList1.SelectedValue = "Personal Details";
                //Value from TMP table to get the values of previous login form
                try
                {
                    con.Open();
                    com.Connection = con;
                    com.CommandText = "(SELECT * FROM tmp_login)";
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
                // Apply values from the actual table
                try
                {
                    con.Open();
                    com.Connection = con;
                    com.CommandText = "(SELECT * FROM admin_account WHERE admin_username='" + tmpusername + "'AND admin_password='" + tmppassword + "')";
                    using (SqlDataReader read = com.ExecuteReader())
                    {
                        while (read.Read())
                        {
                            TextBox1.Text = (read["id_number"].ToString());
                            TextBox2.Text = (read["first_name"].ToString());
                            Label1.Text = (read["first_name"].ToString());
                            TextBox3.Text = (read["admin_designation"].ToString());
                            TextBox4.Text = (read["dob"].ToString());
                            TextBox5.Text = (read["stdate"].ToString());
                            TextBox6.Text = (read["gender"].ToString());
                            TextBox7.Text = (read["admin_emailid"].ToString());
                            TextBox8.Text = (read["admin_phonenumber"].ToString());
                            TextBox9.Text = (read["admin_address"].ToString()) + "," + (read["admin_city"].ToString()) + "," + (read["admin_state"].ToString()) + "," + (read["admin_country"].ToString());
                            TextBox10.Text = (read["admin_pincode"].ToString());
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
                    com.CommandText = "(SELECT * FROM admin_account WHERE admin_username='" + tmpusername + "'AND admin_password='" + tmppassword + "')";
                    using (SqlDataReader read = com.ExecuteReader())
                    {
                        while (read.Read())
                        {
                            Label68.Text = (read["id_number"].ToString());
                        }
                    }
                    con.Close();
                }
                catch (Exception a)
                {
                    Response.Write(a.Message);
                }

                TextBox1.Enabled = false;
                TextBox2.Enabled = false;
                TextBox3.Enabled = false;
                TextBox4.Enabled = false;
                TextBox5.Enabled = false;
                TextBox6.Enabled = false;
                TextBox7.Enabled = false;
                TextBox8.Enabled = false;
                TextBox9.Enabled = false;
                TextBox10.Enabled = false;
            }
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
            else if (RadioButtonList1.SelectedValue == "Books")
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
            con.Open();
            com.Connection = con;
            com = new SqlCommand("add_class_timetable", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@timetable_id", TextBox13.Text);
            com.Parameters.AddWithValue("@class",DropDownList1.SelectedValue.ToString());
            com.Parameters.AddWithValue("@section",DropDownList2.SelectedValue.ToString());
            com.Parameters.AddWithValue("@ttday",DropDownList3.SelectedValue.ToString());
            com.Parameters.AddWithValue("@period1",DropDownList4.SelectedValue.ToString());
            com.Parameters.AddWithValue("@period2",DropDownList5.SelectedValue.ToString());
            com.Parameters.AddWithValue("@period3",DropDownList6.SelectedValue.ToString());
            com.Parameters.AddWithValue("@period4",DropDownList7.SelectedValue.ToString());
            com.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            com.Connection = con;
            com = new SqlCommand("add_examtimetable", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@examtimetable_id", TextBox14.Text);
            com.Parameters.AddWithValue("@class", DropDownList11.SelectedValue.ToString());
            com.Parameters.AddWithValue("@section", DropDownList12.SelectedValue.ToString());
            com.Parameters.AddWithValue("@examtype", DropDownList8.SelectedValue.ToString());
            com.Parameters.AddWithValue("@examdate", TextBox16.Text);
            com.Parameters.AddWithValue("@subjectname", DropDownList9.SelectedValue.ToString());
            com.Parameters.AddWithValue("@subjectsession", DropDownList10.SelectedValue.ToString());
            com.ExecuteNonQuery();
            con.Close();
            GridView2.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            HttpPostedFile postedfile = FileUpload1.PostedFile;
            string filename = Path.GetFileName(postedfile.FileName);
            string fileextension = Path.GetExtension(filename);
            int filesize = postedfile.ContentLength;

            if (fileextension.ToLower() == ".pdf")
            {
                Stream stream = postedfile.InputStream;
                BinaryReader br = new BinaryReader(stream);
                byte[] byts = br.ReadBytes((int)stream.Length);

                con.Open();
                com.Connection = con;
                com = new SqlCommand("insert_books", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@subject_id", TextBox17.Text);
                com.Parameters.AddWithValue("@subject_name", TextBox18.Text);
                com.Parameters.AddWithValue("@author", TextBox19.Text);
                com.Parameters.AddWithValue("@publications", TextBox20.Text);
                com.Parameters.AddWithValue("@date", TextBox21.Text);
                com.Parameters.AddWithValue("@book_pdf", filename);
                com.Parameters.AddWithValue("@book_pdf_size", filesize);
                com.Parameters.AddWithValue("@book_pdf_data", byts);
                com.ExecuteNonQuery();
                con.Close();
                GridView3.DataBind();
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            con.Open();
            com.Connection = con;
            com = new SqlCommand("insert_school_events", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@event_id", TextBox24.Text);
            com.Parameters.AddWithValue("@event_name", TextBox25.Text);
            com.Parameters.AddWithValue("@role", TextBox26.Text);
            com.Parameters.AddWithValue("@event_description", TextBox27.Text);
            com.Parameters.AddWithValue("@participants_limit", TextBox28.Text);
            com.Parameters.AddWithValue("@event_date", TextBox29.Text);
            com.ExecuteNonQuery();
            con.Close();

            con.Open();
            com.Connection = con;
            com = new SqlCommand("insert_event_proc", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@event_id", TextBox24.Text);
            com.Parameters.AddWithValue("@event_name", TextBox25.Text);
            com.Parameters.AddWithValue("@event_date", TextBox29.Text);
            com.Parameters.AddWithValue("@participants_seats", TextBox28.Text);
            com.ExecuteNonQuery();
            con.Close();
            GridView5.DataBind();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                string query = "(SELECT first_name,students_phonenumber FROM student_account WHERE id_number='" + DropDownList22.SelectedValue.ToString() + "')";
                SqlDataAdapter da1 = new SqlDataAdapter(query, con);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                GridView13.DataSource = ds1;
                GridView13.DataBind();
                con.Close();
            }
            catch (Exception p)
            {
                Response.Write(p.Message);
            }
            try
            {
                con.Open();
                com.Connection = con;
                com.CommandText = "(SELECT first_name,students_phonenumber FROM student_account WHERE id_number = '" + DropDownList22.SelectedValue.ToString() + "')";
                using (SqlDataReader read = com.ExecuteReader())
                {
                    while (read.Read())
                    {
                        Label67.Text = (read["first_name"].ToString());
                        TextBox39.Text = (read["students_phonenumber"].ToString());
                    }
                }
                con.Close();
            }
            catch (Exception a)
            {
                Response.Write(a.Message);
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                com.Connection = con;
                com = new SqlCommand("insert_student_messages", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@sender", Label68.Text);
                com.Parameters.AddWithValue("@receiver", DropDownList22.SelectedValue.ToString());
                com.Parameters.AddWithValue("@r_message", TextBox38.Text);
                com.ExecuteNonQuery();
                con.Close();
                GridView8.DataBind();

                string cntcode = DropDownList27.SelectedValue.ToString();
                string mnumber = TextBox39.Text;
                string destination_num = cntcode + mnumber;
                string msg = TextBox38.Text;
                string result;
                String message1 = HttpUtility.UrlEncode(msg);
                using (var wb = new WebClient())
                {
                    byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection() { { "apikey", "p26yp5eQcJo-D5qmXO9sBwbplHYqPIKncxL4ubk9Ut" }, { "numbers", destination_num }, { "message", message1 }, { "sender", "TXTLCL" } });
                    result = System.Text.Encoding.UTF8.GetString(response);

                    Label82.Text = "Message Sent to "+destination_num+" Successfully";
                }
            }
            catch (Exception er)
            {
                Response.Write(er.Message);
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            con.Open();
            com.Connection = con;
            com = new SqlCommand("insert_student_mark", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@student_id", DropDownList13.SelectedValue.ToString());
            com.Parameters.AddWithValue("@student_name", DropDownList14.SelectedValue.ToString());
            com.Parameters.AddWithValue("@class", DropDownList15.SelectedValue.ToString());
            com.Parameters.AddWithValue("@section", DropDownList16.SelectedValue.ToString());
            com.Parameters.AddWithValue("@timetable_id", DropDownList17.SelectedValue.ToString());
            com.Parameters.AddWithValue("@examtype", DropDownList18.SelectedValue.ToString());
            com.Parameters.AddWithValue("@date", TextBox23.Text);
            com.Parameters.AddWithValue("@session", DropDownList21.SelectedValue.ToString());
            com.Parameters.AddWithValue("@subject_id", DropDownList19.SelectedValue.ToString());
            com.Parameters.AddWithValue("@subject_name", DropDownList20.SelectedValue.ToString());
            com.Parameters.AddWithValue("@mark", TextBox22.Text);
            com.ExecuteNonQuery();
            con.Close();
            GridView4.DataBind();
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                com.Connection = con;
                com.CommandText = "(SELECT * FROM student_acccount)";
                using (SqlDataReader read = com.ExecuteReader())
                {
                    while (read.Read())
                    {
                        Label67.Text = (read["first_name"].ToString());
                    }
                }
                con.Close();
            }
            catch (Exception a)
            {
                Response.Write(a.Message);
            }
            con.Close();
            con.Open();
            com.Connection = con;
            com.CommandText = "(SELECT SUM(mark) FROM student_mark WHERE student_id=" + DropDownList23.SelectedValue.ToString() + " AND timetable_id=" + DropDownList24.SelectedValue.ToString() + ")";
            double tot_mark = (double)com.ExecuteScalar();
            Label72.Text = Convert.ToString(tot_mark);
            con.Close();
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            con.Open();
            com.Connection = con;
            com = new SqlCommand("insert_total_mark", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@student_id", DropDownList23.SelectedValue.ToString());
            com.Parameters.AddWithValue("@timetable_id", DropDownList24.SelectedValue.ToString());
            com.Parameters.AddWithValue("@total_mark", Label72.Text);
            com.ExecuteNonQuery();
            con.Close();

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

        protected void Button12_Click(object sender, EventArgs e)
        {
            con.Open();
            com.Connection = con;
            com.CommandText = "(SELECT COUNT(*) FROM event_participants WHERE event_id=" + DropDownList25.SelectedValue.ToString() + " )";
            int eventseatavail = (int)com.ExecuteScalar();
            Label77.Text = Convert.ToString(eventseatavail);
            con.Close();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            con.Open();
            com.Connection = con;
            com = new SqlCommand("insert_school_activity", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@activity_id", TextBox30.Text);
            com.Parameters.AddWithValue("@activity_name", TextBox31.Text);
            com.Parameters.AddWithValue("@coordinator", TextBox32.Text);
            com.Parameters.AddWithValue("@trainer", TextBox33.Text);
            com.Parameters.AddWithValue("@session", DropDownList26.SelectedValue.ToString());
            com.Parameters.AddWithValue("@date", TextBox35.Text);
            com.ExecuteNonQuery();
            con.Close();
            GridView6.DataBind();
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                com.Connection = con;
                com.CommandText = "(SELECT subject_name,mark FROM student_mark WHERE student_id = '" + DropDownList22.SelectedValue.ToString() + "' AND timetable_id='" + DropDownList28.SelectedValue.ToString() + "')";
                using (SqlDataReader read = com.ExecuteReader())
                {
                    while (read.HasRows)
                    {
                        while (read.Read())
                        {

                            TextBox38.Text = (read["subject_name"].ToString()) + ":" + (read["mark"].ToString());
                        }
                        read.NextResult();
                    }
                }
                con.Close();
            }
            catch (Exception a)
            {
                Response.Write(a.Message);
            }
        }
    }

}