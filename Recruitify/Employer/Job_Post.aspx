<%@ Page Title="" Language="C#" MasterPageFile="~/Employer/EmployerMaster.Master" AutoEventWireup="true" CodeBehind="Job_Post.aspx.cs" Inherits="Recruitify.Employer.Job_Post" Theme="Skin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <main>
            <header class="site-header">
                <div class="section-overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-12 text-center">
                            <h1 class="text-white">Job Posting</h1>

                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb justify-content-center">
                                    <li class="breadcrumb-item"><a href="index.aspx">Home</a></li>

                                    <li class="breadcrumb-item active" aria-current="page">Job Posting</li>
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
                            <div CssClass="custom-form contact-form" >
                            <%--<form class="custom-form contact-form" enctype="multipart/form-data" method="post" role="form">--%>
                                <h2 class="text-center mb-4">Add the job</h2>

                                <div class="row">
                                    <div class="col-lg-12 col-12">
                                        <label for="job-title">Job Title<font>*</font></label>

                                        <asp:TextBox ID="txtJobTitle" CssClass="form-control" placeholder="Job Title" runat="server" SkinID="emp_txtinput"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter job title" Display="Static" ControlToValidate="txtJobTitle"></asp:RequiredFieldValidator>
                                        <%--<input type="text" name="job-title" id="job-title" class="form-control" placeholder="Job Title" required>--%>
                                    </div>

                                    <div class="col-lg-12 col-12">
                                        <label for="job-desc">Description<font>*</font></label>
                                        <asp:TextBox ID="txtJobDesc" CssClass="form-control" placeholder="About Job" runat="server" TextMode="MultiLine" SkinID="emp_txtinput"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter job description" Display="Static" ControlToValidate="txtJobTitle"></asp:RequiredFieldValidator>
                                        <%--<textarea name="desc" id="desc" class="form-control" placeholder="About Job" required></textarea>--%>
                                    </div>

                                    <div class="col-lg-12 col-12">
                                        <label for="job-reqs">Requirements<font>*</font></label>
                                        <asp:TextBox ID="txtJobReqs" CssClass="form-control" placeholder="Requirements" runat="server" TextMode="MultiLine" SkinID="emp_txtinput"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter job requirements" Display="Static" ControlToValidate="txtJobReqs"></asp:RequiredFieldValidator>
                                        <%--<textarea name="reqs" id="reqs" class="form-control" placeholder="Requirements" required></textarea>--%>
                                    </div>

                                    <div class="col-lg-12 col-12">
                                        <label for="job-desc">Benefits<font>*</font></label>
                                        <asp:TextBox ID="txtJobBenefits" CssClass="form-control" placeholder="Benefits" runat="server" TextMode="MultiLine" SkinID="emp_txtinput"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter job benefits" Display="Static" ControlToValidate="txtJobBenefits"></asp:RequiredFieldValidator>
                                        <%--<textarea name="benefit" id="benefit" class="form-control" placeholder="Benefits" required></textarea>--%>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="company">Company<font>*</font></label>  <u style="margin-left:50%"><a href="Company_Add.aspx" color="black">Add Your Company</a></u>
                                        <asp:DropDownList ID="ddlCompany" CssClass="form-select form-control" runat="server" SkinID="emp_ddl" BackColor="#E7F9A9">  
                                            <asp:ListItem Value="--Company--"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter company" Display="Static" ControlToValidate="ddlCompany"></asp:RequiredFieldValidator>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="Type">Job Type<font>*</font></label>

                                        <asp:DropDownList ID="ddlJobType" CssClass="form-select form-control" SkinID="emp_ddl" runat="server" BackColor="#E7F9A9">
                                            <asp:ListItem Value="--Job Type--"></asp:ListItem>
                                            <asp:ListItem value="Full Time">Full Time</asp:ListItem>
                                            <asp:ListItem value="Contract">Contract</asp:ListItem>
                                            <asp:ListItem value="Part Time">Part Time</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please select job type" Display="Static" ControlToValidate="ddlJobType"></asp:RequiredFieldValidator>
                                    </div>
                                    
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="salary">Salary<font>*</font></label>
                                        <asp:TextBox ID="txtJobSalary" CssClass="form-control" placeholder="Estimated Salary" runat="server" SkinID="emp_txtinput"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter estimated salary" Display="Static" ControlToValidate="txtJobSalary"></asp:RequiredFieldValidator>
                                        <%--<input type="number" name="salary" id="salary" class="form-control" placeholder="Estimated Salary" required>--%>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="city">City<font>*</font></label>
                                        <asp:TextBox ID="txtJobCity" CssClass="form-control" placeholder="City" runat="server" SkinID="emp_txtinput"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please Enter job city" Display="Static" ControlToValidate="txtJobCity"></asp:RequiredFieldValidator>
                                        <%--<input type="text" name="city" id="city" class="form-control" placeholder="City" required>--%>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="state">State</label>
                                        <asp:TextBox ID="txtJobState" CssClass="form-control" placeholder="State" runat="server" SkinID="emp_txtinput"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please Enter job state" Display="Static" ControlToValidate="txtJobState"></asp:RequiredFieldValidator>
                                        <%--<input type="text" name="state" id="state" class="form-control" placeholder="State">--%>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <label for="">Country<font>*</font></label>
                                        <asp:TextBox ID="txtJobCountry" CssClass="form-control" placeholder="Country" runat="server" SkinID="emp_txtinput"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please Enter job country" Display="Static" ControlToValidate="txtJobCountry"></asp:RequiredFieldValidator>
                                        <%--<input type="text" name="country" id="country" class="form-control" placeholder="Country" required >--%>
                                    </div>

                                    <div class="col-lg-12 col-12">
                                        <label for="job-img">Job Image<font>*</font></label>
                                        <asp:FileUpload ID="FuJobImage" CssClass="form-control custom-file-upload"  runat="server" SkinID="emp_upload" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Please select job cover image" Display="Static" ControlToValidate="fuJobImage"></asp:RequiredFieldValidator>
                                        <%--<input type="file" accept="image/jpeg,image/png,image/jpg" name="j-img" id="j-img" class="form-control" required>--%>
                                    </div>
                                    
                                    <div class="col-lg-4 col-md-4 col-6 mx-auto">
                                        <asp:Button ID="btnJobSave" runat="server" Text="Save" OnClick="btnJobSave_Click" SkinID="emp_btnsubmit"  />
                                        <%--<button type="submit" class="form-control" name="submit">Submit</button>--%>
                                    </div>
                                    <br/><br/><br/>
                                </div>
                            <%--</form>--%>
                            </div>
                        </div>
                    </div>       
                </div>            
            </section>
        </main>
</asp:Content>

