using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(NumToWordConverter.Startup))]
namespace NumToWordConverter
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
