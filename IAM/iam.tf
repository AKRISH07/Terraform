resource "aws_iam_user" "User" {
 name = "User"
 tags = {
     Name = "User"
 } 
}

resource "aws_iam_access_key" "AK" {
  user = aws_iam_user.User.name
}

resource "aws_iam_user_policy" "Role" {
  name = "RoleForUser"
  user = aws_iam_user.User.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}