select * from metadata left join user on metadata.user_id = user.id left join tenant on metadata.tenant_id=tenant.id where user_id='a2903a60d9d94d6194d306618ac73679'
