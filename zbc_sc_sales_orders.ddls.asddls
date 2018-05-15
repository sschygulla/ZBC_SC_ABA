@AbapCatalog.sqlViewName: 'ZBC_SC_SO'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'List Reporting for Sales Orders'
@OData.publish: true
define view ZBC_SC_SALES_ORDERS as select from snwd_so as so_header {    
    key so_header.so_id as SalesOrderID,
    @Semantics.currencyCode: true
    so_header.currency_code as CurrencyCode,
    @Semantics.amount.currencyCode: 'CurrencyCode' 
    so_header.gross_amount as GrossAmount,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    so_header.net_amount as NetAmount,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    so_header.tax_amount as TaxAmount,
    so_header.lifecycle_status as LifecycleStatus
}
 