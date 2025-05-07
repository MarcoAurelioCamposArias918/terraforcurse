resource "local_file" "productos" {
content = "Liste de productos"
filename = "productos-${random_string.sufijo.id}.txt"
}
resource "random_string" "sufijo" {
length = 4
special = false
upper = false
numeric = false
}