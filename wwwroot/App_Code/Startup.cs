using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Periodicos1.Startup))]
namespace Periodicos1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
