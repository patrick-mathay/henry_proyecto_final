**Leer antes de iniciar**

Esta informacion es parte de la Encuesta sobre la Comunidad Estadounidense (ACS, por sus siglas en inglés), una encuesta continua realizada por la Oficina del Censo de los EE.UU. que recopila información detallada demográfica, social, económica y de vivienda de una muestra representativa de hogares en todo el país para proporcionar datos vitales anualmente.


Esta información es del último año disponible públicamente, **2022**. Fue accedida a través del sistema PUMS (Sistema de Microdatos de Uso Público) de la Oficina del Censo de los EE.UU.
https://data.census.gov/


Toda la información aquí está a nivel de **PUMA**. PUMA, Área de Microdatos de Uso Público, es una unidad geográfica utilizada en los microdatos del Censo de EE.UU. que representa un área con una población de aproximadamente 100,000 personas, lo que permite la publicación de datos demográficos y socioeconómicos detallados mientras se protege la privacidad de los individuos.


Debido a que la densidad de población varía entre los condados, algunos condados muy poblados contienen múltiples PUMA. En otros casos, un PUMA podría contener varios condados muy escasamente poblados. Lo importante es que cada PUMA contiene aproximadamente 100,000-150,000 personas.


Hay 168 PUMA en el estado de Florida.

Después de algunos intentos y errores, me di cuenta de que era más fácil exportar archivos CSV para cada categoría de datos que queríamos analizar y combinarlos con Python, en lugar de intentar combinarlos con la plataforma en línea de la Oficina del Censo.


Así que, este ETL:
- combinará cuatro archivos CSV en un solo DataFrame
- asignará un geocódigo a cada región PUMAS para su uso posterior
- probará si hay valores nulos y duplicados
- creará nuevo archivo csv para consumo general


Diccionario:

*   'GEO': Area geografica (PUMA)

*   'GEO_CODE': Codigo numerico de PUMA

*   'Age (avg)': Edad promedia de la area PUMA

*   'Property value (avg)': Valor de propiedad promedio dentro de la area PUMA

*   'Household income (avg)': ingreso promedio anual por hogar dentro de la area PUMA

*  'Property taxes (avg)': impuesto promedio de propiedad dentro de la area PUMA

_________________________________________________________________