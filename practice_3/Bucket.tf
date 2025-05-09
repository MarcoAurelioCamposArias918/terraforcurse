resource "aws_s3_bucket" "provedores"{
    bucket = "provedores-region-${random_string.sufijo.id}"
    tags = {
        Owner = "Marco Campos"
        Environment = "Dev"
    }
}
resource "random_string" "sufijo" {
length = 8
special = false
upper = false
numeric = false
}