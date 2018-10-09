<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication2._default" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="Content/css/StyleSheet1.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
    <script src="Scripts/mychart.js"></script>
    <%--<script src="mychart.js"></script>--%>
    <style type="text/css">
        .auto-style10{
            width: 43%;
            height: 347px;
               vertical-align: top;
        }
        .auto-style9 {
            height: 32px;
               vertical-align: top;
        }
        .auto-style10 {
            width: 105px;
            height: 46px;
               vertical-align: top;
        }
        .auto-style11 {
            height: 46px;
            width: 353px;
               vertical-align: top;
        }
        .auto-style16 {
            width: 105px;
            height: 48px;
            vertical-align: top;
        }
        .auto-style17 {
            height: 48px;
            width: 353px;
               vertical-align: top;
        }
        .auto-style18 {
            width: 105px;
            height: 45px;
               vertical-align: top;
        }
        .auto-style19 {
            height: 45px;
            width: 353px;
               vertical-align: top;
        }
        .auto-style20 {
            width: 105px;
            height: 44px;
               vertical-align: top;
        }
        .auto-style21 {
            height: 44px;
            width: 353px;
               vertical-align: top;
        }
    </style>
</head>
<body>
       <form id="form1" runat="server">


      
   <div class="container">
       <div id="title" class="row">
             <h1>Expense Calculator</h1>
           </div>
       <div class="row">
           <div class="col-md-6 leftSide">
               <div class="row">
            <p class="income" style="font-size: 2em; width: 237px; padding-top: 5px;">enter monthly income</p>
            <asp:TextBox ID="IncomeTB" runat="server" ControlToValidate="IncomeTB"></asp:TextBox>
               </div>
               <div class="row">
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="IncomeTB" ValidationGroup="allValidators" CssClass="ErrorMessage text-danger"></asp:RequiredFieldValidator>
          <br /> </div> 
               <asp:RangeValidator runat="server" ErrorMessage="please enter a number greater than 0" ID="RangeValidator1" ControlToValidate="IncomeTB" CssClass="ErrorMessage text-danger" MinimumValue="0" MaximumValue="1000000000000" Text= "please enter a number greater than 0" Type="Double" ValidationGroup="allValidators"></asp:RangeValidator>
            <br />
            <br />
            <br />
           
           
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9" style="font-size:2em" colspan="2">expenses  <br />
                     <br />
                    </td>
                </tr>
                <tr>
                  
                    <td class="auto-style16" style="font-size:1.6em">Rent</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="RentTB" runat="server" Height="35px" Width="200px" TextMode="Number"></asp:TextBox>
                          <br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="RentTB" ValidationGroup="allValidators" CssClass="ErrorMessage text-danger"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RangeValidator runat="server" ErrorMessage="please enter a number greater than 0" ID="RangeValidator2" ControlToValidate="RentTB" CssClass="text-danger" MinimumValue="0" MaximumValue="1000000000000" Text= "please enter a number greater than 0" Type="Double" ValidationGroup="allValidators"></asp:RangeValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style10" style="font-size:1.6em">Travel</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TravelTB" runat="server" Height="35px" Width="200px" TextMode="Number"></asp:TextBox>
                        <br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="TravelTB" ValidationGroup="allValidators" CssClass="ErrorMessage text-danger"></asp:RequiredFieldValidator>
                                 <br />
                        <asp:RangeValidator runat="server" ErrorMessage="please enter a number greater than 0" ID="RangeValidator3" ControlToValidate="TravelTB" CssClass="ErrorMessage text-danger" MinimumValue="0" MaximumValue="1000000000000" Text= "please enter a number greater than 0" Type="Double" ValidationGroup="allValidators"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" style="font-size:1.6em">Food</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="FoodTB" runat="server" Height="35px" Width="200px" TextMode="Number"></asp:TextBox>
                        <br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ControlToValidate="FoodTB" ValidationGroup="allValidators" CssClass="ErrorMessage text-danger"></asp:RequiredFieldValidator>
                                  <br />
                         <asp:RangeValidator runat="server" ErrorMessage="please enter a number greater than 0" ID="RangeValidator4" ControlToValidate="FoodTB" CssClass="ErrorMessage text-danger" MinimumValue="0" MaximumValue="1000000000000" Text= "please enter a number greater than 0" Type="Double" ValidationGroup="allValidators"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18" style="font-size:1.6em">Phone</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="PhoneTB" runat="server" Height="35px" Width="200px" TextMode="Number"></asp:TextBox>
                          <br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required" ControlToValidate="PhoneTB" ValidationGroup="allValidators" CssClass="ErrorMessage text-danger"></asp:RequiredFieldValidator>
                                   <br />
                        <asp:RangeValidator runat="server" ErrorMessage="please enter a number greater than 0" ID="RangeValidator5" ControlToValidate="PhoneTB" CssClass="ErrorMessage text-danger" MinimumValue="0" MaximumValue="1000000000000" Text= "please enter a number greater than 0" Type="Double" ValidationGroup="allValidators"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20" style="font-size:1.6em">Gym</td>
                    <td class="auto-style21">
                        <asp:TextBox ID="GymTB" runat="server" Height="35px" Width="200px" TextMode="Number"></asp:TextBox>
                          <br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required" ControlToValidate="GymTB" ValidationGroup="allValidators" CssClass="ErrorMessage text-danger"></asp:RequiredFieldValidator>
                                 <br />
                          <asp:RangeValidator runat="server" ErrorMessage="please enter a number greater than 0" ID="RangeValidator6" ControlToValidate="GymTB" CssClass="ErrorMessage text-danger" MinimumValue="0" MaximumValue="1000000000000" Text= "please enter a number greater than 0" Type="Double" ValidationGroup="allValidators"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16" style="font-size:1.6em">Other</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="otherTB" runat="server" Height="35px" Width="200px" TextMode="Number"></asp:TextBox>
                          <br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Required" ControlToValidate="otherTB" ValidationGroup="allValidators" CssClass="ErrorMessage text-danger"></asp:RequiredFieldValidator>
                                 <br />
                          <asp:RangeValidator runat="server" ErrorMessage="please enter a number greater than 0" ID="RangeValidator7" ControlToValidate="otherTB" CssClass="ErrorMessage text-danger" MinimumValue="0" MaximumValue="1000000000000" Text= "please enter a number greater than 0" Type="Double" ValidationGroup="allValidators"></asp:RangeValidator>
                    </td>
                </tr>
        </table>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Calculate" OnClick="Button1_Click" ValidationGroup="allValidators" />
           
    </div>
           <div class="col-md-6">
               <div id="result">
        <asp:Label ID="Label1" runat="server" Text="result"></asp:Label>
           <br />
                   
        <asp:Label ID="Label2" runat="server" ></asp:Label>
  </div>
        <div>
            <p id="chartData"></p>
            <br />
            <p id="expenseData"></p>
        </div>
            
        <div class="col-sm-offset-3 col-sm-6 text-center">
           <canvas id="ExpensesChart" width="300" height="400"></canvas>
                        <%--<div id="chartContainer1" style="height: 400px; width: 100%;">
                            <div id="chartPlaceholder1"></div>
                            <div id="noDataPlaceholder1" class="h1"></div>
                        </div>--%>
          </div>
              
           <%-- <canvas id="ExpensesChart" height="60"/>--%>
               </div>
</div>
 </div>
                        
    </form>
</body>
</html>
