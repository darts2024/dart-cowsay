{
  "machine": {
    "gpu": 0,
    "cpu": 100,
    "ram": 100
  },
  "job": {
    "APIVersion": "V1beta1",
    "Spec": {
      "Deal": {
        "Concurrency": 1
      },
      "Docker": {
        "Entrypoint": [
          "/usr/games/cowsay",
          {{if .Message}}{{.Message}}{{else}}"Pass me an input called Message, like darts run cowsay:v0.1.3 -i Message=moo"{{end}}
        ],
        "Image": "grycap/cowsay@sha256:fad516b39e3a587f33ce3dbbb1e646073ef35e0b696bcf9afb1a3e399ce2ab0b"
      },
      "Engine": "Docker",
      "Network": {
        "Type": "None"
      },
      "PublisherSpec": {
        "Type": "local"
      },
      "Resources": {
        "GPU": ""
      },
      "Timeout": 120,
      "Verifier": "Noop"
    }
  }
}
