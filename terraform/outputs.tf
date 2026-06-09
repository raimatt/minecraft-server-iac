output "server_public_ip" {
  description = "The public IP address of your Minecraft server. This is also your Minecraft server address."
  value       = aws_instance.minecraft.public_ip
}

output "minecraft_connect_address" {
  description = "Paste this into the Minecraft client under Add Server."
  value       = "${aws_instance.minecraft.public_ip}:${var.minecraft_port}"
}

output "nmap_check_command" {
  description = "Run this to confirm the server is up and detect the service."
  value       = "nmap -sV -Pn -p T:${var.minecraft_port} ${aws_instance.minecraft.public_ip}"
}
