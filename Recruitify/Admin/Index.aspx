<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Recruitify.Admin.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <%--<main>

            <section class="hero-section d-flex justify-content-center align-items-center ">
                <div class="section-overlay"></div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-12 text-center">
                                <div class="hero-section-text mt-5">
                                    <h2 class="text-white">WELCOME ADMIN to RECRUITIFY</h2>
                                </div>
                            </div>
                        </div>
                    </div>
            </section>


            <section class="about-section section-padding">
                <div class="container">
                    <div class="row">

                    <div class="col-lg-3 col-12">
                            <div class="about-image-wrap custom-border-radius-start">
                                <img src="../images/allyseperry.png" class="about-image custom-border-radius-start img-fluid" alt="">

                                <div class="about-info" style="height:25%;padding:10px;margin:10px" >
                                    <h5 class="text-white mb-0 me-2">Allyse Perry</h5>

                                    <p class="text-white mb-0">Investor</p>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6 col-12">
                            <div class="custom-text-block">
                                <h2 class="text-white mb-2">Introduction Recruitify</h2>

                                <p class="text-white">Welcome to Recruitify, your trusted partner in the world of employment and talent acquisition. At Recruitify, we believe in connecting job seekers with their dream careers and helping businesses find the perfect candidates to build their success stories.</p>

                                <div class="custom-border-btn-wrap d-flex align-items-center mt-5">
                                    <a href="user-listings.php" class="custom-link smoothscroll">Explore Users</a> &emsp;&ensp;&emsp;&ensp;
                                    <a href="Company-listings.php" class="custom-link smoothscroll">Explore Company</a> &emsp;&ensp;&emsp;&ensp;
                                    <a href="Job-listings.php" class="custom-link smoothscroll">Explore Jobs</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-12">
                            <div class="instagram-block">
                                <img src="../images/horizontal-shot-happy-mixed-race-females.jpg" class="about-image custom-border-radius-end img-fluid" alt="">

                                <div class="instagram-block-text">
                                    <a href="https://instagram.com/" class="custom-btn btn">
                                        <i class="bi-instagram"></i>
                                        @Recruitify
                                    </a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>


            <section>
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-12">
                            <div class="custom-text-block custom-border-radius-start">
                                <h2 class="text-white mb-3">Recruitify helps you an easier way to get new job</h2>

                                <p class="text-white">Welcome to Recruitify, your trusted partner in the world of employment and talent acquisition. At Recruitify, we believe in connecting job seekers with their dream careers and helping businesses find the perfect candidates to build their success stories.</p>

                                <div class="d-flex mt-4">
                                    <div class="counter-thumb"> 
                                        <div class="d-flex">
                                            <span class="counter-number" data-from="1" data-to="12" data-speed="1000"></span>
                                            <span class="counter-number-text">M</span>
                                        </div>

                                        <span class="counter-text">Daily active users</span>
                                    </div> 

                                    <div class="counter-thumb">    
                                        <div class="d-flex">
                                            <span class="counter-number" data-from="1" data-to="450" data-speed="1000"></span>
                                            <span class="counter-number-text">k</span>
                                        </div>

                                        <span class="counter-text">Opening jobs</span>
                                    </div> 
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6 col-12">
                            <div class="video-thumb">
                                <img src="../images/people-working-as-team-company.jpg" class="about-image custom-border-radius-end img-fluid" alt="">

                                <div class="video-info">
                                    <a href="https://www.youtube.com/tooplate" class="youtube-icon bi-youtube"></a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>
        </main>--%>

    <main>

            <section class="hero-section d-flex justify-content-center align-items-center">
                <div class="section-overlay"></div>

                <div class="container">
                    <div class="row">

                       <div class="col-lg-12 col-12 text-center">
                                <div class="hero-section-text mt-5">
                                    <h2 class="text-white">WELCOME ADMIN to RECRUITIFY</h2>
                                </div>
                            </div>

                    </div>
                </div>
            </section>



            <section class="about-section section-padding">
                <div class="container">
                    <div class="row">

                    <div class="col-lg-3 col-12">
                            <div class="about-image-wrap custom-border-radius-start">
                                <img src="../images/allyseperry.png" class="about-image custom-border-radius-start img-fluid" alt="">

                                <div class="about-info" style="height:25%;padding:10px;margin:10px" >
                                    <h5 class="text-white mb-0 me-2">Allyse Perry</h5>

                                    <p class="text-white mb-0">Investor</p>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6 col-12">
                            <div class="custom-text-block">
                                <h2 class="text-white mb-2">Introduction Recruitify</h2>

                                <p class="text-white">Welcome to Recruitify, your trusted partner in the world of employment and talent acquisition. At Recruitify, we believe in connecting job seekers with their dream careers and helping businesses find the perfect candidates to build their success stories.</p>

                                <div class="custom-border-btn-wrap d-flex align-items-center mt-5">
                                    <a href="../about.aspx" class="custom-btn custom-border-btn btn me-4">Get to know us</a>

                                    <a href="#job-section" class="custom-link smoothscroll">Explore Jobs</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-12">
                            <div class="instagram-block">
                                <img src="../images/horizontal-shot-happy-mixed-race-females.jpg" class="about-image custom-border-radius-end img-fluid" alt="">

                                <div class="instagram-block-text">
                                    <a href="https://instagram.com/" class="custom-btn btn">
                                        <i class="bi-instagram"></i>
                                        @Recruitify
                                    </a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>


            <section class="job-section job-featured-section section-padding" id="job-section">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-12">
                            <div class="custom-text-block custom-border-radius-start">
                                <h2 class="text-white mb-3">Recruitify helps you an easier way to get new job</h2>

                                <p class="text-white">Welcome to Recruitify, your trusted partner in the world of employment and talent acquisition. At Recruitify, we believe in connecting job seekers with their dream careers and helping businesses find the perfect candidates to build their success stories.</p>

                                <div class="d-flex mt-4">
                                    <div class="counter-thumb"> 
                                        <div class="d-flex">
                                            <span class="counter-number" data-from="1" data-to="12" data-speed="1000"></span>
                                            <span class="counter-number-text">M</span>
                                        </div>

                                        <span class="counter-text">Daily active users</span>
                                    </div> 

                                    <div class="counter-thumb">    
                                        <div class="d-flex">
                                            <span class="counter-number" data-from="1" data-to="450" data-speed="1000"></span>
                                            <span class="counter-number-text">K</span>
                                        </div>

                                        <span class="counter-text">Opening jobs</span>
                                    </div> 
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6 col-12">
                            <div class="video-thumb">
                                <img src="../images/people-working-as-team-company.jpg" class="about-image custom-border-radius-end img-fluid" alt="">

                                <div class="video-info">
                                    <a href="https://www.youtube.com/tooplate" class="youtube-icon bi-youtube"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </main>
</asp:Content>

