tableextension 50129 despositioncodetableExtension extends "Segment Line"
{
    fields
    {


        field(50120; "Disposition Code"; Code[10])
        {
            Caption = 'Disposition Code';
            TableRelation = "Campaign Status";
        }
    }


}
pageextension 50128 DespositonCodeExtension extends "Create Interaction"
{


    layout
    {
        modify("Salesperson Code")
        {
            Visible = isWelcomeCompany;
        }
        modify("Wizard Contact Name")
        {
            Visible = isWelcomeCompany;
        }

        addfirst(General)
        {
            field("Patient"; Rec."Wizard Contact Name")
            {

                Visible = NoT isWelcomeCompany;

                ApplicationArea = RelationshipMgmt;
                Caption = 'Patient';

                Lookup = false;
                ShowMandatory = true;
                ToolTip = 'Specifies the contact that you are interacting with.';

                trigger OnAssistEdit()
                var
                    Contact: Record Contact;
                begin
                    if IsContactEditable then begin
                        if Contact.Get("Contact No.") then;
                        if PAGE.RunModal(0, Contact) = ACTION::LookupOK then
                            SetContactNo(Contact);
                    end;
                end;

                trigger OnValidate()
                var
                    Contact: Record Contact;
                    FilterWithoutQuotes: Text;
                begin
                    "Wizard Contact Name" := DelChr("Wizard Contact Name", '<>');
                    if "Wizard Contact Name" = "Contact Name" then
                        exit;
                    if "Wizard Contact Name" = '' then
                        Clear(Contact)
                    else begin
                        FilterWithoutQuotes := ConvertStr("Wizard Contact Name", '''', '?');
                        Contact.SetFilter(Name, '''@*' + FilterWithoutQuotes + '*''');
                        if not Contact.FindFirst then
                            Clear(Contact);
                    end;
                    SetContactNo(Contact)
                end;
            }
        }
        addafter("Salesperson Code")
        {
            field("Agent Code"; Rec."Salesperson Code")
            {
                Caption = 'Agent Code';
                Visible = NoT isWelcomeCompany;
                ApplicationArea = All;
            }

        }
        addlast(General)
        {
            field("Disposition Code"; Rec."Disposition Code")
            {
                ApplicationArea = RelationshipMgmt;
                ToolTip = 'Specifies the status disposition for the campaign.';
                Visible = false;
            }
        }


    }
    var
        isWelcomeCompany: Boolean;
        IsContactEditable: Boolean;

    trigger OnOpenPage()

    begin


        isWelcomeCompany := true;

        if CompanyName() = 'Staging Welcome Center'
        then begin
            isWelcomeCompany := false;

        end;

    end;

    local procedure SetContactNo(Contact: Record Contact)
    begin
        Validate("Contact No.", Contact."No.");
        "Wizard Contact Name" := Contact.Name;
    end;

    local procedure SetContactEditable()
    begin
        IsContactEditable := (GetFilter("Contact No.") = '') and (GetFilter("Contact Company No.") = '');

        OnAfterSetContactEditable(Rec, IsContactEditable);
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterSetContactEditable(var SegmentLine: Record "Segment Line"; var IsContactEditable: Boolean)
    begin
    end;
}
