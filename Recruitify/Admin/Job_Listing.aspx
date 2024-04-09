<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Job_Listing.aspx.cs" Inherits="Recruitify.Admin.Job_Listing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <main>

            <header class="site-header">
                <div class="section-overlay"></div>

                <div class="container">
                    <div class="row">
                        
                        <div class="col-lg-12 col-12 text-center">
                            <h1 class="text-white">Jobs</h1>

                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb justify-content-center">
                                    <li class="breadcrumb-item"><a href="index.php">Home</a></li>

                                    <li class="breadcrumb-item active" aria-current="page">Jobs</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </header>

            <section class="job-section section-padding">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-12 col-12">
                            <h1 style="text-align:center">Jobs</h1>
                        </div>

                        
                        <asp:DataList ID="jobList" runat="server" OnItemCommand="jobList_ItemCommand">

                            <ItemTemplate>
                                <div class="col-lg-12 col-12"> 
                                    <div class="job-thumb d-flex">
                                        <div class="job-image-wrap bg-white shadow-lg" style="align-items:center;justify-content:center;display:grid">
                                            <asp:Image ID="Image1" runat="server" CssClass="avatar-image img-fluid" ImageUrl='<%# Eval("C_Logo") %>' />
                                        </div>
                                
                                        <div class="job-body d-flex flex-wrap flex-auto align-items-center ms-4">
                                            <div class="mb-3">
                                                <h4 class="job-title mb-lg-0">
                                                    <asp:LinkButton ID="LinkButton1" class="job-title-link" runat="server" CommandArgument='<%# Eval("J_Id") %>' Text='<%# Eval("J_Title") %>'></asp:LinkButton>
                                                </h4>
                                                <div class="d-flex flex-wrap align-items-center">
                                                    <p class="job-location mb-0">
                                                        <i class="custom-icon bi-geo-alt me-1"></i>
                                                            <asp:Label ID="lblCity" runat="server" Text='<%# Eval("J_City") +", "+Eval("J_Country") %>'></asp:Label>
                                                    </p>
                                                    <p class="job-date mb-0">
                                                        <iconify-icon icon="bi:globe">
                        </iconify-icon>
                                                        <asp:Label ID="lblPostedBy" runat="server" Text='<%# "Posted by " + Eval("U_First_Name")+" "+Eval("U_Last_Name") %>'  ></asp:Label>
                                                    </p>
                                                    <p class="job-price mb-0" style="margin-left:0;" >
                                                       <i class="fas fa-wallet"></i>
                                                        <b><asp:Label ID="lblSalary" runat="server" Text='<%# Eval("J_Salary") %>'></asp:Label></b>
                                                    </p>
                                                    <div class="d-flex">
                                                        <p class="mb-0">
                                                            <asp:Label ID="lblJobType" runat="server" class="badge" Text='<%# Eval("J_Type") %>'></asp:Label>
                                                        </p>
                                                        <p class="mb-0">
                                                            <asp:Label ID="lblJobPostTime" class="badge badge-level" runat="server" Text='<%# "Posted at "+Eval("J_Post_Time") %>'></asp:Label>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="job-section-btn-wrap">
                                            <%--<form method="post">
                                                <input type="hidden" name="cid" value="'.$result['C_Id'].'">
                                                <button type="submit" name="delete" class="custom-btn btn">Delete</button>
                                            </form>--%>
                                            <asp:LinkButton ID="lbDltJob" runat="server" CssClass="custom-btn btn" CommandArgument='<%# Eval("J_Id") %>' CommandName="cmdJobDlt">Delete</asp:LinkButton>
                                        </div>

                                    </div>
                                    </div>
                        </ItemTemplate>
                    </asp:DataList>
                  </div>
                    </div>
            </section>
        </main>
</asp:Content>

