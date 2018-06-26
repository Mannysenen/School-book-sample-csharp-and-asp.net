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
    public partial class create_fr1user : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = MARANS-DESKTOP ; Initial Catalog = school_book_db ; Integrated Security = true ");
        SqlCommand com = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.AutoPostBack = true;

                DropDownList1.Items.Insert(0, "---SELECT---");

                DropDownList1.Items.Add("Male");
                DropDownList1.Items.Add("Female");

                DropDownList2.Items.Add("1");
                DropDownList2.Items.Add("2");
                DropDownList2.Items.Add("3");
                DropDownList2.Items.Add("4");
                DropDownList2.Items.Add("5");
                DropDownList2.Items.Add("6");
                DropDownList2.Items.Add("7");
                DropDownList2.Items.Add("8");
                DropDownList2.Items.Add("9");
                DropDownList2.Items.Add("10");

                DropDownList3.Items.Add("A");
                DropDownList3.Items.Add("B");
                DropDownList3.Items.Add("C");
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                string folderPath = Server.MapPath("~/Files/");

                //Check whether Directory (Folder) exists.
                if (!Directory.Exists(folderPath))
                {
                    //If Directory (Folder) does not exists Create it.
                    Directory.CreateDirectory(folderPath);
                }

                //Save the File to the Directory (Folder).
                FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

                //Display the Picture in Image control.
                Image1.ImageUrl = "~/Files/" + Path.GetFileName(FileUpload1.FileName);
                Label28.Visible = true;
                Label28.Text = Image1.ImageUrl.ToString();
            }

            catch (Exception ex)
            {
                Label28.Visible = true;
                Label28.Text = "No Image Selected";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                HttpPostedFile postedfile = FileUpload1.PostedFile;
                string filename = Path.GetFileName(postedfile.FileName);
                string fileextension = Path.GetExtension(filename);
                int filesize = postedfile.ContentLength;

                if (fileextension.ToLower() == ".jpg" || fileextension.ToLower() == ".png" || fileextension.ToLower() == ".gif" || fileextension.ToLower() == ".bmp")
                {
                    Stream stream = postedfile.InputStream;
                    BinaryReader br = new BinaryReader(stream);
                    byte[] byts = br.ReadBytes((int)stream.Length);

                    con.Open();
                    com.Connection = con;
                    com = new SqlCommand("create_student_account", con);
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@id_number", TextBox1.Text);
                    com.Parameters.AddWithValue("@first_name", TextBox2.Text);
                    com.Parameters.AddWithValue("@last_name", TextBox3.Text);
                    com.Parameters.AddWithValue("@class", DropDownList2.SelectedValue.ToString());
                    com.Parameters.AddWithValue("@section", DropDownList3.SelectedValue.ToString());
                    com.Parameters.AddWithValue("@dob", TextBox22.Text);
                    com.Parameters.AddWithValue("@stdate", TextBox23.Text);
                    com.Parameters.AddWithValue("@gender", DropDownList1.SelectedValue.ToString());
                    com.Parameters.AddWithValue("@fathers_name", TextBox14.Text);
                    com.Parameters.AddWithValue("@mothers_name", TextBox15.Text);
                    com.Parameters.AddWithValue("@fathers_occupation", TextBox16.Text);
                    com.Parameters.AddWithValue("@mothers_occupation", TextBox17.Text);
                    com.Parameters.AddWithValue("@fathers_phonenumber", TextBox18.Text);
                    com.Parameters.AddWithValue("@mothers_phonenumber", TextBox19.Text);
                    com.Parameters.AddWithValue("@fathers_emailid", TextBox20.Text);
                    com.Parameters.AddWithValue("@mothers_emailid", TextBox21.Text);
                    com.Parameters.AddWithValue("@students_address", TextBox4.Text);
                    com.Parameters.AddWithValue("@students_city", TextBox5.Text);
                    com.Parameters.AddWithValue("@students_state", TextBox6.Text);
                    com.Parameters.AddWithValue("@students_country", TextBox7.Text);
                    com.Parameters.AddWithValue("@students_pincode", TextBox8.Text);
                    com.Parameters.AddWithValue("@students_phonenumber", TextBox9.Text);
                    com.Parameters.AddWithValue("@students_emailid", TextBox10.Text);
                    com.Parameters.AddWithValue("@students_username", TextBox11.Text);
                    com.Parameters.AddWithValue("@students_password", TextBox12.Text);
                    com.Parameters.AddWithValue("@photo_name", filename);
                    com.Parameters.AddWithValue("@photo_size", filesize);
                    com.Parameters.AddWithValue("@photo_data", byts);
                    com.ExecuteNonQuery();
                    con.Close();
                }
            }
            catch (Exception p)
            {
                Response.Write(p.Message);
            }
        }
    }
}