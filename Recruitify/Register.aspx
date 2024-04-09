<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Recruitify.Register" Theme="Skin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <main>
        

            <header class="site-header">
                <div class="section-overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-12 text-center">
                            <h1 class="text-white">Register</h1>

                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb justify-content-center">
                                    <li class="breadcrumb-item"><a href="index.aspx">Home</a></li>

                                    <li class="breadcrumb-item active" aria-current="page">Register</li>
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
                            <h2 class="text-center mb-4">Welcome to Recruitify</h2>
                                <asp:Label ID="lblMessage" runat="server" class="ErrorPopup" Visible="false"></asp:Label>
                                

                                <div class="row">
                                    <div class="col-lg-12 col-12">
                                        <center>
                                            <b style="font-size:25px"><label for="type">Register as<font>*</font></label></b>
                                                    <asp:RadioButtonList ID="rblRegAs" runat="server" SkinID="radios" Font-Bold="True">
                                                        <asp:ListItem Value="1" style="margin-right:20px">Job Seeker</asp:ListItem>
                                                        <asp:ListItem Value="2">Employer</asp:ListItem>
                                                    </asp:RadioButtonList>
                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select either jobseeker or employer.." ForeColor="Red" ControlToValidate="rblRegAs"></asp:RequiredFieldValidator>--%>
                                        </center>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="first-name">First Name<font>*</font></label>
                                        <asp:TextBox ID="txtRegFnm" runat="server" CssClass="form-control" placeholder="First Name" SkinID="txtinput"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter your first name" ControlToValidate="txtRegFnm" ForeColor="Red" Display="Static"></asp:RequiredFieldValidator>--%>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="last-name">Last Name<font>*</font></label>
                                        <asp:TextBox ID="txtRegLnm" runat="server" CssClass="form-control" placeholder="Last Name" SkinID="txtinput"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Enter your last name" ControlToValidate="txtRegLnm" ForeColor="Red" Display="Static"></asp:RequiredFieldValidator>--%>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="email">Email Address<font>*</font></label>
                                        <asp:TextBox ID="txtRegEml" runat="server" CssClass="form-control" placeholder="Email" SkinID="txtinput" TextMode="Email"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter your email" ControlToValidate="txtRegEml"  ForeColor="Red"  Display="Static"></asp:RequiredFieldValidator>--%>
                                        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter appropriate email" ControlToValidate="txtRegEml" ForeColor="Red" Display="static" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>--%>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="dob">Date of Birth<font>*</font></label>
                                        <asp:TextBox ID="txtRegDob" runat="server" CssClass="form-control" TextMode="Date" SkinID="txtinput"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter your birth date" ControlToValidate="txtRegDob" ForeColor="Red" Display="Static"></asp:RequiredFieldValidator>--%>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="gender">Gender<font>*</font></label>
                                            <asp:RadioButtonList ID="rblRegGen" runat="server" SkinID="radios">
                                                <asp:ListItem Value="Male" style="margin-right:20px"></asp:ListItem>
                                                <asp:ListItem Value="Female" style="margin-right:20px"></asp:ListItem>
                                                <asp:ListItem Value="Other" ></asp:ListItem>
                                            </asp:RadioButtonList>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please select your gender" ControlToValidate="rblRegGen" ForeColor="Red" Display="Static"></asp:RequiredFieldValidator>--%>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="mobile" style="display:block">Mobile<font>*</font></label>
                                        <asp:TextBox ID="txtRegMbl" runat="server" CssClass="form-control" TextMode="Phone" MaxLength="10" placeholder="Mobile" SkinID="txtinput"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter your mobile number" ControlToValidate="txtRegMbl" ForeColor="Red" Display="Static"></asp:RequiredFieldValidator>--%>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="city">City<font>*</font></label>
                                        <asp:TextBox ID="txtRegCity" runat="server" CssClass="form-control" placeholder="City" SkinID="txtinput" ></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please enter your city" ControlToValidate="txtRegCity" ForeColor="Red" Display="Static"></asp:RequiredFieldValidator>--%>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="State">State<font>*</font></label>
                                        <asp:TextBox ID="txtRegState" runat="server" CssClass="form-control" placeholder="State" SkinID="txtinput" ></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please enter your state" ControlToValidate="txtRegState" ForeColor="Red" Display="Static"></asp:RequiredFieldValidator>--%>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="country">Country<font>*</font></label>
                                        <asp:TextBox ID="txtRegCountry" runat="server" CssClass="form-control" placeholder="Country" SkinID="txtinput" ></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please enter your country" ControlToValidate="txtRegCountry" ForeColor="Red" Display="Static"></asp:RequiredFieldValidator>--%>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="Profile">Profile Photo<font>*</font></label>
                                        <asp:FileUpload ID="FuRegImage" CssClass="form-control custom-file-upload"  runat="server" SkinID="upload" />
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please select your profile picture" ControlToValidate="fuRegImage" ForeColor="Red" Display="Static"></asp:RequiredFieldValidator>--%>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="password">Password<font>*</font></label>
                                        <asp:TextBox ID="txtRegPass" runat="server" CssClass="form-control" placeholder="Password" SkinID="txtinput" TextMode="Password" MaxLength="8"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Please enter password" ControlToValidate="txtRegPass" ForeColor="Red" Display="Static"></asp:RequiredFieldValidator>--%>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="Cpassword">Confirm Password<font>*</font></label>
                                        <asp:TextBox ID="txtRegCPass" runat="server" CssClass="form-control" placeholder="Confirm Password" SkinID="txtinput" TextMode="Password" MaxLength="8"></asp:TextBox>
                                        <%--<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password doesn't match" ControlToCompare="txtRegCPass" ControlToValidate="txtRegPass" ForeColor="Red"></asp:CompareValidator></div>--%>

                                    
                                    <div class="col-lg-4 col-md-4 col-6 mx-auto">
                                        <asp:Button ID="btnRegister" runat="server" Text="Register" SkinID="btnsubmit" OnClick="btnRegister_Click" /> 
                                        <%--<asp:LinkButton ID="btnRegister" runat="server" Text="Register" SkinID="btnsubmit" OnClick="btnRegister_Click" />--%>

                                    </div>
                                    <br/><br/><br />
                                    <h5 style="text-align:center">Already have an account??&nbsp;<u><a href="login.aspx">Log in</a></u></h5>
                                </div>
                            </div>
                        </div>
                    </div>       
                </div> 
            </section>
        </main>
</asp:Content>


