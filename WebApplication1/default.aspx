<%@ Page Title="" Language="C#" MasterPageFile="~/lesson4.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication1._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> input validation</h1>
    <h5>all field types</h5>
    <fieldset>
        <label for="txtName">Name:</label>
        <asp:TextBox ID="txtName" runat="server" />
        <asp:RequiredFieldValidator ID="RFV1" runat="server" ErrorMessage="BABAGOOOGOGOGOGOGOG" CssClass="label label-danger" ControlToValidate="txtName"></asp:RequiredFieldValidator>
    </fieldset>
     <fieldset>
        <label for="txtPass">Password:</label>
        <asp:TextBox ID="txtPass" runat="server" TextMode="Password" />
    <asp:RequiredFieldValidator ID="RFV2" runat="server" ErrorMessage="BABAGOOOGOGOGOGOGOG" CssClass="label label-danger" ControlToValidate="txtPass"></asp:RequiredFieldValidator>
         <asp:CompareValidator ID="CVPass" runat="server" CssClass="label label-danger" Display="Dynamic" ControlToCompare="txtConfirm"  Type="String" Operator="Equal" ControlToValidate="txtPass" ErrorMessage="Incorrecto senoro..."></asp:CompareValidator>
     
     </fieldset>
    <fieldset>
        <label for="txtConfirm">Confirm Password:</label>
        <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" />
    <asp:RequiredFieldValidator ID="RFV3" runat="server" ErrorMessage="BABAGOOOGOGOGOGOGOG" CssClass="label label-danger" ControlToValidate="txtConfirm"></asp:RequiredFieldValidator>
    
    </fieldset>
    <fieldset>
        <label for="txtAge">Age:</label>
        <asp:TextBox ID="txtAge" runat="server" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="BABAGOOOGOGOGOGOGOG" CssClass="label label-danger" ControlToValidate="txtAge"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RVAge" runat="server" ErrorMessage="Target not In Range." MinimumValue="1" MaximumValue="120" Type="Integer" ControlToValidate="txtAge" Display="Dynamic"></asp:RangeValidator>
    </fieldset>


    <asp:Button ID="btnSubmit" Text="submit" CssClass="btn btn-primary" runat="server" OnClick="btnSubmit_Click" />
   <asp:Label ID="lblMessage" runat="server" />
    

</asp:Content>
