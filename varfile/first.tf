variable age {
  type = number
}

variable username {
  type = string
}

variable techs {
  type = list(string)
  default = ["C++", "Python", "Java"]
}

variable details {
  type = map
  default = {
    clg = "VNIT",
    batch = "2019"
  }
}

output stuff {
  value = "Hello I'm ${var.username}, ${var.age} years old. I know ${join(" ", var.techs)}.\n I graduated from ${lookup(var.details, "clg")}. I am a part of VNIT batch: ${lookup(var.details, "batch")}"
}
