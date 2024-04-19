using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Training_project.Startup))]
namespace Training_project
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
