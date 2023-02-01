{% snapshot snapshot_Tickets_check %}

    {{
        config(
          target_schema='my_snapshots',
          strategy='check',
          unique_key='ticket_id',
          check_cols=['ticket_status'],
          invalidate_hard_deletes=True
        )
    }}

    SELECT * FROM {{ ref("dim_tickets") }}

{% endsnapshot %}