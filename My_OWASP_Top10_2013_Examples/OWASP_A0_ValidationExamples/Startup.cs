using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(OWASP_A0_ValidationExamples.Startup))]
namespace OWASP_A0_ValidationExamples
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
