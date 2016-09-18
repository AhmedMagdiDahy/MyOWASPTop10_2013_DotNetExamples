using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class Calendar : System.Web.UI.Page
{
    private const int valideTimeInHoursToScheduleMeal = 10;
    private Boolean validarDataCalendario;

    protected void Page_Load(object sender, EventArgs e)
    {
        validarDataCalendario = true;
        if (Request.QueryString["validar"] != null)
        {
            validarDataCalendario = true;
        }
        else
        {
            validarDataCalendario = false;
        }

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
            if (isValidTimeOfDayToScheduleMeal_())
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

    private bool isValidTimeOfDayToScheduleMeal_()
    {
        //refactor magic number
        //return DateTime.Now.TimeOfDay > DateTime.Today.AddHours(10).TimeOfDay;
        return DateTime.Now.TimeOfDay > DateTime.Today.AddHours(valideTimeInHoursToScheduleMeal).TimeOfDay;
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        //DateTime renderedDate = e.Day.Date;

        //DateTime maxDateHourToSchedule = DateTime.Today.AddHours(10);
        //bool sameDay = renderedDate.Date == maxDateHourToSchedule.Date;

        //bool isValidTimeOfDayToScheduleMeal = (sameDay && DateTime.Now > maxDateHourToSchedule )  || renderedDate.Date < maxDateHourToSchedule.Date ;

        if (isInValidTimeOfDayToScheduleMeal(e.Day.Date))
        {
            e.Day.IsSelectable = false;
            e.Cell.ForeColor = System.Drawing.Color.Red;
        }

        //if (sameDay) // refactoring the previous code to a new method removed access to this computed value...
        if (e.Day.Date == DateTime.Now.Date)
        {
            e.Cell.BackColor = Color.Cyan;
        }
    }


    private bool isInValidTimeOfDayToScheduleMeal(DateTime date)
    {
        //refactor magic number

        DateTime maxDateHourToSchedule = DateTime.Today.AddHours(valideTimeInHoursToScheduleMeal);
        bool sameDay = date.Date == maxDateHourToSchedule.Date;

        //refactor do not need this extra variable
        //bool isValidTimeOfDayToScheduleMeal = (sameDay && DateTime.Now > maxDateHourToSchedule) || renderedDate.Date < maxDateHourToSchedule.Date;
        //return isValidTimeOfDayToScheduleMeal;

        return (sameDay && DateTime.Now > maxDateHourToSchedule) || date.Date < maxDateHourToSchedule.Date;
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        string dataEscolhida = Calendar1.SelectedDate.ToShortDateString();
        string scriptInfo = "";

        //VERIFICAR NOVAMENTE A VALIDADE DA DATA!!
        if (validarDataCalendario && isInValidTimeOfDayToScheduleMeal(Calendar1.SelectedDate))
        {

            scriptInfo = "alert('" + "Não pode selecionar a data: " + dataEscolhida + "');";
        }

        else
        {

            scriptInfo = "alert('" + "ok para dia: " + dataEscolhida + "');";

        }

        ClientScript.RegisterStartupScript(this.GetType(), "infoOK", scriptInfo, true);
    }
}