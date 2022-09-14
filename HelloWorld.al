// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

// enumextension 50129 correspondancetypechange extends "Correspondence Type"
// {
//     value(4; "Cannot Contact")
//     {
//         Caption = 'Do not Contact';
//     }
// }


tableextension 50125 CustomerTableExt extends Customer
{
    fields
    {
        field(50001; "Last Contact Date"; Date)
        {

            AutoFormatType = 1;
            CalcFormula = max("Interaction Log Entry".Date where("Contact Name" = field(Name)));
            Caption = 'Last Contact Date';
            // Editable = false;
            // Enabled = false;
            FieldClass = FlowField;
        }

        field(50002; "Last Visit Date"; Date)
        {

            // AutoFormatType = 1;
            // CalcFormula = max("Interaction Log Entry".Date where("Contact Name" = field(Name)));
            Caption = 'Last Visit Date';
            Editable = false;
            Enabled = false;
            //  FieldClass = FlowField;
        }
        field(50126; MaxInteractionDate1; Date)
        {
            FieldClass = FlowField;
            CalcFormula = max("Interaction Log Entry".Date where("Contact No." = field("Primary Contact No.")));

        }


        field(50124; "Call Initation Time"; Time)
        {
            FieldClass = FlowField;
            CalcFormula = max("Interaction Log Entry"."Time of Interaction" where(Date = field(MaxInteractionDate1)));
        }
    }


}
pageextension 50110 CustomerListExt extends "Customer List"
{
    layout
    {
        modify(Name)
        {
            Visible = isWelcomeCompany;
            Editable = false;
            Enabled = false;


        }
        modify("Phone No.")
        {
            Visible = isWelcomeCompany;
            Editable = false;
            Enabled = false;


        }




        addafter(Name)
        {


            field("Patient Name"; Rec.Name)
            {
                Caption = 'Patient Name';
                Visible = Not isWelcomeCompany;
                ApplicationArea = ALL;
                Editable = false;
                Enabled = false;
            }
            field("Cell Phone"; Rec."Mobile Phone No.")
            {
                Caption = 'Cell-Phone';
                Visible = Not isWelcomeCompany;
                ApplicationArea = ALL;
                Editable = false;
                Enabled = false;
            }
            field("Home Phone"; Rec."Phone No.")
            {
                Caption = 'Home Phone';
                Visible = Not isWelcomeCompany;
                ApplicationArea = ALL;
                Editable = false;
                Enabled = false;
            }
            field("Last Contact Date"; Rec."Last Contact Date")
            {
                Caption = 'Last Contact Date';
                Visible = Not isWelcomeCompany;
                ApplicationArea = ALL;
                // Editable = false;
                // Enabled = false;
            }
            field("Call Initation Time"; Rec."Call Initation Time")
            {

                Caption = 'Call Initation Time';
                Visible = Not isWelcomeCompany;
                ApplicationArea = ALL;
            }
            field("Last Visit Date"; Rec."Last Visit Date")
            {
                Caption = 'Last Visit Date';
                Visible = Not isWelcomeCompany;
                ApplicationArea = ALL;
                Editable = false;
                Enabled = false;
            }


        }

    }
    actions
    {
        modify("&Customer")
        {
            Visible = isWelcomeCompany;
        }
        modify("Back Order Fill by Customer")
        {
            Visible = isWelcomeCompany;

        }
        modify(Action104)
        {
            Visible = isWelcomeCompany;

        }
        modify(ActionGroupCRM)
        {
            Visible = isWelcomeCompany;

        }
        modify(ApprovalEntries)
        {
            Visible = isWelcomeCompany;

        }
        modify(AssignTaxArea)
        {
            Visible = isWelcomeCompany;

        }
        modify(BackgroundStatement)
        {
            Visible = isWelcomeCompany;

        }
        modify("Bank Accounts")
        {
            Visible = isWelcomeCompany;

        }
        modify("Blanket Orders")
        {
            Visible = isWelcomeCompany;

        }
        modify("C&ontact")
        {
            Visible = isWelcomeCompany;

        }
        modify(CancelApprovalRequest)
        {
            Visible = isWelcomeCompany;

        }
        modify(WordTemplate)
        {
            Visible = isWelcomeCompany;

        }
        modify("Cash Receipt Journal")
        {
            Visible = isWelcomeCompany;

        }
        modify("Co&mments")
        {
            Visible = isWelcomeCompany;

        }
        modify(Coupling)
        {
            Visible = isWelcomeCompany;

        }
        modify(DimensionsSingle)
        {
            Visible = isWelcomeCompany;

        }
        modify(DimensionsMultiple)
        {
            Visible = isWelcomeCompany;

        }
        modify("Direct Debit Mandates")
        {
            Visible = isWelcomeCompany;

        }
        modify(ShipToAddresses)
        {
            Visible = isWelcomeCompany;

        }
        modify("Cross Re&ferences")
        {
            Visible = isWelcomeCompany;

        }
        modify("Item References")
        {
            Visible = isWelcomeCompany;

        }
        modify(OnlineMap)
        {
            Visible = isWelcomeCompany;

        }
        modify(CRMGotoAccount)
        {
            Visible = isWelcomeCompany;

        }
        modify(SentEmails)
        {
            Visible = isWelcomeCompany;

        }
        modify(CRMSynchronizeNow)
        {
            Visible = isWelcomeCompany;

        }
        modify(UpdateStatisticsInCRM)
        {
            Visible = isWelcomeCompany;

        }
        modify(ManageCRMCoupling)
        {
            Visible = isWelcomeCompany;

        }
        modify(DeleteCRMCoupling)
        {
            Visible = isWelcomeCompany;

        }
        modify(Create)
        {
            Visible = isWelcomeCompany;

        }
        modify(CreateInCRM)
        {
            Visible = isWelcomeCompany;

        }
        modify(CreateFromCRM)
        {
            Visible = isWelcomeCompany;

        }
        modify(ShowLog)
        {
            Visible = isWelcomeCompany;

        }
        modify(History)
        {
            Visible = isWelcomeCompany;

        }
        modify(CustomerLedgerEntries)
        {
            Visible = isWelcomeCompany;

        }
        modify(Statistics)
        {
            Visible = isWelcomeCompany;

        }
        modify("S&ales")
        {
            Visible = isWelcomeCompany;

        }
        modify("Entry Statistics")
        {
            Visible = isWelcomeCompany;

        }
        modify("Statistics by C&urrencies")
        {
            Visible = isWelcomeCompany;

        }
        modify("Item &Tracking Entries")
        {
            Visible = isWelcomeCompany;

        }
        modify(Action24)
        {
            Visible = isWelcomeCompany;

        }
        modify(Sales_InvoiceDiscounts)
        {
            Visible = isWelcomeCompany;

        }

        modify(Sales_Prices)
        {
            Visible = isWelcomeCompany;

        }

        modify(Sales_LineDiscounts)
        {
            Visible = isWelcomeCompany;

        }

        modify("Prepa&yment Percentages")
        {
            Visible = isWelcomeCompany;

        }

        modify("Recurring Sales Lines")
        {
            Visible = isWelcomeCompany;

        }

        modify(Documents)
        {
            Visible = isWelcomeCompany;

        }

        modify(NewSalesReturnOrder)
        {
            Visible = isWelcomeCompany;

        }

        modify(NewSalesCrMemo)
        {
            Visible = isWelcomeCompany;

        }

        modify(NewSalesOrder)
        {
            Visible = isWelcomeCompany;

        }

        modify(NewSalesInvoice)
        {
            Visible = isWelcomeCompany;

        }

        modify(NewSalesQuote)
        {
            Visible = isWelcomeCompany;

        }

        modify(NewSalesBlanketOrder)
        {
            Visible = isWelcomeCompany;

        }

        modify("Service &Items")
        {
            Visible = isWelcomeCompany;

        }

        modify("Service Orders")
        {
            Visible = isWelcomeCompany;

        }

        modify(Service)
        {
            Visible = isWelcomeCompany;

        }

        modify("Issued &Finance Charge Memos")
        {
            Visible = isWelcomeCompany;

        }

        modify("Issued &Reminders")
        {
            Visible = isWelcomeCompany;

        }

        modify("Issued Documents")
        {
            Visible = isWelcomeCompany;

        }

        modify("Return Orders")
        {
            Visible = isWelcomeCompany;

        }

        modify(Orders)
        {
            Visible = isWelcomeCompany;

        }

        modify(Quotes)
        {
            Visible = isWelcomeCompany;

        }

        modify(NewServiceQuote)
        {
            Visible = isWelcomeCompany;

        }

        modify(NewServiceInvoice)
        {
            Visible = isWelcomeCompany;

        }

        modify(NewServiceOrder)
        {
            Visible = isWelcomeCompany;

        }

        modify(NewServiceCrMemo)
        {
            Visible = isWelcomeCompany;

        }

        modify(NewReminder)
        {
            Visible = isWelcomeCompany;

        }

        modify(NewFinChargeMemo)
        {
            Visible = isWelcomeCompany;

        }

        modify(CustomerLedgerEntriesHistory)
        {
            Visible = isWelcomeCompany;

        }

        modify(PricesAndDiscounts)
        {
            Visible = isWelcomeCompany;

        }

        modify(PriceLists)
        {
            Visible = isWelcomeCompany;

        }

        modify(PriceLines)
        {
            Visible = isWelcomeCompany;

        }

        modify(DiscountLines)
        {
            Visible = isWelcomeCompany;

        }

        modify(Prices_LineDiscounts)
        {
            Visible = isWelcomeCompany;

        }

        modify(Prices_Prices)
        {
            Visible = isWelcomeCompany;

        }

        modify(PriceListsDiscounts)
        {
            Visible = isWelcomeCompany;

        }

        modify("Request Approval")
        {
            Visible = isWelcomeCompany;

        }

        modify(Workflow)
        {
            Visible = isWelcomeCompany;

        }

        modify(ManageApprovalWorkflows)
        {
            Visible = isWelcomeCompany;

        }

        modify("Sales Journal")
        {
            Visible = isWelcomeCompany;

        }

        modify(Email)
        {
            Visible = isWelcomeCompany;

        }

        modify(PaymentRegistration)
        {
            Visible = isWelcomeCompany;

        }

        modify(Display)
        {
            Visible = isWelcomeCompany;

        }

        modify(ReportFactBoxVisibility)
        {
            Visible = isWelcomeCompany;

        }

        modify(Reports)
        {
            Visible = isWelcomeCompany;

        }

        modify(ReportCustomerTop10List)
        {
            Visible = isWelcomeCompany;

        }

        modify(ReportCustomerSalesList)
        {
            Visible = isWelcomeCompany;

        }

        modify(ReportSalesStatistics)
        {
            Visible = isWelcomeCompany;

        }

        modify(FinanceReports)
        {
            Visible = isWelcomeCompany;

        }

        modify(Statement)
        {
            Visible = isWelcomeCompany;

        }

        modify(ReportCustomerBalanceToDate)
        {
            Visible = isWelcomeCompany;

        }

        modify(ReportCustomerTrialBalance)
        {
            Visible = isWelcomeCompany;

        }

        modify(ReportCustomerDetailTrial)
        {
            Visible = isWelcomeCompany;

        }

        modify(ReportCustomerSummaryAging)
        {
            Visible = isWelcomeCompany;

        }

        modify(ReportAgedAccountsReceivable)
        {
            Visible = isWelcomeCompany;

        }

        modify(ReportCustomerPaymentReceipt)
        {
            Visible = isWelcomeCompany;

        }

        modify(Reminder)
        {
            Visible = isWelcomeCompany;

        }

        modify(General)
        {
            Visible = isWelcomeCompany;

        }

        modify("Customer Register")
        {
            Visible = isWelcomeCompany;

        }

        modify("Customer - Top 10 List")
        {
            Visible = isWelcomeCompany;

        }

        modify(Sales)
        {
            Visible = isWelcomeCompany;

        }

        modify("Customer - Order Summary")
        {
            Visible = isWelcomeCompany;

        }

        modify("Customer - Order Detail")
        {
            Visible = isWelcomeCompany;

        }

        modify("Customer - Sales List")
        {
            Visible = isWelcomeCompany;

        }

        modify(ApplyTemplate)
        {
            Visible = isWelcomeCompany;

        }

        modify(SalesReports)
        {
            Visible = isWelcomeCompany;

        }

        modify(Functions)
        {
            Visible = isWelcomeCompany;

        }

        modify(SendApprovalRequest)
        {
            Visible = isWelcomeCompany;

        }

        modify("Sales Statistics")
        {
            Visible = isWelcomeCompany;

        }

        addfirst(navigation)
        {

            group(Interaction)
            {

                action("Comments")
                {

                    ApplicationArea = RelationshipMgmt;
                    Caption = 'Co&mments';
                    Image = ViewComments;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    ToolTip = 'View or add comments for the record.';
                    RunObject = Page "Comment Sheet";
                    RunPageLink = "Table Name" = CONST(Customer),
                                  "No." = FIELD("No.");
                }

                action("Create &Interaction")
                {
                    AccessByPermission = TableData Attachment = R;
                    ApplicationArea = RelationshipMgmt;
                    Caption = 'Create &Interaction';
                    Image = CreateInteraction;
                    Promoted = true;
                    PromotedCategory = Process;
                    ToolTip = 'Create an interaction with a specified contact.';

                    trigger OnAction()
                    begin
                        CreateInteraction;
                    end;
                }
            }

        }
        modify("Create &Interaction")
        {
            Visible = NOT isWelcomeCompany;


        }
        modify("Comments")
        {
            Visible = NOT isWelcomeCompany;


        }




    }

    procedure ShowComment()
    begin
        PAGE.RunModal(PAGE::"Inter. Log Entry Comment Sheet", TempInterLogEntryCommentLine);
    end;

    procedure SetComments(var InterLogEntryCommentLine: Record "Inter. Log Entry Comment Line")
    begin
        TempInterLogEntryCommentLine.DeleteAll();

        if InterLogEntryCommentLine.FindSet then
            repeat
                TempInterLogEntryCommentLine := InterLogEntryCommentLine;
                TempInterLogEntryCommentLine.Insert();
            until InterLogEntryCommentLine.Next() = 0;
    end;

    procedure CreateInteraction()
    var
        TempSegmentLine: Record "Segment Line" temporary;
        interact: Record Contact;
        interactiontemplate: record "Interaction Template" temporary;

    begin
        interact.SetFilter("Phone No.", rec."Phone No.");
        interact.FindFirst();
        begin

            TempSegmentLine."Contact Name" := interact.Name;
            TempSegmentLine."Contact Phone No." := interact."Phone No.";
            TempSegmentLine."Interaction Template Code" := 'OUTGOING';
            //    TempSegmentLine.modify();
            interact.CheckIfPrivacyBlockedGeneric;
            TempSegmentLine.CreateSegLineInteractionFromContact(interact);



        end;

    end;
    // Caption = 'Patients';
    // AboutTitle = 'Patients';
    // DataCaptionExpression = Caption;
    var
        isWelcomeCompany: Boolean;
        TempInterLogEntryCommentLine: Record "Inter. Log Entry Comment Line" temporary;

    trigger OnOpenPage();
    begin

        isWelcomeCompany := true;
        //  Caption := Caption('Customers');
        if (CompanyName() = 'Welcome Center') OR (CompanyName() = 'Staging Welcome Center')
   then begin
            isWelcomeCompany := false;
            //        Caption := Caption('Patients');
        end;
    end;
}

