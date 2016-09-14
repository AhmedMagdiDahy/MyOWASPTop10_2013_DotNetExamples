using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class _Default : System.Web.UI.Page
{
    private const int valideTimeInHoursToScheduleMeal = 10;

    protected void Page_Load(object sender, EventArgs e)
    {


    }

    /// <summary>
    /// good example that needs refactoring
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Calendar1_DayRender_(object sender, DayRenderEventArgs e)
    {
        if (DateTime.Compare(e.Day.Date, System.DateTime.Today) < 0)
        {
            e.Day.IsSelectable = false;
            e.Cell.ForeColor = System.Drawing.Color.Red;
        }


        if (e.Day.Date == DateTime.Today)
        {
            if (isValidTimeOfDayToScheduleMeal())
            {
                e.Day.IsSelectable = false;
                e.Cell.ForeColor = System.Drawing.Color.Red;
                e.Cell.BackColor = ColorTranslator.FromHtml("#F4F4F4");
                if (!Page.IsPostBack)
                {
                    Calendar1.SelectedDate = DateTime.Today.AddDays(1);
                }
            }


        }
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (DateTime.Compare(e.Day.Date, System.DateTime.Today) < 0)
        {
            e.Day.IsSelectable = false;
            e.Cell.ForeColor = System.Drawing.Color.Red;
        }


        if (e.Day.Date == DateTime.Today)
        {
            if (isValidTimeOfDayToScheduleMeal())
            {
                e.Day.IsSelectable = false;
                e.Cell.ForeColor = System.Drawing.Color.Red;
                e.Cell.BackColor = ColorTranslator.FromHtml("#F4F4F4");
                if (!Page.IsPostBack)
                {
                    Calendar1.SelectedDate = DateTime.Today.AddDays(1);
                }
            }
        }
    }

    private bool isValidTimeOfDayToScheduleMeal()
    {
        //refactor magic number
        //return DateTime.Now.TimeOfDay > DateTime.Today.AddHours(10).TimeOfDay;
        return DateTime.Now.TimeOfDay > DateTime.Today.AddHours(valideTimeInHoursToScheduleMeal).TimeOfDay;
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        string dataEscolhida = Calendar1.SelectedDate.ToShortDateString();
        string scriptInfo = "alert('" + "ok para dia: " + dataEscolhida + "');";

        //VERIFICAR NOVAMENTE A VALIDADE DA DATA!!

        ClientScript.RegisterStartupScript(this.GetType(), "infoOK", scriptInfo, true);
    }
}