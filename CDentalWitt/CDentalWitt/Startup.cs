using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CDentalWitt.Startup))]
namespace CDentalWitt
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
