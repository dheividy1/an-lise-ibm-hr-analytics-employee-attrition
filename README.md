# IBM HR Analytics — Employee Attrition & Performance Dashboard

## Visão Geral

Este projeto tem como objetivo analisar dados de rotatividade (turnover) e desempenho de colaboradores utilizando SQL para tratamento e modelagem dos dados e Power BI para visualização e geração de insights estratégicos.

A base de dados utilizada foi a IBM HR Analytics Employee Attrition & Performance, amplamente usada para estudos de People Analytics.

O foco principal da análise foi identificar:

* Perfis com maior probabilidade de turnover
* Fatores associados à saída de colaboradores
* Diferenças entre funcionários que permanecem e os que deixam a empresa
* Possíveis indicadores de risco organizacional

---

# Etapa 1 — Processamento e Modelagem em SQL

A primeira etapa do projeto consistiu na preparação e enriquecimento dos dados utilizando SQL.

Foram utilizadas Common Table Expressions (CTEs) para estruturar melhor a lógica analítica e gerar novas variáveis relevantes para o dashboard.

## Código SQL

---

## Criação de Variáveis Analíticas

Foi criada uma CTE chamada `Faixa_Etária` contendo duas classificações estratégicas:

### Faixa Etária

* Jovem: 18 – 24 anos
* Adultos: 25 – 44 anos
* Maturidade: 45 – 64 anos
* Idoso: acima de 65 anos

### Senioridade (baseada no tempo de empresa)

* Júnior: 0 – 3 anos
* Pleno: 4 – 9 anos
* Sênior: 10+ anos

Essas classificações permitem análises comportamentais mais profundas sobre permanência e risco de saída.

---

## Tempo Médio de Empresa

Foi criada uma CTE para calcular o tempo médio de permanência dos colaboradores segmentado por:

* Departamento
* Faixa etária

Essa métrica auxilia na compreensão de padrões de retenção dentro da organização.

---

## Média de Idade por Cargo

Outra CTE foi responsável por calcular a idade média por função (JobRole), permitindo análises relacionadas à maturidade profissional e possíveis diferenças geracionais entre cargos.

---

## Dataset Final

O dataset final foi obtido através de JOINs entre as CTEs, consolidando:

* Dados demográficos
* Dados profissionais
* Métricas agregadas
* Classificações criadas

O resultado foi uma base analítica enriquecida pronta para consumo no Power BI.

---

# Etapa 2 — Dashboard em Power BI

O dashboard foi desenvolvido com foco em People Analytics e análise de turnover organizacional, dividido em duas páginas principais.

---

# Página 1 — Visão Geral de Turnover

## Dashboard — Visão Geral

---

## Indicadores Principais

* Total de Colaboradores: 1470
* Idade Média: 36,93 anos
* Salário Médio: R$ 6,5 mil
* Turnover Total: 237 colaboradores
* Taxa de Turnover: 16,12%

---

## Principais Análises

### Turnover por Faixa Etária

* Adultos representam a maior parte das saídas (aproximadamente 69%)
* Jovens e colaboradores em maturidade possuem menor participação

Insight: A maior rotatividade ocorre na fase mais produtiva da carreira.

---

### Turnover por Nível de Trabalho

* Nível 1 concentra mais de 60% das saídas

Insight: Cargos de entrada apresentam maior risco de rotatividade.

---

### Turnover por Tempo de Empresa

* Picos de saída nos primeiros anos
* Redução significativa após maior tempo de permanência

Insight: Existe um risco elevado de saída no início da jornada do colaborador.

---

### Turnover por Senioridade

* Júnior: 122 saídas
* Pleno: 77 saídas
* Sênior: 38 saídas

Insight: Quanto maior a senioridade, menor o turnover.

---

# Página 2 — Fatores Associados ao Turnover

## Dashboard — Análises Estratégicas

---

## Indicadores Estratégicos

* Custo estimado de turnover: R$ 20,42 milhões
* Funcionários com overtime: 28,30%
* Tempo médio de empresa: 7,01 anos
* Funcionários de alto risco de turnover (baixa satisfação de trabalho e no mínimo 3 anos sem promoção): 2,65%

---

## Comparação: Funcionários Gerais vs Turnover

Colaboradores que saíram apresentam:

* Menor tempo de empresa
* Menor satisfação no trabalho
* Salários menores
* Idade menor
* Pior equilíbrio entre vida-trabalho
* Mais empresas anteriores no histórico

Insight: Existe um padrão claro de vulnerabilidade relacionado a experiência, remuneração e satisfação.

---

## Turnover por Departamento

* Research and Development apresenta o maior volume absoluto
* Sales aparece como segunda maior taxa
* Human Resources possui o menor número de saídas

Insight: Departamentos com maior volume de funcionários naturalmente concentram mais desligamentos.

---

## Turnover por Satisfação no Trabalho

* Maior turnover em níveis médios de satisfação

Insight: Funcionários moderadamente satisfeitos podem estar mais propensos a aceitar novas oportunidades.

---

## Turnover por Avaliação de Desempenho

* A maioria das saídas ocorre em funcionários com avaliação padrão

Insight: O turnover não está necessariamente ligado a baixo desempenho.

---

# Principais Conclusões Estratégicas

Com base nas análises, os principais fatores associados ao turnover são:

1. Baixa senioridade (início de carreira)
2. Menor tempo de empresa
3. Salários mais baixos
4. Menor satisfação no trabalho
5. Histórico profissional mais instável
6. Possível impacto de horas extras

---

# Recomendações de Negócio

* Programas de retenção para novos colaboradores
* Revisão de políticas salariais para cargos iniciais
* Monitoramento de satisfação e clima organizacional
* Estratégias de onboarding mais robustas
* Controle de carga de trabalho e horas extras

---

# Tecnologias Utilizadas

* SQL (MySQL)
* Power BI
* Dataset IBM HR Analytics

---

# Possíveis Melhorias Futuras

* Modelos preditivos de churn de colaboradores
* Machine Learning para classificação de risco
* Dashboard interativo com simulações
* Análise estatística mais aprofundada
