using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(NumtoWrdConvert.Startup))]
namespace NumtoWrdConvert
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
