<%@ Page Title="" Language="C#" MasterPageFile="~/MenuHeader.master" AutoEventWireup="true" CodeBehind="mycredit.aspx.cs" Inherits="Online_Banking_Transaction.mycredit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPH" runat="server">

      <div align="center">
    <div>
        <h4>My Credits</h4>
    </div>
    <asp:GridView ID="gvMyCredits" runat="server" AutoGenerateColumns="false">
     <Columns>
         <asp:TemplateField HeaderText="From Account">
             <ItemTemplate>
                 <asp:Label ID="FromAcc" runat="server" Text='<%# Eval("AccountNumber") %>'></asp:Label>
             </ItemTemplate>
             <Itemstyle HorizontalAlign="Center" />
         </asp:TemplateField>
         <asp:TemplateField HeaderText="Senders Name">
           <ItemTemplate>
             <asp:Label ID="sendername" runat="server" Text='<%# Eval("UserName") %>' ></asp:Label>
           </ItemTemplate>
              <Itemstyle HorizontalAlign="Center" />
   </asp:TemplateField>
         <asp:TemplateField HeaderText="Amount">
          <ItemTemplate> 
            <asp:Label ID="Amt" runat="server" Text='<%# Eval("Amount") %>' ></asp:Label>
         </ItemTemplate>
             <Itemstyle HorizontalAlign="Center" />
  </asp:TemplateField>
        <asp:TemplateField HeaderText="Remarks">
          <ItemTemplate>
              <asp:Label ID="remarks" runat="server" Text='<%# Eval("Remarks") %>' ></asp:Label>
          </ItemTemplate>
             <Itemstyle HorizontalAlign="Center" />
  </asp:TemplateField>
      
         
         
        
     </Columns>
 </asp:GridView>
    <div id="error" runat="server" style="color:red">

    </div>
</div>
</asp:Content>
