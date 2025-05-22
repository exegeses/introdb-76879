# Tipos de datos en SQL

## Numérico

> Enteros

    tinyint   -128 a 127 | 255 (unsigned)  
    smallint  -32768 a 32767 | 65535 (unsigned)  
    mediumint -8388608 a 8388607 | 16777215 (unsigned)   
    int  -2147483648 to 2147483647 | 4294967295 (unsigned)   
    bigint 18446744073709551615 (unsigned)   

> Decimales

    float   0.402823466  
    double  0.402823466402823466  

    decimal  

> Otros

    boolean    |  1 ó 0     --- tiniynt(1)    
    bit     10   
 

## Alfanumérico

    char        255  
    varchar     65535  
    tinyText    255
    smallText   65535
    mediumText  16777215
    Text        4294967295

## Fecha
    
    date        '2025-05-20'    yyyy-mm-dd         
    datetime    '2022-02-03 11:13:42'  yyyy-mm-dd hh:mm:ss
    time        '11:13:42'
    year        '2023'
    timestamp   '1780532244' 

> UNIX timestamp: El tiempo transcurrido expresado en milisegundos desde el 01-01-1970
