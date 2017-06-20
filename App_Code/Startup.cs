using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Habits.Startup))]
namespace Habits
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
