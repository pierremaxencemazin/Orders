 
;  SYNERGY DATA LANGUAGE OUTPUT
;
;  REPOSITORY     : C:\Users\pmazin\source\repos\Orders\Repository1\bin\Debug\rpsmain.ism
;                 : C:\Users\pmazin\source\repos\Orders\Repository1\bin\Debug\rpstext.ism
;                 : Version 11.1.1d
;
;  GENERATED      : 05-NOV-2021, 14:51:27
;                 : Version 11.1.1d
;  EXPORT OPTIONS : [ALL] 
 
 
Structure HEADER   DBL ISAM
   Description "Order Header Structure"
 
Field OH_NUMBER   Type DECIMAL   Size 6
   Description "Order Number"
   Report Just LEFT   Input Just LEFT
 
Field OH_CUSTOMER   Type ALPHA   Size 8
   Description "Item Number"
 
Field OH_DATE   Type DECIMAL   Size 8
   Description "Order Date"
   Report Just LEFT   Input Just LEFT
 
Field OH_CONTACT   Type ALPHA   Size 20
   Description "Order Placed By"
 
Field OH_SALESREP   Type DECIMAL   Size 4
   Description "Sales Rep Code"
   Report Just LEFT   Input Just LEFT
 
Key ORDER_NUMBER   ACCESS   Order ASCENDING   Dups NO
   Description "Order number"
   Segment FIELD   OH_NUMBER  SegType DECIMAL  SegOrder ASCENDING
 
Relation  1   HEADER ORDER_NUMBER   ORDER ORDER_AND_ITEM
 
Structure ORDER   DBL ISAM
   Description "Order Line Detail Structure"
 
Field OD_NUMBER   Type DECIMAL   Size 6
   Description "Order Number"
   Report Just LEFT   Input Just LEFT
 
Field OD_ITEM   Type DECIMAL   Size 4
   Description "Item Number"
   Report Just LEFT   Input Just LEFT
 
Field OD_PART   Type ALPHA   Size 10
   Description "Part Number"
 
Field OD_QTY   Type DECIMAL   Size 5
   Description "Quandtity Ordered"
   Report Just LEFT   Input Just LEFT
 
Field OD_UNIT_PRICE   Type DECIMAL   Size 8   Precision 2
   Description "Unit Price"
   Report Just LEFT   Input Just LEFT
 
Key ORDER_AND_ITEM   ACCESS   Order ASCENDING   Dups NO
   Description "Order number and item number"
   Segment FIELD   OD_NUMBER  SegType DECIMAL  SegOrder ASCENDING
   Segment FIELD   OD_ITEM  SegType DECIMAL  SegOrder ASCENDING
 
Relation  1   ORDER ORDER_AND_ITEM   HEADER ORDER_NUMBER
 