pageextension 50111 CustomerCardExt extends "Customer Card" //OriginalId
{



    layout
    {


        modify("Credit Limit (LCY)")
        {

            Visible = isWelcomeCompany;
        }

        modify("IC Partner Code")
        {

            Visible = isWelcomeCompany;
        }

        modify(Balance)
        {

            Visible = isWelcomeCompany;
        }

        modify("Balance Due")
        {

            Visible = isWelcomeCompany;
        }

        modify(Blocked)
        {

            Visible = isWelcomeCompany;
        }

        modify("Privacy Blocked")
        {

            Visible = isWelcomeCompany;
        }
        modify("Disable Search by Name")
        {

            Visible = isWelcomeCompany;
        }


        modify("Responsibility Center")
        {

            Visible = isWelcomeCompany;
        }

        modify(CreditLimit)
        {
            Visible = isWelcomeCompany;
        }

        modify(AdjProfitPct)
        {
            Visible = isWelcomeCompany;
        }

        modify("Document Sending Profile")
        {
            Visible = isWelcomeCompany;
        }

        modify(TotalSales2)
        {
            Visible = isWelcomeCompany;
        }

        modify("CustSalesLCY - CustProfit - AdjmtCostLCY")
        {
            Visible = isWelcomeCompany;
        }

        modify(AdjCustProfit)
        {
            Visible = isWelcomeCompany;
        }

        modify(Invoicing)
        {
            Visible = isWelcomeCompany;
        }

        modify(Payments)
        {
            Visible = isWelcomeCompany;
        }

        modify(Shipping)
        {
            Visible = isWelcomeCompany;
        }

        modify(Statistics)
        {
            Visible = isWelcomeCompany;
        }



        modify("Balance (LCY)")
        {
            Visible = isWelcomeCompany;
        }

        modify("Balance (LCY)2")
        {
            Visible = isWelcomeCompany;
        }

        modify(PriceAndLineDisc)
        {
            Visible = isWelcomeCompany;
        }
        modify("Balance Due (LCY)")
        {
            Visible = isWelcomeCompany;
        }
        modify("Customer Disc. Group")
        {
            Visible = isWelcomeCompany;
        }
        modify(Control10)
        {
            Visible = isWelcomeCompany;
        }
        modify(Control108)
        {
            Visible = isWelcomeCompany;
        }

    }
    actions
    {
        modify(Approval)
        {

            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Request Approval")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Prices and Discounts")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }

        modify(Dimensions)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Bank Accounts")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(ShipToAddresses)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Direct Debit Mandates")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(Contact)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(CRMGotoAccount)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(CRMSynchronizeNow)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(UpdateStatisticsInCRM)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(Coupling)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(ManageCRMCoupling)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(DeleteCRMCoupling)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(ShowLog)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Ledger E&ntries")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(Action76)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("S&ales")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Entry Statistics")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Statistics by C&urrencies")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Item &Tracking Entries")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Prepa&yment Percentages")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(Quotes)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(Invoices)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Return Orders")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Issued Documents")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Issued &Reminders")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Issued &Finance Charge Memos")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Blanket Orders")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("&Jobs")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Service Orders")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }

        modify("Ser&vice Contracts")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Service &Items")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(Approve)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(Reject)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(Delegate)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(Comment)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(SendApprovalRequest)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }

        modify(CancelApprovalRequest)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }

        modify(ManageApprovalWorkflows)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(Workflow)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("F&unctions")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Post Cash Receipts")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Sales Journal")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Aged Accounts Receivable")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Customer Labels")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Account Detail")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Cash Applied")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Open Entries")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Customer/Item Statistics")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Customer Jobs (Cost)")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Customer Jobs (Price)")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Report Statement")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(BackgroundStatement)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Cross Re&ferences")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Item References")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Co&mments")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(ApprovalEntries)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(Attachments)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(CustomerReportSelections)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(SentEmails)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(ActionGroupCRM)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(History)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(PriceListsDiscounts)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Line Discounts")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(Prices)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Prices and Discounts Overview")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(Action82)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify("Recurring Sales Lines")
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(Documents)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(Service)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(WordTemplate)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }

        modify(Email)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }

        modify(Flow)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(CreateFlow)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(SeeFlows)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(CreateApprovalWorkflow)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(Templates)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(ApplyTemplate)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(SaveAsTemplate)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(PaymentRegistration)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
        modify(Orders)
        {
            Visible = isWelcomeCompany;
            Enabled = isWelcomeCompany;
        }
    }
    var
        isWelcomeCompany: Boolean;

    trigger OnOpenPage()

    begin


        isWelcomeCompany := true;
        // Caption := Caption('Customer Card');
        if (CompanyName() = 'Welcome Center') OR (CompanyName() = 'Staging Welcome Center')
        then begin
            isWelcomeCompany := false;
            //   Caption := Caption('Patient Card');
        end;

    end;




}
// pageextension 50126 MenuExt extends "Sales & Relationship Mgr. RC" //OriginalId
// {
//     actions
//     {
//         modify("Logged Segments")
//         {
//             Caption = 'Logged Workfiles';
//         }
//         modify("Active Segments")
//         {
//             Caption = 'Active Workfiles';
//         }
//         modify(Contacts)
//         {
//             Caption = 'Patients';
//         }
//         modify(Salespersons)
//         {
//             Caption = 'Agents';
//         }

//         addafter("S&ales Statistics")
//         {
//             action("Agents")
//             {
//                 ApplicationArea = RelationshipMgmt;
//                 Caption = 'Agents';
//                 Image = "Report";
//                 RunObject = Page "Salespersons/Purchasers";
//                 ToolTip = 'View or edit information about the sales agents that work for you and which customers they are assigned to.';

//             }
//         }
//     }







// }




