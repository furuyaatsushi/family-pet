json.created_at @message.created_at
json.date @message.created_at.strftime("%Y.%m.%d %H:%M:%S")
json.user_name @message.user.name
json.id @message.id
json.content @message.content