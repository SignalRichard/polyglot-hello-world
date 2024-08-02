package hello

import rego.v1

default greeting = "Hello, World!"

greet if {
    print(greeting)
}
