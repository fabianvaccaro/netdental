using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(NetDentalFramework.Startup))]
namespace NetDentalFramework
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
