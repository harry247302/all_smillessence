<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Footer.ascx.cs" Inherits="SmilessenceWeb.SmilessenceAdmin.Footer" %>
<footer class="ft_fix">
    <p class="pull-left" style="color:#fff; padding:5px 0 0 0;margin-left: 40px;">© Copyright 2021</p>
    <p class="pull-right" style="text-align:right; color:#fff; padding:5px 40px 0 0;">Developed by : <a href="http://ibrandox.com/" target="_blank"><img src="/SmilessenceAdmin/images/ox.png" height="22" alt="iBrandox Online Pvt Ltd" title="Ibrandox Online Pvt Ltd" /></a></p>
</footer>
<script src="js/jquery-1.10.2.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.js"></script>
<script src="js/jquery.metisMenu.js"></script> 
<script src="js/raphael-2.1.0.min.js"></script> 
<script src="js/morris.js"></script>
<script src="js/custom-scripts.js"></script>
<script type="text/javascript">

    $('.trg_back').click(function () {
        $('.nav-tabs li.active').prev().children('a').trigger('click');
    });
    $('.trg_next').click(function () {
        $('.nav-tabs li.active').next().children('a').trigger('click');
    });

   </script>