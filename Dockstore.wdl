task hello {
  String name

  command {
    echo 'hello ${name}!'
  }
  output {
    File response = stdout()
  }
  
  runtime {
    docker: "ubuntu:latest"
    memory: "4G"
  }
  
  meta {
    author: "Funk it Souza Falooza Baloney"
    email: "not-all-that-broken@gmail.com"
  }
}

workflow test {
  call hello
}
