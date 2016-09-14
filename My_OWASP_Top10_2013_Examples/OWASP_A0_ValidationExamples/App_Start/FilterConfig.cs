using System.Web;
using System.Web.Mvc;

namespace OWASP_A0_ValidationExamples
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
