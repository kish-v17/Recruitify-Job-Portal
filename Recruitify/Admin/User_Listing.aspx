<%@ Page Title="" Language="C#" MasterPageFile="AdminMaster.Master" AutoEventWireup="true" CodeBehind="User_Listing.aspx.cs" Inherits="Recruitify.Admin.User_Listing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <main>

            <header class="site-header">
                <div class="section-overlay"></div>

                <div class="container">
                    <div class="row">
                        
                        <div class="col-lg-12 col-12 text-center">
                            <h1 class="text-white">Users</h1>

                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb justify-content-center">
                                    <li class="breadcrumb-item"><a href="index.php">Home</a></li>

                                    <li class="breadcrumb-item active" aria-current="page">Users</li>
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
                            <h1 style="text-align:center">Users</h1>
                        </div>

                        
                        <asp:DataList ID="userList" runat="server">

                            <ItemTemplate>
                                <div class="col-lg-12 col-12"> 
                                    <div class="job-thumb d-flex">
                                        <div class="job-image-wrap bg-white shadow-lg" style="align-items:center;justify-content:center;display:grid">
                                            <asp:Image ID="Image1" runat="server" CssClass="avatar-image img-fluid" ImageUrl='<%# "../" + Eval("U_Image") %>' />
                                        </div>
                                
                                        <div class="job-body d-flex flex-wrap flex-auto align-items-center ms-4">
                                            <div class="mb-3">
                                                <h4 class="job-title mb-lg-0">
                                                        <asp:Label ID="lblUser" runat="server" class="job-title-link" Text='<%# Eval("U_First_Name") +" "+Eval("U_Last_Name") %>'></asp:Label>
                                                </h4>
                                                <div class="d-flex flex-wrap align-items-center">
                                                    <p class="job-location mb-0" style="width:20%">
                                                        <i class="custom-icon bi-geo-alt me-1"></i>
                                                            <asp:Label ID="lblCity" runat="server" Text='<%# Eval("U_City") +", "+Eval("U_Country") %>'></asp:Label>
                                                    </p>

                                                    <p class="job-date mb-0" style="width:180px">
                                                        <asp:Label ID="lblEml" runat="server" Text='<%# Eval("U_Email") %>'></asp:Label>
                                                    </p>

                                                    <p class="job-price mb-0" style="margin-left:0;" >
                                                        <i class="custom-icon bi-telephone me-1"></i>
                                                        <asp:Label ID="lblMobile" runat="server" Text='<%# Eval("U_Mobile") %>'></asp:Label>
                                                    </p>
                                                    <div class="d-flex">
                                                        <p class="mb-0">
                                                            <asp:Label ID="lblUsertype" runat="server" class="badge" Text='<%# Eval("U_Type") %>'></asp:Label>
                                                        </p>
                                                        <p class="mb-0">
                                                            <asp:Label ID="lblRegDate" class="badge badge-level" runat="server" Text='<%# "Reg at " + Eval("U_Reg_Date") %>'></asp:Label>
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
                                            <asp:LinkButton ID="lbDltUser" runat="server" CssClass="custom-btn btn" CommandArgument='<%# Eval("U_Id") %>' CommandName="cmdUserDlt">Delete</asp:LinkButton>
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

