using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comp2084_lesson4
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnShowCountry_Click(object sender, EventArgs e)
        {
            //show a message that includes the selected country in the country label
            //all of the below show the same value of the selected option
            //lblCountry.Text = "You selected: " + ddlCountry.SelectedItem.Value;
            //lblCountry.Text = "You selected: " + ddlCountry.SelectedValue;
            lblCountry.Text = "You selected: " + ddlCountry.Text;

            //to access the text instead, use this:
            lblCountry.Text = "You selected: " + ddlCountry.SelectedItem.Text;

            //also show the province selection
            lblProvince.Text = "You selected: " + rblProvince.SelectedItem.Text;
        }

        protected void btnOrderPizza_Click(object sender, EventArgs e)
        {
            //first clear the topping list
            lblToppings.Text = "";

            //loop through each topping and check if each item was selected
            foreach (ListItem topping in cblToppings.Items) {
                if (topping.Selected)
                {
                    //if the user clicked the current topping, add to the topping label for display
                    lblToppings.Text = lblToppings.Text + topping.Text + " ";
                }
            }
        }
    }
}