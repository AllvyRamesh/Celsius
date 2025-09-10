using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Celsius
{
    public partial class WebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

            }
        }

        protected void btnConvert_Click(object sender, EventArgs e)
        {

            double value;
            if (!double.TryParse(txtValue.Text, out value))
            {
                lblResult.Text = "Enter a valid number.";
                return;
            }

            string from = ddlFrom.SelectedValue;
            string to = ddlTo.SelectedValue;

            double? result = ConvertTemperature(value, from, to);

            if (result != null)
                lblResult.Text = $"{value} {from} = {result:F2} {to}";
            else
                lblResult.Text = "Invalid conversion.";
        }
        private double? ConvertTemperature(double value, string from, string to)
        {
            if (from == to) return value;

            // Normalize to Celsius
            double celsius;
            switch (from)
            {
                case "C": celsius = value; break;
                case "F": celsius = (value - 32) * 5.0 / 9.0; break;
                case "K": celsius = value - 273.15; break;
                default: return null;
            }

            // Convert Celsius to target
            switch (to)
            {
                case "C": return celsius;
                case "F": return celsius * 9.0 / 5.0 + 32;
                case "K": return celsius + 273.15;
                default: return null;
            }
        }
    }
}
