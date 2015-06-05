<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/lesson4.Master" CodeBehind="default.aspx.cs" Inherits="comp2084_lesson4._default" %>

<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
            <asp:Label ID="lblCountry" runat="server"></asp:Label>
            <label for="ddlCountry">Country:</label>
            <asp:DropDownList ID="ddlCountry" runat="server">
                <asp:ListItem Value="--" Text="-Select-" />
                <asp:ListItem Value="CA" Text="Canada" />
                <asp:ListItem Value="KO" Text="Korea" />
                <asp:ListItem Value="CN" Text="China" />
                <asp:ListItem Value="IN" Text="India" />
            </asp:DropDownList>
        </div>
        <div>
            <asp:Button ID="btnShowCountry" runat="server" Text="Show Country" OnClick="btnShowCountry_Click" />
        </div>

        <div>
            <asp:Label ID="lblProvince" runat="server"></asp:Label>
            <asp:RadioButtonList ID="rblProvince" runat="server">
                <asp:ListItem Value="AB" Text="Alberta" />
                <asp:ListItem Value="BC" Text="British Columbia" />
                <asp:ListItem Value="ON" Text="Ontario" Selected="true" />
            </asp:RadioButtonList>
        </div>

        <div>
            <asp:Label ID="lblToppings" runat="server"></asp:Label>
            <asp:CheckBoxList ID="cblToppings" runat="server">
                <asp:ListItem Value="1" Text="Bacon" />
                <asp:ListItem Value="2" Text="Pineapple" />
                <asp:ListItem Value="3" Text="Broccoli" />
                <asp:ListItem Value="4" Text="Olives" />
            </asp:CheckBoxList>
            <asp:Button ID="btnOrderPizza" runat="server" text="I'm hungry!" OnClick="btnOrderPizza_Click" />
        </div>
</asp:Content>
