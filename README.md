# Spark / AWS Glue Workshop

Pipeline ETL distribuido Bronze → Silver → Gold sobre el dataset Online Retail II,
construido con AWS Glue Studio, Step Functions y Athena.

## Evidencia del taller

### Step 0 - Alerta de presupuesto
![Alerta de presupuesto configurada](evidence/step_0_budget.png)

### Paso 2 — Bucket S3 con las 5 carpetas
![Bucket del Data Lake](evidence/step_2_s3_bucket.png)

### Step 5 — Job Bronze → Silver completado
![Job Bronze a Silver con estado Succeeded](evidence/step_5_glue_silver_succeeded.png)

### Paso 6 — Job Silver → Gold completado (modelo estrella)
![Job Silver a Gold con estado Succeeded](evidence/step_6_glue_gold_succeeded.png)

### Paso 7 — Orquestación con Step Functions
![Pipeline orquestado con ambos estados completados](evidence/step_7_step_functions.png)