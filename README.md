🚀 Enterprise Challenge 5 — Hermes Reply

Este repositório corresponde à Fase 5 do desafio em parceria com a empresa Hermes Reply, no curso de Tecnologia da FIAP.
É uma continuação do repositório enterprise-challenge-2, avançando para a etapa de modelagem de banco de dados e introdução ao Machine Learning (ML).

🎯 Objetivos

Transformar os dados coletados ou simulados nas fases anteriores em:
✅ Um modelo de banco de dados relacional (DER + script SQL).
✅ Um dataset simulado em CSV com pelo menos 500 leituras por sensor.
✅ Notebooks em Python (Google Colab) para treino de modelo básico de ML (classificação ou detecção de anomalias).
✅ Gráficos que ilustram os resultados do modelo.
✅ Documentação clara explicando todo o processo.

📂 Estrutura do Repositório

📁 sql → Script SQL de criação das tabelas (schema.sql)
📁 data → Dataset simulado (sensor_readings.csv)
📁 diagrams → Diagrama Entidade-Relacionamento (DER) exportado em PNG
📁 notebooks → Notebooks no Colab (geração de CSV, treino de ML, inferência)
📁 models → Modelo treinado (model.joblib)
📄 README.md → Este documento

🛠 Tecnologias Utilizadas

🔹 Modelagem ER: dbdiagram.io (export para PNG e SQL)
🔹 Banco de Dados: PostgreSQL (script inicial pronto; opcional rodar em Neon ou Supabase)
🔹 Python / Google Colab: Pandas, NumPy, Scikit-learn, Matplotlib, SQLAlchemy
🔹 Controle de Versão: GitHub

🗂 Modelagem de Dados

O modelo de dados foi construído de forma normalizada e simples, com quatro entidades principais:

🏭 equipamentos → cadastro dos equipamentos monitorados.

📟 sensores → lista de sensores associados a cada equipamento (tipo, unidade).

📊 leituras → registros coletados (temperatura, vibração, umidade, timestamp).

🤖 predicoes → resultados de modelos de ML aplicados sobre as leituras.

📌 O Diagrama Entidade-Relacionamento (DER) está disponível em diagrams/der.png.
📌 O script SQL encontra-se em sql/schema.sql.

📊 Dataset

📁 Arquivo: data/sensor_readings.csv
⚙️ Gerado artificialmente no notebook 01_gera_csv.ipynb.

Cada sensor possui ≥ 500 leituras, com:

⏱ Timestamp (ts)

🌡 Temperatura (°C)

📈 Vibração (m/s²)

💧 Umidade (%)

🔖 Metadados (equipamento, sensor_id, tipo, unidade)

🤖 Machine Learning

O modelo de ML foi implementado em Google Colab usando Scikit-learn.
Foram testadas duas abordagens:

🔹 Opção A — Detecção de Anomalias

Modelo: Isolation Forest.

Justificativa: identificar leituras atípicas de sensores (manutenção preditiva).

Resultados: percentual de anomalias detectadas (preencher após execução).

Gráfico gerado: notebooks/fig_temperatura_anomalias.png.

🔹 Opção B (Opcional) — Classificação Simples

Modelo: Logistic Regression.

Rótulos gerados artificialmente a partir de limites de temperatura, vibração e umidade.

Métricas: accuracy (preencher após execução) + matriz de confusão.

Gráfico gerado: notebooks/fig_matriz_confusao.png.

📈 Resultados

🗄 Banco de Dados: modelagem relacional, preparada para ingestão real-time ou via CSV.

📑 Dataset: leituras simuladas cobrindo temperatura, vibração e umidade.

🤖 Machine Learning: pipeline simples, treinado e validado, com gráficos ilustrando resultados.

📘 Documentação: este README + notebooks + script SQL explicam o processo completo.

▶️ Vídeo de Apresentação

🎥 Link para o vídeo (YouTube não listado): [ADICIONAR AQUI]

Roteiro sugerido (até 5 min):

📌 Contexto e objetivos (30s)

🗂 DER: entidades e justificativas (1 min)

📊 Dataset em CSV (45s)

🤖 Modelo de ML e gráfico (1m30s)

✅ Resultados e próximos passos (45s)

✅ Checklist da Entrega

 DER completo + imagem exportada

 Script SQL (schema.sql)

 Dataset CSV (sensor_readings.csv)

 Notebooks Colab com código de ML

 Gráfico(s) de resultado

 Documentação clara (README)

 Vídeo explicativo (até 5 min, link não listado)
