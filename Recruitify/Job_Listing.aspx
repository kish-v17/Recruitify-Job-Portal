﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Job_Listing.aspx.cs" Inherits="Recruitify.Job_Listing" Theme="Skin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <main>

            <header class="site-header">
                <div class="section-overlay"></div>

                <div class="container">
                    <div class="row">
                        
                        <div class="col-lg-12 col-12 text-center">
                            <h1 class="text-white">Job Listings</h1>

                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb justify-content-center">
                                    <li class="breadcrumb-item"><a href="index.aspx">Home</a></li>

                                    <li class="breadcrumb-item active" aria-current="page">Job listings</li>
                                </ol>
                            </nav>
                        </div>

                    </div>
                </div>
            </header>

            <section class="section-padding pb-0 d-flex justify-content-center align-items-center">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-12 col-12">
                                <div class="custom-form hero-form">
                                <h3 class="text-white mb-3">Search your dream job</h3>
                                
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <div class="input-group">
                                            <span class="input-group-text" id="basic-addon1"><i class="bi-person custom-icon"></i></span>

                                            <%--<input type="text" name="job-title" id="job-title" class="form-control" placeholder="Job Title" required>--%>
                                            <asp:TextBox ID="txtSearchJobTitle" class="form-control" placeholder="Job Title" runat="server"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <div class="input-group">
                                            <span class="input-group-text" id="basic-addon2"><i class="bi-geo-alt custom-icon"></i></span>
                                            <asp:TextBox ID="txtSearchJobLocation" class="form-control" placeholder="Job Location" runat="server"></asp:TextBox>
                                            <%--<input type="text" name="job-location" id="job-location" class="form-control" placeholder="Location" required>--%>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-4 col-12">
                                        <div class="input-group">
                                            <span class="input-group-text" id="basic-addon3"><i class="bi-cash custom-icon"></i></span>

                                            <asp:DropDownList ID="ddlSearchSalary" CssClass="form-select form-control" runat="server">
                                                <asp:ListItem>Salary Range</asp:ListItem>
                                                <asp:ListItem>$300k - $500k</asp:ListItem>
                                                <asp:ListItem>$10000k - $45000k</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-4 col-12">
                                        <div class="input-group">
                                            <span class="input-group-text" id="basic-addon4"><i class="bi-laptop custom-icon"></i></span>

                                            <asp:DropDownList ID="ddlSearchJoblevel" CssClass="form-select form-control" runat="server">
                                                <asp:ListItem>Level</asp:ListItem>
                                                <asp:ListItem>Internship</asp:ListItem>
                                                <asp:ListItem>Junior</asp:ListItem>
                                                <asp:ListItem>Senior</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-4 col-12">
                                        <div class="input-group">
                                            <span class="input-group-text" id="basic-addon5"><i class="bi-laptop custom-icon"></i></span>

                                            <asp:DropDownList ID="DropDownList1" CssClass="form-select form-control" runat="server">
                                                <asp:ListItem>Remote</asp:ListItem>
                                                <asp:ListItem>Full Time</asp:ListItem>
                                                <asp:ListItem>Contract</asp:ListItem>
                                                <asp:ListItem>Part Time</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="col-lg-12 col-12">
                                        <asp:Button ID="btnSearchSubmit" CssClass="form-control" runat="server" Text="Search job" SkinID="btnSearchSubmit" />
                                    </div>

                                    <div class="col-12" style="margin-top:15px">
                                        <div class="d-flex flex-wrap align-items-center mt-4 mt-lg-0">
                                            <span class="text-white mb-lg-0 mb-md-0 me-2">Popular keywords:</span>

                                            <div>
                                                <a href="job-listings.aspx" class="badge">Web design</a>

                                                <a href="job-listings.aspx" class="badge">Marketing</a>

                                                <a href="job-listings.aspx" class="badge">Customer support</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                           </div>
                        </div>

                        <div class="col-lg-6 col-12">
                            <img src="images/4557388.png" class="hero-image img-fluid" alt="">
                        </div>

                    </div>
                </div>
            </section>


            <section class="job-section section-padding">
                <div class="container">
                    <div class="row align-items-center">

                        <div class="col-lg-6 col-12 mb-lg-4">
                            <h3>Results of 30-65 of 1500 jobs</h3>
                        </div>

                        <div class="col-lg-4 col-12 d-flex align-items-center ms-auto mb-5 mb-lg-4">
                            <p class="mb-0 ms-lg-auto">Sort by:</p>

                            <div class="dropdown dropdown-sorting ms-3 me-4">
                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownSortingButton" data-bs-toggle="dropdown" aria-expanded="false">
                                    Newest Jobs
                                </button>

                                <ul class="dropdown-menu" aria-labelledby="dropdownSortingButton">
                                    <li><a class="dropdown-item" href="#">Lastest Jobs</a></li>

                                    <li><a class="dropdown-item" href="#">Highed Salary Jobs</a></li>

                                    <li><a class="dropdown-item" href="#">Internship Jobs</a></li>
                                </ul>
                            </div>

                            <div class="d-flex">
                                <a href="#" class="sorting-icon active bi-list me-2"></a>

                                <a href="#" class="sorting-icon bi-grid"></a>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-12">
                            <div class="job-thumb job-thumb-box">
                                <div class="job-image-box-wrap">
                                    <a href="job-details.aspx">
                                        <img src="images/jobs/it-professional-works-startup-project.jpg" class="job-image img-fluid" alt="">
                                    </a>

                                    <div class="job-image-box-wrap-info d-flex align-items-center">
                                        <p class="mb-0">
                                            <a href="job-listings.aspx" class="badge badge-level">Internship</a>
                                        </p>

                                        <p class="mb-0">
                                            <a href="job-listings.aspx" class="badge">Freelance</a>
                                        </p>
                                    </div>
                                </div>

                                <div class="job-body">
                                    <h4 class="job-title">
                                        <a href="job-details.aspx" class="job-title-link">Technical Lead</a>
                                    </h4>

                                    <div class="d-flex align-items-center">
                                        <div class="job-image-wrap d-flex align-items-center bg-white shadow-lg mt-2 mb-4">
                                            <img src="images/logos/salesforce.png" class="job-image me-3 img-fluid" alt="">

                                            <p class="mb-0">Salesforce</p>
                                        </div>

                                        <a href="#" class="bi-bookmark ms-auto me-2">
                                        </a>

                                        <a href="#" class="bi-heart">
                                        </a>
                                    </div>

                                    <div class="d-flex align-items-center">
                                        <p class="job-location">
                                            <i class="custom-icon bi-geo-alt me-1"></i>
                                            Kuala, Malaysia
                                        </p>

                                        <p class="job-date">
                                            <i class="custom-icon bi-clock me-1"></i>
                                            10 hours ago
                                        </p>
                                    </div>

                                    <div class="d-flex align-items-center border-top pt-3">
                                        <p class="job-price mb-0">
                                            <i class="custom-icon bi-cash me-1"></i>
                                            $50k
                                        </p>

                                        <a href="job-details.aspx" class="custom-btn btn ms-auto">Apply now</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-12">
                            <div class="job-thumb job-thumb-box">
                                <div class="job-image-box-wrap">
                                    <a href="job-details.aspx">
                                        <img src="images/jobs/marketing-assistant.jpg" class="job-image img-fluid" alt="marketing assistant">
                                    </a>

                                    <div class="job-image-box-wrap-info d-flex align-items-center">
                                        <p class="mb-0">
                                            <a href="job-listings.aspx" class="badge badge-level">Senior</a>
                                        </p>

                                        <p class="mb-0">
                                            <a href="job-listings.aspx" class="badge">Part Time</a>
                                        </p>
                                    </div>
                                </div>

                                <div class="job-body">
                                    <h4 class="job-title">
                                        <a href="job-details.aspx" class="job-title-link">Marketing Assistant</a>
                                    </h4>

                                    <div class="d-flex align-items-center">
                                        <div class="job-image-wrap d-flex align-items-center bg-white shadow-lg mt-2 mb-4">
                                            <img src="images/logos/spotify.png" class="job-image me-3 img-fluid" alt="">

                                            <p class="mb-0">Spotify</p>
                                        </div>

                                        <a href="#" class="bi-bookmark ms-auto me-2">
                                        </a>

                                        <a href="#" class="bi-heart">
                                        </a>
                                    </div>

                                    <div class="d-flex align-items-center">
                                        <p class="job-location">
                                            <i class="custom-icon bi-geo-alt me-1"></i>
                                            California, USA
                                        </p>

                                        <p class="job-date">
                                            <i class="custom-icon bi-clock me-1"></i>
                                            8 days ago
                                        </p>
                                    </div>

                                    <div class="d-flex align-items-center border-top pt-3">
                                        <p class="job-price mb-0">
                                            <i class="custom-icon bi-cash me-1"></i>
                                            $20k
                                        </p>

                                        <a href="job-details.aspx" class="custom-btn btn ms-auto">Apply now</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-12">
                            <div class="job-thumb job-thumb-box">
                                <div class="job-image-box-wrap">
                                    <a href="job-details.aspx">
                                        <img src="images/jobs/coding-man.jpg" class="job-image img-fluid" alt="">
                                    </a>

                                    <div class="job-image-box-wrap-info d-flex align-items-center">
                                        <p class="mb-0">
                                            <a href="job-listings.aspx" class="badge badge-level">Junior</a>
                                        </p>

                                        <p class="mb-0">
                                            <a href="job-listings.aspx" class="badge">Contract</a>
                                        </p>
                                    </div>
                                </div>

                                <div class="job-body">
                                    <h4 class="job-title">
                                        <a href="job-details.aspx" class="job-title-link">Programmer</a>
                                    </h4>
                                        
                                    <div class="d-flex align-items-center">
                                        <div class="job-image-wrap d-flex align-items-center bg-white shadow-lg mt-2 mb-4">
                                            <img src="images/logos/twitter.png" class="job-image me-3 img-fluid" alt="">

                                            <p class="mb-0">Twiter</p>
                                        </div>

                                        <a href="#" class="bi-bookmark ms-auto me-2">
                                        </a>

                                        <a href="#" class="bi-heart">
                                        </a>
                                    </div>

                                    <div class="d-flex align-items-center">
                                        <p class="job-location">
                                            <i class="custom-icon bi-geo-alt me-1"></i>
                                            California, USA
                                        </p>

                                        <p class="job-date">
                                            <i class="custom-icon bi-clock me-1"></i>
                                            23 hours ago
                                        </p>
                                    </div>

                                    <div class="d-flex align-items-center border-top pt-3">
                                        <p class="job-price mb-0">
                                            <i class="custom-icon bi-cash me-1"></i>
                                            $68k
                                        </p>

                                        <a href="job-details.aspx" class="custom-btn btn ms-auto">Apply now</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-12">
                            <div class="job-thumb job-thumb-box">
                                <div class="job-image-box-wrap">
                                    <a href="job-details.aspx">
                                        <img src="images/jobs/pretty-blogger-posing-cozy-apartment.jpg" class="job-image img-fluid" alt="">
                                    </a>

                                    <div class="job-image-box-wrap-info d-flex align-items-center">
                                        <p class="mb-0">
                                            <a href="job-listings.aspx" class="badge badge-level">Junior</a>
                                        </p>

                                        <p class="mb-0">
                                            <a href="job-listings.aspx" class="badge">Contract</a>
                                        </p>
                                    </div>
                                </div>

                                <div class="job-body">
                                    <h4 class="job-title">
                                        <a href="job-details.aspx" class="job-title-link">HR Manager</a>
                                    </h4>

                                    <div class="d-flex align-items-center">
                                        <div class="job-image-wrap d-flex align-items-center bg-white shadow-lg mt-2 mb-4">
                                            <img src="images/logos/yelp.png" class="job-image me-3 img-fluid" alt="">

                                            <p class="mb-0">Yelp</p>
                                        </div>

                                        <a href="#" class="bi-bookmark ms-auto me-2">
                                        </a>

                                        <a href="#" class="bi-heart">
                                        </a>
                                    </div>

                                    <div class="d-flex align-items-center">
                                        <p class="job-location">
                                            <i class="custom-icon bi-geo-alt me-1"></i>
                                            California, USA
                                        </p>

                                        <p class="job-date">
                                            <i class="custom-icon bi-clock me-1"></i>
                                            15 hours ago
                                        </p>
                                    </div>

                                    <div class="d-flex align-items-center border-top pt-3">
                                        <p class="job-price mb-0">
                                            <i class="custom-icon bi-cash me-1"></i>
                                            $35k - 45k
                                        </p>

                                        <a href="job-details.aspx" class="custom-btn btn ms-auto">Apply now</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-12">
                            <div class="job-thumb job-thumb-box">
                                <div class="job-image-box-wrap">
                                    <a href="job-details.aspx">
                                        <img src="images/jobs/paper-analysis.jpg" class="job-image img-fluid" alt="">
                                    </a>

                                    <div class="job-image-box-wrap-info d-flex align-items-center">
                                        <p class="mb-0">
                                            <a href="job-listings.aspx" class="badge badge-level">Entry</a>
                                        </p>

                                        <p class="mb-0">
                                            <a href="job-listings.aspx" class="badge">Remote</a>
                                        </p>
                                    </div>
                                </div>

                                <div class="job-body">
                                    <h4 class="job-title">
                                        <a href="job-details.aspx" class="job-title-link">Sales Representative</a>
                                    </h4>
                                        
                                    <div class="d-flex align-items-center">
                                        <div class="job-image-wrap d-flex align-items-center bg-white shadow-lg mt-2 mb-4">
                                            <img src="images/logos/paypal.png" class="job-image me-3 img-fluid" alt="">

                                            <p class="mb-0">Paypal</p>
                                        </div>

                                        <a href="#" class="bi-bookmark ms-auto me-2">
                                        </a>

                                        <a href="#" class="bi-heart">
                                        </a>
                                    </div>

                                    <div class="d-flex align-items-center">
                                        <p class="job-location">
                                            <i class="custom-icon bi-geo-alt me-1"></i>
                                            Bangkok, Thailand
                                        </p>

                                        <p class="job-date">
                                            <i class="custom-icon bi-clock me-1"></i>
                                            30 mins ago
                                        </p>
                                    </div>

                                    <div class="d-flex align-items-center border-top pt-3">
                                        <p class="job-price mb-0">
                                            <i class="custom-icon bi-cash me-1"></i>
                                            $20k - 35k
                                        </p>

                                        <a href="job-details.aspx" class="custom-btn btn ms-auto">Apply now</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-12">
                            <div class="job-thumb job-thumb-box">
                                <div class="job-image-box-wrap">
                                    <a href="job-details.aspx">
                                        <img src="images/jobs/logo-designer-working-computer-desktop.jpg" class="job-image img-fluid" alt="">
                                    </a>

                                    <div class="job-image-box-wrap-info d-flex align-items-center">
                                        <p class="mb-0">
                                            <a href="job-listings.aspx" class="badge badge-level">Mid Level</a>
                                        </p>

                                        <p class="mb-0">
                                            <a href="job-listings.aspx" class="badge">Full Time</a>
                                        </p>
                                    </div>
                                </div>

                                <div class="job-body">
                                    <h4 class="job-title">
                                        <a href="job-details.aspx" class="job-title-link">Graphic Designer</a>
                                    </h4>
                                        
                                    <div class="d-flex align-items-center">
                                        <div class="job-image-wrap d-flex align-items-center bg-white shadow-lg mt-2 mb-4">
                                            <img src="images/logos/envato.png" class="job-image me-3 img-fluid" alt="">

                                            <p class="mb-0">Envato</p>
                                        </div>

                                        <a href="#" class="bi-bookmark ms-auto me-2">
                                        </a>

                                        <a href="#" class="bi-heart">
                                        </a>
                                    </div>

                                    <div class="d-flex align-items-center">
                                        <p class="job-location">
                                            <i class="custom-icon bi-geo-alt me-1"></i>
                                            Melbourne, Australia
                                        </p>

                                        <p class="job-date">
                                            <i class="custom-icon bi-clock me-1"></i>
                                            2 days ago
                                        </p>
                                    </div>

                                    <div class="d-flex align-items-center border-top pt-3">
                                        <p class="job-price mb-0">
                                            <i class="custom-icon bi-cash me-1"></i>
                                            $20k
                                        </p>

                                        <a href="job-details.aspx" class="custom-btn btn ms-auto">Apply now</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-12">
                            <div class="job-thumb job-thumb-box">
                                <div class="job-image-box-wrap">
                                    <a href="job-details.aspx">
                                        <img src="images/jobs/portrait-woman-customer-service-worker.jpg" class="job-image img-fluid" alt="">
                                    </a>

                                    <div class="job-image-box-wrap-info d-flex align-items-center">
                                        <p class="mb-0">
                                            <a href="job-listings.aspx" class="badge badge-level">Senior</a>
                                        </p>

                                        <p class="mb-0">
                                            <a href="job-listings.aspx" class="badge">Contract</a>
                                        </p>
                                    </div>
                                </div>

                                <div class="job-body">
                                    <h4 class="job-title">
                                        <a href="job-details.aspx" class="job-title-link">Customer Support</a>
                                    </h4>
                                        
                                    <div class="d-flex align-items-center">
                                        <div class="job-image-wrap d-flex align-items-center bg-white shadow-lg mt-2 mb-4">
                                            <img src="images/logos/microsoft.png" class="job-image me-3 img-fluid" alt="">

                                            <p class="mb-0">Microsoft</p>
                                        </div>

                                        <a href="#" class="bi-bookmark ms-auto me-2">
                                        </a>

                                        <a href="#" class="bi-heart">
                                        </a>
                                    </div>

                                    <div class="d-flex align-items-center">
                                        <p class="job-location">
                                            <i class="custom-icon bi-geo-alt me-1"></i>
                                            Paris, French
                                        </p>

                                        <p class="job-date">
                                            <i class="custom-icon bi-clock me-1"></i>
                                            10 days ago
                                        </p>
                                    </div>

                                    <div class="d-flex align-items-center border-top pt-3">
                                        <p class="job-price mb-0">
                                            <i class="custom-icon bi-cash me-1"></i>
                                            $45k - 50k
                                        </p>

                                        <a href="job-details.aspx" class="custom-btn btn ms-auto">Apply now</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-12">
                            <div class="job-thumb job-thumb-box">
                                <div class="job-image-box-wrap">
                                    <a href="job-details.aspx">
                                        <img src="images/jobs/young-woman-teaching-english-lessons.jpg" class="job-image img-fluid" alt="">
                                    </a>

                                    <div class="job-image-box-wrap-info d-flex align-items-center">
                                        <p class="mb-0">
                                            <a href="job-listings.aspx" class="badge badge-level">Junior</a>
                                        </p>

                                        <p class="mb-0">
                                            <a href="job-listings.aspx" class="badge">Freelance</a>
                                        </p>
                                    </div>
                                </div>

                                <div class="job-body">
                                    <h4 class="job-title">
                                        <a href="job-details.aspx" class="job-title-link">Language Teacher</a>
                                    </h4>
                                        
                                    <div class="d-flex align-items-center">
                                        <div class="job-image-wrap d-flex align-items-center bg-white shadow-lg mt-2 mb-4">
                                            <img src="images/logos/dropbox.png" class="job-image me-3 img-fluid" alt="">

                                            <p class="mb-0">Dropbox</p>
                                        </div>

                                        <a href="#" class="bi-bookmark ms-auto me-2">
                                        </a>

                                        <a href="#" class="bi-heart">
                                        </a>
                                    </div>

                                    <div class="d-flex align-items-center">
                                        <p class="job-location">
                                            <i class="custom-icon bi-geo-alt me-1"></i>
                                            Paris, French
                                        </p>

                                        <p class="job-date">
                                            <i class="custom-icon bi-clock me-1"></i>
                                            30 minutes ago
                                        </p>
                                    </div>

                                    <div class="d-flex align-items-center border-top pt-3">
                                        <p class="job-price mb-0">
                                            <i class="custom-icon bi-cash me-1"></i>
                                            $85k
                                        </p>

                                        <a href="job-details.aspx" class="custom-btn btn ms-auto">Apply now</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                         <div class="col-lg-4 col-md-6 col-12">
                            <div class="job-thumb job-thumb-box">
                                <div class="job-image-box-wrap">
                                    <a href="job-details.aspx">
                                        <img src="images/jobs/sound-engineer-working-studio-with-equipment.jpg" class="job-image img-fluid" alt="">
                                    </a>

                                    <div class="job-image-box-wrap-info d-flex align-items-center">
                                        <p class="mb-0">
                                            <a href="job-listings.aspx" class="badge badge-level">Junior</a>
                                        </p>

                                        <p class="mb-0">
                                            <a href="job-listings.aspx" class="badge">Remote</a>
                                        </p>
                                    </div>
                                </div>

                                <div class="job-body">
                                    <h4 class="job-title">
                                        <a href="job-details.aspx" class="job-title-link">Sound Engineer</a>
                                    </h4>
                                        
                                    <div class="d-flex align-items-center">
                                        <div class="job-image-wrap d-flex align-items-center bg-white shadow-lg mt-2 mb-4">
                                            <img src="images/logos/soundcloud.png" class="job-image me-3 img-fluid" alt="">

                                            <p class="mb-0">Soundcloud</p>
                                        </div>

                                        <a href="#" class="bi-bookmark ms-auto me-2">
                                        </a>

                                        <a href="#" class="bi-heart">
                                        </a>
                                    </div>

                                    <div class="d-flex align-items-center">
                                        <p class="job-location">
                                            <i class="custom-icon bi-geo-alt me-1"></i>
                                            Singapore
                                        </p>

                                        <p class="job-date">
                                            <i class="custom-icon bi-clock me-1"></i>
                                            8 hours ago
                                        </p>
                                    </div>

                                    <div class="d-flex align-items-center border-top pt-3">
                                        <p class="job-price mb-0">
                                            <i class="custom-icon bi-cash me-1"></i>
                                            $20k
                                        </p>

                                        <a href="job-details.aspx" class="custom-btn btn ms-auto">Apply now</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-12 col-12">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-center mt-5">
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Previous">
                                            <span aria-hidden="true">Prev</span>
                                        </a>
                                    </li>

                                    <li class="page-item active" aria-current="page">
                                        <a class="page-link" href="#">1</a>
                                    </li>
                                    
                                    <li class="page-item">
                                        <a class="page-link" href="#">2</a>
                                    </li>
                                    
                                    <li class="page-item">
                                        <a class="page-link" href="#">3</a>
                                    </li>

                                    <li class="page-item">
                                        <a class="page-link" href="#">4</a>
                                    </li>

                                    <li class="page-item">
                                        <a class="page-link" href="#">5</a>
                                    </li>
                                    
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Next">
                                            <span aria-hidden="true">Next</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>

                    </div>
                </div>
            </section>


            <section class="cta-section">
                <div class="section-overlay"></div>

                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-10">
                            <h2 class="text-white mb-2">Over 10k opening jobs</h2>

                            <p class="text-white">Gotto Job is a free HTML CSS template for job hunting related websites. This layout is based on the famous Bootstrap 5 CSS framework. Thank you for visiting Tooplate website.</p>
                        </div>

                        <div class="col-lg-4 col-12 ms-auto">
                            <div class="custom-border-btn-wrap d-flex align-items-center mt-lg-4 mt-2">
                                <a href="#" class="custom-btn custom-border-btn btn me-4">Create an account</a>

                                <a href="#" class="custom-link">Post a job</a>
                            </div>
                        </div>

                    </div>
                </div>
            </section>
        </main>
</asp:Content>

