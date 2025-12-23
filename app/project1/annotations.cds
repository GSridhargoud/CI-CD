using MyService as service from '../../srv/Service';
annotate service.DATA with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'id',
                Value : id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'salary',
                Value : salary,
            },
            {
                $Type : 'UI.DataField',
                Label : 'loc',
                Value : loc,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Dept',
                Value : Dept,
            },
            {
                $Type : 'UI.DataField',
                Label : 'enter_by',
                Value : enter_by,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'id',
            Value : id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'salary',
            Value : salary,
        },
        {
            $Type : 'UI.DataField',
            Label : 'loc',
            Value : loc,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Dept',
            Value : Dept,
        },
    ],
);

