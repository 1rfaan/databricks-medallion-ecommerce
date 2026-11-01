# Repository Structure

```
databricks-medallion-ecommerce/
├── README.md
├── DIRECTORY_STRUCTURE.md
├── .gitignore
├── notebooks/
│   ├── 01_bronze_ingestion.py        # or .ipynb / .dbc export
│   ├── 02_silver_transformation.py
│   ├── 03_gold_modeling.py
│   └── 00_config_and_utils.py        # paths, helper functions (optional)
├── datasets/
│   ├── README.md                     # source, schema, license
│   └── sample/                       # small sample only; never large/private data
├── sql/
│   ├── gold_table_ddl.sql
│   └── dashboard_queries.sql
├── workflows/
│   ├── job_definition.json           # exported Job (remove IDs/tokens first)
│   └── README.md                     # task order, schedule, params
└── assets/
    ├── architecture.png
    ├── dashboard.png
    ├── workflow_dag.png
    └── unity_catalog_tables.png
```

## Export tips

| Item | How |
|---|---|
| Notebooks | Databricks: **File → Export → Source file (.py)** (clean diffs on GitHub), or Git folders |
| Job JSON | Workflows → your job → **⋮ → View JSON** → copy |
| Screenshots | Capture dashboard, job DAG, successful run, Catalog Explorer |
| Dataset | Include only if license allows and size is small; otherwise link in `datasets/README.md` |
