
{{
  config(
    materialized='view'
  )
}}

SELECT ticket_id,
        EXTRACT( day FROM updated_date) AS "Day"
FROM {{ ref('dim_tickets') }}