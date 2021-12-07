<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script src="https://global.oktacdn.com/okta-signin-widget/5.1.5/js/okta-sign-in.min.js" type="text/javascript"></script>
    <link href="https://global.oktacdn.com/okta-signin-widget/5.1.5/css/okta-sign-in.min.css" type="text/css" rel="stylesheet"/>
    <script src="Scripts/jquery-3.4.1.min.js" type="text/javascript"></script>
    
    <div class="jumbotron">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login - giants.oktapreview.com" /> 
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Logout" />
    </div> 

    <div class="row">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Content/il_794xN.1252235423_3wlk.jpg" />
        <br />
        <br />
&nbsp;
    </div>

    <div id="okta-login-container"></div>
    <input type="hidden" name="sessionToken" id="hiddenSessionTokenField" />
<%--    <script type="text/javascript">
        var signIn = new OktaSignIn({
            baseUrl: '<%= System.Configuration.ConfigurationManager.AppSettings["okta:OktaDomain"].ToString() %>'
        });

        signIn.renderEl({
            el: '#okta-login-container'
        }, function success(res) {
            if (res.status === 'SUCCESS') {
                var sessionTokenField = $("#hiddenSessionTokenField");
                sessionTokenField.val(res.session.token);
                var form = sessionTokenField.parent();
                form.submit();
                console.log('sessionToken', res.session.token);
            } else {
                // The user can be in another authentication state that requires further action.
                // For more information about these states, see:
                //   https://github.com/okta/okta-signin-widget#rendereloptions-success-error
            }
        });
    </script>--%>
</asp:Content>
