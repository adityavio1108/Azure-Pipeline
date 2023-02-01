
{{
  config(
    materialized='view'
  )
}}

SELECT ticket_id,
        EXTRACT( day FROM updated_date) AS "Day"
FROM test-project-saras.test_dataset.tickets