<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Recruitify.Login" Theme="Skin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <main>
            <header class="site-header">
                <div class="section-overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-12 text-center">
                            <h1 class="text-white">Log in</h1>
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb justify-content-center">
                                    <li class="breadcrumb-item"><a href="index.aspx">Home</a></li>

                                    <li class="breadcrumb-item active" aria-current="page">Log in</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </header>
  
            <section class="contact-section" style="padding:50px">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-8 col-12 mx-auto">
                            <div CssClass="custom-form contact-form">
                                <h2 class="text-center mb-4">Welcome Back</h2>
                                <div class="col-lg-12 col-12">
                                   <label for="email">Email Address<font>*</font></label>
                                        <asp:TextBox ID="txtLogEml" runat="server" CssClass="form-control" placeholder="Email" SkinID="txtinput" TextMode="Email"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter your Email" ControlToValidate="txtLogEml" Display="Static" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter appropriate email" ControlToValidate="txtLogEml" Display="Static" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>  
                                </div>

                                <div class="col-lg-12 col-12">
                                   <label for="password">Password<font>*</font></label>
                                        <asp:TextBox ID="txtLogPass" runat="server" CssClass="form-control" placeholder="Password" SkinID="txtinput" TextMode="Password" MaxLength="8"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Please enter password" ControlToValidate="txtLogPass" Display="Static" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>

                                <div class="col-lg-4 col-md-4 col-6 mx-auto">
                                    <asp:Button ID="btnlogin" SkinID="btnsubmit" runat="server" Text="Login" OnClick="btnlogin_Click" />
                                </div>
                                <br/>
                                <h5 style="text-align:center;">Don't have an account??&nbsp;<u><a href="Register.aspx"> Sign up</a></u></h5>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
</asp:Content>


