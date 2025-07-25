{% snapshot scr_raw_hosts %}

{{
   config(
       target_schema='dev',
       unique_key='id',

       strategy='timestamp',
       updated_at='updated_at',
       invalidate_hard_deletes=True
   )
}}

SELECT * from {{ source('airbnb', 'hosts') }}

{% endsnapshot %}