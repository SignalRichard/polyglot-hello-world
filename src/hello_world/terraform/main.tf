resource "terraform_data" "hello_world" {
    input = local.greeting
}