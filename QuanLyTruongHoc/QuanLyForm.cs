﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyTruongHoc
{
    public partial class QuanLyForm : Form
    {
        public QuanLyForm()
        {
            InitializeComponent();
        }

        private void btnQuanLyTaiKhoan_Click(object sender, EventArgs e)
        {
            Taotaikhoan taotaikhoan = new Taotaikhoan();
            taotaikhoan.Show();
        }
    }
}