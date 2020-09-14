using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Students_registration.CLASSES;

namespace Students_registration.FORMS
{
    public partial class frmStudent : Form
    {
        public ListOfStudents ls = new ListOfStudents();
        public int received_selected_id;
        Student_reg sr = new Student_reg();

        public frmStudent()
        {
            InitializeComponent();
            this.received_selected_id = 0;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (this.btnSave.Text == "Update")
            {

                sr.first_name = txtFirstName.Text;
                sr.last_name = txtLastName.Text;
                sr.age = Convert.ToInt32(txtAge.Text);
                sr.gender = cboGender.Text;
                sr.address = txtAddress.Text;
                sr.updateStudent();
                MessageBox.Show("Student Updated!");
                System.Windows.Forms.Application.Exit();
            }
            else {
                sr.first_name = txtFirstName.Text;
                sr.last_name = txtLastName.Text;
                sr.age = Convert.ToInt32(txtAge.Text);
                sr.gender = cboGender.Text;
                sr.address = txtAddress.Text;
                sr.save();
                MessageBox.Show("New Student Added!");
                this.Close();

                if (CheckOpened("ListOfStudents"))
                {
                    sr.loadStudents(ls.lsvStudList);
                }
                else
                {
                    ListOfStudents ls = new ListOfStudents();
                    ls.ShowDialog();
                }

            }
            sr.loadStudents(ls.lsvStudList);
        }

        /*check form open or close*/
        private bool CheckOpened(string name)
        {
            FormCollection fc = Application.OpenForms;
            foreach (Form frm in fc)
            {
                if (frm.Text == name)
                {
                    return true;
                }
            }
            return false;
        }


        private void frmStudent_Load(object sender, EventArgs e)
        {
            if(this.received_selected_id!=0){
                sr.loadStudent(this.received_selected_id);
                this.txtFirstName.Text = sr.first_name;
                this.txtLastName.Text = sr.last_name;
                this.txtAge.Text = sr.age.ToString();
                this.cboGender.Text = sr.gender;
                this.txtAddress.Text = sr.address;
                this.btnSave.Text = "Update";
            }
        }

    }
}
