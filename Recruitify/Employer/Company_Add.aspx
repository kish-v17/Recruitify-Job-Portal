<%@ Page Title="" Language="C#" MasterPageFile="~/Employer/EmployerMaster.Master" AutoEventWireup="true" CodeBehind="Company_Add.aspx.cs" Inherits="Recruitify.Employer.Company_Add" Theme="Skin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <main>
            <header class="site-header">
                <div class="section-overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-12 text-center">
                            <h1 class="text-white">Add Company Information</h1>

                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb justify-content-center">
                                    <li class="breadcrumb-item"><a href="index.php">Home</a></li>

                                    <li class="breadcrumb-item active" aria-current="page">Company Info</li>
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
                            <%--<form class="custom-form contact-form" enctype="multipart/form-data" method="post" role="form">--%>
                            <div class="custom-form contact-form">
                                <h2 class="text-center mb-4">Add Company Details</h2>
                                
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="Company Name">Company Name<font>*</font></label>
                                        <asp:TextBox ID="txtCname" runat="server" SkinID="emp_txtinput" CssClass="form-control" placeholder="Company"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter company name" ForeColor="Red" ControlToValidate="txtCname" Display="Static"></asp:RequiredFieldValidator>
                                        <%--<input type="text" name="cname" id="cname" class="form-control" placeholder="Company" required>--%>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="Business Stream">Business Stream<font>*</font></label>
                                        <asp:TextBox ID="txtCstream" runat="server" SkinID="emp_txtinput" CssClass="form-control" placeholder="Business Stream"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter business stream" ForeColor="Red" ControlToValidate="txtCstream" Display="Static"></asp:RequiredFieldValidator>

                                        <%--<input type="text" name="stream" id="stream" class="form-control" placeholder="Business Stream" required>--%>
                                    </div>

                                    <div class="col-lg-12 col-12">
                                        <label for="job-desc">Description<font>*</font></label>
                                        <asp:TextBox ID="txtCdesc" runat="server" SkinID="emp_txtinput" TextMode="MultiLine" CssClass="form-control" placeholder="About Company"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter company Description" ForeColor="Red" ControlToValidate="txtCdesc" Display="Static"></asp:RequiredFieldValidator>

                                        <%--<textarea name="cdesc" id="cdesc" class="form-control" placeholder="About Company" required></textarea>--%>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="EstYear">Establishment<font>*</font></label>
                                        <asp:TextBox ID="txtCEYear" runat="server" SkinID="emp_txtinput" CssClass="form-control" placeholder="Establish Year"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter Establish month and year" ForeColor="Red" ControlToValidate="txtCEYear" Display="Static"></asp:RequiredFieldValidator>
                                        <%--<input type="month" name="estyear" id="estyear" class="form-control" placeholder="Establish Year" value="2001-01" required>--%>
                                    </div>
                                    
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="Website">Website<font>*</font></label>
                                        <asp:TextBox ID="txtCweb" runat="server" SkinID="emp_txtinput" TextMode="Url" CssClass="form-control" placeholder="Website"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter company website" ForeColor="Red" ControlToValidate="txtCweb" Display="Static"></asp:RequiredFieldValidator>
                                        <%--<input type="text" name="web" id="web" class="form-control" placeholder="Website" required>--%>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="mobile" style="display:block">Mobile<font>*</font></label>
                                        <asp:TextBox ID="txtCmbl" runat="server" SkinID="emp_txtinput" TextMode="Phone" CssClass="form-control" placeholder="Mobile"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter company contact number" ForeColor="Red" ControlToValidate="txtCmbl" Display="Static"></asp:RequiredFieldValidator>

                                        <%--<input type="tel" name="mobile" id="mobile" class="form-control" placeholder="Mobile" pattern={0-9}[10] required>--%>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="email">Email Address<font>*</font></label>
                                        <asp:TextBox ID="txtCeml" runat="server" SkinID="emp_txtinput" CssClass="form-control" placeholder="Email"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please enter company email" ForeColor="Red" ControlToValidate="txtCeml" Display="Static"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter appropriate email" ControlToValidate="txtCeml" ForeColor="Red" Display="None" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                         <%--<input type="email" name="email" id="email" pattern="[^ @]*@[^ @]*" class="form-control" placeholder="Email" required>--%>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="city">City<font>*</font></label>
                                        <asp:TextBox ID="txtCcity" runat="server" SkinID="emp_txtinput" CssClass="form-control" placeholder="City"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please enter company city" ForeColor="Red" ControlToValidate="txtCcity" Display="Static"></asp:RequiredFieldValidator>

                                        <%--<input type="text" name="city" id="city" class="form-control" placeholder="City" required>--%>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="state">State</label>
                                        <asp:TextBox ID="txtCstate" runat="server" SkinID="emp_txtinput" CssClass="form-control" placeholder="State"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please enter state" ForeColor="Red" ControlToValidate="txtCstate" Display="Static"></asp:RequiredFieldValidator>

                                        <%--<input type="text" name="state" id="state" class="form-control" placeholder="State" >--%>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="country">Country<font>*</font></label>
                                        <asp:TextBox ID="txtCcountry" runat="server" SkinID="emp_txtinput" CssClass="form-control" placeholder="Country"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please enter country" ForeColor="Red" ControlToValidate="txtCcountry" Display="Static"></asp:RequiredFieldValidator>

                                        <%--<input type="text" name="country" id="country" class="form-control" placeholder="Country" required >--%>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="com-logo">Company Logo<font>*</font></label>
                                        <asp:FileUpload ID="FuComLogo" CssClass="form-control custom-file-upload"  runat="server" SkinID="emp_upload" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Please select company logo" ForeColor="Red" ControlToValidate="fuComLogo" Display="Static"></asp:RequiredFieldValidator>

                                        <%--<input type="file" accept="image/jpeg,image/png,image/jpg" name="c-img" id="c-img" class="form-control" required>--%>
                                    </div>
                                    
                                    <div class="col-lg-4 col-md-4 col-6 mx-auto">
                                        <%--<button type="submit" class="form-control" name="submit">Submit</button>--%>
                                        <asp:LinkButton ID="btnCsubmit" runat="server" CssClass="form-control" Text="Submit" SkinID="emp_btnsubmit" OnClick="btnCsubmit_Click" />
                                    </div>
                                    <br/><br/><br/>
                                </div>
                            </div>
                        </div>
                    </div>       
                </div>            
            </section>
        </main>
</asp:Content>

