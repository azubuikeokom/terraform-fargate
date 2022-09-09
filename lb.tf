# resource "aws_lb" "main" {
#   name               = "${var.name}-alb-${var.environment}"
#   internal           = false
#   load_balancer_type = "application"
#   security_groups    = [aws_security_group.alb.id]
#   subnets            = [for subnet in aws_subnet.public : subnet.id]

#   enable_deletion_protection = false
#   tags = {
#     Environment = "dev"
#   }
# }

# resource "aws_alb_target_group" "main" {
#   name        = "${var.name}-tg-${var.environment}"
#   port        = 5050
#   protocol    = "HTTP"
#   vpc_id      = aws_vpc.main.id
#   target_type = "ip"
#   depends_on = [
#     aws_lb.main,
#   ]
#   health_check {
#     healthy_threshold   = "3"
#     interval            = "30"
#     protocol            = "HTTP"
#     matcher             = "200"
#     timeout             = "3"
#     path                = "/"
#     unhealthy_threshold = "2"
#   }
# }

# resource "aws_alb_listener" "http" {
#   load_balancer_arn = aws_lb.main.arn
#   port              = 80
#   protocol          = "HTTP"

#     default_action {
#      type = "forward"
#      target_group_arn = aws_alb_target_group.main.arn

#     }
# }

# resource "aws_alb_listener" "https" {
#   load_balancer_arn = aws_lb.main.id
#   port              = 443
#   protocol          = "HTTPS"

#   ssl_policy        = "ELBSecurityPolicy-2016-08"
#   certificate_arn   = var.alb_tls_cert_arn

#   default_action {
#     target_group_arn = aws_alb_target_group.main.id
#     type             = "forward"
#   }
# }