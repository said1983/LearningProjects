﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Msts.Topics.Chapter02.Lesson03
{
    public partial class PartialOutputCaching : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.msg.Text = DateTime.Now.ToString();
        }

        public static string CustomSubstitution(HttpContext contect)
        {
            return DateTime.Now.ToString();
        }
    }
}