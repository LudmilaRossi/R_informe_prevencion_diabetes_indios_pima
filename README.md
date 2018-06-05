# R_informe_prevencion_diabetes_indios_pima
Este informe consiste en realizar un plan de prevención para atajar el alto nivel de enfermos diabéticos en la comunidad de Indios Pima (Phoenix, Arizona). Se investigarán las incidencias de todos los datos recogidos en los informes médicos en la aparición de la enfermedad, así como sus interrelaciones.


DESCRIPCIÓN de los datos:
Se utilizó la Pima Indians Diabetes Database (PIDD), cuya propiedad original pertenece al National Institute of Diabetes and Digestive and Kidney Diseases, y los datos fueron obtenidos del UCI Machine Learning Repository - Pima Indians Diabetes Data Set (2016). 


Las unidades de análisis consistieron en 768 mujeres residentes cerca de Phoenix, Arizona, EEUU, pertenecientes a la etnia Pima y con al menos 21 años de edad. En ellas fueron registradas 9 variables: 8 numéricas y una clasificatoria, detalladas a continuación:

1. Concentración de glucosa plasmática a las 2hs de una prueba de tolerancia oral a la glucosa (G120 mg/dl) 
2. Concentración de insulina sérica a las 2hs de una prueba de tolerancia oral a la glucosa (I120 mU/ml) 
3. Presión arterial diastólica (PAD mmHg.) 
4. Grosor del pliegue de la piel del tríceps (GPPT mm) 
5. Índice de masa corporal (IMC= peso /altura al cuadrado= kg/m²) 
6. Antecedentes Familiares o función de pedigrí de diabetes (FPD) 
7. N° de embarazos (nE) 
8. Edad (E años) 
9. Variable clasifcatoria (D: 0 – 1, donde 1 es interpretado como “test positivo para diabetes”). El diagnóstico estuvo basado en el criterio de la OMS (i.e.: G120 ≥ 200 mg/dl en cualquier examen o evaluación de rutina médica). 


EXPLORACIÓN de los datos:
Contamos con 768 informes médicos.

Se verifica si hay datos nulos con el siguiente algoritmo:
table(is.na(PimaIndiansDiabetes))

Nos da el siguiente resultado:
FALSE: 6912


Modelado. ÁRBOL DE DECISIÓN:
En término técnicos, este modelo define un conjunto de condiciones organizadas en una estructura jerárquica. Consiste en un entrenamiento que va cambiando el número random para aprender de los datos.

Este tipo de análisis se puede utilizar para representar visualmente y de forma explícita decisiones y toma de decisiones.

Parto de la hipótesis esta metodología es la más adecuada para descubrir los diferentes fenómenos que causan el alto índice de diabetes en la comunidad de indios Pima y ver qué camino tomar en el plan estratégico de prevención. 


Justificación de la elección de la Metodología del árbol de decisión:
Para este informe, el método más adecuado es el de “Árbol de decisión" porque es ideal para descubrir cosas nuevas, en este caso, veremos qué fenómenos se manifiestan en la comunidad para que haya un alto índice de diabetes y de esta manera, establecer estrategias para realizar un plan de prevención. 

Otro modelo posible, podría haber sido el bayesiano porque tenemos variables independientes que necesitan ciertas condiciones para que se produzca un hecho. Es ideal para testear. Pero como se basa en probabilidades para predecir, no sería muy útil para el plan de prevención, porque necesitamos analizar los hechos que producen diabetes en este comunidad y poder prevenir un mayor incremento de este enfermedad. La predicción en este caso no es el objetivo, porque necesitamos saber qué hacer para que esta comunidad pueda realizar acciones para bajar el índice de esta enfermedad en la población, y no por el contrario, saber por ejemplo, el porcentaje de incremento de diabéticos que habrá en esta comunidad (para esto último sí sería mejor el modelo bayesiano).


