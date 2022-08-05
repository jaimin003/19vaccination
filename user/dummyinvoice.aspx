<%@ Page Title="" Language="C#" MasterPageFile="~/user/Umaster.master" AutoEventWireup="true" CodeFile="dummyinvoice.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


  <div <%--class="section-wrapper wow fadeInUp" data-wow-delay="0.001s"--%>>
                    <div class="row justify-content-center">
                        <div class="col-lg-6 col-sm-8 col-12">
                               
                             <br />  
                              <br />  
                                 <br />  
                                    <br />  
                                    <br />  
                                     
                            <form id="Form2" runat="server">          
                                    <asp:Label ID="Label1" runat="server"  class="text-theme" Text="SELECT DOSE TO GET INVOICE"  Font-Size="X-Large" Font-Bold="True"></asp:Label>  
                                      <br />  
                                          <br />  
                                          <br />  
                            <asp:DropDownList ID="ddldose" class="form-control"  runat="server">
                            
                            
                                <asp:ListItem Value="1">1st DOSE</asp:ListItem>
                                <asp:ListItem Value="2">2nd DOSE</asp:ListItem>
                            
                            </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Select Dose First" 
                                       ControlToValidate="ddldose" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />  
                                   <br /> 
                                       <p align="center">       <asp:Button ID="Button2" runat="server" Text="View Invoice" class="btn-small btn-submit btn_text_effect"
            onclick="Button2_Click"/></p>
                                 
                                                  <br />  
                                                      <br />                                                       
                                                      <br />                                                    
                           </form>
                        </div>
                       
                    </div>
                </div>
        

    

</asp:Content>

