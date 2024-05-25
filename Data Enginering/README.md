# <p align="center">Ingeniería de datos</p>

Este documento detalla el proceso de ingeniería de datos para nuestro proyecto, abarcando la definición del alcance, el procesamiento de datos y la construcción de la canalización de datos.
<details>
  <summary>Tabla de contenido</summary>

  1. [Alcance del proyecto](#alcance-del-proyecto)
  2. [Procesamiento de datos](#procesamiento-de-datos)
  3. [Visualización de datos y diccionarios](#visualizacion-de-datos-y-diccionarios)
  4. [Pipeline](#pipeline)

</details>

## Alcance del proyecto ##
Para determinar el alcance del proyecto, utilizamos técnicas de análisis de datos y [búsquedas dentro del United States Census Bureau](https://www.census.gov/newsroom/press-releases/2023/population-trends-return-to-pre-pandemic-norms.html) con el objetivo de encontrar el estado con mayor crecimiento post pandemia en el que  se centrará nuestro proyecto. 
El motivo de esta decisión es enfocarnos en el mercado con mayor oportunidad para inversión en la industria gastronómica. 

## Procesamiento de datos ##
__Datos de Google y Yelp__

Nuestras fuentes de datos iniciales fueron archivos JSON de Google y Yelp, que requirieron un análisis y una limpieza exhaustivos para garantizar la compatibilidad para futuros análisis de datos exploratorios (EDA). Este proceso dio como resultado cuatro tablas principales: “datagusto_restaurantess”, “datagusto_yelp”, “datagusto_reviews_union”y “datagusto_business_id”. Estas tablas se integraron posteriormente en BigQuery. Los procesos ETL para cada fuente se documentan a continuación: [ETL Google](https://github.com/patrick-mathay/henry_proyecto_final/tree/master/Data%20Enginering/ETL%20Google), [ETL Yelp](https://github.com/patrick-mathay/henry_proyecto_final/tree/master/Data%20Enginering/ETL%20Yelp), [ETL Unificacion](https://github.com/patrick-mathay/henry_proyecto_final/tree/master/Data%20Enginering/ETL%20Unificacion).


__Unificación de datos__

Para facilitar EDA y el desarrollo de productos de aprendizaje automático, fusionamos los conjuntos de datos de Google y Yelp, exclusivamente las reseñas. El conjunto de datos unificado y la documentación del proceso ETL están disponibles aquí: [ETL Unificacion](https://github.com/patrick-mathay/henry_proyecto_final/tree/master/Data%20Enginering/ETL%20Unificacion).

## Visualización de datos y diccionarios ##

Para comprender mejor las relaciones entre las diferentes entidades en nuestro conjunto de datos, creamos un diagrama de relación entre entidades y bases de datos (DER), que se ilustra a continuación:

<p align="center">
  <img src="/Images/Diagrama ER.png" alt="Logo" />
</p>

Además, preparamos un diccionario de datos completo que detalla cada elemento de datos para los conjuntos de datos de Google y Yelp, al que se puede acceder [aquí](https://github.com/patrick-mathay/henry_proyecto_final/blob/master/Data%20Enginering/Diccionario.pdf).

## Pipeline ##

Nuestro proceso de datos se ilustra en el siguiente diagrama, que muestra el flujo desde la carga de datos inicial hasta la EDA final y la integración del modelo de aprendizaje automático:

<p align="center">
  <img src="/Images/pipeline.jpg" alt="Logo" />
</p>

## Descripción del Proceso de Ingeniería de Datos ##

1. Inicialmente, recibimos datos en bruto provenientes de Google Maps y Google Yelp, complementados con datos adicionales del censo obtenidos del ["United States Census Bureau"](https://www.census.gov/). 
2. Posteriormente, mediante Visual Studio Code y utilizando un entorno WSL, configuramos la orquestación en Airflow, definiendo los DAGs necesarios y desplegando Airflow con Docker.
3. En Airflow, los DAGs ejecutan las transformaciones necesarias de los archivos de datos y gestionan la carga de los datos transformados en Google Cloud Storage. Simultáneamente, las tablas resultantes se cargan en Google BigQuery. 
4. Finalmente, las tablas alojadas en BigQuery se ponen a disposición para ser utilizadas en análisis exploratorio de datos (EDA), machine learning (BigQuery ML) y visualización de datos (Power BI).
