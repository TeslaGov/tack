resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_ids = ["${aws_subnet.private.*.id}"]

  tags {
    builtWith = "terraform"
    KubernetesCluster = "${ var.name }"
    kz8s = "${ var.name }"
    Name = "kz8s-${ var.name }"
    visibility = "private"
  }
}
