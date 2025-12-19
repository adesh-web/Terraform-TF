resource "aws_instance" "my_instance" {
    ami         = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
    security_groups = var.security_group_id
    
    user_data = <<-EOF
                #!/bin/bash
                sudo apt update -y
                sudo apt install nginx -y
                echo "<h1> Hello, World! </h1>" > /var/www/html/index.html
                EOF
    
    tags = {
        Name = "${var.project}-instance"
    }  
}
#