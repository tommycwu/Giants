using System.Collections.Generic;
using System.Configuration;
using System.Web;
using Microsoft.Owin;
using Microsoft.Owin.Security;
using Microsoft.Owin.Security.Cookies;
using Okta.AspNet;
using Owin;

[assembly: OwinStartup(typeof(WebApplication1.Startup))]

namespace WebApplication1
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            app.SetDefaultSignInAsAuthenticationType(CookieAuthenticationDefaults.AuthenticationType);

            app.UseCookieAuthentication(new CookieAuthenticationOptions()
            {
                LoginPath = new PathString("/Login.aspx"),
            });

            app.UseOktaMvc(new OktaMvcOptions()
            {
                OktaDomain = "https://baseball.oktapreview.com",//->giants.oktapreview.com
                ClientId = "0oa6yvej1CibQ2pVa1d6",
                ClientSecret = "-MaZ0wYKwv7qffYGBjyqnnRhjH8toWtW1rvK6pTX",
                RedirectUri = "https://localhost:44382",
                PostLogoutRedirectUri = "https://localhost:44382",
                Scope = new List<string> { "openid", "profile" },
                LoginMode = LoginMode.OktaHosted,
            });
        }
    }
}
