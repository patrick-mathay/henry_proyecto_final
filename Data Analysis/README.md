# ANALISIS EXPLORATORIO DE DATOS DE GOOGLE MAPS Y YELP

![imagen-readme.jpg](https://i.postimg.cc/Jzm2NdtL/imagen-readme.jpg)

## INTRODUCCION

Este repositorio contiene el análisis de datos realizado sobre conjuntos de datos provenientes de Google Maps y Yelp. El objetivo principal es explorar y analizar la información recopilada para obtener insights relevantes sobre los negocios y reviews en estas plataformas. 
* Objetivos: 
* Revisar y limpiar los datasets.
* Realizar un EDA para entender el comportamiento de los diferentes datos

# TECNOLOGIAS USADAS

- ![Python](https://img.shields.io/badge/-Python-333333?style=flat&logo=python)
- ![Pandas](https://img.shields.io/badge/-Pandas-333333?style=flat&logo=pandas)
- ![Numpy](https://img.shields.io/badge/-Numpy-333333?style=flat&logo=numpy)
- ![Matplot](https://img.shields.io/badge/-Matplotlib-333333?style=flat&logo=matplotlib)
- ![Seaborn](https://img.shields.io/badge/-Seaborn-333333?style=flat&logo=seaborn)
- ![NLTK](https://img.shields.io/badge/-NLTK-333333?style=flat&logo=nltk)

## DATASET

Los datos utilizados en este análisis fueron obtenidos de Google Maps y Yelp. Se incluyen detalles como la ubicación geográfica, las valoraciones de los usuarios, las categorías de los negocios, entre otros.

## TRANSFORMACIÓN Y LIMPIEZA DE DATOS (ETL)

El proceso de Transformación y Limpieza de Datos se llevó a cabo utilizando herramientas y técnicas estándar de ETL. Los siguientes enlaces proporcionan acceso a los scripts utilizados para este propósito:


**1. ETL business_maps :** ["ETL_business_maps"](1_.ipynb) <br>
**2. ETL business_yelp :** ["ETL business_yelp"](12.ipynb) <br>
**3. ETL business_id :** ["ETL business_id"](1_ET.ipynb) <br>
**4. ETL reviews :** ["ETL Reviews"](1_ET.ipynb) <br>


### Análisis Exploratorio de Datos (EDA)

Después de completar el proceso ETL, se procede a realizar un Análisis Exploratorio de Datos (EDA) para investigar las relaciones entre variables, identificar valores atípicos y descubrir patrones interesantes dentro del conjunto de datos. Este paso es fundamental para comprender en profundidad la naturaleza de los datos y extraer información valios. El mismo facilita la toma de decisiones informadas en etapas posteriores del proyecto. El siguiente enlaces proporciona acceso al script utilizado para este propósito ["EDA"](2_EDA.ipynb)


- ***Analisis de cantidad de cada categoria en florida:***

Se muestra un análisis detallado de la distribución de diferentes categorías de negocios en el estado de Florida. El objetivo es identificar cuáles son las categorías más comunes y comprender mejor la estructura del sector empresarial en esta región.<br>
![business_maps.png](https://i.postimg.cc/SxTfnZMV/1-business-maps.png)
![business_yelp.png](https://i.postimg.cc/zfySKnwN/2-business-yelp.png)

- ***Analisis del promedio de rating recibido por hacia los negocios:***

Se muestra un análisis detallado del promedio de calificaciones (ratings) recibidas por los negocios en Florida. El objetivo es evaluar la calidad percibida de los servicios y productos ofrecidos por los negocios en distintas categorías. Este análisis nos permitirá identificar tendencias en la satisfacción del cliente. 
![rating_maps.png](https://i.postimg.cc/SKHLrJVM/3-calificaciones-maps.png)
![rating_yelp.png](https://i.postimg.cc/85WRnNnn/4-calificaciones-yelp.png)

- ***Analisis de numero de reseñas por usuario:***

Se muestra un análisis del número de reseñas por usuario para identificar posibles outliers. El objetivo es comprender el comportamiento de los usuarios en términos de la cantidad de reseñas que publican y detectar aquellos que presentan un patrón de comportamiento inusual. Identificar outliers en este contexto puede proporcionar información valiosa sobre usuarios extremadamente activos o inusuales
![outlaier_maps.png](https://i.postimg.cc/90hG6K6X/5-outlaier-maps.png)
![outlaier_yelp.png](https://i.postimg.cc/MHmyqtw7/6-outlaier-yelp.png)

- ***Analisis de Correlacion entre promedio de reseñas y categorias:***

Se muestra un análisis de correlación entre el promedio de reseñas y las diferentes categorías de negocios. El objetivo es determinar si existe una relación significativa entre la calidad percibida de los negocios, reflejada en sus calificaciones promedio, y la categoría a la que pertenecen. Este análisis nos ayudará a identificar si ciertas categorías tienden a recibir mejores o peores calificaciones de los usuarios, proporcionando una visión más profunda de las preferencias y percepciones de los clientes. 
![correlacion_maps.png](https://i.postimg.cc/WpGmGpZd/7-correlacion-maps.png)

![correlacion_yelp.png](https://i.postimg.cc/yY7mvqhv/8-correlacion-yelp.png)
