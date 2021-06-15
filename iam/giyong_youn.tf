resource "aws_iam_user" "giyong_youn"{
 name ="giyong.youn"
}


resource "aws_iam_user_policy" "art_devops_black" {
  name  = "super-admin"
  user  = aws_iam_user.giyong_youn.name

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "*"
            ],
            "Resource": [
                "*"
            ]
        }
    ]
}
EOF
}

resource "aws_iam_group_membership" "devops" {
  name = aws_iam_group.devops_group.name

  users = [
   aws_iam_user.giyong_youn.name
 ]

 group = aws_iam_group.devops_group.name
}
