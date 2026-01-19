using ProcessorService as service from '../../srv/cat-service';
using from '../../db/schema';

annotate service.Order with @(
    UI.SelectionFields : [
        status.code,
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : customer.name,
            Label : 'Customer Name',
        },
        {
            $Type : 'UI.DataField',
            Value : customer.order.ID,
            Label : 'Order ID',
        },
        {
            $Type : 'UI.DataField',
            Value : customer.order.title,
        },
        {
            $Type : 'UI.DataField',
            Value : customer.order.status_code,
            Label : '{i18n>Status}',
            Criticality : status.criticality,
        },
    ],
);

annotate service.Status with {
    code @(
        Common.Label : '{i18n>Status}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Status',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : code,
                    ValueListProperty : 'code',
                },
            ],
            Label : '{i18n>Status}',
        },
        Common.ValueListWithFixedValues : true,
        Common.Text : descr,
    )
};

annotate service.Status with {
    criticality @Common.Text : name
};

annotate service.Order with {
    status @Common.Text : status.descr
};

